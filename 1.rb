#!/usr/bin/env ruby

require 'mathn'

def operate_on(operator, operands)
  case operator
  when 'sum'
    operands.inject(:+)
  when 'product'
    operands.inject(:*)
  when 'mean'
    operands.inject(:+)/operands.size
  when 'sqrt'
    operands.map {|x| Math.sqrt(x)}
  else
    "Error"
  end
end

operator = ARGV.shift
operands = ARGV

if operands.any? { |n| n !~ /\d+/ }
  STDERR.puts "Error in Arguments"
  exit
end

p operate_on operator, operands.map(&:to_i)