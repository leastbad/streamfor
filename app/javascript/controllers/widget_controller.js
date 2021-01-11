import { Controller } from 'stimulus'
import CableReady from 'cable_ready'

export default class extends Controller {
  static values = { id: Number }

  connect () {
    this.channel = this.application.consumer.subscriptions.create(
      {
        channel: 'WidgetsChannel',
        id: this.idValue
      },
      {
        received (data) {
          if (data.cableReady) CableReady.perform(data.operations)
        }
      }
    )
    this.element.addEventListener('foo', this.fooReceived)
  }

  disconnect () {
    this.channel.unsubscribe()
    this.element.removeEventListener('foo', this.fooReceived)
  }

  fooReceived = event => {
    console.log('foo received by ', this.idValue)
  }
}
