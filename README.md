# Topn


## What's the problem

We have really big data, need to get top N records with limited memory and limited time. Use Elixir and solve the problem.

## Intro

This is just a toy project, don't use it in production environment. It was made  for a job interview.

The TopN project works on a single machine with all CPU processors working and consumes very little memory. In order to deal with really big data, I have written a behavior interface, which supports source URL and data range parameter. We can use https://github.com/bitwalker/swarm to manage the cluster and split the data to different server nodes.

## Design 

You can find the design document in the design folder, it is managed by gitbook, all pictures are drawn by plantuml.

### Architecture

![Architecture](https://raw.githubusercontent.com/longlongh4/topN/master/design/pics/architecture.png)

### TopN

![TopN](https://raw.githubusercontent.com/longlongh4/topN/master/design/pics/topn_algorithm.png)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `topn` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:topn, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/topn](https://hexdocs.pm/topn).

