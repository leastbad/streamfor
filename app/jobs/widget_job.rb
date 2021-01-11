class WidgetJob < ApplicationJob
  include CableReady::Broadcaster

  queue_as :default

  def perform(widget:)
    cable_ready[WidgetsChannel].dispatch_event(
      selector: dom_id(widget),
      name: "foo"
    ).broadcast_to(widget)
  end
end