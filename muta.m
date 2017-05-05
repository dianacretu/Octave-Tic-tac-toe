function playboard = muta (playboard, jucator, computer)
  if (playboard(1,2) == jucator && playboard(1,4) == jucator && playboard(1,6) == "_" )
    playboard(1,6) = computer;
  else
  if (playboard(1,2) == jucator && playboard(1,6) == jucator && playboard(1,4) == "_" )
    playboard(1,4) = computer;
  else
    if (playboard(1,4) == jucator && playboard(1,6) == jucator && playboard(1,2) == "_" )
      playboard(1,2) = computer;
    else
      if (playboard(2,2) == jucator && playboard(2,4) == jucator && playboard(2,6) == "_" )
        playboard(2,6) = computer;
      else
        if (playboard(2,2) == jucator && playboard(2,6) == jucator && playboard(2,4) == "_" )
         playboard(2,4) = computer;
        else
          if (playboard(2,4) == jucator && playboard(2,6) == jucator && playboard(2,2) == "_" )
            playboard(2,2) = computer;
          else
           if (playboard(3,2) == jucator && playboard(3,4) == jucator && playboard(3,6) == "_" )
             playboard(3,6) = computer;
           else
             if (playboard(3,2) == jucator && playboard(3,6) == jucator && playboard(3,4) == "_" )
              playboard(3,4) = computer;
             else
              if (playboard(3,4) == jucator && playboard(3,6) == jucator && playboard(3,2) == "_" )
                playboard(3,2) = computer;
              else
                if (playboard(1,2) == jucator && playboard(2,2) == jucator && playboard(3,2) == "_" )
                  playboard(3,2) = computer;
                else
                  if (playboard(1,2) == jucator && playboard(3,2) == jucator && playboard(2,2) == "_" )
                    playboard(2,2) = computer;
                  else
                    if (playboard(2,2) == jucator && playboard(3,2) == jucator && playboard(1,2) == "_" )
                      playboard(1,2) = computer;
                    else
                      if (playboard(1,4) == jucator && playboard(2,4) == jucator && playboard(3,4) == "_" )
                        playboard(3,4) = computer;
                      else
                        if (playboard(1,4) == jucator && playboard(3,4) == jucator && playboard(2,4) == "_" )
                          playboard(2,4) = computer;
                        else
                          if (playboard(2,4) == jucator && playboard(3,4) == jucator && playboard(1,4) == "_" )
                            playboard(1,4) = computer;
                          else
                            if (playboard(1,6) == jucator && playboard(2,6) == jucator && playboard(3,6) == "_" )
                              playboard(3,6) = computer;
                            else
                              if (playboard(1,6) == jucator && playboard(3,6) == jucator && playboard(2,6) == "_" )
                                playboard(2,6) = computer;
                              else
                                if (playboard(2,6) == jucator && playboard(3,6) == jucator && playboard(1,6) == "_" )
                                  playboard(1,6) = computer;
                                else
                                  if (playboard(1,2) == jucator && playboard(2,4) == jucator && playboard(3,6) == "_" )
                                    playboard(3,6) = computer;
                                  else
                                    if (playboard(1,2) == jucator && playboard(3,6) == jucator && playboard(2,4) == "_" )
                                      playboard(2,4) = computer;
                                    else
                                       if (playboard(2,4) == jucator && playboard(3,6) == jucator && playboard(1,2) == "_" )
                                          playboard(1,2) = computer;
                                       else
                                        if (playboard(1,6) == jucator && playboard(2,4) == jucator && playboard(3,2) == "_" )
                                          playboard(3,2) = computer;
                                        else
                                          if (playboard(1,6) == jucator && playboard(3,2) == jucator && playboard(2,4) == "_" )
                                            playboard(2,4) = computer;
                                          else
                                            if (playboard(2,4) == jucator && playboard(3,2) == jucator && playboard(1,6) == "_" )
                                              playboard(1,6) = computer;
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
  endif
endif  
endfunction
