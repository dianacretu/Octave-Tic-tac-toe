function termina = castig (playboard, computer, mutare)
  if (
      (playboard(1,2) == computer && playboard(1,4) == computer && playboard(1,6) == computer) ||
      (playboard(2,2) == computer && playboard(2,4) == computer && playboard(2,6) == computer) ||
      (playboard(3,2) == computer && playboard(3,4) == computer && playboard(3,6) == computer) ||
      (playboard(1,2) == computer && playboard(2,4) == computer && playboard(3,6) == computer) ||
      (playboard(1,2) == computer && playboard(2,2) == computer && playboard(3,2) == computer) ||
      (playboard(1,4) == computer && playboard(2,4) == computer && playboard(3,4) == computer) ||
      (playboard(1,6) == computer && playboard(2,6) == computer && playboard(3,6) == computer) ||
      (playboard(1,6) == computer && playboard(2,4) == computer && playboard(3,2) == computer)
     )
     termina = 1;
   else
    %Se verifica daca au mai ramas mutari
    if (mutare ~= 9)
      termina = 0;
     else
      %Daca nu, inseamna ca este egalitate
      termina = 2;
     endif
   endif
endfunction
