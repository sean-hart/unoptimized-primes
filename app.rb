#! /usr/bin/env ruby

require 'sinatra'
require 'json'

set :bind, '0.0.0.0'

get '/' do
  return get_primes(80000).to_json
end

def get_primes(top)
  primes = [2,3,5]
  (6..top).each do |i|
    prime = true
    until prime == false
      primes.each do |p|
#        logger.info("#{i}, #{p}")
        if i % p == 0
          prime = false
        end
      end
      break
    end
    if prime == true
      primes << i
    end
#    logger.info(primes)
  end
  return primes
end
