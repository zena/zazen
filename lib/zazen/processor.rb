require 'rubyless'

module Zazen
  class Processor
    attr_reader :sxp, :ancestor

    class << self
      # class variable
      attr_accessor :before_process_callbacks, :after_process_callbacks

      def before_process(callback)
        (self.before_process_callbacks ||= []) << callback
      end

      def after_process(callback)
        (self.after_process_callbacks ||= []) << callback
      end
    end

    def initialize(source, opts = {})
      @opts = opts

      @sxp = Parser.parse(source)
    end

    def process
      @process ||= begin
        op = @sxp.shift
        method = "process_#{op}"
        if respond_to?(method)
          #before_process
          send(method, *sxp[1..-1])
          #after_process
        else
          raise Zazen::SyntaxError.new("Method '#{method}' to handle #{op.inspect} not implemented.")
        end
      end
    end

    protected
      def before_process
        (self.class.before_process_callbacks || []).each do |callback|
          send(callback)
        end
      end

      def after_process
        (self.class.after_process_callbacks || []).each do |callback|
          send(callback)
        end
      end

      def process_zazen(content)
        if content
          process(content)
        else
          ''
        end
      end
  end
end