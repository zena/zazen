
# line 1 "zazen_rb.rl"
module Zazen
  class Parser
  
# line 66 "zazen_rb.rl"


    
# line 11 "zazen_rb.rb"
class << self
	attr_accessor :_zazen_actions
	private :_zazen_actions, :_zazen_actions=
end
self._zazen_actions = [
	0, 1, 0, 1, 1, 1, 3, 1, 
	7, 2, 0, 3, 2, 0, 7, 2, 
	0, 8, 2, 2, 0, 2, 3, 0, 
	2, 4, 0, 2, 5, 0, 2, 6, 
	0, 2, 7, 0, 2, 8, 0, 2, 
	8, 1, 3, 2, 0, 3, 3, 2, 
	0, 7, 3, 5, 0, 7, 3, 7, 
	2, 0, 3, 7, 3, 0, 3, 7, 
	8, 0
]

class << self
	attr_accessor :_zazen_key_offsets
	private :_zazen_key_offsets, :_zazen_key_offsets=
end
self._zazen_key_offsets = [
	0, 0, 1, 2, 4, 5, 7, 8, 
	9, 11, 19, 22, 28, 30, 32, 34, 
	42, 44, 46, 49, 51, 52, 53, 54, 
	56, 58, 61, 63, 65, 68, 70, 72, 
	74, 76, 85, 89, 96, 99, 102, 105, 
	114, 116, 118, 120, 122, 123, 129, 133, 
	138, 144, 150
]

class << self
	attr_accessor :_zazen_trans_keys
	private :_zazen_trans_keys, :_zazen_trans_keys=
end
self._zazen_trans_keys = [
	10, 10, 10, 42, 32, 10, 42, 10, 
	10, 10, 42, 10, 40, 46, 123, 48, 
	57, 97, 122, 10, 97, 122, 10, 41, 
	48, 57, 97, 122, 10, 46, 10, 32, 
	10, 42, 10, 40, 46, 123, 48, 57, 
	97, 122, 10, 125, 10, 125, 10, 42, 
	125, 10, 125, 125, 46, 32, 10, 42, 
	32, 125, 10, 42, 125, 10, 125, 10, 
	125, 10, 42, 125, 10, 46, 10, 32, 
	10, 42, 10, 46, 10, 40, 46, 123, 
	125, 48, 57, 97, 122, 10, 125, 97, 
	122, 10, 41, 125, 48, 57, 97, 122, 
	10, 46, 125, 10, 32, 125, 10, 42, 
	125, 10, 40, 46, 123, 125, 48, 57, 
	97, 122, 10, 125, 10, 46, 10, 32, 
	10, 42, 10, 9, 10, 32, 42, 97, 
	122, 10, 42, 97, 122, 10, 42, 125, 
	97, 122, 9, 10, 32, 42, 97, 122, 
	9, 10, 32, 42, 97, 122, 9, 10, 
	32, 42, 97, 122, 0
]

class << self
	attr_accessor :_zazen_single_lengths
	private :_zazen_single_lengths, :_zazen_single_lengths=
end
self._zazen_single_lengths = [
	0, 1, 1, 2, 1, 2, 1, 1, 
	2, 4, 1, 2, 2, 2, 2, 4, 
	2, 2, 3, 2, 1, 1, 1, 2, 
	2, 3, 2, 2, 3, 2, 2, 2, 
	2, 5, 2, 3, 3, 3, 3, 5, 
	2, 2, 2, 2, 1, 4, 2, 3, 
	4, 4, 4
]

class << self
	attr_accessor :_zazen_range_lengths
	private :_zazen_range_lengths, :_zazen_range_lengths=
end
self._zazen_range_lengths = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 2, 1, 2, 0, 0, 0, 2, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 2, 1, 2, 0, 0, 0, 2, 
	0, 0, 0, 0, 0, 1, 1, 1, 
	1, 1, 1
]

class << self
	attr_accessor :_zazen_index_offsets
	private :_zazen_index_offsets, :_zazen_index_offsets=
end
self._zazen_index_offsets = [
	0, 0, 2, 4, 7, 9, 12, 14, 
	16, 19, 26, 29, 34, 37, 40, 43, 
	50, 53, 56, 60, 63, 65, 67, 69, 
	72, 75, 79, 82, 85, 89, 92, 95, 
	98, 101, 109, 113, 119, 123, 127, 131, 
	139, 142, 145, 148, 151, 153, 159, 163, 
	168, 174, 180
]

class << self
	attr_accessor :_zazen_indicies
	private :_zazen_indicies, :_zazen_indicies=
