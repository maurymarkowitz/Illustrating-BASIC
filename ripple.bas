10 REM RIPPLE SORT; MAX 100 NUMBERS, PAGE 67
20 DIM A(100)
30 DATA 5
4O DATA 6.5, 13.9, 4.6, 10.2, 3.5
50 REM CONTINUE DATA STATEMENTS AS RQD.
60 REM
1000 READ N
1010 FOR I=1 TO N
1020 READ A(I)
1030 NEXT I
1040 REM
1050 REM
1060 FOR S=1 TO N-1
1070 LET M=0
1080 FOR I=1 TO N-S
1090 IF A(I)<=A(I+1) THEN 1140
1100 LET X=A(I)
1110 LET A(I)=A(I+1)
1120 LET A(I+1)=X
1130 LET M=1
1140 NEXT I
1150 IF M=0 THEN 2000
1160 NEXT S
2000 REM
2010 REM
2020 FOR I=1 TO N
2030 PRINT A(I)
2040 NEXT I
2050 END
