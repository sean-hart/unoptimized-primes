## Prime Compute

Simple program that computes primes from 1-80,000.  Intent is to peg a CPU.  It will run for about 28 seconds after being called with a get request via Sinatra.

### To Run

Either run straight

`ruby app.rb`

`curl localhost:4567`


Or Build a Docker Container and run.  This build depends on https://gitlab.pixsystem.net/ops/centos-docker-ruby, so you will want to get that and build it first.

`docker build .`

This will spit out a docker hash to the console when it is done.

`docker run docker_hash`
