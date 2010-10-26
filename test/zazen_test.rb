require 'test_helper'
require 'zazen/render/html'

class DummyZazen < Test::Unit::TestCase
  yamltest :files => ['blocks']

  HTMLZazen = Zazen.parser_with_rules(Zazen::Render::HTML)

  def yt_parse(key, source, opts)
    opts = {}.merge(Hash[*(opts.map{|k,v| [k.to_sym, v]}.flatten)])

    case key
    when 'res', 'html'
      begin
        HTMLZazen.new(source, opts).to_html
      rescue Zazen::Error => err
        err.message
      end
    when 'sxp'
      # s-expression
      Zazen::Parser.parse(source).inspect
    else
      "parse not implemented for '#{key}' in zazen_test.rb"
    end
  end

  yt_make
end
