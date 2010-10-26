
# line 1 "zazen_rb.rl"
module Zazen
  class Parser
  
# line 36 "zazen_rb.rl"


    
# line 11 "zazen_rb.rb"
class << self
	attr_accessor :_zazen_actions
	private :_zazen_actions, :_zazen_actions=
end
self._zazen_actions = [
	0, 1, 0, 1, 1, 2, 0, 3, 
	2, 2, 0, 2, 3, 0, 3, 2, 
	0, 3
]

class << self
	attr_accessor :_zazen_key_offsets
	private :_zazen_key_offsets, :_zazen_key_offsets=
end
self._zazen_key_offsets = [
	0, 3, 4, 5, 8, 11, 12
]

class << self
	attr_accessor :_zazen_trans_keys
	private :_zazen_trans_keys, :_zazen_trans_keys=
end
self._zazen_trans_keys = [
	9, 10, 32, 10, 10, 9, 10, 32, 
	9, 10, 32, 10, 9, 10, 32, 0
]

class << self
	attr_accessor :_zazen_single_lengths
	private :_zazen_single_lengths, :_zazen_single_lengths=
end
self._zazen_single_lengths = [
	3, 1, 1, 3, 3, 1, 3
]

class << self
	attr_accessor :_zazen_range_lengths
	private :_zazen_range_lengths, :_zazen_range_lengths=
end
self._zazen_range_lengths = [
	0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_zazen_index_offsets
	private :_zazen_index_offsets, :_zazen_index_offsets=
end
self._zazen_index_offsets = [
	0, 4, 6, 8, 12, 16, 18
]

class << self
	attr_accessor :_zazen_trans_targs
	private :_zazen_trans_targs, :_zazen_trans_targs=
end
self._zazen_trans_targs = [
	3, 0, 3, 1, 2, 1, 5, 1, 
	3, 4, 3, 1, 3, 6, 3, 1, 
	5, 1, 3, 6, 3, 1, 0
]

class << self
	attr_accessor :_zazen_trans_actions
	private :_zazen_trans_actions, :_zazen_trans_actions=
end
self._zazen_trans_actions = [
	11, 0, 11, 11, 3, 1, 0, 8, 
	5, 3, 5, 5, 14, 0, 14, 14, 
	0, 11, 11, 0, 11, 11, 0
]

class << self
	attr_accessor :zazen_start
end
self.zazen_start = 0;
class << self
	attr_accessor :zazen_first_final
end
self.zazen_first_final = 5;
class << self
	attr_accessor :zazen_error
end
self.zazen_error = -1;

class << self
	attr_accessor :zazen_en_main
end
self.zazen_en_main = 0;


# line 39 "zazen_rb.rl"

    def self.parse(arg)
      data = arg + "\n\n\n"
      par_count = 0
      stack = [[:zazen]]
      last  = stack.last
      str_buf = ""
      eof = 0;
      
# line 112 "zazen_rb.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = zazen_start
end

# line 48 "zazen_rb.rl"
      
# line 121 "zazen_rb.rb"
begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	end
	if _goto_level <= _resume
	_keys = _zazen_key_offsets[cs]
	_trans = _zazen_index_offsets[cs]
	_klen = _zazen_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p] < _zazen_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p] > _zazen_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _zazen_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p] < _zazen_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p] > _zazen_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	cs = _zazen_trans_targs[_trans]
	if _zazen_trans_actions[_trans] != 0
		_acts = _zazen_trans_actions[_trans]
		_nacts = _zazen_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _zazen_actions[_acts - 1]
when 0 then
# line 6 "zazen_rb.rl"
		begin

      str_buf += data[p].chr
    		end
when 1 then
# line 10 "zazen_rb.rl"
		begin

      last << str_buf
      str_buf = ""
    		end
when 2 then
# line 15 "zazen_rb.rl"
		begin

      last << [:break]
      str_buf = ""
    		end
when 3 then
# line 20 "zazen_rb.rl"
		begin

      last = insert(stack, [:par])
      str_buf = ""
    		end
# line 224 "zazen_rb.rb"
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	end
	if _goto_level <= _out
		break
	end
	end
	end

# line 49 "zazen_rb.rl"

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
