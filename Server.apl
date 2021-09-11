 Server ;DRC;C;Conga;server;data;S1;DiscordBot
 'Conga' ⎕CY 'conga' ⍝ import conga as C
 C←Conga
 DRC ← C.Init 'DiscordBot'
 server ← DRC.Srv 'S1' 'localhost' 8080 'http'
 flag ← 1
 :while flag
     data←DRC.Wait 'S1'
     :if 'TIMEOUT'≢2⊃data
         (rc obj evt dat)←data
         ⎕←'Received' dat
     :endif
   ⍝ :select evt
   ⍝ :case 'HTTPHeader'
   ⍝   ⎕←'request given:' data
   ⍝ :else
   ⍝   ⎕←'something else'
   ⍝ :endselect
 :endwhile
