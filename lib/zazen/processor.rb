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

    def render
      @render ||= begin
        # before_process
        res = process([@sxp])
        # after_process
      end
    end

    protected

      def process(elements)
        elements.map do |sxp|
          if sxp.kind_of?(String)
            sxp
          else
            op = sxp.shift
            method = "process_#{op}"
            if respond_to?(method)
              send(method, sxp)
            else
              raise Zazen::SyntaxError.new("Method '#{method}' to handle #{op.inspect} not implemented.")
            end
          end
        end.join('')
      end

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
        if content.empty?
          ''
        else
          process(content)
        end
      end
  end
end