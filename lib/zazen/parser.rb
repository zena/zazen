module Zazen
  class Parser
    class << self
      # http://dev.mysql.com/doc/refman/5.1/en/operator-precedence.html
      OP_PRECEDENCE = {
        :break => 15,
        :par   => 10,
        :zazen => 1,
      }

      # Transform the stack to wrap the last element with an operator:
      # [a, b, c] ==> [a, b, [op, c, d]]
      def apply_op(stack, op, change_last = true)
        pop_stack(stack, op)
        last = stack.last
        change_elem = last.last
        last[-1] = [op.to_sym, change_elem]
        if change_last
          stack.push last[-1]
        end
        stack.last
      end

      def insert(stack, arg)
        # insert [:relation, "..."]
        # stack: [[:query]]  --> [[:query, [:relation, "..."]], [:relation, "..."]]
        pop_stack(stack, arg.first)
        last = stack.last
        last << arg
        stack.push last.last
        stack.last
      end

      def pop_stack(stack, op)
        #debug_stack(stack, op)
        stack_op = stack.last.first
        while OP_PRECEDENCE[op] <= OP_PRECEDENCE[stack_op]
          stack.pop
          stack_op = stack.last.first
        end
      end

      def debug_stack(stack, msg = '')
        puts "======= #{msg} ======="
        stack.reverse_each do |s|
          puts s.inspect
        end
        puts "======================"
      end
    end
  end
end
