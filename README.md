# discord-apl
A discord wrapper written in APL with the help of Dyalog Conga.

## Steps to Use(so far)
- Make sure you have port 8080 free on your PC
- Type `]LINK.create dapl <path>/discord-apl`
<!--
]LINK.create dapl ./discord-apl
-->
- Type `dapl.Server`
- Forward `localhost:8080` to a link of choice(I use ngrok)
- Set the link as your bot endpoint.

## Current Goals
- Have the bot authenticate with discord corrrectly
- Have the bot respond to a ping
- Have the bot react to mentions
- Slash command to execute code using dyalog safe exec
