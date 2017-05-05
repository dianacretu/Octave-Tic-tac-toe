function [] = joc ()
%Desenare tabla de joc
playboard = [ " _" , " _" , " _" ; " _" , " _" , " _";  " _" , " _" , " _"]
persistent scor_player = 0;
persistent scor_computer = 0;
mutare = 0;
termina = 0;
player = input('Alege x sau 0: ', "%s")
if ( player == "x" )
  computer = "0";
  while ( mutare < 9 && termina == 0 )
    i = input('Alege linia unde vrei sa faci mutarea (sau tasta "q" pentru a iesi) : ')
    j = input('Alege coloana unde vrei sa faci mutarea (sau tasta "q" pentru a iesi) : ')
    j = 2 * j;
    if ( i == "q" || j == "q" ) 
      break;
    endif
    playboard(i,j) = player
    mutare = mutare + 1;
    %Se verifica daca este mutare castigatoare
    termina = castig(playboard, computer, mutare);
    %Se verifica daca sunt 2 zerouri apropiate
    if (urgenta(playboard, computer) == 1)
        playboard = muta(playboard, computer, computer)
        mutare = mutare + 1;
    else
      %Se verifica daca sunt 2 x'uri apropiate
      if (urgenta(playboard, player) == 1)
        playboard = muta(playboard, player, computer)
        mutare = mutare + 1;
        else
          %Se cauta mijlocul sau colturile daca sunt libere,
          %pentru a juca strategic
          if (playboard(2,4) == "_")
            playboard(2,4) = "0"
            mutare = mutare + 1;
          else
            if (playboard(1,6) == "_")
              playboard(1,6) = computer
              mutare = mutare + 1;
            else
              if (playboard(3,6) == "_")
                playboard(3,6) = computer
                mutare = mutare + 1;
              else
                if (playboard(3,2) == "_")
                  playboard(3,2) = computer
                  mutare = mutare + 1;
                else
                  if (playboard(1,2) == "_")
                    playboard(1,2) = computer
                    mutare = mutare + 1;
                   else
                    %Se verifica ce a mai ramas liber
                    if (playboard(1,4) == "_")
                      playboard(1,4) = computer
                      mutare = mutare + 1;
                    else
                      if (playboard(2,6) == "_")
                        playboard(2,6) = computer
                        mutare = mutare + 1;
                      else
                        if (playboard(3,4) == "_")
                          playboard(3,4) = computer
                          mutare = mutare + 1;
                        else
                          if (playboard(2,2) == "_")
                            playboard(2,2) = computer
                            mutare = mutare + 1;
                          endif
                        endif
                      endif
                    endif
                  endif
                endif
              endif  
            endif       
          endif
      endif
     endif
     %Se verifica daca este mutare castigatoare
     termina = castig(playboard, computer, mutare);
  endwhile
  if (termina == 1)
    %A castigat calculatorul
    scor_computer = scor_computer + 1;
    disp("Ai pierdut!")
    printf("%d : %d\n", scor_computer, scor_player)
  else
    if (termina == 2)
      %Este egalitate
      scor_computer = scor_computer + 1;
      scor_player = scor_player + 1;
      disp("Este egalitate!")
      printf("%d : %d\n", scor_computer, scor_player)
     endif
    endif
 else
  if (player == "0")
    computer = "x";
    %Se incepe din mijloc
    playboard(2,4) = computer
    mutare = mutare +1;
    while ( mutare < 9 && termina == 0 )
      i = input('Alege linia unde vrei sa faci mutarea: ')
      j = input('Alege coloana unde vrei sa faci mutarea: ')
      j = 2 * j;
      playboard(i,j) = player
      mutare = mutare + 1;
      %Se verifica daca este mutare castigatoare
      termina = castig(playboard, computer, mutare);
      %Se cauta daca se poate face o mutare castigatoare
      if (urgenta(playboard, computer) == 1)
        playboard = muta(playboard, computer, computer)
        mutare = mutare + 1;
      else
        %Se cauta daca adversarul mai are o mutare si castiga
        if (urgenta(playboard, player) == 1)
          playboard = muta(playboard, player, computer)
          mutare = mutare + 1;
        else
          if (playboard(2,4) == "_")
            playboard(2,4) = "0"
            mutare = mutare + 1;
          else
            if (playboard(1,6) == "_")
              playboard(1,6) = computer
              mutare = mutare + 1;
            else
              if (playboard(3,6) == "_")
                playboard(3,6) = computer
                mutare = mutare + 1;
              else
                if (playboard(3,2) == "_")
                  playboard(3,2) = computer
                  mutare = mutare + 1;
                else
                  if (playboard(1,2) == "_")
                    playboard(1,2) = computer
                    mutare = mutare + 1;
                   else
                      if (playboard(1,4) == "_")
                        playboard(1,4) = computer
                        mutare = mutare + 1;
                      else
                        if (playboard(2,6) == "_")
                          playboard(2,6) = computer
                          mutare = mutare + 1;
                        else
                          if (playboard(3,4) == "_")
                            playboard(3,4) = computer
                            mutare = mutare + 1;
                          else
                            if (playboard(2,2) == "_")
                              playboard(2,2) = computer
                              mutare = mutare + 1;
                          endif
                        endif
                      endif
                    endif
                  endif
                endif
              endif  
            endif       
          endif
      endif
     endif
     termina = castig(playboard, computer, mutare);
  endwhile
   if (termina == 1)
    scor_computer = scor_computer + 1;
    disp("Ai pierdut!")
    printf("%d : %d\n", scor_computer, scor_player)
  else
    if (termina == 2)
      scor_computer = scor_computer + 1;
      scor_player = scor_player + 1;
      disp("Este egalitate!")
      printf("%d : %d\n", scor_computer, scor_player)
     endif
    endif
 endif
 endif
 
endfunction
