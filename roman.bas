10 REM DECODE ROMAN NUMERALS
20 DIM A(11,7), C$(7)
30 REM EACH ELEMENT =100 ADDITION + NEWSTATE
100 REM M, D, C, L, X, V, I
110 DATA 100002, 50003, 10009, 5005, 1010, 507, 111
120 PATA 100002, 50003, 10009, 5005, 1010, 507, 111
130 DATA —1, -1, 10009, 5005, 1010, 507, 111
140 DATA -1, -1, 10004, 5005, 1010, 507, 111
150 DATA -1, -1, —1, 5006, 1010, 507, 111
460 DATA -1, -1, -1, —1, 1006, 507, 111
470 DATA -1, —1, -1, -1, —1, 508, 411
580 DATA -1, —1, -1, -1, —1, -1, 108
190 DATA 80005, 30005, 10004, 5006, 1010, 508, 111
200 DATA -1, -1, 8007, 3007, 1006, 508, 111
210 DATA —1, -1, —1, —1, 800, 300, 108
220 REM
230 MAT READ A(11,7)
240 DATA "M", "D", "C", "L", "X", "V", "I"
250 READ C$(1), C$(2), C$(3), C$(4), C$(5), C$(6), C$(7)
260 REM
300 REM MAIN PROGRAM STARTS
310 PRINT "TYPE ROMAN NUMBERS LETTER BY LETTER"
320 PRINT "END NUMBERS WITH * END RUN WITH ** "
330 PRINT "NUMBERS ENDING IV & IX NEED NO * “
340 PRINT
350 PRINT "START"
360 LET R=1 
370 LET M=O
380 LET C=0
390 LET P=0
400 INPUT T$
410 IF T$="**" THEN 610
420 IF T$="*" THEN 580
430 FOR K=1 TO 7
440 IF T$=C$(K) THEN 480
450 NEXT K
460 PRINT "CRAZY ROMAN NUMBER"
470 GO TO 340
480 LET X=A(R,K)
490 IF X<0 THEN 460
500 REM ENSURE ONLY 3 OCCURRENCES OF ANY 1 LETTER
510 LET C=(1-ABS(SGN(K-P)))*(1+C)
520 IF X>2 THEN 460
530 LET P=K
540 REM ACCUMULATE THE RESULT IN M, CHANGE STATE R
550 LET M=M+INT(X/100)
560 LET R=X-100*INT(X/100)
570 IF R<>0 THEN 400
580 REM PRINT THE RESULT
590 PRINT M
600 GO TO 340
610 END
