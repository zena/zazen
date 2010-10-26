
# line 1 "zazen_rb.rl"
module Zazen
  class Parser
  
# line 26 "zazen_rb.rl"


    
# line 11 "zazen_rb.rb"
class << self
	attr_accessor :_zazen_actions
	private :_zazen_actions, :_zazen_actions=
end
self._zazen_actions = [
	0, 1, 0, 1, 1, 2, 1, 0
]

class << self
	attr_accessor :_zazen_key_offsets
	private :_zazen_key_offsets, :_zazen_key_offsets=
end
self._zazen_key_offsets = [
	0, 0, 3, 4, 5, 8, 11, 12, 
	13, 16
]

class << self
	attr_accessor :_zazen_trans_keys
	private :_zazen_trans_keys, :_zazen_trans_keys=
end
self._zazen_trans_keys = [
	9, 10, 32, 10, 10, 9, 10, 32, 
	9, 10, 32, 10, 10, 9, 10, 32, 
	9, 10, 32, 0
]

class << self
	attr_accessor :_zazen_single_lengths
	private :_zazen_single_lengths, :_zazen_single_lengths=
end
self._zazen_single_lengths = [
	0, 3, 1, 1, 3, 3, 1, 1, 
	3, 3
]

class << self
	attr_accessor :_zazen_range_lengths
	private :_zazen_range_lengths, :_zazen_range_lengths=
end
self._zazen_range_lengths = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0
]

class << self
	attr_accessor :_zazen_index_offsets
	private :_zazen_index_offsets, :_zazen_index_offsets=
end
self._zazen_index_offsets = [
	0, 0, 4, 6, 8, 12, 16, 18, 
	20, 24
]

class << self
	attr_accessor :_zazen_trans_targs
	private :_zazen_trans_targs, :_zazen_trans_targs=
end
self._zazen_trans_targs = [
	4, 1, 4, 2, 3, 2, 6, 0, 
	4, 5, 4, 2, 4, 8, 4, 2, 
	7, 2, 7, 2, 4, 9, 4, 2, 
	4, 9, 4, 2, 0
]

class << self
	attr_accessor :_zazen_trans_actions
	private :_zazen_trans_actions, :_zazen_trans_actions=
end
self._zazen_trans_actions = [
	1, 0, 1, 1, 0, 1, 0, 0, 
	1, 0, 1, 1, 1, 0, 1, 1, 
	3, 5, 0, 1, 5, 3, 5, 5, 
	1, 0, 1, 1, 0
]

class << self
	attr_accessor :_zazen_eof_actions
	private :_zazen_eof_actions, :_zazen_eof_actions=
end
self._zazen_eof_actions = [
	0, 0, 0, 0, 0, 0, 3, 0, 
	3, 0
]

class << self
	attr_accessor :zazen_start
end
self.zazen_start = 1;
class << self
	attr_accessor :zazen_first_final
end
self.zazen_first_final = 6;
class << self
	attr_accessor :zazen_error
end
self.zazen_error = 0;

class << self
	attr_accessor :zazen_en_main
end
self.zazen_en_main = 1;


# line 29 "zazen_rb.rl"

    def self.parse(arg)
      data = arg + "\n\n\n"
      par_count = 0
      stack = [[:zazen]]
      last  = stack.last
      str_buf = ""
      eof = 0;
      
# line 126 "zazen_rb.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = zazen_start
end

# line 38 "zazen_rb.rl"
      
# line 135 "zazen_rb.rb"
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
	if cs == 0
		_goto_level = _out
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

      last << [:par, str_buf]
      str_buf = ""
    		end
# line 228 "zazen_rb.rb"
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	__acts = _zazen_eof_actions[cs]
	__nacts =  _zazen_actions[__acts]
	__acts += 1
	while __nacts > 0
		__nacts -= 1
		__acts += 1
		case _zazen_actions[__acts - 1]
when 1 then
# line 10 "zazen_rb.rl"
		begin

      last << [:par, str_buf]
      str_buf = ""
    		end
# line 263 "zazen_rb.rb"
		end # eof action switch
	end
	if _trigger_goto
		next
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end

# line 39 "zazen_rb.rl"

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
