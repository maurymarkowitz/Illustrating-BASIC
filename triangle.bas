5 REM TRIANGLE CALCULATOR, PAGE 24
10 PRINT "TYPE LENGTHS (P&Q) & INCL. ANGLE (DEGR.)"
20 LET K=3.141593/180
30 INPUT P,Q,D
40 LET C=D¥K
50 LET S=0.5*P*Q*SIN(C)
6O LET A=ATN(Q*SIN(C)/(P-Q*COS(C)))/K
70 LET B=ATN(P*SIN(C)/(Q—P*COS©))/K
80 LET G= SQR(P*P+Q*Q—2*P*Q*COS©)
90 PRINT "AREA";S;"OPPOSITE SIDE";G
100 PRINT "BASE ANGLES";A;"AND";B
110 END