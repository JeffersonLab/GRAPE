*(proc_title.h)
      if      (kfcode(2) .EQ.  11) then
         e       = 'e- '
         e_p     = 'e- p '
         e_X     = 'e- X '

         e_q(1)  = 'e- u '
         e_q(2)  = 'e- u^'
         e_q(3)  = 'e- d '
         e_q(4)  = 'e- d^'
         e_q(5)  = 'e- s '
         e_q(6)  = 'e- s^'
         e_q(7)  = 'e- c '
         e_q(8)  = 'e- c^'
         e_q(9)  = 'e- b '
         e_q(10) = 'e- b^'
         e_q(11) = 'e- t '
         e_q(12) = 'e- t^'
       elseif (kfcode(2) .EQ. -11) then
         e       = 'e+ '
         e_p     = 'e+ p '
         e_X     = 'e+ X '

         e_q(1)  = 'e+ u '
         e_q(2)  = 'e+ u^'
         e_q(3)  = 'e+ d '
         e_q(4)  = 'e+ d^'
         e_q(5)  = 'e+ s '
         e_q(6)  = 'e+ s^'
         e_q(7)  = 'e+ c '
         e_q(8)  = 'e+ c^'
         e_q(9)  = 'e+ b '
         e_q(10) = 'e+ b^'
         e_q(11) = 'e+ t '
         e_q(12) = 'e+ t^'
       else
         write(6,*) '!!!Error in proc_title.h!!!'
         write(6,*) '  ---> KF-code for Particle2 =', kfcode(2)
         write(6,*) '       is not supported.'
         write(6,*) '  ---> Good By!'
         STOP
      endif


      q_q(1)  = 'u  u^'
      q_q(2)  = 'u^  u'
      q_q(3)  = 'd  d^'
      q_q(4)  = 'd^  d'
      q_q(5)  = 's  s^'
      q_q(6)  = 's^  s'
      q_q(7)  = 'c  c^'
      q_q(8)  = 'c^  c'
      q_q(9)  = 'b  b^'
      q_q(10) = 'b^ b '
      q_q(11) = 't  t^'
      q_q(12) = 't^  t'

      q_g(1)  = 'u   g'
      q_g(2)  = 'u^  g'
      q_g(3)  = 'd   g'
      q_g(4)  = 'd^  g'
      q_g(5)  = 's   g'
      q_g(6)  = 's^  g'
      q_g(7)  = 'c   g'
      q_g(8)  = 'c^  g'
      q_g(9)  = 'b   g'
      q_g(10) = 'b^  g'
      q_g(11) = 't   g'
      q_g(12) = 't^  g'

      ll(1)   = 'e+   e-  '
      ll(2)   = 'mu+  mu- '
      ll(3)   = 'tau+ tau-'

      q( 1)   = 'u '
      q( 2)   = 'u^'
      q( 3)   = 'd '
      q( 4)   = 'd^'
      q( 5)   = 's '
      q( 6)   = 's^'
      q( 7)   = 'c '
      q( 8)   = 'c^'
      q( 9)   = 'b '
      q(10)   = 'b^'
      q(11)   = 't '
      q(12)   = 't^'
