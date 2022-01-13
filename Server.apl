 Server ;DRC;C;Conga;server;data;S1;DiscordBot
 'Conga' ⎕CY 'conga' ⍝ import conga as C
 C←Conga
 DRC ← C.Init 'DiscordBot'
 DRC.SetProp '.' 'EventMode' 1                 ⍝ make sure (≢DRC.Wait) = 4
 server ← DRC.Srv 'S1' 'localhost' 8080 'http' ⍝ Create server
 ⎕USING ← 'System.'
 ⍝ Event loop
 :while flag
    (rc obj evt dat)←DRC.Wait 'S1'
   :select evt
   :case 'HTTPHeader'
       req←4↑⊃↓dat
       :if req≡'POST'
           ⎕←'Handling Post'
       :elseif req≡'GET '
           ⎕←'Handling Get'
       :endif

   :else
     ⎕←'something else'
   :endselect
 :endwhile
 DRC.Close 'S1'