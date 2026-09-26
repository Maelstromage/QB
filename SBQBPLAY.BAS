DECLARE SUB PlayWaveNow (file$)
DECLARE SUB ResetDSP ()
DECLARE SUB SendDSP (snddata%)
DECLARE SUB SpkON ()

' Obo Digital Software
' * SEE SUB SendDSP for complete how to section.
' Email address: obodig@aol.com
'
' Questions? Comments? Going to use it? Please email me.


CONST port% = &H220
'               ^ Put 'yer port here

ResetDSP
SpkON

CLS
PRINT "Playing..."
PlayWaveNow "c:\windows\ding.wav"          '  <-If you have Windows3.1
'PlayWaveNow "c:\windows\media\ding.wav"   '  <-If you have Windows95
'PlayWaveNow ""                            '  <-If you have something else
                                           '    that I don't know about,
                                           '    please fill it in.
PRINT "Done."

SUB PlayWaveNow (file$)
'
' This plays a wave file of any size with NO-multitasking
'
OPEN file$ FOR BINARY AS #1
SndPosN = 90 'Offset to the start of data
DO
   SndPosN = SndPosN + 2'<-- Change this for faster of slower music
   GET #1, SndPosN, I%
'   SendDSP &H12        '<- These do the same as the lines that follow but
'   SendDSP i%          'are slower.

   OUT port% + &HC, &H12
DO
 isready = INP(port% + &HC)
LOOP WHILE isready = 1 AND &H80  'Check bit 7 (Write buffer status)
   OUT port% + &HC, I%
LOOP UNTIL EOF(1)
IF SndPosN <= 100 THEN PRINT "No sound to play."
SndPosN = 0
CLOSE

END SUB

SUB ResetDSP
OUT port% + 6, 1
 DO
         rdsp% = INP(dspreset%)
 LOOP UNTIL rdsp% = 0
OUT port% + 6, 0

END SUB

SUB SendDSP (snddata%)
'
'
' Here's how a SB card can be told to play sound in QBasic:
'                                              
' First, let's take a moment to review the I/O ports of a Sound
' Blaster card. A SB uses your base port (&H220 or &H240, ect.)
' plus 0 to F. The table below shows these ports:
'
'  Port        Description                       What to do
'  컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴컴
'  Base + 6H   DSP Reset                         write
'  Base + 8H*  FM (Data/Status)                  read/write
'  Base + 9H*  FM (Register Port)                write
'  Base + 0AH  DSP Read Data                     read
'  Base + 0CH  DSP Write Data or Command         write
'  Base + 0CH  DSP Write Buffer Status (bit 7)   read
'  Base + 0EH  DSP Data Available Status (bit 7) read
'
'  These are the I/O address ports on a SoundBlaster. The one
'  that we are most interested in is, Base + 0CH. This does most
'  of the important things. The way a it works is first you send
'  a command to Base + 0CH, a simple "OUT &220+&HC, &HD1" will
'  do. This tells the card to turn on the speaker. Now we want
'  to play sound. First we have to tell the card, "Hey, I'm going
'  to give you data. Get ready to play sound with it." This is
'  the &H12 command. So what we have now is...
'
'  OUT &220+&HC, &H12
'        ^ Reminder, put your base port here, if different.
'
'  Now the sound card is thinking "Ok, I'm ready. Send up the data."
'  So to make it happy and so you can play sound that's just what
'  we're gonna' do...
'
' OUT &220+&HC, thedata
'               ^ Ooops, forgot to tell you. Make sure the data is
'                 an Integer form. (you can add a % to the end of
'                 that varriable to make sure it is)
'
' You should hear a "Pop!" or a pop-like sound.  We just gave the sound
' card one, single sample. To make real sound we need to feed the card
' a real data. So we're going to play a wave file dirrectly from your
' hard disk (It should be fast enough.) Ok? Here we go...
'
' OPEN "C:\WINDOWS\DING.WAV" FOR BINARY AS #1
'        ^ Or whatever you want
' DO
'    SndPosN = SndPosN + 2          'Move file pointer (position in file)
'    GET #1, SndPosN, i%            'Get a bit
'    OUT port% + &HC, &H12          'Send "play" command
'  DO
'   isready = INP(port% + &HC)      'Wait until SB is ready
'  LOOP WHILE isready = 1 AND &H80
'                                ^ WHAT? See *.
'    OUT port% + &HC, i%            'Play sound
' LOOP UNTIL EOF(1)
'
' Ok. If that was done right you would have heard a pretty sloppy "ding".
' Now, you might be thinking why did I put a * near the do/loop segment.
' A little proble arises. We just told the SoundBlaster to get ready, but
' before it had a chance to get ready we sent data. You wouldn't say
' "Hello-Goodbye" (Well, maybe if your weird...), would you? So we have
' to wait for the card to say "Ok... I'm ready." (Note: Please don't
' think cards talk to themselves. It's silly, I know. But it's easier
' to describe it this way, without having to know what 1001111 1001011
' means.) To check this we have to find a way to see that the card took
' and read the command. We can check the Write Buffer's Status at bit 7
' of port Base + 0CH. To do this we can just have a do/loop loop pause
' until bit 7 of Base + 0CH is a 1. Like this...
'
'  DO
'   isready = INP(port% + &HC)    
'  LOOP WHILE isready = 1 AND &H80
'
' Note: If you have a seperate sub to do DSP writting you may not need
' to pause between writes. QBasic is slow enough to do it for you. If
' you compile it the sound quality will be much better. (With a little
' tinkering of some varriables.) Remember these commands - very commonly
' used:
'
' &HD1  Turn on speaker
' &HD0  Turn off speaker
' &H12  Play sound          - try others like &H13... they play sound too
'                             but don't go too crazy 
'
' Resetting the DSP - If you make a mistake and want to reset the DSP
' (by the way - DSP stands for Digital Signal Processor) You can do this:
'
' OUT port% + 6, 1
' DO
'         reset% = INP(dspreset%)
' LOOP UNTIL reset% = 0
' OUT port% + 6, 0
'
' Well, that's it. I'll add more functions and info some time later.
' Thanks for reading, I hope this was helpful.                   -Al
                







'DO
' isready = INP(port% + &HC)
'LOOP WHILE isready = 1 AND &H80  'Check bit 7 (Write buffer status) to
                                 'see if the card is ready

OUT port% + &HC, snddata%        'Send data to DSP Write Data port
                                        
END SUB

SUB SpkON
SendDSP &HD1  'Turn speaker on

END SUB

