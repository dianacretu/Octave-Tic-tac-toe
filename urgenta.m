function true = urgenta (playboard, jucator)
%Se verifica daca este adversarul are 2 casute apropiate ocupate
%pentru a o bloca pe a treia
true = 0;
if (playboard(1,2) == jucator && playboard(1,4) == jucator && playboard(1,6) == "_")
  true = 1;
else
  if (playboard(1,2) == jucator && playboard(1,6) == jucator && playboard(1,4) == "_")
    true = 1;
  else
    if (playboard(1,4) == jucator && playboard(1,6) == jucator && playboard(1,2) == "_")
      true = 1;
    else
      if (playboard(2,2) == jucator && playboard(2,4) == jucator && playboard(2,6) == "_")
        true = 1;
      else
        if (playboard(2,2) == jucator && playboard(2,6) == jucator && playboard(2,4) == "_")
         true = 1;
        else
          if (playboard(2,4) == jucator && playboard(2,6) == jucator && playboard(2,2) == "_")
            true = 1;
          else
           if (playboard(3,2) == jucator && playboard(3,4) == jucator && playboard(3,6) == "_")
             true = 1;
           else
             if (playboard(3,2) == jucator && playboard(3,6) == jucator && playboard(3,4) == "_")
              true = 1;
             else
              if (playboard(3,4) == jucator && playboard(3,6) == jucator && playboard(3,2) == "_")
                true = 1;
              else
                if (playboard(1,2) == jucator && playboard(2,2) == jucator && playboard(3,2) == "_")
                  true = 1;
                else
                  if (playboard(1,2) == jucator && playboard(3,2) == jucator && playboard(2,2) == "_")
                    true = 1;
                  else
                    if (playboard(2,2) == jucator && playboard(3,2) == jucator && playboard(1,2) == "_")
                      true = 1;
                    else
                      if (playboard(1,4) == jucator && playboard(2,4) == jucator && playboard(3,4) == "_")
                        true = 1;
                      else
                        if (playboard(1,4) == jucator && playboard(3,4) == jucator && playboard(2,4) == "_")
                          true = 1;
                        else
                          if (playboard(2,4) == jucator && playboard(3,4) == jucator && playboard(1,4) == "_")
                            true = 1;
                          else
                            if (playboard(1,6) == jucator && playboard(2,6) == jucator && playboard(3,6) == "_")
                              true = 1;
                            else
                              if (playboard(1,6) == jucator && playboard(3,6) == jucator && playboard(2,6) == "_")
                                true = 1;
                              else
                                if (playboard(2,6) == jucator && playboard(3,6) == jucator && playboard(1,6) == "_")
                                  true = 1;
                                else
                                  if (playboard(1,2) == jucator && playboard(2,4) == jucator && playboard(3,6) == "_")
                                    true = 1;
                                  else
                                    if (playboard(1,2) == jucator && playboard(3,6) == jucator && playboard(2,4) == "_")
                                      true = 1;
                                    else
                                       if (playboard(2,4) == jucator && playboard(3,6) == jucator && playboard(1,2) == "_")
                                          true = 1;
                                       else
                                        if (playboard(1,6) == jucator && playboard(2,4) == jucator && playboard(3,2) == "_")
                                          true = 1;
                                        else
                                          if (playboard(1,6) == jucator && playboard(3,2) == jucator && playboard(2,4) == "_")
                                            true = 1;
                                          else
                                            if (playboard(2,4) == jucator && playboard(3,2) == jucator && playboard(1,6) == "_")
                                              true = 1;
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
