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

        def process_tag(args)
          tag = args.shift
          @params = []
          body = process(args)
          "<#{tag}#{@params.join('')}>#{body}</#{tag}>"
        end

        def process_style(style)
          @params << " style='#{style}'"
          ''
        end

        def process_class(klass)
          @params << " class='#{klass}'"
          ''
        end

        def process_list(args)
          @item_tag = 'li'
          body = process(args)
          "<ul>\n#{body}</ul>\n\n"
        end

        def process_item(args)
          "  <#{@item_tag}>#{process(args)}</#{@item_tag}>\n"
        end
    end # HTML
  end # Processor
end # Zazen