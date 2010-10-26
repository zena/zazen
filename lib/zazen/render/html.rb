module Zazen
  module Render

    # HTML rendering for Zazen
    module HTML
      def self.included(base)
        base.class_eval do
          alias to_html render
        end
      end

      protected
        def process_par(par_content)
          "<p>#{process(par_content)}</p>\n\n"
        end

        def process_break(after_break)
          "<br/>\n"
        end
    end # HTML
  end # Processor
end # Zazen