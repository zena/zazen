%%{
  machine zazen;

  ws       = ' ' | '\t' | '\n';
  par      = [^\n]+ $str_a;
  main    := ws* (par '\n\n' %par '\n'*)+;

}%%