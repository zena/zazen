require 'zazen/info'
require 'zazen/error'
begin
  require 'zazen_ext'
rescue LoadError
  require 'zazen_rb'
end
require 'zazen/parser'
require 'zazen/processor'

module Zazen
  def self.parser_with_rules(*rules)
    parser = Class.new(Processor) do
      rules.each do |mod|
        include mod
      end
    end

    parser
  end
end # Zazen
