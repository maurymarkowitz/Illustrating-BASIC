5 REM THE GAME OF MOO, PAGE 56
10 PRINT "THROW TWO DICE"
15 INPUT I,J
20 FOR K=0 TO 6*I+J-7
25 LET X=RND
30 NEXT K
35 REM NOW FOR THE PROGRAM PROPER
110 LET X=INT(10000*RND)
120 LET Y=X
130 GO SUB 1000
140 LF C>0 JHEN 110
150 REM NO COWS ON COMPARISON WITH SELF
160 PRINT "I HAYE CHOSEN A 4-DIGIT NUMBER"
170 LET T=0
180 LET T=T+1
190 PRINT "WHAT'S YOUR GUESS"
200 INPUT X
210 GO SUB 1000
220 PRINT B;"BULLS &";C;"COWS"
230 IF B<4 THEN 180
240 PRINT "THAT TOOK";T;"TRIES"
250 PRINT
260 GO TO 110
265 REM STOP THIS GAME WITH 'BREAK' KEY
1000 REM SUBROUTINE
1010 LET B=0
1020 LET C=0
1030 FOR I=1 TO 4
1040 LET K=10^I
1050 LET L=INT(10*(X—K+INT(X/K)+0.1)/K)
1060 FOR J=1 TO 4
1070 LET M=10^J
1075 LET P=INT(10*(Y—M*INT(Y/M)+0.1)/M)
1080 IF L<>P THEN 1130
1090 LET C=C+1
1100 IF I<>J THEN 1130
1110 LET C=C-1
1120 LET B=B+1
1130 NEXT J
1140 NEXT I
1150 RETURN
1160 REM
1200 END
