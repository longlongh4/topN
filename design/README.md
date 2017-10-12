# Introduction

## What's the problem

We have really big data, need to get top N records with limited memory and limited time. 

Luckily, we have several computers to speed up the computation, use Elixir and solve the problem.

## Task list

- [x] Split the big data to several slices, pass them to different server nodes
- [x] Get top N records on every server
- [x] Merge all result from servers and get the final top N records