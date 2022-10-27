.31 (Oct 26 22)
- fixed crash when using /set screensize w/ no parameters
- new theme string displayed when wrong parameters 
  for /set screensize is given: $error.screensize 
- fixed crash when staying in /? or /scroll for too long
- new theme string displayed when chat buffer is reset: $error.chatresumed
- fixed issue with /scroll not updating if connected for a really long time
- gated server messages so messages from other sessions do not bleed into the current session
  (for multiple logins)
- code cleanups
- /nick has been removed, mrcX now uses the bbs user alias for sending packets,
  this was done to maintain the integrity of MRC as a whole


.30
- inital public beta release