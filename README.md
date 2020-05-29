# Demo system

> https://www.youtube.com/watch?v=JvBT4XBdoUE

## Getting started

Requires Erlang, Elixir, and node.js, as specified in the [.tool-versions](./.tool-versions) file.
You can use [asdf](https://github.com/asdf-vm/asdf) for that.

Building:

```
cd example_system
mix deps.get &&
pushd assets &&
npm install &&
popd &&
mix compile
```

Starting for development with live reload:

```
iex -S mix phx.server
```

Then, you can visit the following links:

  - http://localhost:4001
  - http://localhost:4001/load
  - http://localhost:4001/services

## Demo

Building and starting for production (in the background):

```
cd example_system
./rebuild.sh
./_build/prod/rel/example_system/bin/example_system start
```

Open the remote console:

```
./_build/prod/rel/example_system/bin/example_system remote
```

Hot upgrade with no downtime:

```
mix system.upgrade
```

Start a second node

```
mix system.node2
```
