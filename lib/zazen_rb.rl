module Zazen
  class Parser
  %%{
    machine zazen;

    action str_a {
      str_buf += fc.chr
    }

    action text {
      last << str_buf
      str_buf = ""
    }

    action break {
      last << [:break]
      str_buf = ""
    }

    action par {
      last = insert(stack, [:par])
      str_buf = ""
    }

    action tag {
      last = replace_op(stack, :tag)
      last << str_buf
      str_buf = ""
    }

    action list {
      if last.first != :item
        last = replace_op(stack, :list)
        last = insert(stack, [:item])
      else
        last = insert(stack, [:item])
      end
      str_buf = ""
    }

    action class {
      last << [:class, str_buf]
      str_buf = ""
    }

    action style {
      last << [:style, str_buf]
      str_buf = ""
    }

    action clear {
      str_buf = ""
    }

    action error {
      p = p - 3
      p = 0 if p < 0
      raise Zazen::SyntaxError.new("Syntax error near #{data[p..-1].chomp.inspect}.")
    }

    action debug {
      print("_#{data[p..p]}")
    }

    include zazen "zazen_syntax.rl";
  }%%

    %% write data;

    def self.parse(arg)
      data = arg + "\n\n\n"
      par_count = 0
      stack = [[:zazen]]
      last  = stack.last
      str_buf = ""
      eof = 0;
      %% write init;
      %% write exec;

      if p < pe
        p = p - 3
        p = 0 if p < 0
        raise Zazen::SyntaxError.new("Syntax error near #{data[p..-2].inspect}.")
      end

      if par_count > 0
        raise Zazen::SyntaxError.new("Missing closing parenthesis in #{data[0..-2].inspect}.")
      end
      stack.first
    end
  end
end
