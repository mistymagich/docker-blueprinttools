FORMAT: 1A

# Message of the Day API

A simple [MOTD](http://en.wikipedia.org/wiki/Motd_(Unix)) API.

# Group Message

## Message [/messages/{id}]

This resource represents one particular message identified by its *id*.

### Retrieve Message [GET]
Retrieve a message by its *id*.

+ Response 200 (text/plain)

         _   _      _ _        __        __         _     _ _
        | | | | ___| | | ___   \ \      / /__  _ __| | __| | |
        | |_| |/ _ \ | |/ _ \   \ \ /\ / / _ \| '__| |/ _` | |
        |  _  |  __/ | | (_) |   \ V  V / (_) | |  | | (_| |_|
        |_| |_|\___|_|_|\___/     \_/\_/ \___/|_|  |_|\__,_(_)


### Delete Message [DELETE]
Delete a message. **Warning:** This action **permanently** removes the message from the database.

+ Response 204


# Group Hello

<!-- include(1_include.md) -->