end
self._zazen_indicies = [
	1, 0, 2, 0, 4, 1, 3, 5, 
	1, 1, 1, 6, 1, 7, 8, 7, 
	4, 10, 9, 1, 11, 12, 14, 13, 
	13, 0, 2, 15, 0, 2, 16, 17, 
	17, 0, 2, 18, 0, 2, 19, 0, 
	2, 0, 20, 2, 11, 12, 14, 13, 
	13, 0, 22, 0, 21, 24, 25, 23, 
	27, 28, 29, 26, 28, 25, 23, 30, 
	28, 31, 1, 32, 1, 1, 1, 33, 
	34, 30, 28, 28, 28, 36, 35, 28, 
	38, 37, 39, 38, 37, 27, 41, 42, 
	40, 1, 43, 7, 8, 44, 7, 8, 
	7, 45, 8, 43, 7, 28, 46, 47, 
	49, 25, 48, 48, 23, 24, 25, 50, 
	23, 24, 51, 25, 52, 52, 23, 24, 
	53, 25, 23, 24, 54, 25, 23, 24, 
	23, 55, 21, 24, 46, 47, 49, 25, 
	48, 48, 23, 22, 25, 21, 1, 18, 
	0, 2, 56, 0, 2, 0, 57, 2, 
	7, 59, 60, 59, 61, 62, 58, 4, 
	61, 62, 58, 27, 64, 66, 65, 63, 
	68, 60, 68, 69, 70, 67, 68, 71, 
	68, 69, 70, 67, 73, 60, 73, 61, 
	74, 72, 0
]

class << self
	attr_accessor :_zazen_trans_targs
	private :_zazen_trans_targs, :_zazen_trans_targs=
end
self._zazen_trans_targs = [
	2, 0, 3, 1, 46, 5, 6, 7, 
	8, 6, 4, 10, 13, 15, 16, 11, 
	12, 11, 13, 14, 2, 17, 18, 17, 
	18, 12, 19, 47, 20, 41, 21, 22, 
	23, 1, 25, 26, 29, 27, 32, 28, 
	26, 24, 29, 30, 31, 7, 34, 37, 
	39, 40, 35, 36, 35, 37, 38, 12, 
	43, 44, 1, 48, 45, 4, 9, 19, 
	24, 33, 41, 2, 49, 42, 15, 50, 
	1, 48, 9
]

class << self
	attr_accessor :_zazen_trans_actions
	private :_zazen_trans_actions, :_zazen_trans_actions=
end
self._zazen_trans_actions = [
	1, 0, 3, 18, 0, 0, 27, 1, 
	3, 18, 0, 24, 24, 1, 24, 36, 
	30, 1, 1, 1, 36, 36, 39, 1, 
	3, 33, 18, 0, 0, 54, 7, 0, 
	0, 36, 0, 27, 50, 1, 12, 3, 
	18, 0, 46, 1, 1, 15, 24, 24, 
	1, 24, 36, 30, 1, 1, 1, 62, 
	1, 27, 21, 21, 0, 5, 21, 21, 
	5, 21, 58, 9, 9, 9, 9, 3, 
	42, 42, 42
]

class << self
	attr_accessor :zazen_start
end
self.zazen_start = 45;
class << self
	attr_accessor :zazen_first_final
end
self.zazen_first_final = 45;
class << self
	attr_accessor :zazen_error
end
self.zazen_error = 0;

class << self
	attr_accessor :zazen_en_main
end
self.zazen_en_main = 45;


# line 69 "zazen_rb.rl"

    def self.parse(arg)
      data = arg + "\n\n\n"
      par_count = 0
      stack = [[:zazen]]
      last  = stack.last
      str_buf = ""
      eof = 0;
      
# line 205 "zazen_rb.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = zazen_start
end

# line 78 "zazen_rb.rl"
      
# line 214 "zazen_rb.rb"
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
	_trans = _zazen_indicies[_trans]
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
when 4 then
# line 25 "zazen_rb.rl"
		begin

      last = replace_op(stack, :tag)
      last << str_buf
      str_buf = ""
    		end
when 5 then
# line 31 "zazen_rb.rl"
		begin

      if last.first != :item
        last = replace_op(stack, :list)
        last = insert(stack, [:item])
      else
        last = insert(stack, [:item])
      end
      str_buf = ""
    		end
when 6 then
# line 41 "zazen_rb.rl"
		begin

      last << [:class, str_buf]
      str_buf = ""
    		end
when 7 then
# line 46 "zazen_rb.rl"
		begin

      last << [:style, str_buf]
      str_buf = ""
    		end
when 8 then
# line 51 "zazen_rb.rl"
		begin

      str_buf = ""
    		end
# line 362 "zazen_rb.rb"
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
	end
	if _goto_level <= _out
		break
	end
	end
	end

# line 79 "zazen_rb.rl"

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
