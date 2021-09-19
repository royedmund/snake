100 REM SNAKE BY ROY E ANTAW #SEPTANDY 2021
110 REM USING SIMPLE SET POINT GRAPHICS COMMAND
120 REM KEYBOARD SCANNING PEEK(14537)
140 CLS
160 PRINT "SNAKE"
165 REM P STORES THE ARROW KEY PRESSED VALUE Q STORES THE PREVIOUS ARROW KEY VALUE
170 P=0: Q=0
190 REM SCORE STORED IN S
200 S=0
210 REM STARTING LOCATION FOR THE SNAKE
220 X= 63                 
230 Y=24 
240 REM DRAW BORDER
250 FOR I=0 TO 127
260 SET(I,3)
270 SET(I,47)
280 NEXT I  
290 FOR I=3 TO 47
300 SET(0,I)
310 SET(127,I)
320 NEXT I  
330 PRINT @0,"READY";        
340 SET(X,Y)       
350 REM SCAN ARROW KEYS 8 FOR UP, 16 FOR DOWN, 32 FOR LEFT OR 64 FOR RIGHT
360 P=PEEK(14400) 
370 IF P=0 LET P=Q
380 REM UP 
390 IF P=8 LET Y=Y-1 :GOTO 500
400 REM LEFT 32
410 IF P=32 LET X=X-1 : GOTO 500
420 REM DOWN 16
430 IF P=16 LET Y=Y+1 : GOTO 500
440 REM RIGHT 64
450 IF P=64 LET X=X+1 : GOTO 500
460 GOTO 360 
500 REM SIMPLE COLLISION DETECTION
510 IF POINT(X,Y)<>0 GOTO 610
520 REM SAVE STATE OF SNAKE MOVEMENT
530 SET (X,Y)
540 S=S+1
550 PRINT @0,"SCORE ";S;
560 Q=P
570 GOTO 360
600 REM COLLISION DETECTED OR GAME ENDED
610 PRINT @0,"SCORE ";S," ***GAME OVER*** PLAY AGAIN? (Y/N)";
640 K$=INKEY$ 
650 IF K$="Y" GOTO 140  
660 IF K$<>"N" GOTO 640    
999 END 
