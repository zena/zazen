%%{
  machine zazen;

  ws       = ' ' | '\t' | '\n';
  text     = ([^*\n][^\n]+) $str_a;
  var      = ([a-z][a-z0-9]*) $str_a;
  class    = '(' %clear var %class ')';
  style    = '{' %clear [^}]+ %style '}';
  tag      = (var %tag (class | style)? '. ') %clear;
  item     = '* ' %list ((text %text '\n' %break)* text %text);
  list     = (item ('\n' item)*);
  par      = tag? ((text %text '\n' %break)* text %text);
  block    = list | par;
  main    := ws* (block >par '\n\n'  '\n'*)*;

}%%