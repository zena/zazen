%%{
  machine zazen;

  ws       = ' ' | '\t' | '\n';
  text     = [^\n]+ $str_a;
  par      = ((text %text '\n' %break)* text %text);
  main    := ws* (par >par '\n\n'  '\n'*)+;

}%%