# CableReady broadcast_to example

## Goal

Broadcasting to a resource - where you're sending based on what you're looking at instead of who you are - is easy and powerful. This example combines StimulusReflex's "Nothing Morph" concept - a light-weight RPC mechanism - to instruct CableReady to broadcast to everyone's favourite resource, `current_user` (which is being converted to User#1).

You can find out more in the [CableReady Docs](https://cableready.stimulusreflex.com).

## Setup

1. Install and run [Redis](https://redis.io/download)
2. Clone this repo to your machine and go to the project folder
3. Run `bin/setup`
4. Start the server with `rails s`
5. Open your browser's Console Inspector and go to `localhost:3000`
6. Login as `test@test.com` with the password `topsecret` or create your own account

Note that caching in development is locked in the "on" position. This is a good thing.

## Code review

Part of the reason this example is so powerful is that there's very little to it. That's why it's exciting.

Still, the files you're interested in are likely:

- app/reflexes/example_reflex.rb
- app/channels/application_cable/connection.rb
- app/channels/users_channel.rb
- app/javascript/channels/users_channel.js

## Support

Please bring your questions to [Discord](https://discord.gg/XveN625). We'll be happy to help.