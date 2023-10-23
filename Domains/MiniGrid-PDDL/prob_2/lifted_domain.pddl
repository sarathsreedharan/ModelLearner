(define
	(domain grounded-MINIGRID)
	(:requirements :strips :action-costs)
	(:predicates
		( AT_X5_Y6 )
		( AT_X5_Y5 )
		( AT_X6_Y5 )
		( AT_X4_Y5 )
		( AT_X4_Y6 )
		( AT_X3_Y5 )
		( AT_X3_Y6 )
		( AT_X3_Y4 )
		( AT_X5_Y4 )
		( AT_X6_Y4 )
		( AT_X4_Y4 )
		( AT_X2_Y5 )
		( AT_X2_Y6 )
		( AT_X2_Y4 )
		( AT_X1_Y5 )
		( AT_X1_Y6 )
		( AT_X1_Y4 )
		( AT_X1_Y3 )
		( AT_X2_Y3 )
		( AT_X3_Y3 )
		( AT_X5_Y3 )
		( AT_X6_Y3 )
		( AT_X4_Y3 )
		( AT_X1_Y2 )
		( AT_X2_Y2 )
		( AT_X3_Y2 )
		( AT_X5_Y2 )
		( AT_X6_Y2 )
		( AT_X4_Y2 )
		( AT_X1_Y1 )
		( AT_X2_Y1 )
		( AT_X3_Y1 )
		( AT_X5_Y1 )
		( AT_X6_Y1 )
		( AT_X4_Y1 )
		( AT_X7_Y3 )
		( AT_X8_Y3 )
		( AT_X8_Y2 )
		( AT_X8_Y1 )
		( AT_X8_Y4 )
		( AT_X9_Y1 )
		( AT_X9_Y2 )
		( AT_X9_Y4 )
		( AT_X9_Y3 )
		( AT_X10_Y1 )
		( AT_X10_Y2 )
		( AT_X10_Y3 )
		( AT_X8_Y5 )
		( AT_X9_Y5 )
		( AT_X8_Y6 )
		( AT_X9_Y6 )
		( IS-CARRYING_KEY1 )
		( IS-CLEAR_X10_Y4 )
		( CARRIABLE-AT_KEY1_X8_Y5 )
		( CARRIABLE-AT_KEY1_X8_Y1 )
		( CARRIABLE-AT_KEY1_X8_Y6 )
		( CARRIABLE-AT_KEY1_X8_Y2 )
		( CARRIABLE-AT_KEY1_X8_Y4 )
		( CARRIABLE-AT_KEY1_X8_Y3 )
		( CARRIABLE-AT_KEY1_X2_Y5 )
		( CARRIABLE-AT_KEY1_X2_Y1 )
		( CARRIABLE-AT_KEY1_X2_Y6 )
		( CARRIABLE-AT_KEY1_X2_Y2 )
		( CARRIABLE-AT_KEY1_X2_Y4 )
		( CARRIABLE-AT_KEY1_X2_Y3 )
		( CARRIABLE-AT_KEY1_X9_Y1 )
		( CARRIABLE-AT_KEY1_X9_Y2 )
		( CARRIABLE-AT_KEY1_X9_Y3 )
		( CARRIABLE-AT_KEY1_X4_Y5 )
		( CARRIABLE-AT_KEY1_X4_Y1 )
		( CARRIABLE-AT_KEY1_X4_Y6 )
		( CARRIABLE-AT_KEY1_X4_Y2 )
		( CARRIABLE-AT_KEY1_X4_Y4 )
		( CARRIABLE-AT_KEY1_X4_Y3 )
		( CARRIABLE-AT_KEY1_X3_Y5 )
		( CARRIABLE-AT_KEY1_X3_Y1 )
		( CARRIABLE-AT_KEY1_X3_Y6 )
		( CARRIABLE-AT_KEY1_X3_Y2 )
		( CARRIABLE-AT_KEY1_X3_Y4 )
		( CARRIABLE-AT_KEY1_X3_Y3 )
		( CARRIABLE-AT_KEY1_X7_Y3 )
		( CARRIABLE-AT_KEY1_X5_Y5 )
		( CARRIABLE-AT_KEY1_X5_Y1 )
		( CARRIABLE-AT_KEY1_X5_Y6 )
		( CARRIABLE-AT_KEY1_X5_Y2 )
		( CARRIABLE-AT_KEY1_X5_Y4 )
		( CARRIABLE-AT_KEY1_X5_Y3 )
		( CARRIABLE-AT_KEY1_X6_Y3 )
		( CARRIABLE-AT_KEY1_X1_Y5 )
		( CARRIABLE-AT_KEY1_X1_Y1 )
		( CARRIABLE-AT_KEY1_X1_Y6 )
		( CARRIABLE-AT_KEY1_X1_Y2 )
		( CARRIABLE-AT_KEY1_X1_Y4 )
		( CARRIABLE-AT_KEY1_X1_Y3 )
		( CARRIABLE-AT_KEY1_X9_Y5 )
		( CARRIABLE-AT_KEY1_X9_Y6 )
		( CARRIABLE-AT_KEY1_X9_Y4 )
		( CARRIABLE-AT_KEY1_X11_Y1 )
		( CARRIABLE-AT_KEY1_X11_Y2 )
		( CARRIABLE-AT_KEY1_X11_Y3 )
		( CARRIABLE-AT_KEY1_X6_Y5 )
		( CARRIABLE-AT_KEY1_X6_Y1 )
		( CARRIABLE-AT_KEY1_X6_Y6 )
		( CARRIABLE-AT_KEY1_X6_Y2 )
		( CARRIABLE-AT_KEY1_X6_Y4 )
		( CARRIABLE-AT_KEY1_X10_Y5 )
		( CARRIABLE-AT_KEY1_X10_Y1 )
		( CARRIABLE-AT_KEY1_X10_Y6 )
		( CARRIABLE-AT_KEY1_X10_Y2 )
		( CARRIABLE-AT_KEY1_X10_Y3 )
		( IS-CLEAR_X4_Y7 )
		( AT_X11_Y1 )
		( AT_X11_Y2 )
		( AT_X11_Y3 )
		( AT_X12_Y1 )
		( AT_X12_Y2 )
		( AT_X12_Y3 )
		( AT_X13_Y1 )
		( AT_X13_Y2 )
		( AT_X13_Y3 )
		( AT_X10_Y5 )
		( AT_X10_Y6 )
		( AT_X10_Y4 )
		( AT_X11_Y4 )
		( AT_X12_Y4 )
		( AT_X13_Y4 )
		( AT_X4_Y7 )
		( AT_X4_Y8 )
		( CARRIABLE-AT_KEY1_X11_Y4 )
		( CARRIABLE-AT_KEY1_X3_Y8 )
		( CARRIABLE-AT_KEY1_X12_Y1 )
		( CARRIABLE-AT_KEY1_X12_Y2 )
		( CARRIABLE-AT_KEY1_X12_Y4 )
		( CARRIABLE-AT_KEY1_X12_Y3 )
		( CARRIABLE-AT_KEY1_X11_Y5 )
		( CARRIABLE-AT_KEY1_X11_Y6 )
		( CARRIABLE-AT_KEY1_X13_Y1 )
		( CARRIABLE-AT_KEY1_X13_Y2 )
		( CARRIABLE-AT_KEY1_X13_Y4 )
		( CARRIABLE-AT_KEY1_X13_Y3 )
		( CARRIABLE-AT_KEY1_X5_Y8 )
		( CARRIABLE-AT_KEY1_X4_Y7 )
		( AT_X3_Y8 )
		( AT_X11_Y5 )
		( AT_X11_Y6 )
		( AT_X12_Y5 )
		( AT_X12_Y6 )
		( AT_X13_Y5 )
		( AT_X13_Y6 )
		( AT_X5_Y8 )
		( AT_X3_Y9 )
		( AT_X5_Y9 )
		( AT_X4_Y9 )
		( CARRIABLE-AT_KEY1_X2_Y8 )
		( CARRIABLE-AT_KEY1_X2_Y9 )
		( CARRIABLE-AT_KEY1_X4_Y8 )
		( CARRIABLE-AT_KEY1_X4_Y9 )
		( CARRIABLE-AT_KEY1_X3_Y9 )
		( CARRIABLE-AT_KEY1_X12_Y5 )
		( CARRIABLE-AT_KEY1_X12_Y6 )
		( CARRIABLE-AT_KEY1_X6_Y8 )
		( CARRIABLE-AT_KEY1_X6_Y9 )
		( CARRIABLE-AT_KEY1_X13_Y5 )
		( CARRIABLE-AT_KEY1_X13_Y6 )
		( CARRIABLE-AT_KEY1_X5_Y9 )
		( AT_X2_Y8 )
		( AT_X2_Y9 )
		( AT_X1_Y8 )
		( AT_X1_Y9 )
		( AT_X6_Y8 )
		( AT_X6_Y9 )
		( AT_X1_Y10 )
		( AT_X2_Y10 )
		( AT_X3_Y10 )
		( AT_X5_Y10 )
		( AT_X6_Y10 )
		( AT_X4_Y10 )
		( AT_X1_Y11 )
		( AT_X3_Y11 )
		( AT_X5_Y11 )
		( AT_X6_Y11 )
		( AT_X4_Y11 )
		( IS-CARRYING_KEY0 )
		( IS-CLEAR_X2_Y11 )
		( CARRIABLE-AT_KEY0_X8_Y5 )
		( CARRIABLE-AT_KEY0_X8_Y1 )
		( CARRIABLE-AT_KEY0_X8_Y6 )
		( CARRIABLE-AT_KEY0_X8_Y2 )
		( CARRIABLE-AT_KEY0_X8_Y4 )
		( CARRIABLE-AT_KEY0_X8_Y3 )
		( CARRIABLE-AT_KEY0_X10_Y5 )
		( CARRIABLE-AT_KEY0_X10_Y1 )
		( CARRIABLE-AT_KEY0_X10_Y6 )
		( CARRIABLE-AT_KEY0_X10_Y2 )
		( CARRIABLE-AT_KEY0_X10_Y4 )
		( CARRIABLE-AT_KEY0_X10_Y3 )
		( CARRIABLE-AT_KEY0_X2_Y10 )
		( CARRIABLE-AT_KEY0_X2_Y8 )
		( CARRIABLE-AT_KEY0_X2_Y5 )
		( CARRIABLE-AT_KEY0_X2_Y1 )
		( CARRIABLE-AT_KEY0_X2_Y6 )
		( CARRIABLE-AT_KEY0_X2_Y9 )
		( CARRIABLE-AT_KEY0_X2_Y2 )
		( CARRIABLE-AT_KEY0_X2_Y4 )
		( CARRIABLE-AT_KEY0_X2_Y3 )
		( CARRIABLE-AT_KEY1_X2_Y10 )
		( CARRIABLE-AT_KEY1_X2_Y11 )
		( CARRIABLE-AT_KEY0_X11_Y5 )
		( CARRIABLE-AT_KEY0_X11_Y1 )
		( CARRIABLE-AT_KEY0_X11_Y6 )
		( CARRIABLE-AT_KEY0_X11_Y2 )
		( CARRIABLE-AT_KEY0_X11_Y4 )
		( CARRIABLE-AT_KEY0_X11_Y3 )
		( CARRIABLE-AT_KEY0_X9_Y5 )
		( CARRIABLE-AT_KEY0_X9_Y1 )
		( CARRIABLE-AT_KEY0_X9_Y6 )
		( CARRIABLE-AT_KEY0_X9_Y2 )
		( CARRIABLE-AT_KEY0_X9_Y4 )
		( CARRIABLE-AT_KEY0_X9_Y3 )
		( CARRIABLE-AT_KEY0_X4_Y10 )
		( CARRIABLE-AT_KEY0_X4_Y8 )
		( CARRIABLE-AT_KEY0_X4_Y5 )
		( CARRIABLE-AT_KEY0_X4_Y11 )
		( CARRIABLE-AT_KEY0_X4_Y1 )
		( CARRIABLE-AT_KEY0_X4_Y6 )
		( CARRIABLE-AT_KEY0_X4_Y9 )
		( CARRIABLE-AT_KEY0_X4_Y2 )
		( CARRIABLE-AT_KEY0_X4_Y4 )
		( CARRIABLE-AT_KEY0_X4_Y3 )
		( CARRIABLE-AT_KEY1_X4_Y10 )
		( CARRIABLE-AT_KEY1_X4_Y11 )
		( CARRIABLE-AT_KEY0_X3_Y10 )
		( CARRIABLE-AT_KEY0_X3_Y8 )
		( CARRIABLE-AT_KEY0_X3_Y5 )
		( CARRIABLE-AT_KEY0_X3_Y11 )
		( CARRIABLE-AT_KEY0_X3_Y1 )
		( CARRIABLE-AT_KEY0_X3_Y6 )
		( CARRIABLE-AT_KEY0_X3_Y9 )
		( CARRIABLE-AT_KEY0_X3_Y2 )
		( CARRIABLE-AT_KEY0_X3_Y4 )
		( CARRIABLE-AT_KEY0_X3_Y3 )
		( CARRIABLE-AT_KEY1_X3_Y10 )
		( CARRIABLE-AT_KEY1_X3_Y11 )
		( CARRIABLE-AT_KEY0_X7_Y3 )
		( CARRIABLE-AT_KEY0_X12_Y5 )
		( CARRIABLE-AT_KEY0_X12_Y1 )
		( CARRIABLE-AT_KEY0_X12_Y6 )
		( CARRIABLE-AT_KEY0_X12_Y2 )
		( CARRIABLE-AT_KEY0_X12_Y4 )
		( CARRIABLE-AT_KEY0_X12_Y3 )
		( CARRIABLE-AT_KEY0_X5_Y10 )
		( CARRIABLE-AT_KEY0_X5_Y8 )
		( CARRIABLE-AT_KEY0_X5_Y5 )
		( CARRIABLE-AT_KEY0_X5_Y11 )
		( CARRIABLE-AT_KEY0_X5_Y1 )
		( CARRIABLE-AT_KEY0_X5_Y6 )
		( CARRIABLE-AT_KEY0_X5_Y9 )
		( CARRIABLE-AT_KEY0_X5_Y2 )
		( CARRIABLE-AT_KEY0_X5_Y4 )
		( CARRIABLE-AT_KEY0_X5_Y3 )
		( CARRIABLE-AT_KEY1_X5_Y10 )
		( CARRIABLE-AT_KEY1_X5_Y11 )
		( CARRIABLE-AT_KEY0_X6_Y3 )
		( CARRIABLE-AT_KEY0_X1_Y10 )
		( CARRIABLE-AT_KEY0_X1_Y8 )
		( CARRIABLE-AT_KEY0_X1_Y5 )
		( CARRIABLE-AT_KEY0_X1_Y1 )
		( CARRIABLE-AT_KEY0_X1_Y6 )
		( CARRIABLE-AT_KEY0_X1_Y9 )
		( CARRIABLE-AT_KEY0_X1_Y2 )
		( CARRIABLE-AT_KEY0_X1_Y4 )
		( CARRIABLE-AT_KEY0_X1_Y3 )
		( CARRIABLE-AT_KEY1_X1_Y10 )
		( CARRIABLE-AT_KEY1_X1_Y8 )
		( CARRIABLE-AT_KEY1_X1_Y9 )
		( CARRIABLE-AT_KEY0_X6_Y10 )
		( CARRIABLE-AT_KEY0_X6_Y8 )
		( CARRIABLE-AT_KEY0_X6_Y5 )
		( CARRIABLE-AT_KEY0_X6_Y11 )
		( CARRIABLE-AT_KEY0_X6_Y1 )
		( CARRIABLE-AT_KEY0_X6_Y6 )
		( CARRIABLE-AT_KEY0_X6_Y9 )
		( CARRIABLE-AT_KEY0_X6_Y2 )
		( CARRIABLE-AT_KEY0_X6_Y4 )
		( CARRIABLE-AT_KEY1_X6_Y10 )
		( CARRIABLE-AT_KEY1_X6_Y11 )
		( CARRIABLE-AT_KEY0_X13_Y5 )
		( CARRIABLE-AT_KEY0_X13_Y1 )
		( CARRIABLE-AT_KEY0_X13_Y6 )
		( CARRIABLE-AT_KEY0_X13_Y2 )
		( CARRIABLE-AT_KEY0_X13_Y4 )
		( CARRIABLE-AT_KEY0_X13_Y3 )
		( CARRIABLE-AT_KEY0_X4_Y7 )
		( IS-CLEAR_X9_Y7 )
		( AT_X2_Y11 )
		( AT_X1_Y12 )
		( AT_X2_Y12 )
		( AT_X3_Y12 )
		( AT_X5_Y12 )
		( AT_X6_Y12 )
		( AT_X4_Y12 )
		( AT_X1_Y13 )
		( AT_X2_Y13 )
		( AT_X3_Y13 )
		( AT_X5_Y13 )
		( AT_X6_Y13 )
		( AT_X4_Y13 )
		( AT_X9_Y7 )
		( AT_X9_Y8 )
		( CARRIABLE-AT_KEY0_X8_Y8 )
		( CARRIABLE-AT_KEY1_X8_Y8 )
		( CARRIABLE-AT_KEY0_X2_Y13 )
		( CARRIABLE-AT_KEY0_X2_Y12 )
		( CARRIABLE-AT_KEY1_X2_Y13 )
		( CARRIABLE-AT_KEY1_X2_Y12 )
		( CARRIABLE-AT_KEY0_X4_Y13 )
		( CARRIABLE-AT_KEY0_X4_Y12 )
		( CARRIABLE-AT_KEY1_X4_Y13 )
		( CARRIABLE-AT_KEY1_X4_Y12 )
		( CARRIABLE-AT_KEY0_X3_Y13 )
		( CARRIABLE-AT_KEY0_X3_Y12 )
		( CARRIABLE-AT_KEY1_X3_Y13 )
		( CARRIABLE-AT_KEY1_X3_Y12 )
		( CARRIABLE-AT_KEY0_X5_Y13 )
		( CARRIABLE-AT_KEY0_X5_Y12 )
		( CARRIABLE-AT_KEY1_X5_Y13 )
		( CARRIABLE-AT_KEY1_X5_Y12 )
		( CARRIABLE-AT_KEY0_X1_Y13 )
		( CARRIABLE-AT_KEY0_X1_Y12 )
		( CARRIABLE-AT_KEY0_X1_Y11 )
		( CARRIABLE-AT_KEY1_X1_Y13 )
		( CARRIABLE-AT_KEY1_X1_Y12 )
		( CARRIABLE-AT_KEY1_X1_Y11 )
		( CARRIABLE-AT_KEY0_X6_Y13 )
		( CARRIABLE-AT_KEY0_X6_Y12 )
		( CARRIABLE-AT_KEY1_X6_Y13 )
		( CARRIABLE-AT_KEY1_X6_Y12 )
		( CARRIABLE-AT_KEY0_X10_Y8 )
		( CARRIABLE-AT_KEY1_X10_Y8 )
		( CARRIABLE-AT_KEY0_X9_Y7 )
		( CARRIABLE-AT_KEY1_X9_Y7 )
		( AT_X8_Y8 )
		( AT_X10_Y8 )
		( AT_X8_Y9 )
		( AT_X10_Y9 )
		( AT_X9_Y9 )
		( CARRIABLE-AT_KEY0_X8_Y9 )
		( CARRIABLE-AT_KEY1_X8_Y9 )
		( CARRIABLE-AT_KEY0_X9_Y8 )
		( CARRIABLE-AT_KEY0_X9_Y9 )
		( CARRIABLE-AT_KEY1_X9_Y8 )
		( CARRIABLE-AT_KEY1_X9_Y9 )
		( CARRIABLE-AT_KEY0_X11_Y8 )
		( CARRIABLE-AT_KEY0_X11_Y9 )
		( CARRIABLE-AT_KEY1_X11_Y8 )
		( CARRIABLE-AT_KEY1_X11_Y9 )
		( CARRIABLE-AT_KEY0_X10_Y9 )
		( CARRIABLE-AT_KEY1_X10_Y9 )
		( AT_X11_Y8 )
		( AT_X11_Y9 )
		( AT_X12_Y8 )
		( AT_X12_Y9 )
		( AT_X13_Y8 )
		( AT_X13_Y9 )
		( AT_X8_Y10 )
		( AT_X10_Y10 )
		( AT_X11_Y10 )
		( AT_X12_Y10 )
		( AT_X13_Y10 )
		( AT_X9_Y10 )
		( AT_X8_Y11 )
		( AT_X10_Y11 )
		( AT_X11_Y11 )
		( AT_X12_Y11 )
		( AT_X13_Y11 )
		( AT_X9_Y11 )
		( CARRIABLE-AT_KEY0_X8_Y10 )
		( CARRIABLE-AT_KEY0_X8_Y11 )
		( CARRIABLE-AT_KEY1_X8_Y10 )
		( CARRIABLE-AT_KEY1_X8_Y11 )
		( CARRIABLE-AT_KEY0_X10_Y10 )
		( CARRIABLE-AT_KEY0_X10_Y11 )
		( CARRIABLE-AT_KEY1_X10_Y10 )
		( CARRIABLE-AT_KEY1_X10_Y11 )
		( CARRIABLE-AT_KEY0_X11_Y10 )
		( CARRIABLE-AT_KEY0_X11_Y11 )
		( CARRIABLE-AT_KEY1_X11_Y10 )
		( CARRIABLE-AT_KEY1_X11_Y11 )
		( CARRIABLE-AT_KEY0_X9_Y10 )
		( CARRIABLE-AT_KEY0_X9_Y11 )
		( CARRIABLE-AT_KEY1_X9_Y10 )
		( CARRIABLE-AT_KEY1_X9_Y11 )
		( CARRIABLE-AT_KEY0_X12_Y10 )
		( CARRIABLE-AT_KEY0_X12_Y8 )
		( CARRIABLE-AT_KEY0_X12_Y11 )
		( CARRIABLE-AT_KEY0_X12_Y9 )
		( CARRIABLE-AT_KEY1_X12_Y10 )
		( CARRIABLE-AT_KEY1_X12_Y8 )
		( CARRIABLE-AT_KEY1_X12_Y11 )
		( CARRIABLE-AT_KEY1_X12_Y9 )
		( CARRIABLE-AT_KEY0_X13_Y10 )
		( CARRIABLE-AT_KEY0_X13_Y8 )
		( CARRIABLE-AT_KEY0_X13_Y11 )
		( CARRIABLE-AT_KEY0_X13_Y9 )
		( CARRIABLE-AT_KEY1_X13_Y10 )
		( CARRIABLE-AT_KEY1_X13_Y8 )
		( CARRIABLE-AT_KEY1_X13_Y11 )
		( CARRIABLE-AT_KEY1_X13_Y9 )
		( AT_X8_Y12 )
		( AT_X10_Y12 )
		( AT_X11_Y12 )
		( AT_X12_Y12 )
		( AT_X13_Y12 )
		( AT_X9_Y12 )
		( AT_X8_Y13 )
		( AT_X10_Y13 )
		( AT_X11_Y13 )
		( AT_X12_Y13 )
		( AT_X13_Y13 )
		( AT_X9_Y13 )
		( CARRIABLE-AT_KEY0_X8_Y13 )
		( CARRIABLE-AT_KEY0_X8_Y12 )
		( CARRIABLE-AT_KEY1_X8_Y13 )
		( CARRIABLE-AT_KEY1_X8_Y12 )
		( CARRIABLE-AT_KEY0_X10_Y13 )
		( CARRIABLE-AT_KEY0_X10_Y12 )
		( CARRIABLE-AT_KEY1_X10_Y13 )
		( CARRIABLE-AT_KEY1_X10_Y12 )
		( CARRIABLE-AT_KEY0_X11_Y13 )
		( CARRIABLE-AT_KEY0_X11_Y12 )
		( CARRIABLE-AT_KEY1_X11_Y13 )
		( CARRIABLE-AT_KEY1_X11_Y12 )
		( CARRIABLE-AT_KEY0_X9_Y13 )
		( CARRIABLE-AT_KEY0_X9_Y12 )
		( CARRIABLE-AT_KEY1_X9_Y13 )
		( CARRIABLE-AT_KEY1_X9_Y12 )
		( CARRIABLE-AT_KEY0_X12_Y13 )
		( CARRIABLE-AT_KEY0_X12_Y12 )
		( CARRIABLE-AT_KEY1_X12_Y13 )
		( CARRIABLE-AT_KEY1_X12_Y12 )
		( CARRIABLE-AT_KEY0_X13_Y13 )
		( CARRIABLE-AT_KEY0_X13_Y12 )
		( CARRIABLE-AT_KEY1_X13_Y13 )
		( CARRIABLE-AT_KEY1_X13_Y12 )
		( STORAGE-EMPTY )
		( IS-CLEAR_X9_Y12 )
		( IS-CLEAR_X13_Y12 )
		( IS-CLEAR_X12_Y12 )
		( IS-CLEAR_X11_Y12 )
		( IS-CLEAR_X10_Y12 )
		( IS-CLEAR_X8_Y12 )
		( IS-CLEAR_X9_Y11 )
		( IS-CLEAR_X13_Y11 )
		( IS-CLEAR_X12_Y11 )
		( IS-CLEAR_X11_Y11 )
		( IS-CLEAR_X10_Y11 )
		( IS-CLEAR_X8_Y11 )
		( IS-CLEAR_X10_Y13 )
		( IS-CLEAR_X13_Y13 )
		( IS-CLEAR_X12_Y13 )
		( IS-CLEAR_X11_Y13 )
		( IS-CLEAR_X9_Y13 )
		( IS-CLEAR_X8_Y13 )
		( IS-CLEAR_X9_Y10 )
		( IS-CLEAR_X13_Y10 )
		( IS-CLEAR_X12_Y10 )
		( IS-CLEAR_X11_Y10 )
		( IS-CLEAR_X10_Y10 )
		( IS-CLEAR_X8_Y10 )
		( IS-CLEAR_X9_Y9 )
		( IS-CLEAR_X13_Y9 )
		( IS-CLEAR_X12_Y9 )
		( IS-CLEAR_X11_Y9 )
		( IS-CLEAR_X10_Y9 )
		( IS-CLEAR_X8_Y9 )
		( IS-CLEAR_X13_Y8 )
		( IS-CLEAR_X12_Y8 )
		( IS-CLEAR_X11_Y8 )
		( IS-CLEAR_X10_Y8 )
		( IS-CLEAR_X9_Y8 )
		( IS-CLEAR_X8_Y8 )
		( IS-LOCKED_DOOR2 )
		( IS-CLEAR_X9_Y6 )
		( IS-CLEAR_X2_Y10 )
		( IS-CLEAR_X4_Y12 )
		( IS-CLEAR_X6_Y12 )
		( IS-CLEAR_X5_Y12 )
		( IS-CLEAR_X3_Y12 )
		( IS-CLEAR_X2_Y12 )
		( IS-CLEAR_X1_Y12 )
		( IS-CLEAR_X4_Y11 )
		( IS-CLEAR_X6_Y11 )
		( IS-CLEAR_X5_Y11 )
		( IS-CLEAR_X3_Y11 )
		( IS-CLEAR_X1_Y11 )
		( IS-CLEAR_X5_Y13 )
		( IS-CLEAR_X4_Y13 )
		( IS-CLEAR_X6_Y13 )
		( IS-CLEAR_X3_Y13 )
		( IS-CLEAR_X2_Y13 )
		( IS-CLEAR_X1_Y13 )
		( CARRIABLE-AT_KEY0_X2_Y11 )
		( IS-CLEAR_X4_Y6 )
		( IS-CLEAR_X9_Y5 )
		( IS-CLEAR_X4_Y5 )
		( IS-CLEAR_X13_Y5 )
		( IS-CLEAR_X6_Y5 )
		( IS-CLEAR_X5_Y5 )
		( IS-CLEAR_X3_Y5 )
		( IS-CLEAR_X2_Y5 )
		( IS-CLEAR_X12_Y5 )
		( IS-CLEAR_X11_Y5 )
		( IS-CLEAR_X1_Y5 )
		( IS-CLEAR_X10_Y5 )
		( IS-CLEAR_X8_Y5 )
		( IS-CLEAR_X4_Y10 )
		( IS-CLEAR_X6_Y10 )
		( IS-CLEAR_X5_Y10 )
		( IS-CLEAR_X3_Y10 )
		( IS-CLEAR_X1_Y10 )
		( IS-CLEAR_X9_Y1 )
		( IS-CLEAR_X4_Y1 )
		( IS-CLEAR_X13_Y1 )
		( IS-CLEAR_X6_Y1 )
		( IS-CLEAR_X5_Y1 )
		( IS-CLEAR_X3_Y1 )
		( IS-CLEAR_X2_Y1 )
		( IS-CLEAR_X12_Y1 )
		( IS-CLEAR_X11_Y1 )
		( IS-CLEAR_X1_Y1 )
		( IS-CLEAR_X10_Y1 )
		( IS-CLEAR_X8_Y1 )
		( IS-CLEAR_X4_Y9 )
		( IS-CLEAR_X6_Y9 )
		( IS-CLEAR_X5_Y9 )
		( IS-CLEAR_X3_Y9 )
		( IS-CLEAR_X2_Y9 )
		( IS-CLEAR_X1_Y9 )
		( IS-CLEAR_X6_Y8 )
		( IS-CLEAR_X2_Y8 )
		( IS-CLEAR_X1_Y8 )
		( IS-CLEAR_X4_Y8 )
		( IS-CLEAR_X5_Y8 )
		( IS-CLEAR_X3_Y8 )
		( IS-CLEAR_X9_Y4 )
		( IS-CLEAR_X4_Y4 )
		( IS-CLEAR_X13_Y4 )
		( IS-CLEAR_X6_Y4 )
		( IS-CLEAR_X5_Y4 )
		( IS-CLEAR_X3_Y4 )
		( IS-CLEAR_X2_Y4 )
		( IS-CLEAR_X12_Y4 )
		( IS-CLEAR_X11_Y4 )
		( IS-CLEAR_X1_Y4 )
		( IS-CLEAR_X8_Y4 )
		( IS-CLEAR_X9_Y2 )
		( IS-CLEAR_X4_Y2 )
		( IS-CLEAR_X13_Y2 )
		( IS-CLEAR_X6_Y2 )
		( IS-CLEAR_X5_Y2 )
		( IS-CLEAR_X3_Y2 )
		( IS-CLEAR_X2_Y2 )
		( IS-CLEAR_X12_Y2 )
		( IS-CLEAR_X11_Y2 )
		( IS-CLEAR_X1_Y2 )
		( IS-CLEAR_X10_Y2 )
		( IS-CLEAR_X8_Y2 )
		( IS-CLEAR_X9_Y3 )
		( IS-CLEAR_X4_Y3 )
		( IS-CLEAR_X13_Y3 )
		( IS-CLEAR_X6_Y3 )
		( IS-CLEAR_X5_Y3 )
		( IS-CLEAR_X3_Y3 )
		( IS-CLEAR_X2_Y3 )
		( IS-CLEAR_X12_Y3 )
		( IS-CLEAR_X11_Y3 )
		( IS-CLEAR_X1_Y3 )
		( IS-CLEAR_X10_Y3 )
		( IS-CLEAR_X8_Y3 )
		( IS-CLEAR_X5_Y6 )
		( IS-CLEAR_X10_Y6 )
		( IS-CLEAR_X13_Y6 )
		( IS-CLEAR_X6_Y6 )
		( IS-CLEAR_X3_Y6 )
		( IS-CLEAR_X12_Y6 )
		( IS-CLEAR_X7_Y3 )
		( IS-CLEAR_X2_Y6 )
		( IS-CLEAR_X11_Y6 )
		( IS-CLEAR_X1_Y6 )
		( IS-CLEAR_X8_Y6 )
		( IS-LOCKED_DOOR0 )
		( CARRIABLE-AT_KEY1_X10_Y4 )
		( AT_X6_Y6 )
		
		
	) 
	
	(:action PICKUP-DOWN_KEY1_X9_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y13 )
			( AT_X9_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y13 )
			(not ( CARRIABLE-AT_KEY1_X9_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X13_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y13 )
			( AT_X13_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y13 )
			(not ( CARRIABLE-AT_KEY1_X13_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X12_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y13 )
			( AT_X12_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y13 )
			(not ( CARRIABLE-AT_KEY1_X12_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X11_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y13 )
			( AT_X11_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y13 )
			(not ( CARRIABLE-AT_KEY1_X11_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X10_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y13 )
			( AT_X10_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y13 )
			(not ( CARRIABLE-AT_KEY1_X10_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X8_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y13 )
			( AT_X8_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y13 )
			(not ( CARRIABLE-AT_KEY1_X8_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X9_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y13 )
			( AT_X9_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y13 )
			(not ( CARRIABLE-AT_KEY0_X9_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X13_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y13 )
			( AT_X13_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y13 )
			(not ( CARRIABLE-AT_KEY0_X13_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X12_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y13 )
			( AT_X12_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y13 )
			(not ( CARRIABLE-AT_KEY0_X12_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X11_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y13 )
			( AT_X11_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y13 )
			(not ( CARRIABLE-AT_KEY0_X11_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X10_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y13 )
			( AT_X10_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y13 )
			(not ( CARRIABLE-AT_KEY0_X10_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X8_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y13 )
			( AT_X8_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y13 )
			(not ( CARRIABLE-AT_KEY0_X8_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X9_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y12 )
			( AT_X9_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y12 )
			(not ( CARRIABLE-AT_KEY1_X9_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X13_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y12 )
			( AT_X13_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y12 )
			(not ( CARRIABLE-AT_KEY1_X13_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X12_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y12 )
			( AT_X12_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y12 )
			(not ( CARRIABLE-AT_KEY1_X12_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X11_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y12 )
			( AT_X11_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y12 )
			(not ( CARRIABLE-AT_KEY1_X11_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X10_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y12 )
			( AT_X10_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y12 )
			(not ( CARRIABLE-AT_KEY1_X10_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X8_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y12 )
			( AT_X8_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y12 )
			(not ( CARRIABLE-AT_KEY1_X8_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X9_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y12 )
			( AT_X9_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y12 )
			(not ( CARRIABLE-AT_KEY0_X9_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X13_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y12 )
			( AT_X13_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y12 )
			(not ( CARRIABLE-AT_KEY0_X13_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X12_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y12 )
			( AT_X12_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y12 )
			(not ( CARRIABLE-AT_KEY0_X12_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X11_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y12 )
			( AT_X11_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y12 )
			(not ( CARRIABLE-AT_KEY0_X11_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X10_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y12 )
			( AT_X10_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y12 )
			(not ( CARRIABLE-AT_KEY0_X10_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X8_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y12 )
			( AT_X8_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y12 )
			(not ( CARRIABLE-AT_KEY0_X8_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X9_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y12 )
			( AT_X9_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y12 )
			(not ( CARRIABLE-AT_KEY1_X9_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X13_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y12 )
			( AT_X13_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y12 )
			(not ( CARRIABLE-AT_KEY1_X13_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X12_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y12 )
			( AT_X12_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y12 )
			(not ( CARRIABLE-AT_KEY1_X12_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X11_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y12 )
			( AT_X11_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y12 )
			(not ( CARRIABLE-AT_KEY1_X11_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X10_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y12 )
			( AT_X10_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y12 )
			(not ( CARRIABLE-AT_KEY1_X10_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X8_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y12 )
			( AT_X8_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y12 )
			(not ( CARRIABLE-AT_KEY1_X8_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X9_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y12 )
			( AT_X9_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y12 )
			(not ( CARRIABLE-AT_KEY0_X9_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X13_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y12 )
			( AT_X13_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y12 )
			(not ( CARRIABLE-AT_KEY0_X13_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X12_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y12 )
			( AT_X12_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y12 )
			(not ( CARRIABLE-AT_KEY0_X12_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X11_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y12 )
			( AT_X11_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y12 )
			(not ( CARRIABLE-AT_KEY0_X11_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X10_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y12 )
			( AT_X10_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y12 )
			(not ( CARRIABLE-AT_KEY0_X10_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X8_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y12 )
			( AT_X8_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y12 )
			(not ( CARRIABLE-AT_KEY0_X8_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X9_Y12_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y12 )
			( AT_X9_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y12 )
			(not ( CARRIABLE-AT_KEY1_X10_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X9_Y13_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y13 )
			( AT_X9_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y13 )
			(not ( CARRIABLE-AT_KEY1_X10_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X9_Y12_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y12 )
			( AT_X9_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y12 )
			(not ( CARRIABLE-AT_KEY0_X10_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X9_Y13_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y13 )
			( AT_X9_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y13 )
			(not ( CARRIABLE-AT_KEY0_X10_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X12_Y12_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y12 )
			( AT_X12_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y12 )
			(not ( CARRIABLE-AT_KEY1_X13_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X12_Y13_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y13 )
			( AT_X12_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y13 )
			(not ( CARRIABLE-AT_KEY1_X13_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X12_Y12_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y12 )
			( AT_X12_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y12 )
			(not ( CARRIABLE-AT_KEY0_X13_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X12_Y13_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y13 )
			( AT_X12_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y13 )
			(not ( CARRIABLE-AT_KEY0_X13_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X11_Y12_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y12 )
			( AT_X11_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y12 )
			(not ( CARRIABLE-AT_KEY1_X12_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X11_Y13_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y13 )
			( AT_X11_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y13 )
			(not ( CARRIABLE-AT_KEY1_X12_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X11_Y12_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y12 )
			( AT_X11_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y12 )
			(not ( CARRIABLE-AT_KEY0_X12_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X11_Y13_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y13 )
			( AT_X11_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y13 )
			(not ( CARRIABLE-AT_KEY0_X12_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X10_Y12_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y12 )
			( AT_X10_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y12 )
			(not ( CARRIABLE-AT_KEY1_X11_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X10_Y13_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y13 )
			( AT_X10_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y13 )
			(not ( CARRIABLE-AT_KEY1_X11_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X10_Y12_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y12 )
			( AT_X10_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y12 )
			(not ( CARRIABLE-AT_KEY0_X11_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X10_Y13_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y13 )
			( AT_X10_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y13 )
			(not ( CARRIABLE-AT_KEY0_X11_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X8_Y12_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y12 )
			( AT_X8_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y12 )
			(not ( CARRIABLE-AT_KEY1_X9_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X8_Y13_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y13 )
			( AT_X8_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y13 )
			(not ( CARRIABLE-AT_KEY1_X9_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X8_Y12_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y12 )
			( AT_X8_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y12 )
			(not ( CARRIABLE-AT_KEY0_X9_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X8_Y13_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y13 )
			( AT_X8_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y13 )
			(not ( CARRIABLE-AT_KEY0_X9_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X13_Y12_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y12 )
			( AT_X13_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y12 )
			(not ( CARRIABLE-AT_KEY1_X12_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X13_Y13_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y13 )
			( AT_X13_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y13 )
			(not ( CARRIABLE-AT_KEY1_X12_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X13_Y12_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y12 )
			( AT_X13_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y12 )
			(not ( CARRIABLE-AT_KEY0_X12_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X13_Y13_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y13 )
			( AT_X13_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y13 )
			(not ( CARRIABLE-AT_KEY0_X12_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X10_Y12_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y12 )
			( AT_X10_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y12 )
			(not ( CARRIABLE-AT_KEY1_X9_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X10_Y13_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y13 )
			( AT_X10_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y13 )
			(not ( CARRIABLE-AT_KEY1_X9_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X10_Y12_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y12 )
			( AT_X10_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y12 )
			(not ( CARRIABLE-AT_KEY0_X9_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X10_Y13_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y13 )
			( AT_X10_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y13 )
			(not ( CARRIABLE-AT_KEY0_X9_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X12_Y12_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y12 )
			( AT_X12_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y12 )
			(not ( CARRIABLE-AT_KEY1_X11_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X12_Y13_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y13 )
			( AT_X12_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y13 )
			(not ( CARRIABLE-AT_KEY1_X11_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X12_Y12_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y12 )
			( AT_X12_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y12 )
			(not ( CARRIABLE-AT_KEY0_X11_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X12_Y13_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y13 )
			( AT_X12_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y13 )
			(not ( CARRIABLE-AT_KEY0_X11_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X11_Y12_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y12 )
			( AT_X11_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y12 )
			(not ( CARRIABLE-AT_KEY1_X10_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X11_Y13_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y13 )
			( AT_X11_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y13 )
			(not ( CARRIABLE-AT_KEY1_X10_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X11_Y12_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y12 )
			( AT_X11_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y12 )
			(not ( CARRIABLE-AT_KEY0_X10_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X11_Y13_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y13 )
			( AT_X11_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y13 )
			(not ( CARRIABLE-AT_KEY0_X10_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X9_Y12_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y12 )
			( AT_X9_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y12 )
			(not ( CARRIABLE-AT_KEY1_X8_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X9_Y13_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y13 )
			( AT_X9_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y13 )
			(not ( CARRIABLE-AT_KEY1_X8_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X9_Y12_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y12 )
			( AT_X9_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y12 )
			(not ( CARRIABLE-AT_KEY0_X8_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X9_Y13_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y13 )
			( AT_X9_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y13 )
			(not ( CARRIABLE-AT_KEY0_X8_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action FORWARD-UP_X9_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y12 )
			( AT_X9_Y13 )
		)
		:effect
		(and
			
			( AT_X9_Y12 )
			(not ( AT_X9_Y13 ))
		)
	)
	(:action FORWARD-UP_X13_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y12 )
			( AT_X13_Y13 )
		)
		:effect
		(and
			
			( AT_X13_Y12 )
			(not ( AT_X13_Y13 ))
		)
	)
	(:action FORWARD-UP_X12_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y12 )
			( AT_X12_Y13 )
		)
		:effect
		(and
			
			( AT_X12_Y12 )
			(not ( AT_X12_Y13 ))
		)
	)
	(:action FORWARD-UP_X11_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y12 )
			( AT_X11_Y13 )
		)
		:effect
		(and
			
			( AT_X11_Y12 )
			(not ( AT_X11_Y13 ))
		)
	)
	(:action FORWARD-UP_X10_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y12 )
			( AT_X10_Y13 )
		)
		:effect
		(and
			
			( AT_X10_Y12 )
			(not ( AT_X10_Y13 ))
		)
	)
	(:action FORWARD-UP_X8_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y12 )
			( AT_X8_Y13 )
		)
		:effect
		(and
			
			( AT_X8_Y12 )
			(not ( AT_X8_Y13 ))
		)
	)
	(:action FORWARD-UP_X9_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y11 )
			( AT_X9_Y12 )
		)
		:effect
		(and
			
			( AT_X9_Y11 )
			(not ( AT_X9_Y12 ))
		)
	)
	(:action FORWARD-UP_X13_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y11 )
			( AT_X13_Y12 )
		)
		:effect
		(and
			
			( AT_X13_Y11 )
			(not ( AT_X13_Y12 ))
		)
	)
	(:action FORWARD-UP_X12_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y11 )
			( AT_X12_Y12 )
		)
		:effect
		(and
			
			( AT_X12_Y11 )
			(not ( AT_X12_Y12 ))
		)
	)
	(:action FORWARD-UP_X11_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y11 )
			( AT_X11_Y12 )
		)
		:effect
		(and
			
			( AT_X11_Y11 )
			(not ( AT_X11_Y12 ))
		)
	)
	(:action FORWARD-UP_X10_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y11 )
			( AT_X10_Y12 )
		)
		:effect
		(and
			
			( AT_X10_Y11 )
			(not ( AT_X10_Y12 ))
		)
	)
	(:action FORWARD-UP_X8_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y11 )
			( AT_X8_Y12 )
		)
		:effect
		(and
			
			( AT_X8_Y11 )
			(not ( AT_X8_Y12 ))
		)
	)
	(:action FORWARD-RIGHT_X9_Y12_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y12 )
			( AT_X9_Y12 )
		)
		:effect
		(and
			
			( AT_X10_Y12 )
			(not ( AT_X9_Y12 ))
		)
	)
	(:action FORWARD-RIGHT_X9_Y13_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y13 )
			( AT_X9_Y13 )
		)
		:effect
		(and
			
			( AT_X10_Y13 )
			(not ( AT_X9_Y13 ))
		)
	)
	(:action FORWARD-RIGHT_X12_Y12_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y12 )
			( AT_X12_Y12 )
		)
		:effect
		(and
			
			( AT_X13_Y12 )
			(not ( AT_X12_Y12 ))
		)
	)
	(:action FORWARD-RIGHT_X12_Y13_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y13 )
			( AT_X12_Y13 )
		)
		:effect
		(and
			
			( AT_X13_Y13 )
			(not ( AT_X12_Y13 ))
		)
	)
	(:action FORWARD-RIGHT_X11_Y12_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y12 )
			( AT_X11_Y12 )
		)
		:effect
		(and
			
			( AT_X12_Y12 )
			(not ( AT_X11_Y12 ))
		)
	)
	(:action FORWARD-RIGHT_X11_Y13_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y13 )
			( AT_X11_Y13 )
		)
		:effect
		(and
			
			( AT_X12_Y13 )
			(not ( AT_X11_Y13 ))
		)
	)
	(:action FORWARD-RIGHT_X10_Y12_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y12 )
			( AT_X10_Y12 )
		)
		:effect
		(and
			
			( AT_X11_Y12 )
			(not ( AT_X10_Y12 ))
		)
	)
	(:action FORWARD-RIGHT_X10_Y13_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y13 )
			( AT_X10_Y13 )
		)
		:effect
		(and
			
			( AT_X11_Y13 )
			(not ( AT_X10_Y13 ))
		)
	)
	(:action FORWARD-RIGHT_X8_Y12_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y12 )
			( AT_X8_Y12 )
		)
		:effect
		(and
			
			( AT_X9_Y12 )
			(not ( AT_X8_Y12 ))
		)
	)
	(:action FORWARD-RIGHT_X8_Y13_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y13 )
			( AT_X8_Y13 )
		)
		:effect
		(and
			
			( AT_X9_Y13 )
			(not ( AT_X8_Y13 ))
		)
	)
	(:action FORWARD-LEFT_X13_Y12_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y12 )
			( AT_X13_Y12 )
		)
		:effect
		(and
			
			( AT_X12_Y12 )
			(not ( AT_X13_Y12 ))
		)
	)
	(:action FORWARD-LEFT_X13_Y13_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y13 )
			( AT_X13_Y13 )
		)
		:effect
		(and
			
			( AT_X12_Y13 )
			(not ( AT_X13_Y13 ))
		)
	)
	(:action FORWARD-LEFT_X10_Y12_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y12 )
			( AT_X10_Y12 )
		)
		:effect
		(and
			
			( AT_X9_Y12 )
			(not ( AT_X10_Y12 ))
		)
	)
	(:action FORWARD-LEFT_X10_Y13_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y13 )
			( AT_X10_Y13 )
		)
		:effect
		(and
			
			( AT_X9_Y13 )
			(not ( AT_X10_Y13 ))
		)
	)
	(:action FORWARD-LEFT_X12_Y12_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y12 )
			( AT_X12_Y12 )
		)
		:effect
		(and
			
			( AT_X11_Y12 )
			(not ( AT_X12_Y12 ))
		)
	)
	(:action FORWARD-LEFT_X12_Y13_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y13 )
			( AT_X12_Y13 )
		)
		:effect
		(and
			
			( AT_X11_Y13 )
			(not ( AT_X12_Y13 ))
		)
	)
	(:action FORWARD-LEFT_X11_Y12_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y12 )
			( AT_X11_Y12 )
		)
		:effect
		(and
			
			( AT_X10_Y12 )
			(not ( AT_X11_Y12 ))
		)
	)
	(:action FORWARD-LEFT_X11_Y13_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y13 )
			( AT_X11_Y13 )
		)
		:effect
		(and
			
			( AT_X10_Y13 )
			(not ( AT_X11_Y13 ))
		)
	)
	(:action FORWARD-LEFT_X9_Y12_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y12 )
			( AT_X9_Y12 )
		)
		:effect
		(and
			
			( AT_X8_Y12 )
			(not ( AT_X9_Y12 ))
		)
	)
	(:action FORWARD-LEFT_X9_Y13_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y13 )
			( AT_X9_Y13 )
		)
		:effect
		(and
			
			( AT_X8_Y13 )
			(not ( AT_X9_Y13 ))
		)
	)
	(:action DROP-DOWN_KEY1_X9_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY1_X13_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY1_X12_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY1_X11_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY1_X10_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY1_X8_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY0_X9_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY0_X13_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY0_X12_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY0_X11_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY0_X10_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY0_X8_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY1_X9_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY1_X13_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY1_X12_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY1_X11_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY1_X10_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY1_X8_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY0_X9_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY0_X13_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY0_X12_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY0_X11_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY0_X10_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY0_X8_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y11 ))
		)
	)
	(:action DROP-UP_KEY1_X9_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y12 ))
		)
	)
	(:action DROP-UP_KEY1_X13_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y12 ))
		)
	)
	(:action DROP-UP_KEY1_X12_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y12 ))
		)
	)
	(:action DROP-UP_KEY1_X11_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y12 ))
		)
	)
	(:action DROP-UP_KEY1_X10_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y12 ))
		)
	)
	(:action DROP-UP_KEY1_X8_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y12 ))
		)
	)
	(:action DROP-UP_KEY0_X9_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y12 ))
		)
	)
	(:action DROP-UP_KEY0_X13_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y12 ))
		)
	)
	(:action DROP-UP_KEY0_X12_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y12 ))
		)
	)
	(:action DROP-UP_KEY0_X11_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y12 ))
		)
	)
	(:action DROP-UP_KEY0_X10_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y12 ))
		)
	)
	(:action DROP-UP_KEY0_X8_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y12 ))
		)
	)
	(:action DROP-UP_KEY1_X9_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y11 ))
		)
	)
	(:action DROP-UP_KEY1_X13_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y11 ))
		)
	)
	(:action DROP-UP_KEY1_X12_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y11 ))
		)
	)
	(:action DROP-UP_KEY1_X11_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y11 ))
		)
	)
	(:action DROP-UP_KEY1_X10_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y11 ))
		)
	)
	(:action DROP-UP_KEY1_X8_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y11 ))
		)
	)
	(:action DROP-UP_KEY0_X9_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y11 ))
		)
	)
	(:action DROP-UP_KEY0_X13_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y11 ))
		)
	)
	(:action DROP-UP_KEY0_X12_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y11 ))
		)
	)
	(:action DROP-UP_KEY0_X11_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y11 ))
		)
	)
	(:action DROP-UP_KEY0_X10_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y11 ))
		)
	)
	(:action DROP-UP_KEY0_X8_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y11 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X9_Y12_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y12 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X9_Y13_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y13 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y13 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y13 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X9_Y12_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y12 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X9_Y13_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y13 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y13 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y13 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X12_Y12_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y12 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X12_Y13_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y13 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y13 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y13 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X12_Y12_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y12 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X12_Y13_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y13 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y13 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y13 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X11_Y12_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y12 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X11_Y13_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y13 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y13 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y13 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X11_Y12_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y12 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X11_Y13_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y13 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y13 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y13 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X10_Y12_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y12 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X10_Y13_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y13 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y13 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y13 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X10_Y12_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y12 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X10_Y13_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y13 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y13 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y13 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X8_Y12_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y12 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X8_Y13_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y13 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y13 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y13 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X8_Y12_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y12 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X8_Y13_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y13 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y13 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y13 ))
		)
	)
	(:action DROP-LEFT_KEY1_X13_Y12_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y12 ))
		)
	)
	(:action DROP-LEFT_KEY1_X13_Y13_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y13 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y13 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y13 ))
		)
	)
	(:action DROP-LEFT_KEY0_X13_Y12_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y12 ))
		)
	)
	(:action DROP-LEFT_KEY0_X13_Y13_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y13 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y13 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y13 ))
		)
	)
	(:action DROP-LEFT_KEY1_X10_Y12_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y12 ))
		)
	)
	(:action DROP-LEFT_KEY1_X10_Y13_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y13 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y13 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y13 ))
		)
	)
	(:action DROP-LEFT_KEY0_X10_Y12_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y12 ))
		)
	)
	(:action DROP-LEFT_KEY0_X10_Y13_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y13 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y13 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y13 ))
		)
	)
	(:action DROP-LEFT_KEY1_X12_Y12_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y12 ))
		)
	)
	(:action DROP-LEFT_KEY1_X12_Y13_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y13 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y13 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y13 ))
		)
	)
	(:action DROP-LEFT_KEY0_X12_Y12_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y12 ))
		)
	)
	(:action DROP-LEFT_KEY0_X12_Y13_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y13 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y13 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y13 ))
		)
	)
	(:action DROP-LEFT_KEY1_X11_Y12_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y12 ))
		)
	)
	(:action DROP-LEFT_KEY1_X11_Y13_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y13 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y13 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y13 ))
		)
	)
	(:action DROP-LEFT_KEY0_X11_Y12_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y12 ))
		)
	)
	(:action DROP-LEFT_KEY0_X11_Y13_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y13 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y13 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y13 ))
		)
	)
	(:action DROP-LEFT_KEY1_X9_Y12_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y12 ))
		)
	)
	(:action DROP-LEFT_KEY1_X9_Y13_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y13 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y13 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y13 ))
		)
	)
	(:action DROP-LEFT_KEY0_X9_Y12_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y12 ))
		)
	)
	(:action DROP-LEFT_KEY0_X9_Y13_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y13 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y13 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y13 ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X13_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y9 )
			( AT_X13_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y9 )
			(not ( CARRIABLE-AT_KEY1_X13_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X12_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y9 )
			( AT_X12_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y9 )
			(not ( CARRIABLE-AT_KEY1_X12_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X13_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y9 )
			( AT_X13_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y9 )
			(not ( CARRIABLE-AT_KEY0_X13_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X12_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y9 )
			( AT_X12_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y9 )
			(not ( CARRIABLE-AT_KEY0_X12_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X9_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y11 )
			( AT_X9_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y11 )
			(not ( CARRIABLE-AT_KEY1_X9_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X13_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y11 )
			( AT_X13_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y11 )
			(not ( CARRIABLE-AT_KEY1_X13_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X12_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y11 )
			( AT_X12_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y11 )
			(not ( CARRIABLE-AT_KEY1_X12_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X11_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y11 )
			( AT_X11_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y11 )
			(not ( CARRIABLE-AT_KEY1_X11_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X10_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y11 )
			( AT_X10_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y11 )
			(not ( CARRIABLE-AT_KEY1_X10_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X8_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y11 )
			( AT_X8_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y11 )
			(not ( CARRIABLE-AT_KEY1_X8_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X9_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y11 )
			( AT_X9_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y11 )
			(not ( CARRIABLE-AT_KEY0_X9_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X13_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y11 )
			( AT_X13_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y11 )
			(not ( CARRIABLE-AT_KEY0_X13_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X12_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y11 )
			( AT_X12_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y11 )
			(not ( CARRIABLE-AT_KEY0_X12_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X11_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y11 )
			( AT_X11_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y11 )
			(not ( CARRIABLE-AT_KEY0_X11_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X10_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y11 )
			( AT_X10_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y11 )
			(not ( CARRIABLE-AT_KEY0_X10_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X8_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y11 )
			( AT_X8_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y11 )
			(not ( CARRIABLE-AT_KEY0_X8_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X9_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y10 )
			( AT_X9_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y10 )
			(not ( CARRIABLE-AT_KEY1_X9_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X13_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y10 )
			( AT_X13_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y10 )
			(not ( CARRIABLE-AT_KEY1_X13_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X12_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y10 )
			( AT_X12_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y10 )
			(not ( CARRIABLE-AT_KEY1_X12_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X11_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y10 )
			( AT_X11_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y10 )
			(not ( CARRIABLE-AT_KEY1_X11_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X10_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y10 )
			( AT_X10_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y10 )
			(not ( CARRIABLE-AT_KEY1_X10_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X8_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y10 )
			( AT_X8_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y10 )
			(not ( CARRIABLE-AT_KEY1_X8_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X9_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y10 )
			( AT_X9_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y10 )
			(not ( CARRIABLE-AT_KEY0_X9_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X13_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y10 )
			( AT_X13_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y10 )
			(not ( CARRIABLE-AT_KEY0_X13_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X12_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y10 )
			( AT_X12_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y10 )
			(not ( CARRIABLE-AT_KEY0_X12_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X11_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y10 )
			( AT_X11_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y10 )
			(not ( CARRIABLE-AT_KEY0_X11_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X10_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y10 )
			( AT_X10_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y10 )
			(not ( CARRIABLE-AT_KEY0_X10_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X8_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y10 )
			( AT_X8_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y10 )
			(not ( CARRIABLE-AT_KEY0_X8_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X9_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y10 )
			( AT_X9_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y10 )
			(not ( CARRIABLE-AT_KEY1_X9_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X13_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y10 )
			( AT_X13_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y10 )
			(not ( CARRIABLE-AT_KEY1_X13_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X12_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y10 )
			( AT_X12_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y10 )
			(not ( CARRIABLE-AT_KEY1_X12_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X11_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y10 )
			( AT_X11_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y10 )
			(not ( CARRIABLE-AT_KEY1_X11_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X10_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y10 )
			( AT_X10_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y10 )
			(not ( CARRIABLE-AT_KEY1_X10_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X8_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y10 )
			( AT_X8_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y10 )
			(not ( CARRIABLE-AT_KEY1_X8_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X9_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y10 )
			( AT_X9_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y10 )
			(not ( CARRIABLE-AT_KEY0_X9_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X13_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y10 )
			( AT_X13_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y10 )
			(not ( CARRIABLE-AT_KEY0_X13_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X12_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y10 )
			( AT_X12_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y10 )
			(not ( CARRIABLE-AT_KEY0_X12_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X11_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y10 )
			( AT_X11_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y10 )
			(not ( CARRIABLE-AT_KEY0_X11_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X10_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y10 )
			( AT_X10_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y10 )
			(not ( CARRIABLE-AT_KEY0_X10_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X8_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y10 )
			( AT_X8_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y10 )
			(not ( CARRIABLE-AT_KEY0_X8_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X9_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y11 )
			( AT_X9_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y11 )
			(not ( CARRIABLE-AT_KEY1_X9_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X13_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y11 )
			( AT_X13_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y11 )
			(not ( CARRIABLE-AT_KEY1_X13_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X12_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y11 )
			( AT_X12_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y11 )
			(not ( CARRIABLE-AT_KEY1_X12_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X11_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y11 )
			( AT_X11_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y11 )
			(not ( CARRIABLE-AT_KEY1_X11_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X10_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y11 )
			( AT_X10_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y11 )
			(not ( CARRIABLE-AT_KEY1_X10_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X8_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y11 )
			( AT_X8_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y11 )
			(not ( CARRIABLE-AT_KEY1_X8_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X9_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y11 )
			( AT_X9_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y11 )
			(not ( CARRIABLE-AT_KEY0_X9_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X13_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y11 )
			( AT_X13_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y11 )
			(not ( CARRIABLE-AT_KEY0_X13_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X12_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y11 )
			( AT_X12_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y11 )
			(not ( CARRIABLE-AT_KEY0_X12_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X11_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y11 )
			( AT_X11_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y11 )
			(not ( CARRIABLE-AT_KEY0_X11_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X10_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y11 )
			( AT_X10_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y11 )
			(not ( CARRIABLE-AT_KEY0_X10_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X8_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y11 )
			( AT_X8_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y11 )
			(not ( CARRIABLE-AT_KEY0_X8_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X13_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y9 )
			( AT_X13_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y9 )
			(not ( CARRIABLE-AT_KEY1_X13_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X12_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y9 )
			( AT_X12_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y9 )
			(not ( CARRIABLE-AT_KEY1_X12_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X13_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y9 )
			( AT_X13_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y9 )
			(not ( CARRIABLE-AT_KEY0_X13_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X12_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y9 )
			( AT_X12_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y9 )
			(not ( CARRIABLE-AT_KEY0_X12_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X13_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y8 )
			( AT_X13_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y8 )
			(not ( CARRIABLE-AT_KEY1_X13_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X12_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y8 )
			( AT_X12_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y8 )
			(not ( CARRIABLE-AT_KEY1_X12_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X13_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y8 )
			( AT_X13_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y8 )
			(not ( CARRIABLE-AT_KEY0_X13_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X12_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y8 )
			( AT_X12_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y8 )
			(not ( CARRIABLE-AT_KEY0_X12_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X9_Y11_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y11 )
			( AT_X9_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y11 )
			(not ( CARRIABLE-AT_KEY1_X10_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X9_Y10_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y10 )
			( AT_X9_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y10 )
			(not ( CARRIABLE-AT_KEY1_X10_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X9_Y11_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y11 )
			( AT_X9_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y11 )
			(not ( CARRIABLE-AT_KEY0_X10_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X9_Y10_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y10 )
			( AT_X9_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y10 )
			(not ( CARRIABLE-AT_KEY0_X10_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X12_Y9_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y9 )
			( AT_X12_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y9 )
			(not ( CARRIABLE-AT_KEY1_X13_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X12_Y11_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y11 )
			( AT_X12_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y11 )
			(not ( CARRIABLE-AT_KEY1_X13_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X12_Y8_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y8 )
			( AT_X12_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y8 )
			(not ( CARRIABLE-AT_KEY1_X13_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X12_Y10_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y10 )
			( AT_X12_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y10 )
			(not ( CARRIABLE-AT_KEY1_X13_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X12_Y9_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y9 )
			( AT_X12_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y9 )
			(not ( CARRIABLE-AT_KEY0_X13_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X12_Y11_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y11 )
			( AT_X12_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y11 )
			(not ( CARRIABLE-AT_KEY0_X13_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X12_Y8_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y8 )
			( AT_X12_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y8 )
			(not ( CARRIABLE-AT_KEY0_X13_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X12_Y10_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y10 )
			( AT_X12_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y10 )
			(not ( CARRIABLE-AT_KEY0_X13_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X11_Y9_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y9 )
			( AT_X11_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y9 )
			(not ( CARRIABLE-AT_KEY1_X12_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X11_Y11_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y11 )
			( AT_X11_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y11 )
			(not ( CARRIABLE-AT_KEY1_X12_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X11_Y8_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y8 )
			( AT_X11_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y8 )
			(not ( CARRIABLE-AT_KEY1_X12_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X11_Y10_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y10 )
			( AT_X11_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y10 )
			(not ( CARRIABLE-AT_KEY1_X12_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X11_Y9_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y9 )
			( AT_X11_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y9 )
			(not ( CARRIABLE-AT_KEY0_X12_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X11_Y11_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y11 )
			( AT_X11_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y11 )
			(not ( CARRIABLE-AT_KEY0_X12_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X11_Y8_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y8 )
			( AT_X11_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y8 )
			(not ( CARRIABLE-AT_KEY0_X12_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X11_Y10_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y10 )
			( AT_X11_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y10 )
			(not ( CARRIABLE-AT_KEY0_X12_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X10_Y11_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y11 )
			( AT_X10_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y11 )
			(not ( CARRIABLE-AT_KEY1_X11_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X10_Y10_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y10 )
			( AT_X10_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y10 )
			(not ( CARRIABLE-AT_KEY1_X11_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X10_Y11_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y11 )
			( AT_X10_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y11 )
			(not ( CARRIABLE-AT_KEY0_X11_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X10_Y10_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y10 )
			( AT_X10_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y10 )
			(not ( CARRIABLE-AT_KEY0_X11_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X8_Y11_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y11 )
			( AT_X8_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y11 )
			(not ( CARRIABLE-AT_KEY1_X9_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X8_Y10_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y10 )
			( AT_X8_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y10 )
			(not ( CARRIABLE-AT_KEY1_X9_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X8_Y11_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y11 )
			( AT_X8_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y11 )
			(not ( CARRIABLE-AT_KEY0_X9_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X8_Y10_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y10 )
			( AT_X8_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y10 )
			(not ( CARRIABLE-AT_KEY0_X9_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X13_Y9_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y9 )
			( AT_X13_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y9 )
			(not ( CARRIABLE-AT_KEY1_X12_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X13_Y11_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y11 )
			( AT_X13_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y11 )
			(not ( CARRIABLE-AT_KEY1_X12_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X13_Y8_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y8 )
			( AT_X13_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y8 )
			(not ( CARRIABLE-AT_KEY1_X12_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X13_Y10_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y10 )
			( AT_X13_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y10 )
			(not ( CARRIABLE-AT_KEY1_X12_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X13_Y9_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y9 )
			( AT_X13_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y9 )
			(not ( CARRIABLE-AT_KEY0_X12_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X13_Y11_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y11 )
			( AT_X13_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y11 )
			(not ( CARRIABLE-AT_KEY0_X12_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X13_Y8_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y8 )
			( AT_X13_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y8 )
			(not ( CARRIABLE-AT_KEY0_X12_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X13_Y10_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y10 )
			( AT_X13_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y10 )
			(not ( CARRIABLE-AT_KEY0_X12_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X10_Y11_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y11 )
			( AT_X10_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y11 )
			(not ( CARRIABLE-AT_KEY1_X9_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X10_Y10_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y10 )
			( AT_X10_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y10 )
			(not ( CARRIABLE-AT_KEY1_X9_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X10_Y11_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y11 )
			( AT_X10_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y11 )
			(not ( CARRIABLE-AT_KEY0_X9_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X10_Y10_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y10 )
			( AT_X10_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y10 )
			(not ( CARRIABLE-AT_KEY0_X9_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X12_Y11_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y11 )
			( AT_X12_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y11 )
			(not ( CARRIABLE-AT_KEY1_X11_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X12_Y10_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y10 )
			( AT_X12_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y10 )
			(not ( CARRIABLE-AT_KEY1_X11_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X12_Y11_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y11 )
			( AT_X12_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y11 )
			(not ( CARRIABLE-AT_KEY0_X11_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X12_Y10_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y10 )
			( AT_X12_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y10 )
			(not ( CARRIABLE-AT_KEY0_X11_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X11_Y11_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y11 )
			( AT_X11_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y11 )
			(not ( CARRIABLE-AT_KEY1_X10_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X11_Y10_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y10 )
			( AT_X11_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y10 )
			(not ( CARRIABLE-AT_KEY1_X10_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X11_Y11_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y11 )
			( AT_X11_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y11 )
			(not ( CARRIABLE-AT_KEY0_X10_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X11_Y10_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y10 )
			( AT_X11_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y10 )
			(not ( CARRIABLE-AT_KEY0_X10_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X9_Y11_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y11 )
			( AT_X9_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y11 )
			(not ( CARRIABLE-AT_KEY1_X8_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X9_Y10_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y10 )
			( AT_X9_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y10 )
			(not ( CARRIABLE-AT_KEY1_X8_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X9_Y11_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y11 )
			( AT_X9_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y11 )
			(not ( CARRIABLE-AT_KEY0_X8_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X9_Y10_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y10 )
			( AT_X9_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y10 )
			(not ( CARRIABLE-AT_KEY0_X8_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action FORWARD-DOWN_X9_Y12_Y13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y13 )
			( AT_X9_Y12 )
		)
		:effect
		(and
			
			( AT_X9_Y13 )
			(not ( AT_X9_Y12 ))
		)
	)
	(:action FORWARD-DOWN_X13_Y12_Y13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y13 )
			( AT_X13_Y12 )
		)
		:effect
		(and
			
			( AT_X13_Y13 )
			(not ( AT_X13_Y12 ))
		)
	)
	(:action FORWARD-DOWN_X12_Y12_Y13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y13 )
			( AT_X12_Y12 )
		)
		:effect
		(and
			
			( AT_X12_Y13 )
			(not ( AT_X12_Y12 ))
		)
	)
	(:action FORWARD-DOWN_X11_Y12_Y13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y13 )
			( AT_X11_Y12 )
		)
		:effect
		(and
			
			( AT_X11_Y13 )
			(not ( AT_X11_Y12 ))
		)
	)
	(:action FORWARD-DOWN_X10_Y12_Y13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y13 )
			( AT_X10_Y12 )
		)
		:effect
		(and
			
			( AT_X10_Y13 )
			(not ( AT_X10_Y12 ))
		)
	)
	(:action FORWARD-DOWN_X8_Y12_Y13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y13 )
			( AT_X8_Y12 )
		)
		:effect
		(and
			
			( AT_X8_Y13 )
			(not ( AT_X8_Y12 ))
		)
	)
	(:action FORWARD-DOWN_X9_Y11_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y12 )
			( AT_X9_Y11 )
		)
		:effect
		(and
			
			( AT_X9_Y12 )
			(not ( AT_X9_Y11 ))
		)
	)
	(:action FORWARD-DOWN_X13_Y11_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y12 )
			( AT_X13_Y11 )
		)
		:effect
		(and
			
			( AT_X13_Y12 )
			(not ( AT_X13_Y11 ))
		)
	)
	(:action FORWARD-DOWN_X12_Y11_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y12 )
			( AT_X12_Y11 )
		)
		:effect
		(and
			
			( AT_X12_Y12 )
			(not ( AT_X12_Y11 ))
		)
	)
	(:action FORWARD-DOWN_X11_Y11_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y12 )
			( AT_X11_Y11 )
		)
		:effect
		(and
			
			( AT_X11_Y12 )
			(not ( AT_X11_Y11 ))
		)
	)
	(:action FORWARD-DOWN_X10_Y11_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y12 )
			( AT_X10_Y11 )
		)
		:effect
		(and
			
			( AT_X10_Y12 )
			(not ( AT_X10_Y11 ))
		)
	)
	(:action FORWARD-DOWN_X8_Y11_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y12 )
			( AT_X8_Y11 )
		)
		:effect
		(and
			
			( AT_X8_Y12 )
			(not ( AT_X8_Y11 ))
		)
	)
	(:action FORWARD-UP_X9_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y10 )
			( AT_X9_Y11 )
		)
		:effect
		(and
			
			( AT_X9_Y10 )
			(not ( AT_X9_Y11 ))
		)
	)
	(:action FORWARD-UP_X13_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y10 )
			( AT_X13_Y11 )
		)
		:effect
		(and
			
			( AT_X13_Y10 )
			(not ( AT_X13_Y11 ))
		)
	)
	(:action FORWARD-UP_X12_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y10 )
			( AT_X12_Y11 )
		)
		:effect
		(and
			
			( AT_X12_Y10 )
			(not ( AT_X12_Y11 ))
		)
	)
	(:action FORWARD-UP_X11_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y10 )
			( AT_X11_Y11 )
		)
		:effect
		(and
			
			( AT_X11_Y10 )
			(not ( AT_X11_Y11 ))
		)
	)
	(:action FORWARD-UP_X10_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y10 )
			( AT_X10_Y11 )
		)
		:effect
		(and
			
			( AT_X10_Y10 )
			(not ( AT_X10_Y11 ))
		)
	)
	(:action FORWARD-UP_X8_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y10 )
			( AT_X8_Y11 )
		)
		:effect
		(and
			
			( AT_X8_Y10 )
			(not ( AT_X8_Y11 ))
		)
	)
	(:action FORWARD-UP_X9_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y9 )
			( AT_X9_Y10 )
		)
		:effect
		(and
			
			( AT_X9_Y9 )
			(not ( AT_X9_Y10 ))
		)
	)
	(:action FORWARD-UP_X13_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y9 )
			( AT_X13_Y10 )
		)
		:effect
		(and
			
			( AT_X13_Y9 )
			(not ( AT_X13_Y10 ))
		)
	)
	(:action FORWARD-UP_X12_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y9 )
			( AT_X12_Y10 )
		)
		:effect
		(and
			
			( AT_X12_Y9 )
			(not ( AT_X12_Y10 ))
		)
	)
	(:action FORWARD-UP_X11_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y9 )
			( AT_X11_Y10 )
		)
		:effect
		(and
			
			( AT_X11_Y9 )
			(not ( AT_X11_Y10 ))
		)
	)
	(:action FORWARD-UP_X10_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y9 )
			( AT_X10_Y10 )
		)
		:effect
		(and
			
			( AT_X10_Y9 )
			(not ( AT_X10_Y10 ))
		)
	)
	(:action FORWARD-UP_X8_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y9 )
			( AT_X8_Y10 )
		)
		:effect
		(and
			
			( AT_X8_Y9 )
			(not ( AT_X8_Y10 ))
		)
	)
	(:action FORWARD-RIGHT_X9_Y11_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y11 )
			( AT_X9_Y11 )
		)
		:effect
		(and
			
			( AT_X10_Y11 )
			(not ( AT_X9_Y11 ))
		)
	)
	(:action FORWARD-RIGHT_X9_Y10_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y10 )
			( AT_X9_Y10 )
		)
		:effect
		(and
			
			( AT_X10_Y10 )
			(not ( AT_X9_Y10 ))
		)
	)
	(:action FORWARD-RIGHT_X12_Y11_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y11 )
			( AT_X12_Y11 )
		)
		:effect
		(and
			
			( AT_X13_Y11 )
			(not ( AT_X12_Y11 ))
		)
	)
	(:action FORWARD-RIGHT_X12_Y10_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y10 )
			( AT_X12_Y10 )
		)
		:effect
		(and
			
			( AT_X13_Y10 )
			(not ( AT_X12_Y10 ))
		)
	)
	(:action FORWARD-RIGHT_X11_Y11_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y11 )
			( AT_X11_Y11 )
		)
		:effect
		(and
			
			( AT_X12_Y11 )
			(not ( AT_X11_Y11 ))
		)
	)
	(:action FORWARD-RIGHT_X11_Y10_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y10 )
			( AT_X11_Y10 )
		)
		:effect
		(and
			
			( AT_X12_Y10 )
			(not ( AT_X11_Y10 ))
		)
	)
	(:action FORWARD-RIGHT_X10_Y11_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y11 )
			( AT_X10_Y11 )
		)
		:effect
		(and
			
			( AT_X11_Y11 )
			(not ( AT_X10_Y11 ))
		)
	)
	(:action FORWARD-RIGHT_X10_Y10_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y10 )
			( AT_X10_Y10 )
		)
		:effect
		(and
			
			( AT_X11_Y10 )
			(not ( AT_X10_Y10 ))
		)
	)
	(:action FORWARD-RIGHT_X8_Y11_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y11 )
			( AT_X8_Y11 )
		)
		:effect
		(and
			
			( AT_X9_Y11 )
			(not ( AT_X8_Y11 ))
		)
	)
	(:action FORWARD-RIGHT_X8_Y10_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y10 )
			( AT_X8_Y10 )
		)
		:effect
		(and
			
			( AT_X9_Y10 )
			(not ( AT_X8_Y10 ))
		)
	)
	(:action FORWARD-LEFT_X13_Y9_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y9 )
			( AT_X13_Y9 )
		)
		:effect
		(and
			
			( AT_X12_Y9 )
			(not ( AT_X13_Y9 ))
		)
	)
	(:action FORWARD-LEFT_X13_Y11_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y11 )
			( AT_X13_Y11 )
		)
		:effect
		(and
			
			( AT_X12_Y11 )
			(not ( AT_X13_Y11 ))
		)
	)
	(:action FORWARD-LEFT_X13_Y8_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y8 )
			( AT_X13_Y8 )
		)
		:effect
		(and
			
			( AT_X12_Y8 )
			(not ( AT_X13_Y8 ))
		)
	)
	(:action FORWARD-LEFT_X13_Y10_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y10 )
			( AT_X13_Y10 )
		)
		:effect
		(and
			
			( AT_X12_Y10 )
			(not ( AT_X13_Y10 ))
		)
	)
	(:action FORWARD-LEFT_X10_Y11_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y11 )
			( AT_X10_Y11 )
		)
		:effect
		(and
			
			( AT_X9_Y11 )
			(not ( AT_X10_Y11 ))
		)
	)
	(:action FORWARD-LEFT_X10_Y10_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y10 )
			( AT_X10_Y10 )
		)
		:effect
		(and
			
			( AT_X9_Y10 )
			(not ( AT_X10_Y10 ))
		)
	)
	(:action FORWARD-LEFT_X12_Y9_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y9 )
			( AT_X12_Y9 )
		)
		:effect
		(and
			
			( AT_X11_Y9 )
			(not ( AT_X12_Y9 ))
		)
	)
	(:action FORWARD-LEFT_X12_Y11_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y11 )
			( AT_X12_Y11 )
		)
		:effect
		(and
			
			( AT_X11_Y11 )
			(not ( AT_X12_Y11 ))
		)
	)
	(:action FORWARD-LEFT_X12_Y8_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y8 )
			( AT_X12_Y8 )
		)
		:effect
		(and
			
			( AT_X11_Y8 )
			(not ( AT_X12_Y8 ))
		)
	)
	(:action FORWARD-LEFT_X12_Y10_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y10 )
			( AT_X12_Y10 )
		)
		:effect
		(and
			
			( AT_X11_Y10 )
			(not ( AT_X12_Y10 ))
		)
	)
	(:action FORWARD-LEFT_X11_Y9_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y9 )
			( AT_X11_Y9 )
		)
		:effect
		(and
			
			( AT_X10_Y9 )
			(not ( AT_X11_Y9 ))
		)
	)
	(:action FORWARD-LEFT_X11_Y11_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y11 )
			( AT_X11_Y11 )
		)
		:effect
		(and
			
			( AT_X10_Y11 )
			(not ( AT_X11_Y11 ))
		)
	)
	(:action FORWARD-LEFT_X11_Y8_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y8 )
			( AT_X11_Y8 )
		)
		:effect
		(and
			
			( AT_X10_Y8 )
			(not ( AT_X11_Y8 ))
		)
	)
	(:action FORWARD-LEFT_X11_Y10_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y10 )
			( AT_X11_Y10 )
		)
		:effect
		(and
			
			( AT_X10_Y10 )
			(not ( AT_X11_Y10 ))
		)
	)
	(:action FORWARD-LEFT_X9_Y11_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y11 )
			( AT_X9_Y11 )
		)
		:effect
		(and
			
			( AT_X8_Y11 )
			(not ( AT_X9_Y11 ))
		)
	)
	(:action FORWARD-LEFT_X9_Y10_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y10 )
			( AT_X9_Y10 )
		)
		:effect
		(and
			
			( AT_X8_Y10 )
			(not ( AT_X9_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY1_X9_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY1_X13_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY1_X12_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY1_X11_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY1_X10_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY1_X8_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY0_X9_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY0_X13_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY0_X12_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY0_X11_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY0_X10_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY0_X8_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY1_X9_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY1_X13_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY1_X12_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY1_X11_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY1_X10_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY1_X8_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY0_X9_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY0_X13_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY0_X12_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY0_X11_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY0_X10_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY0_X8_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY1_X13_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y8 ))
		)
	)
	(:action DROP-DOWN_KEY1_X12_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y8 ))
		)
	)
	(:action DROP-DOWN_KEY1_X11_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y8 ))
		)
	)
	(:action DROP-DOWN_KEY0_X13_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y8 ))
		)
	)
	(:action DROP-DOWN_KEY0_X12_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y8 ))
		)
	)
	(:action DROP-DOWN_KEY0_X11_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y8 ))
		)
	)
	(:action DROP-UP_KEY1_X9_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y10 ))
		)
	)
	(:action DROP-UP_KEY1_X13_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y10 ))
		)
	)
	(:action DROP-UP_KEY1_X12_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y10 ))
		)
	)
	(:action DROP-UP_KEY1_X11_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y10 ))
		)
	)
	(:action DROP-UP_KEY1_X10_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y10 ))
		)
	)
	(:action DROP-UP_KEY1_X8_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y10 ))
		)
	)
	(:action DROP-UP_KEY0_X9_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y10 ))
		)
	)
	(:action DROP-UP_KEY0_X13_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y10 ))
		)
	)
	(:action DROP-UP_KEY0_X12_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y10 ))
		)
	)
	(:action DROP-UP_KEY0_X11_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y10 ))
		)
	)
	(:action DROP-UP_KEY0_X10_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y10 ))
		)
	)
	(:action DROP-UP_KEY0_X8_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y10 ))
		)
	)
	(:action DROP-UP_KEY1_X9_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y9 ))
		)
	)
	(:action DROP-UP_KEY1_X13_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y9 ))
		)
	)
	(:action DROP-UP_KEY1_X12_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y9 ))
		)
	)
	(:action DROP-UP_KEY1_X11_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y9 ))
		)
	)
	(:action DROP-UP_KEY1_X10_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y9 ))
		)
	)
	(:action DROP-UP_KEY1_X8_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y9 ))
		)
	)
	(:action DROP-UP_KEY0_X9_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y9 ))
		)
	)
	(:action DROP-UP_KEY0_X13_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y9 ))
		)
	)
	(:action DROP-UP_KEY0_X12_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y9 ))
		)
	)
	(:action DROP-UP_KEY0_X11_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y9 ))
		)
	)
	(:action DROP-UP_KEY0_X10_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y9 ))
		)
	)
	(:action DROP-UP_KEY0_X8_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y9 ))
		)
	)
	(:action DROP-UP_KEY1_X13_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y8 ))
		)
	)
	(:action DROP-UP_KEY1_X12_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y8 ))
		)
	)
	(:action DROP-UP_KEY1_X11_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y8 ))
		)
	)
	(:action DROP-UP_KEY0_X13_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y8 ))
		)
	)
	(:action DROP-UP_KEY0_X12_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y8 ))
		)
	)
	(:action DROP-UP_KEY0_X11_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y8 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X9_Y11_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y11 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X9_Y10_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y10 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X9_Y11_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y11 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X9_Y10_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y10 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X12_Y9_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y9 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X12_Y11_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y11 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X12_Y8_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y8 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X12_Y10_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y10 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X12_Y9_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y9 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X12_Y11_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y11 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X12_Y8_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y8 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X12_Y10_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y10 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X11_Y9_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y9 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X11_Y11_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y11 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X11_Y8_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y8 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X11_Y10_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y10 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X11_Y9_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y9 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X11_Y11_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y11 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X11_Y8_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y8 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X11_Y10_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y10 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X10_Y11_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y11 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X10_Y10_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y10 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X10_Y11_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y11 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X10_Y10_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y10 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X8_Y11_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y11 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X8_Y10_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y10 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X8_Y11_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y11 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X8_Y10_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y10 ))
		)
	)
	(:action DROP-LEFT_KEY1_X13_Y9_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y9 ))
		)
	)
	(:action DROP-LEFT_KEY1_X13_Y11_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y11 ))
		)
	)
	(:action DROP-LEFT_KEY1_X13_Y8_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y8 ))
		)
	)
	(:action DROP-LEFT_KEY1_X13_Y10_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y10 ))
		)
	)
	(:action DROP-LEFT_KEY0_X13_Y9_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y9 ))
		)
	)
	(:action DROP-LEFT_KEY0_X13_Y11_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y11 ))
		)
	)
	(:action DROP-LEFT_KEY0_X13_Y8_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y8 ))
		)
	)
	(:action DROP-LEFT_KEY0_X13_Y10_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y10 ))
		)
	)
	(:action DROP-LEFT_KEY1_X10_Y11_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y11 ))
		)
	)
	(:action DROP-LEFT_KEY1_X10_Y10_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y10 ))
		)
	)
	(:action DROP-LEFT_KEY0_X10_Y11_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y11 ))
		)
	)
	(:action DROP-LEFT_KEY0_X10_Y10_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y10 ))
		)
	)
	(:action DROP-LEFT_KEY1_X12_Y9_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y9 ))
		)
	)
	(:action DROP-LEFT_KEY1_X12_Y11_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y11 ))
		)
	)
	(:action DROP-LEFT_KEY1_X12_Y8_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y8 ))
		)
	)
	(:action DROP-LEFT_KEY1_X12_Y10_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y10 ))
		)
	)
	(:action DROP-LEFT_KEY0_X12_Y9_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y9 ))
		)
	)
	(:action DROP-LEFT_KEY0_X12_Y11_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y11 ))
		)
	)
	(:action DROP-LEFT_KEY0_X12_Y8_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y8 ))
		)
	)
	(:action DROP-LEFT_KEY0_X12_Y10_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y10 ))
		)
	)
	(:action DROP-LEFT_KEY1_X11_Y9_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y9 ))
		)
	)
	(:action DROP-LEFT_KEY1_X11_Y11_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y11 ))
		)
	)
	(:action DROP-LEFT_KEY1_X11_Y8_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y8 ))
		)
	)
	(:action DROP-LEFT_KEY1_X11_Y10_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y10 ))
		)
	)
	(:action DROP-LEFT_KEY0_X11_Y9_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y9 ))
		)
	)
	(:action DROP-LEFT_KEY0_X11_Y11_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y11 ))
		)
	)
	(:action DROP-LEFT_KEY0_X11_Y8_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y8 ))
		)
	)
	(:action DROP-LEFT_KEY0_X11_Y10_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y10 ))
		)
	)
	(:action DROP-LEFT_KEY1_X9_Y11_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y11 ))
		)
	)
	(:action DROP-LEFT_KEY1_X9_Y10_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y10 ))
		)
	)
	(:action DROP-LEFT_KEY0_X9_Y11_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y11 ))
		)
	)
	(:action DROP-LEFT_KEY0_X9_Y10_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y10 ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X9_Y7_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y8 )
			( AT_X9_Y7 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y8 )
			(not ( CARRIABLE-AT_KEY1_X9_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X9_Y7_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y8 )
			( AT_X9_Y7 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y8 )
			(not ( CARRIABLE-AT_KEY0_X9_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X9_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y9 )
			( AT_X9_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y9 )
			(not ( CARRIABLE-AT_KEY1_X9_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X11_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y9 )
			( AT_X11_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y9 )
			(not ( CARRIABLE-AT_KEY1_X11_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X10_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y9 )
			( AT_X10_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y9 )
			(not ( CARRIABLE-AT_KEY1_X10_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X8_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y9 )
			( AT_X8_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y9 )
			(not ( CARRIABLE-AT_KEY1_X8_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X9_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y9 )
			( AT_X9_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y9 )
			(not ( CARRIABLE-AT_KEY0_X9_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X11_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y9 )
			( AT_X11_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y9 )
			(not ( CARRIABLE-AT_KEY0_X11_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X10_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y9 )
			( AT_X10_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y9 )
			(not ( CARRIABLE-AT_KEY0_X10_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X8_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y9 )
			( AT_X8_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y9 )
			(not ( CARRIABLE-AT_KEY0_X8_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X9_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y9 )
			( AT_X9_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y9 )
			(not ( CARRIABLE-AT_KEY1_X9_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X11_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y9 )
			( AT_X11_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y9 )
			(not ( CARRIABLE-AT_KEY1_X11_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X10_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y9 )
			( AT_X10_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y9 )
			(not ( CARRIABLE-AT_KEY1_X10_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X8_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y9 )
			( AT_X8_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y9 )
			(not ( CARRIABLE-AT_KEY1_X8_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X9_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y9 )
			( AT_X9_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y9 )
			(not ( CARRIABLE-AT_KEY0_X9_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X11_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y9 )
			( AT_X11_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y9 )
			(not ( CARRIABLE-AT_KEY0_X11_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X10_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y9 )
			( AT_X10_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y9 )
			(not ( CARRIABLE-AT_KEY0_X10_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X8_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y9 )
			( AT_X8_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y9 )
			(not ( CARRIABLE-AT_KEY0_X8_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X9_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y8 )
			( AT_X9_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y8 )
			(not ( CARRIABLE-AT_KEY1_X9_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X11_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y8 )
			( AT_X11_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y8 )
			(not ( CARRIABLE-AT_KEY1_X11_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X9_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y8 )
			( AT_X9_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y8 )
			(not ( CARRIABLE-AT_KEY0_X9_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X11_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y8 )
			( AT_X11_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y8 )
			(not ( CARRIABLE-AT_KEY0_X11_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X9_Y9_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y9 )
			( AT_X9_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y9 )
			(not ( CARRIABLE-AT_KEY1_X10_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X9_Y9_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y9 )
			( AT_X9_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y9 )
			(not ( CARRIABLE-AT_KEY0_X10_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X10_Y9_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y9 )
			( AT_X10_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y9 )
			(not ( CARRIABLE-AT_KEY1_X11_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X10_Y8_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y8 )
			( AT_X10_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y8 )
			(not ( CARRIABLE-AT_KEY1_X11_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X10_Y9_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y9 )
			( AT_X10_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y9 )
			(not ( CARRIABLE-AT_KEY0_X11_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X10_Y8_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y8 )
			( AT_X10_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y8 )
			(not ( CARRIABLE-AT_KEY0_X11_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X8_Y9_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y9 )
			( AT_X8_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y9 )
			(not ( CARRIABLE-AT_KEY1_X9_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X8_Y8_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y8 )
			( AT_X8_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y8 )
			(not ( CARRIABLE-AT_KEY1_X9_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X8_Y9_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y9 )
			( AT_X8_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y9 )
			(not ( CARRIABLE-AT_KEY0_X9_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X8_Y8_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y8 )
			( AT_X8_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y8 )
			(not ( CARRIABLE-AT_KEY0_X9_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X10_Y9_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y9 )
			( AT_X10_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y9 )
			(not ( CARRIABLE-AT_KEY1_X9_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X10_Y8_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y8 )
			( AT_X10_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y8 )
			(not ( CARRIABLE-AT_KEY1_X9_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X10_Y9_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y9 )
			( AT_X10_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y9 )
			(not ( CARRIABLE-AT_KEY0_X9_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X10_Y8_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y8 )
			( AT_X10_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y8 )
			(not ( CARRIABLE-AT_KEY0_X9_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X12_Y9_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y9 )
			( AT_X12_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y9 )
			(not ( CARRIABLE-AT_KEY1_X11_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X12_Y8_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y8 )
			( AT_X12_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y8 )
			(not ( CARRIABLE-AT_KEY1_X11_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X12_Y9_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y9 )
			( AT_X12_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y9 )
			(not ( CARRIABLE-AT_KEY0_X11_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X12_Y8_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y8 )
			( AT_X12_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y8 )
			(not ( CARRIABLE-AT_KEY0_X11_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X11_Y9_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y9 )
			( AT_X11_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y9 )
			(not ( CARRIABLE-AT_KEY1_X10_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X11_Y8_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y8 )
			( AT_X11_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y8 )
			(not ( CARRIABLE-AT_KEY1_X10_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X11_Y9_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y9 )
			( AT_X11_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y9 )
			(not ( CARRIABLE-AT_KEY0_X10_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X11_Y8_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y8 )
			( AT_X11_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y8 )
			(not ( CARRIABLE-AT_KEY0_X10_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X9_Y9_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y9 )
			( AT_X9_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y9 )
			(not ( CARRIABLE-AT_KEY1_X8_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X9_Y9_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y9 )
			( AT_X9_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y9 )
			(not ( CARRIABLE-AT_KEY0_X8_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action FORWARD-DOWN_X13_Y8_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y9 )
			( AT_X13_Y8 )
		)
		:effect
		(and
			
			( AT_X13_Y9 )
			(not ( AT_X13_Y8 ))
		)
	)
	(:action FORWARD-DOWN_X12_Y8_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y9 )
			( AT_X12_Y8 )
		)
		:effect
		(and
			
			( AT_X12_Y9 )
			(not ( AT_X12_Y8 ))
		)
	)
	(:action FORWARD-DOWN_X11_Y8_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y9 )
			( AT_X11_Y8 )
		)
		:effect
		(and
			
			( AT_X11_Y9 )
			(not ( AT_X11_Y8 ))
		)
	)
	(:action FORWARD-DOWN_X9_Y10_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y11 )
			( AT_X9_Y10 )
		)
		:effect
		(and
			
			( AT_X9_Y11 )
			(not ( AT_X9_Y10 ))
		)
	)
	(:action FORWARD-DOWN_X13_Y10_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y11 )
			( AT_X13_Y10 )
		)
		:effect
		(and
			
			( AT_X13_Y11 )
			(not ( AT_X13_Y10 ))
		)
	)
	(:action FORWARD-DOWN_X12_Y10_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y11 )
			( AT_X12_Y10 )
		)
		:effect
		(and
			
			( AT_X12_Y11 )
			(not ( AT_X12_Y10 ))
		)
	)
	(:action FORWARD-DOWN_X11_Y10_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y11 )
			( AT_X11_Y10 )
		)
		:effect
		(and
			
			( AT_X11_Y11 )
			(not ( AT_X11_Y10 ))
		)
	)
	(:action FORWARD-DOWN_X10_Y10_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y11 )
			( AT_X10_Y10 )
		)
		:effect
		(and
			
			( AT_X10_Y11 )
			(not ( AT_X10_Y10 ))
		)
	)
	(:action FORWARD-DOWN_X8_Y10_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y11 )
			( AT_X8_Y10 )
		)
		:effect
		(and
			
			( AT_X8_Y11 )
			(not ( AT_X8_Y10 ))
		)
	)
	(:action FORWARD-DOWN_X9_Y9_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y10 )
			( AT_X9_Y9 )
		)
		:effect
		(and
			
			( AT_X9_Y10 )
			(not ( AT_X9_Y9 ))
		)
	)
	(:action FORWARD-DOWN_X13_Y9_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y10 )
			( AT_X13_Y9 )
		)
		:effect
		(and
			
			( AT_X13_Y10 )
			(not ( AT_X13_Y9 ))
		)
	)
	(:action FORWARD-DOWN_X12_Y9_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y10 )
			( AT_X12_Y9 )
		)
		:effect
		(and
			
			( AT_X12_Y10 )
			(not ( AT_X12_Y9 ))
		)
	)
	(:action FORWARD-DOWN_X11_Y9_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y10 )
			( AT_X11_Y9 )
		)
		:effect
		(and
			
			( AT_X11_Y10 )
			(not ( AT_X11_Y9 ))
		)
	)
	(:action FORWARD-DOWN_X10_Y9_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y10 )
			( AT_X10_Y9 )
		)
		:effect
		(and
			
			( AT_X10_Y10 )
			(not ( AT_X10_Y9 ))
		)
	)
	(:action FORWARD-DOWN_X8_Y9_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y10 )
			( AT_X8_Y9 )
		)
		:effect
		(and
			
			( AT_X8_Y10 )
			(not ( AT_X8_Y9 ))
		)
	)
	(:action FORWARD-UP_X9_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y8 )
			( AT_X9_Y9 )
		)
		:effect
		(and
			
			( AT_X9_Y8 )
			(not ( AT_X9_Y9 ))
		)
	)
	(:action FORWARD-UP_X13_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y8 )
			( AT_X13_Y9 )
		)
		:effect
		(and
			
			( AT_X13_Y8 )
			(not ( AT_X13_Y9 ))
		)
	)
	(:action FORWARD-UP_X12_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y8 )
			( AT_X12_Y9 )
		)
		:effect
		(and
			
			( AT_X12_Y8 )
			(not ( AT_X12_Y9 ))
		)
	)
	(:action FORWARD-UP_X11_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y8 )
			( AT_X11_Y9 )
		)
		:effect
		(and
			
			( AT_X11_Y8 )
			(not ( AT_X11_Y9 ))
		)
	)
	(:action FORWARD-UP_X10_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y8 )
			( AT_X10_Y9 )
		)
		:effect
		(and
			
			( AT_X10_Y8 )
			(not ( AT_X10_Y9 ))
		)
	)
	(:action FORWARD-UP_X8_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y8 )
			( AT_X8_Y9 )
		)
		:effect
		(and
			
			( AT_X8_Y8 )
			(not ( AT_X8_Y9 ))
		)
	)
	(:action FORWARD-RIGHT_X9_Y9_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y9 )
			( AT_X9_Y9 )
		)
		:effect
		(and
			
			( AT_X10_Y9 )
			(not ( AT_X9_Y9 ))
		)
	)
	(:action FORWARD-RIGHT_X12_Y9_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y9 )
			( AT_X12_Y9 )
		)
		:effect
		(and
			
			( AT_X13_Y9 )
			(not ( AT_X12_Y9 ))
		)
	)
	(:action FORWARD-RIGHT_X12_Y8_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y8 )
			( AT_X12_Y8 )
		)
		:effect
		(and
			
			( AT_X13_Y8 )
			(not ( AT_X12_Y8 ))
		)
	)
	(:action FORWARD-RIGHT_X11_Y9_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y9 )
			( AT_X11_Y9 )
		)
		:effect
		(and
			
			( AT_X12_Y9 )
			(not ( AT_X11_Y9 ))
		)
	)
	(:action FORWARD-RIGHT_X11_Y8_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y8 )
			( AT_X11_Y8 )
		)
		:effect
		(and
			
			( AT_X12_Y8 )
			(not ( AT_X11_Y8 ))
		)
	)
	(:action FORWARD-RIGHT_X10_Y9_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y9 )
			( AT_X10_Y9 )
		)
		:effect
		(and
			
			( AT_X11_Y9 )
			(not ( AT_X10_Y9 ))
		)
	)
	(:action FORWARD-RIGHT_X10_Y8_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y8 )
			( AT_X10_Y8 )
		)
		:effect
		(and
			
			( AT_X11_Y8 )
			(not ( AT_X10_Y8 ))
		)
	)
	(:action FORWARD-RIGHT_X8_Y9_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y9 )
			( AT_X8_Y9 )
		)
		:effect
		(and
			
			( AT_X9_Y9 )
			(not ( AT_X8_Y9 ))
		)
	)
	(:action FORWARD-LEFT_X10_Y9_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y9 )
			( AT_X10_Y9 )
		)
		:effect
		(and
			
			( AT_X9_Y9 )
			(not ( AT_X10_Y9 ))
		)
	)
	(:action FORWARD-LEFT_X10_Y8_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y8 )
			( AT_X10_Y8 )
		)
		:effect
		(and
			
			( AT_X9_Y8 )
			(not ( AT_X10_Y8 ))
		)
	)
	(:action FORWARD-LEFT_X9_Y9_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y9 )
			( AT_X9_Y9 )
		)
		:effect
		(and
			
			( AT_X8_Y9 )
			(not ( AT_X9_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY1_X9_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y8 ))
		)
	)
	(:action DROP-DOWN_KEY1_X10_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y8 ))
		)
	)
	(:action DROP-DOWN_KEY1_X8_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y8 ))
		)
	)
	(:action DROP-DOWN_KEY0_X9_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y8 ))
		)
	)
	(:action DROP-DOWN_KEY0_X10_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y8 ))
		)
	)
	(:action DROP-DOWN_KEY0_X8_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y8 ))
		)
	)
	(:action DROP-UP_KEY1_X9_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y8 ))
		)
	)
	(:action DROP-UP_KEY1_X10_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y8 ))
		)
	)
	(:action DROP-UP_KEY1_X8_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y8 ))
		)
	)
	(:action DROP-UP_KEY0_X9_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y8 ))
		)
	)
	(:action DROP-UP_KEY0_X10_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y8 ))
		)
	)
	(:action DROP-UP_KEY0_X8_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y8 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X9_Y9_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y9 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X9_Y9_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y9 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X10_Y9_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y9 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X10_Y8_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y8 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X10_Y9_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y9 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X10_Y8_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y8 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X8_Y9_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y9 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X8_Y8_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y8 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X8_Y9_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y9 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X8_Y8_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y8 ))
		)
	)
	(:action DROP-LEFT_KEY1_X10_Y9_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y9 ))
		)
	)
	(:action DROP-LEFT_KEY1_X10_Y8_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y8 ))
		)
	)
	(:action DROP-LEFT_KEY0_X10_Y9_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y9 ))
		)
	)
	(:action DROP-LEFT_KEY0_X10_Y8_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y8 ))
		)
	)
	(:action DROP-LEFT_KEY1_X9_Y9_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y9 ))
		)
	)
	(:action DROP-LEFT_KEY0_X9_Y9_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y9 ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X9_Y6_Y7
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y7 )
			( AT_X9_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y7 )
			(not ( CARRIABLE-AT_KEY1_X9_Y7 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X9_Y6_Y7
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y7 )
			( AT_X9_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y7 )
			(not ( CARRIABLE-AT_KEY0_X9_Y7 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X1_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y11 )
			( AT_X1_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y11 )
			(not ( CARRIABLE-AT_KEY1_X1_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X1_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y11 )
			( AT_X1_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y11 )
			(not ( CARRIABLE-AT_KEY0_X1_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X4_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y13 )
			( AT_X4_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y13 )
			(not ( CARRIABLE-AT_KEY1_X4_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X6_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y13 )
			( AT_X6_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y13 )
			(not ( CARRIABLE-AT_KEY1_X6_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X5_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y13 )
			( AT_X5_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y13 )
			(not ( CARRIABLE-AT_KEY1_X5_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X3_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y13 )
			( AT_X3_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y13 )
			(not ( CARRIABLE-AT_KEY1_X3_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X2_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y13 )
			( AT_X2_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y13 )
			(not ( CARRIABLE-AT_KEY1_X2_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X1_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y13 )
			( AT_X1_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y13 )
			(not ( CARRIABLE-AT_KEY1_X1_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X4_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y13 )
			( AT_X4_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y13 )
			(not ( CARRIABLE-AT_KEY0_X4_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X6_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y13 )
			( AT_X6_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y13 )
			(not ( CARRIABLE-AT_KEY0_X6_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X5_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y13 )
			( AT_X5_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y13 )
			(not ( CARRIABLE-AT_KEY0_X5_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X3_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y13 )
			( AT_X3_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y13 )
			(not ( CARRIABLE-AT_KEY0_X3_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X2_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y13 )
			( AT_X2_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y13 )
			(not ( CARRIABLE-AT_KEY0_X2_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X1_Y12_Y13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y13 )
			( AT_X1_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y13 )
			(not ( CARRIABLE-AT_KEY0_X1_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X4_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y12 )
			( AT_X4_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y12 )
			(not ( CARRIABLE-AT_KEY1_X4_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X6_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y12 )
			( AT_X6_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y12 )
			(not ( CARRIABLE-AT_KEY1_X6_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X5_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y12 )
			( AT_X5_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y12 )
			(not ( CARRIABLE-AT_KEY1_X5_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X3_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y12 )
			( AT_X3_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y12 )
			(not ( CARRIABLE-AT_KEY1_X3_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X2_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y12 )
			( AT_X2_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y12 )
			(not ( CARRIABLE-AT_KEY1_X2_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X1_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y12 )
			( AT_X1_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y12 )
			(not ( CARRIABLE-AT_KEY1_X1_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X4_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y12 )
			( AT_X4_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y12 )
			(not ( CARRIABLE-AT_KEY0_X4_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X6_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y12 )
			( AT_X6_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y12 )
			(not ( CARRIABLE-AT_KEY0_X6_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X5_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y12 )
			( AT_X5_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y12 )
			(not ( CARRIABLE-AT_KEY0_X5_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X3_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y12 )
			( AT_X3_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y12 )
			(not ( CARRIABLE-AT_KEY0_X3_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X2_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y12 )
			( AT_X2_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y12 )
			(not ( CARRIABLE-AT_KEY0_X2_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X1_Y11_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y12 )
			( AT_X1_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y12 )
			(not ( CARRIABLE-AT_KEY0_X1_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X4_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y12 )
			( AT_X4_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y12 )
			(not ( CARRIABLE-AT_KEY1_X4_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X6_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y12 )
			( AT_X6_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y12 )
			(not ( CARRIABLE-AT_KEY1_X6_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X5_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y12 )
			( AT_X5_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y12 )
			(not ( CARRIABLE-AT_KEY1_X5_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X3_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y12 )
			( AT_X3_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y12 )
			(not ( CARRIABLE-AT_KEY1_X3_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X2_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y12 )
			( AT_X2_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y12 )
			(not ( CARRIABLE-AT_KEY1_X2_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X1_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y12 )
			( AT_X1_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y12 )
			(not ( CARRIABLE-AT_KEY1_X1_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X4_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y12 )
			( AT_X4_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y12 )
			(not ( CARRIABLE-AT_KEY0_X4_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X6_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y12 )
			( AT_X6_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y12 )
			(not ( CARRIABLE-AT_KEY0_X6_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X5_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y12 )
			( AT_X5_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y12 )
			(not ( CARRIABLE-AT_KEY0_X5_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X3_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y12 )
			( AT_X3_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y12 )
			(not ( CARRIABLE-AT_KEY0_X3_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X2_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y12 )
			( AT_X2_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y12 )
			(not ( CARRIABLE-AT_KEY0_X2_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X1_Y13_Y12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y12 )
			( AT_X1_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y12 )
			(not ( CARRIABLE-AT_KEY0_X1_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X1_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y11 )
			( AT_X1_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y11 )
			(not ( CARRIABLE-AT_KEY1_X1_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X1_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y11 )
			( AT_X1_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y11 )
			(not ( CARRIABLE-AT_KEY0_X1_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X10_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y8 )
			( AT_X10_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y8 )
			(not ( CARRIABLE-AT_KEY1_X10_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X8_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y8 )
			( AT_X8_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y8 )
			(not ( CARRIABLE-AT_KEY1_X8_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X10_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y8 )
			( AT_X10_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y8 )
			(not ( CARRIABLE-AT_KEY0_X10_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X8_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y8 )
			( AT_X8_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y8 )
			(not ( CARRIABLE-AT_KEY0_X8_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X9_Y8_Y7
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y7 )
			( AT_X9_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y7 )
			(not ( CARRIABLE-AT_KEY1_X9_Y7 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X9_Y8_Y7
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y7 )
			( AT_X9_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y7 )
			(not ( CARRIABLE-AT_KEY0_X9_Y7 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X4_Y12_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y12 )
			( AT_X4_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y12 )
			(not ( CARRIABLE-AT_KEY1_X5_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X4_Y13_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y13 )
			( AT_X4_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y13 )
			(not ( CARRIABLE-AT_KEY1_X5_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X4_Y12_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y12 )
			( AT_X4_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y12 )
			(not ( CARRIABLE-AT_KEY0_X5_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X4_Y13_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y13 )
			( AT_X4_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y13 )
			(not ( CARRIABLE-AT_KEY0_X5_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X3_Y12_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y12 )
			( AT_X3_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y12 )
			(not ( CARRIABLE-AT_KEY1_X4_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X3_Y13_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y13 )
			( AT_X3_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y13 )
			(not ( CARRIABLE-AT_KEY1_X4_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X3_Y12_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y12 )
			( AT_X3_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y12 )
			(not ( CARRIABLE-AT_KEY0_X4_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X3_Y13_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y13 )
			( AT_X3_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y13 )
			(not ( CARRIABLE-AT_KEY0_X4_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X9_Y8_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y8 )
			( AT_X9_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y8 )
			(not ( CARRIABLE-AT_KEY1_X10_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X9_Y8_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y8 )
			( AT_X9_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y8 )
			(not ( CARRIABLE-AT_KEY0_X10_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X5_Y12_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y12 )
			( AT_X5_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y12 )
			(not ( CARRIABLE-AT_KEY1_X6_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X5_Y13_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y13 )
			( AT_X5_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y13 )
			(not ( CARRIABLE-AT_KEY1_X6_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X5_Y12_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y12 )
			( AT_X5_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y12 )
			(not ( CARRIABLE-AT_KEY0_X6_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X5_Y13_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y13 )
			( AT_X5_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y13 )
			(not ( CARRIABLE-AT_KEY0_X6_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X2_Y12_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y12 )
			( AT_X2_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y12 )
			(not ( CARRIABLE-AT_KEY1_X3_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X2_Y13_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y13 )
			( AT_X2_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y13 )
			(not ( CARRIABLE-AT_KEY1_X3_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X2_Y12_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y12 )
			( AT_X2_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y12 )
			(not ( CARRIABLE-AT_KEY0_X3_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X2_Y13_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y13 )
			( AT_X2_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y13 )
			(not ( CARRIABLE-AT_KEY0_X3_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X1_Y12_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y12 )
			( AT_X1_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y12 )
			(not ( CARRIABLE-AT_KEY1_X2_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X1_Y13_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y13 )
			( AT_X1_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y13 )
			(not ( CARRIABLE-AT_KEY1_X2_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X1_Y12_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y12 )
			( AT_X1_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y12 )
			(not ( CARRIABLE-AT_KEY0_X2_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X1_Y13_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y13 )
			( AT_X1_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y13 )
			(not ( CARRIABLE-AT_KEY0_X2_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X2_Y11_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y11 )
			( AT_X2_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y11 )
			(not ( CARRIABLE-AT_KEY1_X1_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X2_Y12_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y12 )
			( AT_X2_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y12 )
			(not ( CARRIABLE-AT_KEY1_X1_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X2_Y13_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y13 )
			( AT_X2_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y13 )
			(not ( CARRIABLE-AT_KEY1_X1_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X2_Y11_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y11 )
			( AT_X2_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y11 )
			(not ( CARRIABLE-AT_KEY0_X1_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X2_Y12_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y12 )
			( AT_X2_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y12 )
			(not ( CARRIABLE-AT_KEY0_X1_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X2_Y13_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y13 )
			( AT_X2_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y13 )
			(not ( CARRIABLE-AT_KEY0_X1_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X6_Y12_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y12 )
			( AT_X6_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y12 )
			(not ( CARRIABLE-AT_KEY1_X5_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X6_Y13_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y13 )
			( AT_X6_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y13 )
			(not ( CARRIABLE-AT_KEY1_X5_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X6_Y12_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y12 )
			( AT_X6_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y12 )
			(not ( CARRIABLE-AT_KEY0_X5_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X6_Y13_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y13 )
			( AT_X6_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y13 )
			(not ( CARRIABLE-AT_KEY0_X5_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X4_Y12_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y12 )
			( AT_X4_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y12 )
			(not ( CARRIABLE-AT_KEY1_X3_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X4_Y13_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y13 )
			( AT_X4_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y13 )
			(not ( CARRIABLE-AT_KEY1_X3_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X4_Y12_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y12 )
			( AT_X4_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y12 )
			(not ( CARRIABLE-AT_KEY0_X3_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X4_Y13_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y13 )
			( AT_X4_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y13 )
			(not ( CARRIABLE-AT_KEY0_X3_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X5_Y12_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y12 )
			( AT_X5_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y12 )
			(not ( CARRIABLE-AT_KEY1_X4_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X5_Y13_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y13 )
			( AT_X5_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y13 )
			(not ( CARRIABLE-AT_KEY1_X4_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X5_Y12_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y12 )
			( AT_X5_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y12 )
			(not ( CARRIABLE-AT_KEY0_X4_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X5_Y13_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y13 )
			( AT_X5_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y13 )
			(not ( CARRIABLE-AT_KEY0_X4_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X3_Y12_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y12 )
			( AT_X3_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y12 )
			(not ( CARRIABLE-AT_KEY1_X2_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X3_Y13_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y13 )
			( AT_X3_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y13 )
			(not ( CARRIABLE-AT_KEY1_X2_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X3_Y12_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y12 )
			( AT_X3_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y12 )
			(not ( CARRIABLE-AT_KEY0_X2_Y12 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X3_Y13_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y13 )
			( AT_X3_Y13 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y13 )
			(not ( CARRIABLE-AT_KEY0_X2_Y13 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X9_Y8_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y8 )
			( AT_X9_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y8 )
			(not ( CARRIABLE-AT_KEY1_X8_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X9_Y8_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y8 )
			( AT_X9_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y8 )
			(not ( CARRIABLE-AT_KEY0_X8_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action FORWARD-DOWN_X9_Y8_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y9 )
			( AT_X9_Y8 )
		)
		:effect
		(and
			
			( AT_X9_Y9 )
			(not ( AT_X9_Y8 ))
		)
	)
	(:action FORWARD-DOWN_X10_Y8_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y9 )
			( AT_X10_Y8 )
		)
		:effect
		(and
			
			( AT_X10_Y9 )
			(not ( AT_X10_Y8 ))
		)
	)
	(:action FORWARD-DOWN_X8_Y8_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y9 )
			( AT_X8_Y8 )
		)
		:effect
		(and
			
			( AT_X8_Y9 )
			(not ( AT_X8_Y8 ))
		)
	)
	(:action FORWARD-UP_X9_Y7_Y6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y6 )
			( AT_X9_Y7 )
		)
		:effect
		(and
			
			( AT_X9_Y6 )
			(not ( AT_X9_Y7 ))
		)
	)
	(:action FORWARD-UP_X4_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y12 )
			( AT_X4_Y13 )
		)
		:effect
		(and
			
			( AT_X4_Y12 )
			(not ( AT_X4_Y13 ))
		)
	)
	(:action FORWARD-UP_X6_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y12 )
			( AT_X6_Y13 )
		)
		:effect
		(and
			
			( AT_X6_Y12 )
			(not ( AT_X6_Y13 ))
		)
	)
	(:action FORWARD-UP_X5_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y12 )
			( AT_X5_Y13 )
		)
		:effect
		(and
			
			( AT_X5_Y12 )
			(not ( AT_X5_Y13 ))
		)
	)
	(:action FORWARD-UP_X3_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y12 )
			( AT_X3_Y13 )
		)
		:effect
		(and
			
			( AT_X3_Y12 )
			(not ( AT_X3_Y13 ))
		)
	)
	(:action FORWARD-UP_X2_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y12 )
			( AT_X2_Y13 )
		)
		:effect
		(and
			
			( AT_X2_Y12 )
			(not ( AT_X2_Y13 ))
		)
	)
	(:action FORWARD-UP_X1_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y12 )
			( AT_X1_Y13 )
		)
		:effect
		(and
			
			( AT_X1_Y12 )
			(not ( AT_X1_Y13 ))
		)
	)
	(:action FORWARD-UP_X4_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y11 )
			( AT_X4_Y12 )
		)
		:effect
		(and
			
			( AT_X4_Y11 )
			(not ( AT_X4_Y12 ))
		)
	)
	(:action FORWARD-UP_X6_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y11 )
			( AT_X6_Y12 )
		)
		:effect
		(and
			
			( AT_X6_Y11 )
			(not ( AT_X6_Y12 ))
		)
	)
	(:action FORWARD-UP_X5_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y11 )
			( AT_X5_Y12 )
		)
		:effect
		(and
			
			( AT_X5_Y11 )
			(not ( AT_X5_Y12 ))
		)
	)
	(:action FORWARD-UP_X3_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y11 )
			( AT_X3_Y12 )
		)
		:effect
		(and
			
			( AT_X3_Y11 )
			(not ( AT_X3_Y12 ))
		)
	)
	(:action FORWARD-UP_X2_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y11 )
			( AT_X2_Y12 )
		)
		:effect
		(and
			
			( AT_X2_Y11 )
			(not ( AT_X2_Y12 ))
		)
	)
	(:action FORWARD-UP_X1_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y11 )
			( AT_X1_Y12 )
		)
		:effect
		(and
			
			( AT_X1_Y11 )
			(not ( AT_X1_Y12 ))
		)
	)
	(:action FORWARD-UP_X9_Y8_Y7
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y7 )
			( AT_X9_Y8 )
		)
		:effect
		(and
			
			( AT_X9_Y7 )
			(not ( AT_X9_Y8 ))
		)
	)
	(:action FORWARD-RIGHT_X4_Y12_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y12 )
			( AT_X4_Y12 )
		)
		:effect
		(and
			
			( AT_X5_Y12 )
			(not ( AT_X4_Y12 ))
		)
	)
	(:action FORWARD-RIGHT_X4_Y13_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y13 )
			( AT_X4_Y13 )
		)
		:effect
		(and
			
			( AT_X5_Y13 )
			(not ( AT_X4_Y13 ))
		)
	)
	(:action FORWARD-RIGHT_X3_Y12_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y12 )
			( AT_X3_Y12 )
		)
		:effect
		(and
			
			( AT_X4_Y12 )
			(not ( AT_X3_Y12 ))
		)
	)
	(:action FORWARD-RIGHT_X3_Y13_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y13 )
			( AT_X3_Y13 )
		)
		:effect
		(and
			
			( AT_X4_Y13 )
			(not ( AT_X3_Y13 ))
		)
	)
	(:action FORWARD-RIGHT_X9_Y8_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y8 )
			( AT_X9_Y8 )
		)
		:effect
		(and
			
			( AT_X10_Y8 )
			(not ( AT_X9_Y8 ))
		)
	)
	(:action FORWARD-RIGHT_X5_Y12_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y12 )
			( AT_X5_Y12 )
		)
		:effect
		(and
			
			( AT_X6_Y12 )
			(not ( AT_X5_Y12 ))
		)
	)
	(:action FORWARD-RIGHT_X5_Y13_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y13 )
			( AT_X5_Y13 )
		)
		:effect
		(and
			
			( AT_X6_Y13 )
			(not ( AT_X5_Y13 ))
		)
	)
	(:action FORWARD-RIGHT_X2_Y12_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y12 )
			( AT_X2_Y12 )
		)
		:effect
		(and
			
			( AT_X3_Y12 )
			(not ( AT_X2_Y12 ))
		)
	)
	(:action FORWARD-RIGHT_X2_Y13_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y13 )
			( AT_X2_Y13 )
		)
		:effect
		(and
			
			( AT_X3_Y13 )
			(not ( AT_X2_Y13 ))
		)
	)
	(:action FORWARD-RIGHT_X1_Y12_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y12 )
			( AT_X1_Y12 )
		)
		:effect
		(and
			
			( AT_X2_Y12 )
			(not ( AT_X1_Y12 ))
		)
	)
	(:action FORWARD-RIGHT_X1_Y13_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y13 )
			( AT_X1_Y13 )
		)
		:effect
		(and
			
			( AT_X2_Y13 )
			(not ( AT_X1_Y13 ))
		)
	)
	(:action FORWARD-RIGHT_X8_Y8_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y8 )
			( AT_X8_Y8 )
		)
		:effect
		(and
			
			( AT_X9_Y8 )
			(not ( AT_X8_Y8 ))
		)
	)
	(:action FORWARD-LEFT_X2_Y12_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y12 )
			( AT_X2_Y12 )
		)
		:effect
		(and
			
			( AT_X1_Y12 )
			(not ( AT_X2_Y12 ))
		)
	)
	(:action FORWARD-LEFT_X2_Y13_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y13 )
			( AT_X2_Y13 )
		)
		:effect
		(and
			
			( AT_X1_Y13 )
			(not ( AT_X2_Y13 ))
		)
	)
	(:action FORWARD-LEFT_X6_Y12_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y12 )
			( AT_X6_Y12 )
		)
		:effect
		(and
			
			( AT_X5_Y12 )
			(not ( AT_X6_Y12 ))
		)
	)
	(:action FORWARD-LEFT_X6_Y13_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y13 )
			( AT_X6_Y13 )
		)
		:effect
		(and
			
			( AT_X5_Y13 )
			(not ( AT_X6_Y13 ))
		)
	)
	(:action FORWARD-LEFT_X4_Y12_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y12 )
			( AT_X4_Y12 )
		)
		:effect
		(and
			
			( AT_X3_Y12 )
			(not ( AT_X4_Y12 ))
		)
	)
	(:action FORWARD-LEFT_X4_Y13_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y13 )
			( AT_X4_Y13 )
		)
		:effect
		(and
			
			( AT_X3_Y13 )
			(not ( AT_X4_Y13 ))
		)
	)
	(:action FORWARD-LEFT_X5_Y12_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y12 )
			( AT_X5_Y12 )
		)
		:effect
		(and
			
			( AT_X4_Y12 )
			(not ( AT_X5_Y12 ))
		)
	)
	(:action FORWARD-LEFT_X5_Y13_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y13 )
			( AT_X5_Y13 )
		)
		:effect
		(and
			
			( AT_X4_Y13 )
			(not ( AT_X5_Y13 ))
		)
	)
	(:action FORWARD-LEFT_X3_Y12_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y12 )
			( AT_X3_Y12 )
		)
		:effect
		(and
			
			( AT_X2_Y12 )
			(not ( AT_X3_Y12 ))
		)
	)
	(:action FORWARD-LEFT_X3_Y13_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y13 )
			( AT_X3_Y13 )
		)
		:effect
		(and
			
			( AT_X2_Y13 )
			(not ( AT_X3_Y13 ))
		)
	)
	(:action FORWARD-LEFT_X9_Y8_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y8 )
			( AT_X9_Y8 )
		)
		:effect
		(and
			
			( AT_X8_Y8 )
			(not ( AT_X9_Y8 ))
		)
	)
	(:action TOGGLE-UP_DOOR2_KEY0_YELLOW_X9_Y8_Y7
		:parameters ()
		:precondition
		(and
			( IS-LOCKED_DOOR2 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y8 )
		)
		:effect
		(and
			
			( IS-CLEAR_X9_Y7 )
			(not ( IS-LOCKED_DOOR2 ))
		)
	)
	(:action DROP-DOWN_KEY1_X9_Y7_Y6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y7 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y6 ))
		)
	)
	(:action DROP-DOWN_KEY0_X9_Y7_Y6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y7 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y6 ))
		)
	)
	(:action DROP-DOWN_KEY1_X2_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY0_X2_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY1_X4_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY1_X6_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY1_X5_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY1_X3_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY1_X2_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY1_X1_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY0_X4_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY0_X6_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY0_X5_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY0_X3_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY0_X2_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY0_X1_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y12 ))
		)
	)
	(:action DROP-DOWN_KEY1_X4_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY1_X6_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY1_X5_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY1_X3_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY1_X2_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY1_X1_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY0_X4_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY0_X6_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY0_X5_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY0_X3_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY0_X2_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY0_X1_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y11 ))
		)
	)
	(:action DROP-DOWN_KEY1_X9_Y8_Y7
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y7 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y7 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y7 ))
		)
	)
	(:action DROP-DOWN_KEY0_X9_Y8_Y7
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y7 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y7 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y7 ))
		)
	)
	(:action DROP-UP_KEY1_X9_Y7_Y6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y7 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y6 ))
		)
	)
	(:action DROP-UP_KEY0_X9_Y7_Y6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y7 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y6 ))
		)
	)
	(:action DROP-UP_KEY1_X2_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y10 ))
		)
	)
	(:action DROP-UP_KEY0_X2_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y10 ))
		)
	)
	(:action DROP-UP_KEY1_X4_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y12 ))
		)
	)
	(:action DROP-UP_KEY1_X6_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y12 ))
		)
	)
	(:action DROP-UP_KEY1_X5_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y12 ))
		)
	)
	(:action DROP-UP_KEY1_X3_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y12 ))
		)
	)
	(:action DROP-UP_KEY1_X2_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y12 ))
		)
	)
	(:action DROP-UP_KEY1_X1_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y12 ))
		)
	)
	(:action DROP-UP_KEY0_X4_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y12 ))
		)
	)
	(:action DROP-UP_KEY0_X6_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y12 ))
		)
	)
	(:action DROP-UP_KEY0_X5_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y12 ))
		)
	)
	(:action DROP-UP_KEY0_X3_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y12 ))
		)
	)
	(:action DROP-UP_KEY0_X2_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y12 ))
		)
	)
	(:action DROP-UP_KEY0_X1_Y13_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y12 ))
		)
	)
	(:action DROP-UP_KEY1_X4_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y11 ))
		)
	)
	(:action DROP-UP_KEY1_X6_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y11 ))
		)
	)
	(:action DROP-UP_KEY1_X5_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y11 ))
		)
	)
	(:action DROP-UP_KEY1_X3_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y11 ))
		)
	)
	(:action DROP-UP_KEY1_X2_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y11 ))
		)
	)
	(:action DROP-UP_KEY1_X1_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y11 ))
		)
	)
	(:action DROP-UP_KEY0_X4_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y11 ))
		)
	)
	(:action DROP-UP_KEY0_X6_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y11 ))
		)
	)
	(:action DROP-UP_KEY0_X5_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y11 ))
		)
	)
	(:action DROP-UP_KEY0_X3_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y11 ))
		)
	)
	(:action DROP-UP_KEY0_X2_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y11 ))
		)
	)
	(:action DROP-UP_KEY0_X1_Y12_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y11 ))
		)
	)
	(:action DROP-UP_KEY1_X9_Y8_Y7
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y7 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y7 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y7 ))
		)
	)
	(:action DROP-UP_KEY0_X9_Y8_Y7
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y7 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y7 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y7 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X4_Y12_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y12 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X4_Y13_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y13 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y13 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y13 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X4_Y12_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y12 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X4_Y13_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y13 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y13 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y13 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X3_Y12_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y12 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X3_Y13_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y13 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y13 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y13 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X3_Y12_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y12 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X3_Y13_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y13 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y13 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y13 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X9_Y8_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y8 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X9_Y8_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y8 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X5_Y12_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y12 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X5_Y13_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y13 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y13 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y13 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X5_Y12_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y12 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X5_Y13_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y13 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y13 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y13 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X2_Y11_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y11 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X2_Y12_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y12 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X2_Y13_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y13 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y13 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y13 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X2_Y11_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y11 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X2_Y12_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y12 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X2_Y13_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y13 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y13 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y13 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X1_Y12_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y12 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X1_Y13_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y13 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y13 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y13 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X1_Y12_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y12 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X1_Y13_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y13 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y13 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y13 ))
		)
	)
	(:action DROP-LEFT_KEY1_X2_Y11_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y11 ))
		)
	)
	(:action DROP-LEFT_KEY1_X2_Y12_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y12 ))
		)
	)
	(:action DROP-LEFT_KEY1_X2_Y13_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y13 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y13 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y13 ))
		)
	)
	(:action DROP-LEFT_KEY0_X2_Y11_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y11 ))
		)
	)
	(:action DROP-LEFT_KEY0_X2_Y12_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y12 ))
		)
	)
	(:action DROP-LEFT_KEY0_X2_Y13_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y13 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y13 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y13 ))
		)
	)
	(:action DROP-LEFT_KEY1_X6_Y12_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y12 ))
		)
	)
	(:action DROP-LEFT_KEY1_X6_Y13_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y13 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y13 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y13 ))
		)
	)
	(:action DROP-LEFT_KEY0_X6_Y12_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y12 ))
		)
	)
	(:action DROP-LEFT_KEY0_X6_Y13_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y13 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y13 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y13 ))
		)
	)
	(:action DROP-LEFT_KEY1_X4_Y12_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y12 ))
		)
	)
	(:action DROP-LEFT_KEY1_X4_Y13_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y13 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y13 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y13 ))
		)
	)
	(:action DROP-LEFT_KEY0_X4_Y12_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y12 ))
		)
	)
	(:action DROP-LEFT_KEY0_X4_Y13_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y13 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y13 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y13 ))
		)
	)
	(:action DROP-LEFT_KEY1_X5_Y12_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y12 ))
		)
	)
	(:action DROP-LEFT_KEY1_X5_Y13_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y13 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y13 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y13 ))
		)
	)
	(:action DROP-LEFT_KEY0_X5_Y12_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y12 ))
		)
	)
	(:action DROP-LEFT_KEY0_X5_Y13_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y13 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y13 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y13 ))
		)
	)
	(:action DROP-LEFT_KEY1_X3_Y12_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y12 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y12 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y12 ))
		)
	)
	(:action DROP-LEFT_KEY1_X3_Y13_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y13 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y13 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y13 ))
		)
	)
	(:action DROP-LEFT_KEY0_X3_Y12_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y12 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y12 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y12 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y12 ))
		)
	)
	(:action DROP-LEFT_KEY0_X3_Y13_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y13 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y13 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y13 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y13 ))
		)
	)
	(:action DROP-LEFT_KEY1_X9_Y8_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y8 ))
		)
	)
	(:action DROP-LEFT_KEY0_X9_Y8_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y8 ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X4_Y7_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y8 )
			( AT_X4_Y7 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y8 )
			(not ( CARRIABLE-AT_KEY0_X4_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X4_Y6_Y7
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y7 )
			( AT_X4_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y7 )
			(not ( CARRIABLE-AT_KEY0_X4_Y7 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X9_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y4 )
			( AT_X9_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y4 )
			(not ( CARRIABLE-AT_KEY0_X9_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X4_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y4 )
			( AT_X4_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y4 )
			(not ( CARRIABLE-AT_KEY0_X4_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X13_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y4 )
			( AT_X13_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y4 )
			(not ( CARRIABLE-AT_KEY0_X13_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X6_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y4 )
			( AT_X6_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y4 )
			(not ( CARRIABLE-AT_KEY0_X6_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X5_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y4 )
			( AT_X5_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y4 )
			(not ( CARRIABLE-AT_KEY0_X5_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X3_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y4 )
			( AT_X3_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y4 )
			(not ( CARRIABLE-AT_KEY0_X3_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X2_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y4 )
			( AT_X2_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y4 )
			(not ( CARRIABLE-AT_KEY0_X2_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X12_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y4 )
			( AT_X12_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y4 )
			(not ( CARRIABLE-AT_KEY0_X12_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X11_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y4 )
			( AT_X11_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y4 )
			(not ( CARRIABLE-AT_KEY0_X11_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X1_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y4 )
			( AT_X1_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y4 )
			(not ( CARRIABLE-AT_KEY0_X1_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X10_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y4 )
			( AT_X10_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y4 )
			(not ( CARRIABLE-AT_KEY0_X10_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X8_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y4 )
			( AT_X8_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y4 )
			(not ( CARRIABLE-AT_KEY0_X8_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X1_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y9 )
			( AT_X1_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y9 )
			(not ( CARRIABLE-AT_KEY1_X1_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X4_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y9 )
			( AT_X4_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y9 )
			(not ( CARRIABLE-AT_KEY0_X4_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X6_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y9 )
			( AT_X6_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y9 )
			(not ( CARRIABLE-AT_KEY0_X6_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X5_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y9 )
			( AT_X5_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y9 )
			(not ( CARRIABLE-AT_KEY0_X5_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X3_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y9 )
			( AT_X3_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y9 )
			(not ( CARRIABLE-AT_KEY0_X3_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X2_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y9 )
			( AT_X2_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y9 )
			(not ( CARRIABLE-AT_KEY0_X2_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X1_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y9 )
			( AT_X1_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y9 )
			(not ( CARRIABLE-AT_KEY0_X1_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X4_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y11 )
			( AT_X4_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y11 )
			(not ( CARRIABLE-AT_KEY1_X4_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X6_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y11 )
			( AT_X6_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y11 )
			(not ( CARRIABLE-AT_KEY1_X6_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X5_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y11 )
			( AT_X5_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y11 )
			(not ( CARRIABLE-AT_KEY1_X5_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X3_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y11 )
			( AT_X3_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y11 )
			(not ( CARRIABLE-AT_KEY1_X3_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X2_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y11 )
			( AT_X2_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y11 )
			(not ( CARRIABLE-AT_KEY1_X2_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X4_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y11 )
			( AT_X4_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y11 )
			(not ( CARRIABLE-AT_KEY0_X4_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X6_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y11 )
			( AT_X6_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y11 )
			(not ( CARRIABLE-AT_KEY0_X6_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X5_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y11 )
			( AT_X5_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y11 )
			(not ( CARRIABLE-AT_KEY0_X5_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X3_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y11 )
			( AT_X3_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y11 )
			(not ( CARRIABLE-AT_KEY0_X3_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X9_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y3 )
			( AT_X9_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y3 )
			(not ( CARRIABLE-AT_KEY0_X9_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X4_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y3 )
			( AT_X4_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y3 )
			(not ( CARRIABLE-AT_KEY0_X4_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X13_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y3 )
			( AT_X13_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y3 )
			(not ( CARRIABLE-AT_KEY0_X13_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X6_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y3 )
			( AT_X6_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y3 )
			(not ( CARRIABLE-AT_KEY0_X6_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X5_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y3 )
			( AT_X5_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y3 )
			(not ( CARRIABLE-AT_KEY0_X5_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X3_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y3 )
			( AT_X3_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y3 )
			(not ( CARRIABLE-AT_KEY0_X3_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X2_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y3 )
			( AT_X2_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y3 )
			(not ( CARRIABLE-AT_KEY0_X2_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X12_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y3 )
			( AT_X12_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y3 )
			(not ( CARRIABLE-AT_KEY0_X12_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X11_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y3 )
			( AT_X11_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y3 )
			(not ( CARRIABLE-AT_KEY0_X11_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X1_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y3 )
			( AT_X1_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y3 )
			(not ( CARRIABLE-AT_KEY0_X1_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X10_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y3 )
			( AT_X10_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y3 )
			(not ( CARRIABLE-AT_KEY0_X10_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X8_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y3 )
			( AT_X8_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y3 )
			(not ( CARRIABLE-AT_KEY0_X8_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X9_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y6 )
			( AT_X9_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y6 )
			(not ( CARRIABLE-AT_KEY0_X9_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X4_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y6 )
			( AT_X4_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y6 )
			(not ( CARRIABLE-AT_KEY0_X4_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X13_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y6 )
			( AT_X13_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y6 )
			(not ( CARRIABLE-AT_KEY0_X13_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X6_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y6 )
			( AT_X6_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y6 )
			(not ( CARRIABLE-AT_KEY0_X6_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X5_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y6 )
			( AT_X5_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y6 )
			(not ( CARRIABLE-AT_KEY0_X5_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X3_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y6 )
			( AT_X3_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y6 )
			(not ( CARRIABLE-AT_KEY0_X3_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X2_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y6 )
			( AT_X2_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y6 )
			(not ( CARRIABLE-AT_KEY0_X2_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X12_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y6 )
			( AT_X12_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y6 )
			(not ( CARRIABLE-AT_KEY0_X12_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X11_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y6 )
			( AT_X11_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y6 )
			(not ( CARRIABLE-AT_KEY0_X11_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X1_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y6 )
			( AT_X1_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y6 )
			(not ( CARRIABLE-AT_KEY0_X1_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X10_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y6 )
			( AT_X10_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y6 )
			(not ( CARRIABLE-AT_KEY0_X10_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X8_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y6 )
			( AT_X8_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y6 )
			(not ( CARRIABLE-AT_KEY0_X8_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X9_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y2 )
			( AT_X9_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y2 )
			(not ( CARRIABLE-AT_KEY0_X9_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X4_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y2 )
			( AT_X4_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y2 )
			(not ( CARRIABLE-AT_KEY0_X4_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X13_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y2 )
			( AT_X13_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y2 )
			(not ( CARRIABLE-AT_KEY0_X13_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X6_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y2 )
			( AT_X6_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y2 )
			(not ( CARRIABLE-AT_KEY0_X6_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X5_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y2 )
			( AT_X5_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y2 )
			(not ( CARRIABLE-AT_KEY0_X5_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X3_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y2 )
			( AT_X3_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y2 )
			(not ( CARRIABLE-AT_KEY0_X3_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X2_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y2 )
			( AT_X2_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y2 )
			(not ( CARRIABLE-AT_KEY0_X2_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X12_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y2 )
			( AT_X12_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y2 )
			(not ( CARRIABLE-AT_KEY0_X12_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X11_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y2 )
			( AT_X11_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y2 )
			(not ( CARRIABLE-AT_KEY0_X11_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X1_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y2 )
			( AT_X1_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y2 )
			(not ( CARRIABLE-AT_KEY0_X1_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X10_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y2 )
			( AT_X10_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y2 )
			(not ( CARRIABLE-AT_KEY0_X10_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X8_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y2 )
			( AT_X8_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y2 )
			(not ( CARRIABLE-AT_KEY0_X8_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X9_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y5 )
			( AT_X9_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y5 )
			(not ( CARRIABLE-AT_KEY0_X9_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X4_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y5 )
			( AT_X4_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y5 )
			(not ( CARRIABLE-AT_KEY0_X4_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X13_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y5 )
			( AT_X13_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y5 )
			(not ( CARRIABLE-AT_KEY0_X13_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X6_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y5 )
			( AT_X6_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y5 )
			(not ( CARRIABLE-AT_KEY0_X6_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X5_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y5 )
			( AT_X5_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y5 )
			(not ( CARRIABLE-AT_KEY0_X5_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X3_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y5 )
			( AT_X3_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y5 )
			(not ( CARRIABLE-AT_KEY0_X3_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X2_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y5 )
			( AT_X2_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y5 )
			(not ( CARRIABLE-AT_KEY0_X2_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X12_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y5 )
			( AT_X12_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y5 )
			(not ( CARRIABLE-AT_KEY0_X12_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X11_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y5 )
			( AT_X11_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y5 )
			(not ( CARRIABLE-AT_KEY0_X11_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X1_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y5 )
			( AT_X1_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y5 )
			(not ( CARRIABLE-AT_KEY0_X1_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X10_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y5 )
			( AT_X10_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y5 )
			(not ( CARRIABLE-AT_KEY0_X10_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X8_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y5 )
			( AT_X8_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y5 )
			(not ( CARRIABLE-AT_KEY0_X8_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X4_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y10 )
			( AT_X4_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y10 )
			(not ( CARRIABLE-AT_KEY1_X4_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X6_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y10 )
			( AT_X6_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y10 )
			(not ( CARRIABLE-AT_KEY1_X6_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X5_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y10 )
			( AT_X5_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y10 )
			(not ( CARRIABLE-AT_KEY1_X5_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X3_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y10 )
			( AT_X3_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y10 )
			(not ( CARRIABLE-AT_KEY1_X3_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X2_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y10 )
			( AT_X2_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y10 )
			(not ( CARRIABLE-AT_KEY1_X2_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X1_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y10 )
			( AT_X1_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y10 )
			(not ( CARRIABLE-AT_KEY1_X1_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X4_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y10 )
			( AT_X4_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y10 )
			(not ( CARRIABLE-AT_KEY0_X4_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X6_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y10 )
			( AT_X6_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y10 )
			(not ( CARRIABLE-AT_KEY0_X6_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X5_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y10 )
			( AT_X5_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y10 )
			(not ( CARRIABLE-AT_KEY0_X5_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X3_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y10 )
			( AT_X3_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y10 )
			(not ( CARRIABLE-AT_KEY0_X3_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X2_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y10 )
			( AT_X2_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y10 )
			(not ( CARRIABLE-AT_KEY0_X2_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X1_Y9_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y10 )
			( AT_X1_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y10 )
			(not ( CARRIABLE-AT_KEY0_X1_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X9_Y7_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y6 )
			( AT_X9_Y7 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y6 )
			(not ( CARRIABLE-AT_KEY1_X9_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X9_Y7_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y6 )
			( AT_X9_Y7 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y6 )
			(not ( CARRIABLE-AT_KEY0_X9_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X4_Y7_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y6 )
			( AT_X4_Y7 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y6 )
			(not ( CARRIABLE-AT_KEY0_X4_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X9_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y5 )
			( AT_X9_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y5 )
			(not ( CARRIABLE-AT_KEY0_X9_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X4_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y5 )
			( AT_X4_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y5 )
			(not ( CARRIABLE-AT_KEY0_X4_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X13_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y5 )
			( AT_X13_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y5 )
			(not ( CARRIABLE-AT_KEY0_X13_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X6_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y5 )
			( AT_X6_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y5 )
			(not ( CARRIABLE-AT_KEY0_X6_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X5_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y5 )
			( AT_X5_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y5 )
			(not ( CARRIABLE-AT_KEY0_X5_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X3_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y5 )
			( AT_X3_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y5 )
			(not ( CARRIABLE-AT_KEY0_X3_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X2_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y5 )
			( AT_X2_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y5 )
			(not ( CARRIABLE-AT_KEY0_X2_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X12_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y5 )
			( AT_X12_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y5 )
			(not ( CARRIABLE-AT_KEY0_X12_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X11_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y5 )
			( AT_X11_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y5 )
			(not ( CARRIABLE-AT_KEY0_X11_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X1_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y5 )
			( AT_X1_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y5 )
			(not ( CARRIABLE-AT_KEY0_X1_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X10_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y5 )
			( AT_X10_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y5 )
			(not ( CARRIABLE-AT_KEY0_X10_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X8_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y5 )
			( AT_X8_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y5 )
			(not ( CARRIABLE-AT_KEY0_X8_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X4_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y10 )
			( AT_X4_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y10 )
			(not ( CARRIABLE-AT_KEY1_X4_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X6_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y10 )
			( AT_X6_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y10 )
			(not ( CARRIABLE-AT_KEY1_X6_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X5_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y10 )
			( AT_X5_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y10 )
			(not ( CARRIABLE-AT_KEY1_X5_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X3_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y10 )
			( AT_X3_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y10 )
			(not ( CARRIABLE-AT_KEY1_X3_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X2_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y10 )
			( AT_X2_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y10 )
			(not ( CARRIABLE-AT_KEY1_X2_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X1_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y10 )
			( AT_X1_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y10 )
			(not ( CARRIABLE-AT_KEY1_X1_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X4_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y10 )
			( AT_X4_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y10 )
			(not ( CARRIABLE-AT_KEY0_X4_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X6_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y10 )
			( AT_X6_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y10 )
			(not ( CARRIABLE-AT_KEY0_X6_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X5_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y10 )
			( AT_X5_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y10 )
			(not ( CARRIABLE-AT_KEY0_X5_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X3_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y10 )
			( AT_X3_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y10 )
			(not ( CARRIABLE-AT_KEY0_X3_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X2_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y10 )
			( AT_X2_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y10 )
			(not ( CARRIABLE-AT_KEY0_X2_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X1_Y11_Y10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y10 )
			( AT_X1_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y10 )
			(not ( CARRIABLE-AT_KEY0_X1_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X9_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y1 )
			( AT_X9_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y1 )
			(not ( CARRIABLE-AT_KEY0_X9_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X4_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y1 )
			( AT_X4_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y1 )
			(not ( CARRIABLE-AT_KEY0_X4_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X13_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y1 )
			( AT_X13_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y1 )
			(not ( CARRIABLE-AT_KEY0_X13_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X6_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y1 )
			( AT_X6_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y1 )
			(not ( CARRIABLE-AT_KEY0_X6_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X5_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y1 )
			( AT_X5_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y1 )
			(not ( CARRIABLE-AT_KEY0_X5_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X3_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y1 )
			( AT_X3_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y1 )
			(not ( CARRIABLE-AT_KEY0_X3_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X2_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y1 )
			( AT_X2_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y1 )
			(not ( CARRIABLE-AT_KEY0_X2_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X12_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y1 )
			( AT_X12_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y1 )
			(not ( CARRIABLE-AT_KEY0_X12_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X11_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y1 )
			( AT_X11_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y1 )
			(not ( CARRIABLE-AT_KEY0_X11_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X1_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y1 )
			( AT_X1_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y1 )
			(not ( CARRIABLE-AT_KEY0_X1_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X10_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y1 )
			( AT_X10_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y1 )
			(not ( CARRIABLE-AT_KEY0_X10_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X8_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y1 )
			( AT_X8_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y1 )
			(not ( CARRIABLE-AT_KEY0_X8_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X4_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y11 )
			( AT_X4_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y11 )
			(not ( CARRIABLE-AT_KEY1_X4_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X6_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y11 )
			( AT_X6_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y11 )
			(not ( CARRIABLE-AT_KEY1_X6_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X5_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y11 )
			( AT_X5_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y11 )
			(not ( CARRIABLE-AT_KEY1_X5_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X3_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y11 )
			( AT_X3_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y11 )
			(not ( CARRIABLE-AT_KEY1_X3_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X2_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y11 )
			( AT_X2_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y11 )
			(not ( CARRIABLE-AT_KEY1_X2_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X4_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y11 )
			( AT_X4_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y11 )
			(not ( CARRIABLE-AT_KEY0_X4_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X6_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y11 )
			( AT_X6_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y11 )
			(not ( CARRIABLE-AT_KEY0_X6_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X5_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y11 )
			( AT_X5_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y11 )
			(not ( CARRIABLE-AT_KEY0_X5_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X3_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y11 )
			( AT_X3_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y11 )
			(not ( CARRIABLE-AT_KEY0_X3_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X2_Y12_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y11 )
			( AT_X2_Y12 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y11 )
			(not ( CARRIABLE-AT_KEY0_X2_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X1_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y9 )
			( AT_X1_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y9 )
			(not ( CARRIABLE-AT_KEY1_X1_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X4_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y9 )
			( AT_X4_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y9 )
			(not ( CARRIABLE-AT_KEY0_X4_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X6_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y9 )
			( AT_X6_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y9 )
			(not ( CARRIABLE-AT_KEY0_X6_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X5_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y9 )
			( AT_X5_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y9 )
			(not ( CARRIABLE-AT_KEY0_X5_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X3_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y9 )
			( AT_X3_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y9 )
			(not ( CARRIABLE-AT_KEY0_X3_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X2_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y9 )
			( AT_X2_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y9 )
			(not ( CARRIABLE-AT_KEY0_X2_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X1_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y9 )
			( AT_X1_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y9 )
			(not ( CARRIABLE-AT_KEY0_X1_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X1_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y8 )
			( AT_X1_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y8 )
			(not ( CARRIABLE-AT_KEY1_X1_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X4_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y8 )
			( AT_X4_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y8 )
			(not ( CARRIABLE-AT_KEY0_X4_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X6_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y8 )
			( AT_X6_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y8 )
			(not ( CARRIABLE-AT_KEY0_X6_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X5_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y8 )
			( AT_X5_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y8 )
			(not ( CARRIABLE-AT_KEY0_X5_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X3_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y8 )
			( AT_X3_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y8 )
			(not ( CARRIABLE-AT_KEY0_X3_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X2_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y8 )
			( AT_X2_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y8 )
			(not ( CARRIABLE-AT_KEY0_X2_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X1_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y8 )
			( AT_X1_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y8 )
			(not ( CARRIABLE-AT_KEY0_X1_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X4_Y8_Y7
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y7 )
			( AT_X4_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y7 )
			(not ( CARRIABLE-AT_KEY0_X4_Y7 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X9_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y4 )
			( AT_X9_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y4 )
			(not ( CARRIABLE-AT_KEY0_X9_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X4_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y4 )
			( AT_X4_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y4 )
			(not ( CARRIABLE-AT_KEY0_X4_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X13_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y4 )
			( AT_X13_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y4 )
			(not ( CARRIABLE-AT_KEY0_X13_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X6_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y4 )
			( AT_X6_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y4 )
			(not ( CARRIABLE-AT_KEY0_X6_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X5_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y4 )
			( AT_X5_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y4 )
			(not ( CARRIABLE-AT_KEY0_X5_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X3_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y4 )
			( AT_X3_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y4 )
			(not ( CARRIABLE-AT_KEY0_X3_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X2_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y4 )
			( AT_X2_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y4 )
			(not ( CARRIABLE-AT_KEY0_X2_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X12_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y4 )
			( AT_X12_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y4 )
			(not ( CARRIABLE-AT_KEY0_X12_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X11_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y4 )
			( AT_X11_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y4 )
			(not ( CARRIABLE-AT_KEY0_X11_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X1_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y4 )
			( AT_X1_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y4 )
			(not ( CARRIABLE-AT_KEY0_X1_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X10_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y4 )
			( AT_X10_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y4 )
			(not ( CARRIABLE-AT_KEY0_X10_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X8_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y4 )
			( AT_X8_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y4 )
			(not ( CARRIABLE-AT_KEY0_X8_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X9_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y2 )
			( AT_X9_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y2 )
			(not ( CARRIABLE-AT_KEY0_X9_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X4_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y2 )
			( AT_X4_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y2 )
			(not ( CARRIABLE-AT_KEY0_X4_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X13_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y2 )
			( AT_X13_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y2 )
			(not ( CARRIABLE-AT_KEY0_X13_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X6_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y2 )
			( AT_X6_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y2 )
			(not ( CARRIABLE-AT_KEY0_X6_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X5_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y2 )
			( AT_X5_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y2 )
			(not ( CARRIABLE-AT_KEY0_X5_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X3_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y2 )
			( AT_X3_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y2 )
			(not ( CARRIABLE-AT_KEY0_X3_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X2_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y2 )
			( AT_X2_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y2 )
			(not ( CARRIABLE-AT_KEY0_X2_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X12_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y2 )
			( AT_X12_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y2 )
			(not ( CARRIABLE-AT_KEY0_X12_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X11_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y2 )
			( AT_X11_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y2 )
			(not ( CARRIABLE-AT_KEY0_X11_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X1_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y2 )
			( AT_X1_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y2 )
			(not ( CARRIABLE-AT_KEY0_X1_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X10_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y2 )
			( AT_X10_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y2 )
			(not ( CARRIABLE-AT_KEY0_X10_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X8_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y2 )
			( AT_X8_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y2 )
			(not ( CARRIABLE-AT_KEY0_X8_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X9_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y3 )
			( AT_X9_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y3 )
			(not ( CARRIABLE-AT_KEY0_X9_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X4_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y3 )
			( AT_X4_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y3 )
			(not ( CARRIABLE-AT_KEY0_X4_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X13_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y3 )
			( AT_X13_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y3 )
			(not ( CARRIABLE-AT_KEY0_X13_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X6_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y3 )
			( AT_X6_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y3 )
			(not ( CARRIABLE-AT_KEY0_X6_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X5_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y3 )
			( AT_X5_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y3 )
			(not ( CARRIABLE-AT_KEY0_X5_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X3_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y3 )
			( AT_X3_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y3 )
			(not ( CARRIABLE-AT_KEY0_X3_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X2_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y3 )
			( AT_X2_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y3 )
			(not ( CARRIABLE-AT_KEY0_X2_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X12_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y3 )
			( AT_X12_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y3 )
			(not ( CARRIABLE-AT_KEY0_X12_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X11_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y3 )
			( AT_X11_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y3 )
			(not ( CARRIABLE-AT_KEY0_X11_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X1_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y3 )
			( AT_X1_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y3 )
			(not ( CARRIABLE-AT_KEY0_X1_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X10_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y3 )
			( AT_X10_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y3 )
			(not ( CARRIABLE-AT_KEY0_X10_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY0_X8_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y3 )
			( AT_X8_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y3 )
			(not ( CARRIABLE-AT_KEY0_X8_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X4_Y11_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y11 )
			( AT_X4_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y11 )
			(not ( CARRIABLE-AT_KEY1_X5_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X4_Y10_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y10 )
			( AT_X4_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y10 )
			(not ( CARRIABLE-AT_KEY1_X5_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X4_Y3_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y3 )
			( AT_X4_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y3 )
			(not ( CARRIABLE-AT_KEY0_X5_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X4_Y4_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y4 )
			( AT_X4_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y4 )
			(not ( CARRIABLE-AT_KEY0_X5_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X4_Y2_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y2 )
			( AT_X4_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y2 )
			(not ( CARRIABLE-AT_KEY0_X5_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X4_Y9_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y9 )
			( AT_X4_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y9 )
			(not ( CARRIABLE-AT_KEY0_X5_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X4_Y6_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y6 )
			( AT_X4_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y6 )
			(not ( CARRIABLE-AT_KEY0_X5_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X4_Y1_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y1 )
			( AT_X4_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y1 )
			(not ( CARRIABLE-AT_KEY0_X5_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X4_Y11_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y11 )
			( AT_X4_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y11 )
			(not ( CARRIABLE-AT_KEY0_X5_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X4_Y5_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y5 )
			( AT_X4_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y5 )
			(not ( CARRIABLE-AT_KEY0_X5_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X4_Y8_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y8 )
			( AT_X4_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y8 )
			(not ( CARRIABLE-AT_KEY0_X5_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X4_Y10_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y10 )
			( AT_X4_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y10 )
			(not ( CARRIABLE-AT_KEY0_X5_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X3_Y11_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y11 )
			( AT_X3_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y11 )
			(not ( CARRIABLE-AT_KEY1_X4_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X3_Y10_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y10 )
			( AT_X3_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y10 )
			(not ( CARRIABLE-AT_KEY1_X4_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X3_Y3_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y3 )
			( AT_X3_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y3 )
			(not ( CARRIABLE-AT_KEY0_X4_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X3_Y4_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y4 )
			( AT_X3_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y4 )
			(not ( CARRIABLE-AT_KEY0_X4_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X3_Y2_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y2 )
			( AT_X3_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y2 )
			(not ( CARRIABLE-AT_KEY0_X4_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X3_Y9_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y9 )
			( AT_X3_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y9 )
			(not ( CARRIABLE-AT_KEY0_X4_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X3_Y6_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y6 )
			( AT_X3_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y6 )
			(not ( CARRIABLE-AT_KEY0_X4_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X3_Y1_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y1 )
			( AT_X3_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y1 )
			(not ( CARRIABLE-AT_KEY0_X4_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X3_Y11_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y11 )
			( AT_X3_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y11 )
			(not ( CARRIABLE-AT_KEY0_X4_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X3_Y5_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y5 )
			( AT_X3_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y5 )
			(not ( CARRIABLE-AT_KEY0_X4_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X3_Y8_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y8 )
			( AT_X3_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y8 )
			(not ( CARRIABLE-AT_KEY0_X4_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X3_Y10_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y10 )
			( AT_X3_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y10 )
			(not ( CARRIABLE-AT_KEY0_X4_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X7_Y3_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y3 )
			( AT_X7_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y3 )
			(not ( CARRIABLE-AT_KEY0_X8_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X9_Y3_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y3 )
			( AT_X9_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y3 )
			(not ( CARRIABLE-AT_KEY0_X10_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X9_Y4_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y4 )
			( AT_X9_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y4 )
			(not ( CARRIABLE-AT_KEY0_X10_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X9_Y2_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y2 )
			( AT_X9_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y2 )
			(not ( CARRIABLE-AT_KEY0_X10_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X9_Y6_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y6 )
			( AT_X9_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y6 )
			(not ( CARRIABLE-AT_KEY0_X10_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X9_Y1_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y1 )
			( AT_X9_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y1 )
			(not ( CARRIABLE-AT_KEY0_X10_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X9_Y5_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y5 )
			( AT_X9_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y5 )
			(not ( CARRIABLE-AT_KEY0_X10_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X12_Y3_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y3 )
			( AT_X12_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y3 )
			(not ( CARRIABLE-AT_KEY0_X13_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X12_Y4_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y4 )
			( AT_X12_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y4 )
			(not ( CARRIABLE-AT_KEY0_X13_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X12_Y2_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y2 )
			( AT_X12_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y2 )
			(not ( CARRIABLE-AT_KEY0_X13_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X12_Y6_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y6 )
			( AT_X12_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y6 )
			(not ( CARRIABLE-AT_KEY0_X13_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X12_Y1_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y1 )
			( AT_X12_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y1 )
			(not ( CARRIABLE-AT_KEY0_X13_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X12_Y5_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y5 )
			( AT_X12_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X13_Y5 )
			(not ( CARRIABLE-AT_KEY0_X13_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X5_Y11_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y11 )
			( AT_X5_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y11 )
			(not ( CARRIABLE-AT_KEY1_X6_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X5_Y10_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y10 )
			( AT_X5_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y10 )
			(not ( CARRIABLE-AT_KEY1_X6_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X5_Y3_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y3 )
			( AT_X5_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y3 )
			(not ( CARRIABLE-AT_KEY0_X6_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X5_Y4_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y4 )
			( AT_X5_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y4 )
			(not ( CARRIABLE-AT_KEY0_X6_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X5_Y2_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y2 )
			( AT_X5_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y2 )
			(not ( CARRIABLE-AT_KEY0_X6_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X5_Y9_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y9 )
			( AT_X5_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y9 )
			(not ( CARRIABLE-AT_KEY0_X6_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X5_Y6_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y6 )
			( AT_X5_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y6 )
			(not ( CARRIABLE-AT_KEY0_X6_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X5_Y1_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y1 )
			( AT_X5_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y1 )
			(not ( CARRIABLE-AT_KEY0_X6_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X5_Y11_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y11 )
			( AT_X5_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y11 )
			(not ( CARRIABLE-AT_KEY0_X6_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X5_Y5_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y5 )
			( AT_X5_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y5 )
			(not ( CARRIABLE-AT_KEY0_X6_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X5_Y8_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y8 )
			( AT_X5_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y8 )
			(not ( CARRIABLE-AT_KEY0_X6_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X5_Y10_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y10 )
			( AT_X5_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y10 )
			(not ( CARRIABLE-AT_KEY0_X6_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X2_Y11_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y11 )
			( AT_X2_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y11 )
			(not ( CARRIABLE-AT_KEY1_X3_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X2_Y10_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y10 )
			( AT_X2_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y10 )
			(not ( CARRIABLE-AT_KEY1_X3_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X2_Y3_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y3 )
			( AT_X2_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y3 )
			(not ( CARRIABLE-AT_KEY0_X3_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X2_Y4_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y4 )
			( AT_X2_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y4 )
			(not ( CARRIABLE-AT_KEY0_X3_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X2_Y2_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y2 )
			( AT_X2_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y2 )
			(not ( CARRIABLE-AT_KEY0_X3_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X2_Y9_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y9 )
			( AT_X2_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y9 )
			(not ( CARRIABLE-AT_KEY0_X3_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X2_Y6_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y6 )
			( AT_X2_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y6 )
			(not ( CARRIABLE-AT_KEY0_X3_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X2_Y1_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y1 )
			( AT_X2_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y1 )
			(not ( CARRIABLE-AT_KEY0_X3_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X2_Y11_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y11 )
			( AT_X2_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y11 )
			(not ( CARRIABLE-AT_KEY0_X3_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X2_Y5_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y5 )
			( AT_X2_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y5 )
			(not ( CARRIABLE-AT_KEY0_X3_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X2_Y8_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y8 )
			( AT_X2_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y8 )
			(not ( CARRIABLE-AT_KEY0_X3_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X2_Y10_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y10 )
			( AT_X2_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y10 )
			(not ( CARRIABLE-AT_KEY0_X3_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X11_Y3_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y3 )
			( AT_X11_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y3 )
			(not ( CARRIABLE-AT_KEY0_X12_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X11_Y4_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y4 )
			( AT_X11_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y4 )
			(not ( CARRIABLE-AT_KEY0_X12_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X11_Y2_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y2 )
			( AT_X11_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y2 )
			(not ( CARRIABLE-AT_KEY0_X12_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X11_Y6_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y6 )
			( AT_X11_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y6 )
			(not ( CARRIABLE-AT_KEY0_X12_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X11_Y1_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y1 )
			( AT_X11_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y1 )
			(not ( CARRIABLE-AT_KEY0_X12_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X11_Y5_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y5 )
			( AT_X11_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y5 )
			(not ( CARRIABLE-AT_KEY0_X12_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X6_Y3_X7
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X7_Y3 )
			( AT_X6_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X7_Y3 )
			(not ( CARRIABLE-AT_KEY0_X7_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X1_Y11_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y11 )
			( AT_X1_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y11 )
			(not ( CARRIABLE-AT_KEY1_X2_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X1_Y10_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y10 )
			( AT_X1_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y10 )
			(not ( CARRIABLE-AT_KEY1_X2_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X1_Y3_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y3 )
			( AT_X1_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y3 )
			(not ( CARRIABLE-AT_KEY0_X2_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X1_Y4_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y4 )
			( AT_X1_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y4 )
			(not ( CARRIABLE-AT_KEY0_X2_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X1_Y2_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y2 )
			( AT_X1_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y2 )
			(not ( CARRIABLE-AT_KEY0_X2_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X1_Y9_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y9 )
			( AT_X1_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y9 )
			(not ( CARRIABLE-AT_KEY0_X2_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X1_Y6_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y6 )
			( AT_X1_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y6 )
			(not ( CARRIABLE-AT_KEY0_X2_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X1_Y1_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y1 )
			( AT_X1_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y1 )
			(not ( CARRIABLE-AT_KEY0_X2_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X1_Y5_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y5 )
			( AT_X1_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y5 )
			(not ( CARRIABLE-AT_KEY0_X2_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X1_Y8_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y8 )
			( AT_X1_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y8 )
			(not ( CARRIABLE-AT_KEY0_X2_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X1_Y10_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y10 )
			( AT_X1_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y10 )
			(not ( CARRIABLE-AT_KEY0_X2_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X10_Y3_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y3 )
			( AT_X10_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y3 )
			(not ( CARRIABLE-AT_KEY0_X11_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X10_Y4_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y4 )
			( AT_X10_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y4 )
			(not ( CARRIABLE-AT_KEY0_X11_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X10_Y2_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y2 )
			( AT_X10_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y2 )
			(not ( CARRIABLE-AT_KEY0_X11_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X10_Y6_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y6 )
			( AT_X10_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y6 )
			(not ( CARRIABLE-AT_KEY0_X11_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X10_Y1_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y1 )
			( AT_X10_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y1 )
			(not ( CARRIABLE-AT_KEY0_X11_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X10_Y5_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y5 )
			( AT_X10_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y5 )
			(not ( CARRIABLE-AT_KEY0_X11_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X8_Y3_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y3 )
			( AT_X8_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y3 )
			(not ( CARRIABLE-AT_KEY0_X9_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X8_Y4_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y4 )
			( AT_X8_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y4 )
			(not ( CARRIABLE-AT_KEY0_X9_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X8_Y2_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y2 )
			( AT_X8_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y2 )
			(not ( CARRIABLE-AT_KEY0_X9_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X8_Y6_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y6 )
			( AT_X8_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y6 )
			(not ( CARRIABLE-AT_KEY0_X9_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X8_Y1_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y1 )
			( AT_X8_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y1 )
			(not ( CARRIABLE-AT_KEY0_X9_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X8_Y5_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y5 )
			( AT_X8_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y5 )
			(not ( CARRIABLE-AT_KEY0_X9_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X2_Y9_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y9 )
			( AT_X2_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y9 )
			(not ( CARRIABLE-AT_KEY1_X1_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X2_Y8_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y8 )
			( AT_X2_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y8 )
			(not ( CARRIABLE-AT_KEY1_X1_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X2_Y10_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y10 )
			( AT_X2_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y10 )
			(not ( CARRIABLE-AT_KEY1_X1_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X2_Y3_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y3 )
			( AT_X2_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y3 )
			(not ( CARRIABLE-AT_KEY0_X1_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X2_Y4_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y4 )
			( AT_X2_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y4 )
			(not ( CARRIABLE-AT_KEY0_X1_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X2_Y2_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y2 )
			( AT_X2_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y2 )
			(not ( CARRIABLE-AT_KEY0_X1_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X2_Y9_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y9 )
			( AT_X2_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y9 )
			(not ( CARRIABLE-AT_KEY0_X1_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X2_Y6_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y6 )
			( AT_X2_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y6 )
			(not ( CARRIABLE-AT_KEY0_X1_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X2_Y1_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y1 )
			( AT_X2_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y1 )
			(not ( CARRIABLE-AT_KEY0_X1_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X2_Y5_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y5 )
			( AT_X2_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y5 )
			(not ( CARRIABLE-AT_KEY0_X1_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X2_Y8_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y8 )
			( AT_X2_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y8 )
			(not ( CARRIABLE-AT_KEY0_X1_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X2_Y10_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y10 )
			( AT_X2_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X1_Y10 )
			(not ( CARRIABLE-AT_KEY0_X1_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X7_Y3_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y3 )
			( AT_X7_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X6_Y3 )
			(not ( CARRIABLE-AT_KEY0_X6_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X6_Y11_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y11 )
			( AT_X6_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y11 )
			(not ( CARRIABLE-AT_KEY1_X5_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X6_Y10_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y10 )
			( AT_X6_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y10 )
			(not ( CARRIABLE-AT_KEY1_X5_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X6_Y3_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y3 )
			( AT_X6_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y3 )
			(not ( CARRIABLE-AT_KEY0_X5_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X6_Y4_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y4 )
			( AT_X6_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y4 )
			(not ( CARRIABLE-AT_KEY0_X5_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X6_Y2_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y2 )
			( AT_X6_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y2 )
			(not ( CARRIABLE-AT_KEY0_X5_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X6_Y9_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y9 )
			( AT_X6_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y9 )
			(not ( CARRIABLE-AT_KEY0_X5_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X6_Y6_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y6 )
			( AT_X6_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y6 )
			(not ( CARRIABLE-AT_KEY0_X5_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X6_Y1_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y1 )
			( AT_X6_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y1 )
			(not ( CARRIABLE-AT_KEY0_X5_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X6_Y11_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y11 )
			( AT_X6_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y11 )
			(not ( CARRIABLE-AT_KEY0_X5_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X6_Y5_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y5 )
			( AT_X6_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y5 )
			(not ( CARRIABLE-AT_KEY0_X5_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X6_Y8_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y8 )
			( AT_X6_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y8 )
			(not ( CARRIABLE-AT_KEY0_X5_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X6_Y10_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y10 )
			( AT_X6_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X5_Y10 )
			(not ( CARRIABLE-AT_KEY0_X5_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X13_Y3_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y3 )
			( AT_X13_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y3 )
			(not ( CARRIABLE-AT_KEY0_X12_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X13_Y4_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y4 )
			( AT_X13_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y4 )
			(not ( CARRIABLE-AT_KEY0_X12_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X13_Y2_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y2 )
			( AT_X13_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y2 )
			(not ( CARRIABLE-AT_KEY0_X12_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X13_Y6_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y6 )
			( AT_X13_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y6 )
			(not ( CARRIABLE-AT_KEY0_X12_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X13_Y1_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y1 )
			( AT_X13_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y1 )
			(not ( CARRIABLE-AT_KEY0_X12_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X13_Y5_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y5 )
			( AT_X13_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X12_Y5 )
			(not ( CARRIABLE-AT_KEY0_X12_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X8_Y3_X7
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X7_Y3 )
			( AT_X8_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X7_Y3 )
			(not ( CARRIABLE-AT_KEY0_X7_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X4_Y11_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y11 )
			( AT_X4_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y11 )
			(not ( CARRIABLE-AT_KEY1_X3_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X4_Y10_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y10 )
			( AT_X4_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y10 )
			(not ( CARRIABLE-AT_KEY1_X3_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X4_Y3_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y3 )
			( AT_X4_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y3 )
			(not ( CARRIABLE-AT_KEY0_X3_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X4_Y4_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y4 )
			( AT_X4_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y4 )
			(not ( CARRIABLE-AT_KEY0_X3_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X4_Y2_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y2 )
			( AT_X4_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y2 )
			(not ( CARRIABLE-AT_KEY0_X3_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X4_Y9_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y9 )
			( AT_X4_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y9 )
			(not ( CARRIABLE-AT_KEY0_X3_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X4_Y6_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y6 )
			( AT_X4_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y6 )
			(not ( CARRIABLE-AT_KEY0_X3_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X4_Y1_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y1 )
			( AT_X4_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y1 )
			(not ( CARRIABLE-AT_KEY0_X3_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X4_Y11_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y11 )
			( AT_X4_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y11 )
			(not ( CARRIABLE-AT_KEY0_X3_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X4_Y5_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y5 )
			( AT_X4_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y5 )
			(not ( CARRIABLE-AT_KEY0_X3_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X4_Y8_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y8 )
			( AT_X4_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y8 )
			(not ( CARRIABLE-AT_KEY0_X3_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X4_Y10_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y10 )
			( AT_X4_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X3_Y10 )
			(not ( CARRIABLE-AT_KEY0_X3_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X5_Y11_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y11 )
			( AT_X5_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y11 )
			(not ( CARRIABLE-AT_KEY1_X4_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X5_Y10_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y10 )
			( AT_X5_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y10 )
			(not ( CARRIABLE-AT_KEY1_X4_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X5_Y3_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y3 )
			( AT_X5_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y3 )
			(not ( CARRIABLE-AT_KEY0_X4_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X5_Y4_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y4 )
			( AT_X5_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y4 )
			(not ( CARRIABLE-AT_KEY0_X4_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X5_Y2_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y2 )
			( AT_X5_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y2 )
			(not ( CARRIABLE-AT_KEY0_X4_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X5_Y9_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y9 )
			( AT_X5_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y9 )
			(not ( CARRIABLE-AT_KEY0_X4_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X5_Y6_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y6 )
			( AT_X5_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y6 )
			(not ( CARRIABLE-AT_KEY0_X4_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X5_Y1_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y1 )
			( AT_X5_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y1 )
			(not ( CARRIABLE-AT_KEY0_X4_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X5_Y11_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y11 )
			( AT_X5_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y11 )
			(not ( CARRIABLE-AT_KEY0_X4_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X5_Y5_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y5 )
			( AT_X5_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y5 )
			(not ( CARRIABLE-AT_KEY0_X4_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X5_Y8_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y8 )
			( AT_X5_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y8 )
			(not ( CARRIABLE-AT_KEY0_X4_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X5_Y10_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y10 )
			( AT_X5_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X4_Y10 )
			(not ( CARRIABLE-AT_KEY0_X4_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X10_Y3_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y3 )
			( AT_X10_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y3 )
			(not ( CARRIABLE-AT_KEY0_X9_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X10_Y4_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y4 )
			( AT_X10_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y4 )
			(not ( CARRIABLE-AT_KEY0_X9_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X10_Y2_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y2 )
			( AT_X10_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y2 )
			(not ( CARRIABLE-AT_KEY0_X9_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X10_Y6_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y6 )
			( AT_X10_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y6 )
			(not ( CARRIABLE-AT_KEY0_X9_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X10_Y1_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y1 )
			( AT_X10_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y1 )
			(not ( CARRIABLE-AT_KEY0_X9_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X10_Y5_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y5 )
			( AT_X10_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X9_Y5 )
			(not ( CARRIABLE-AT_KEY0_X9_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X12_Y3_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y3 )
			( AT_X12_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y3 )
			(not ( CARRIABLE-AT_KEY0_X11_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X12_Y4_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y4 )
			( AT_X12_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y4 )
			(not ( CARRIABLE-AT_KEY0_X11_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X12_Y2_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y2 )
			( AT_X12_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y2 )
			(not ( CARRIABLE-AT_KEY0_X11_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X12_Y6_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y6 )
			( AT_X12_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y6 )
			(not ( CARRIABLE-AT_KEY0_X11_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X12_Y1_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y1 )
			( AT_X12_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y1 )
			(not ( CARRIABLE-AT_KEY0_X11_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X12_Y5_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y5 )
			( AT_X12_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X11_Y5 )
			(not ( CARRIABLE-AT_KEY0_X11_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X3_Y11_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y11 )
			( AT_X3_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y11 )
			(not ( CARRIABLE-AT_KEY1_X2_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X3_Y10_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y10 )
			( AT_X3_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y10 )
			(not ( CARRIABLE-AT_KEY1_X2_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X3_Y3_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y3 )
			( AT_X3_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y3 )
			(not ( CARRIABLE-AT_KEY0_X2_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X3_Y4_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y4 )
			( AT_X3_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y4 )
			(not ( CARRIABLE-AT_KEY0_X2_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X3_Y2_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y2 )
			( AT_X3_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y2 )
			(not ( CARRIABLE-AT_KEY0_X2_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X3_Y9_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y9 )
			( AT_X3_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y9 )
			(not ( CARRIABLE-AT_KEY0_X2_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X3_Y6_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y6 )
			( AT_X3_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y6 )
			(not ( CARRIABLE-AT_KEY0_X2_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X3_Y1_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y1 )
			( AT_X3_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y1 )
			(not ( CARRIABLE-AT_KEY0_X2_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X3_Y5_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y5 )
			( AT_X3_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y5 )
			(not ( CARRIABLE-AT_KEY0_X2_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X3_Y8_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y8 )
			( AT_X3_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y8 )
			(not ( CARRIABLE-AT_KEY0_X2_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X3_Y10_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y10 )
			( AT_X3_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y10 )
			(not ( CARRIABLE-AT_KEY0_X2_Y10 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X11_Y3_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y3 )
			( AT_X11_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y3 )
			(not ( CARRIABLE-AT_KEY0_X10_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X11_Y4_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y4 )
			( AT_X11_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y4 )
			(not ( CARRIABLE-AT_KEY0_X10_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X11_Y2_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y2 )
			( AT_X11_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y2 )
			(not ( CARRIABLE-AT_KEY0_X10_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X11_Y6_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y6 )
			( AT_X11_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y6 )
			(not ( CARRIABLE-AT_KEY0_X10_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X11_Y1_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y1 )
			( AT_X11_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y1 )
			(not ( CARRIABLE-AT_KEY0_X10_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X11_Y5_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y5 )
			( AT_X11_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X10_Y5 )
			(not ( CARRIABLE-AT_KEY0_X10_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X9_Y3_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y3 )
			( AT_X9_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y3 )
			(not ( CARRIABLE-AT_KEY0_X8_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X9_Y4_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y4 )
			( AT_X9_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y4 )
			(not ( CARRIABLE-AT_KEY0_X8_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X9_Y2_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y2 )
			( AT_X9_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y2 )
			(not ( CARRIABLE-AT_KEY0_X8_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X9_Y6_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y6 )
			( AT_X9_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y6 )
			(not ( CARRIABLE-AT_KEY0_X8_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X9_Y1_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y1 )
			( AT_X9_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y1 )
			(not ( CARRIABLE-AT_KEY0_X8_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X9_Y5_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y5 )
			( AT_X9_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X8_Y5 )
			(not ( CARRIABLE-AT_KEY0_X8_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action FORWARD-DOWN_X9_Y7_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y8 )
			( AT_X9_Y7 )
		)
		:effect
		(and
			
			( AT_X9_Y8 )
			(not ( AT_X9_Y7 ))
		)
	)
	(:action FORWARD-DOWN_X9_Y6_Y7
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y7 )
			( AT_X9_Y6 )
		)
		:effect
		(and
			
			( AT_X9_Y7 )
			(not ( AT_X9_Y6 ))
		)
	)
	(:action FORWARD-DOWN_X2_Y10_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y11 )
			( AT_X2_Y10 )
		)
		:effect
		(and
			
			( AT_X2_Y11 )
			(not ( AT_X2_Y10 ))
		)
	)
	(:action FORWARD-DOWN_X4_Y12_Y13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y13 )
			( AT_X4_Y12 )
		)
		:effect
		(and
			
			( AT_X4_Y13 )
			(not ( AT_X4_Y12 ))
		)
	)
	(:action FORWARD-DOWN_X6_Y12_Y13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y13 )
			( AT_X6_Y12 )
		)
		:effect
		(and
			
			( AT_X6_Y13 )
			(not ( AT_X6_Y12 ))
		)
	)
	(:action FORWARD-DOWN_X5_Y12_Y13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y13 )
			( AT_X5_Y12 )
		)
		:effect
		(and
			
			( AT_X5_Y13 )
			(not ( AT_X5_Y12 ))
		)
	)
	(:action FORWARD-DOWN_X3_Y12_Y13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y13 )
			( AT_X3_Y12 )
		)
		:effect
		(and
			
			( AT_X3_Y13 )
			(not ( AT_X3_Y12 ))
		)
	)
	(:action FORWARD-DOWN_X2_Y12_Y13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y13 )
			( AT_X2_Y12 )
		)
		:effect
		(and
			
			( AT_X2_Y13 )
			(not ( AT_X2_Y12 ))
		)
	)
	(:action FORWARD-DOWN_X1_Y12_Y13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y13 )
			( AT_X1_Y12 )
		)
		:effect
		(and
			
			( AT_X1_Y13 )
			(not ( AT_X1_Y12 ))
		)
	)
	(:action FORWARD-DOWN_X4_Y11_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y12 )
			( AT_X4_Y11 )
		)
		:effect
		(and
			
			( AT_X4_Y12 )
			(not ( AT_X4_Y11 ))
		)
	)
	(:action FORWARD-DOWN_X6_Y11_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y12 )
			( AT_X6_Y11 )
		)
		:effect
		(and
			
			( AT_X6_Y12 )
			(not ( AT_X6_Y11 ))
		)
	)
	(:action FORWARD-DOWN_X5_Y11_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y12 )
			( AT_X5_Y11 )
		)
		:effect
		(and
			
			( AT_X5_Y12 )
			(not ( AT_X5_Y11 ))
		)
	)
	(:action FORWARD-DOWN_X3_Y11_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y12 )
			( AT_X3_Y11 )
		)
		:effect
		(and
			
			( AT_X3_Y12 )
			(not ( AT_X3_Y11 ))
		)
	)
	(:action FORWARD-DOWN_X2_Y11_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y12 )
			( AT_X2_Y11 )
		)
		:effect
		(and
			
			( AT_X2_Y12 )
			(not ( AT_X2_Y11 ))
		)
	)
	(:action FORWARD-DOWN_X1_Y11_Y12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y12 )
			( AT_X1_Y11 )
		)
		:effect
		(and
			
			( AT_X1_Y12 )
			(not ( AT_X1_Y11 ))
		)
	)
	(:action FORWARD-UP_X4_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y10 )
			( AT_X4_Y11 )
		)
		:effect
		(and
			
			( AT_X4_Y10 )
			(not ( AT_X4_Y11 ))
		)
	)
	(:action FORWARD-UP_X6_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y10 )
			( AT_X6_Y11 )
		)
		:effect
		(and
			
			( AT_X6_Y10 )
			(not ( AT_X6_Y11 ))
		)
	)
	(:action FORWARD-UP_X5_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y10 )
			( AT_X5_Y11 )
		)
		:effect
		(and
			
			( AT_X5_Y10 )
			(not ( AT_X5_Y11 ))
		)
	)
	(:action FORWARD-UP_X3_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y10 )
			( AT_X3_Y11 )
		)
		:effect
		(and
			
			( AT_X3_Y10 )
			(not ( AT_X3_Y11 ))
		)
	)
	(:action FORWARD-UP_X2_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y10 )
			( AT_X2_Y11 )
		)
		:effect
		(and
			
			( AT_X2_Y10 )
			(not ( AT_X2_Y11 ))
		)
	)
	(:action FORWARD-UP_X1_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y10 )
			( AT_X1_Y11 )
		)
		:effect
		(and
			
			( AT_X1_Y10 )
			(not ( AT_X1_Y11 ))
		)
	)
	(:action FORWARD-UP_X4_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y9 )
			( AT_X4_Y10 )
		)
		:effect
		(and
			
			( AT_X4_Y9 )
			(not ( AT_X4_Y10 ))
		)
	)
	(:action FORWARD-UP_X6_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y9 )
			( AT_X6_Y10 )
		)
		:effect
		(and
			
			( AT_X6_Y9 )
			(not ( AT_X6_Y10 ))
		)
	)
	(:action FORWARD-UP_X5_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y9 )
			( AT_X5_Y10 )
		)
		:effect
		(and
			
			( AT_X5_Y9 )
			(not ( AT_X5_Y10 ))
		)
	)
	(:action FORWARD-UP_X3_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y9 )
			( AT_X3_Y10 )
		)
		:effect
		(and
			
			( AT_X3_Y9 )
			(not ( AT_X3_Y10 ))
		)
	)
	(:action FORWARD-UP_X2_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y9 )
			( AT_X2_Y10 )
		)
		:effect
		(and
			
			( AT_X2_Y9 )
			(not ( AT_X2_Y10 ))
		)
	)
	(:action FORWARD-UP_X1_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y9 )
			( AT_X1_Y10 )
		)
		:effect
		(and
			
			( AT_X1_Y9 )
			(not ( AT_X1_Y10 ))
		)
	)
	(:action FORWARD-RIGHT_X4_Y11_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y11 )
			( AT_X4_Y11 )
		)
		:effect
		(and
			
			( AT_X5_Y11 )
			(not ( AT_X4_Y11 ))
		)
	)
	(:action FORWARD-RIGHT_X4_Y10_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y10 )
			( AT_X4_Y10 )
		)
		:effect
		(and
			
			( AT_X5_Y10 )
			(not ( AT_X4_Y10 ))
		)
	)
	(:action FORWARD-RIGHT_X3_Y11_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y11 )
			( AT_X3_Y11 )
		)
		:effect
		(and
			
			( AT_X4_Y11 )
			(not ( AT_X3_Y11 ))
		)
	)
	(:action FORWARD-RIGHT_X3_Y10_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y10 )
			( AT_X3_Y10 )
		)
		:effect
		(and
			
			( AT_X4_Y10 )
			(not ( AT_X3_Y10 ))
		)
	)
	(:action FORWARD-RIGHT_X5_Y11_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y11 )
			( AT_X5_Y11 )
		)
		:effect
		(and
			
			( AT_X6_Y11 )
			(not ( AT_X5_Y11 ))
		)
	)
	(:action FORWARD-RIGHT_X5_Y10_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y10 )
			( AT_X5_Y10 )
		)
		:effect
		(and
			
			( AT_X6_Y10 )
			(not ( AT_X5_Y10 ))
		)
	)
	(:action FORWARD-RIGHT_X2_Y11_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y11 )
			( AT_X2_Y11 )
		)
		:effect
		(and
			
			( AT_X3_Y11 )
			(not ( AT_X2_Y11 ))
		)
	)
	(:action FORWARD-RIGHT_X2_Y10_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y10 )
			( AT_X2_Y10 )
		)
		:effect
		(and
			
			( AT_X3_Y10 )
			(not ( AT_X2_Y10 ))
		)
	)
	(:action FORWARD-RIGHT_X1_Y11_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y11 )
			( AT_X1_Y11 )
		)
		:effect
		(and
			
			( AT_X2_Y11 )
			(not ( AT_X1_Y11 ))
		)
	)
	(:action FORWARD-RIGHT_X1_Y10_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y10 )
			( AT_X1_Y10 )
		)
		:effect
		(and
			
			( AT_X2_Y10 )
			(not ( AT_X1_Y10 ))
		)
	)
	(:action FORWARD-LEFT_X2_Y11_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y11 )
			( AT_X2_Y11 )
		)
		:effect
		(and
			
			( AT_X1_Y11 )
			(not ( AT_X2_Y11 ))
		)
	)
	(:action FORWARD-LEFT_X2_Y10_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y10 )
			( AT_X2_Y10 )
		)
		:effect
		(and
			
			( AT_X1_Y10 )
			(not ( AT_X2_Y10 ))
		)
	)
	(:action FORWARD-LEFT_X6_Y9_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y9 )
			( AT_X6_Y9 )
		)
		:effect
		(and
			
			( AT_X5_Y9 )
			(not ( AT_X6_Y9 ))
		)
	)
	(:action FORWARD-LEFT_X6_Y11_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y11 )
			( AT_X6_Y11 )
		)
		:effect
		(and
			
			( AT_X5_Y11 )
			(not ( AT_X6_Y11 ))
		)
	)
	(:action FORWARD-LEFT_X6_Y8_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y8 )
			( AT_X6_Y8 )
		)
		:effect
		(and
			
			( AT_X5_Y8 )
			(not ( AT_X6_Y8 ))
		)
	)
	(:action FORWARD-LEFT_X6_Y10_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y10 )
			( AT_X6_Y10 )
		)
		:effect
		(and
			
			( AT_X5_Y10 )
			(not ( AT_X6_Y10 ))
		)
	)
	(:action FORWARD-LEFT_X4_Y11_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y11 )
			( AT_X4_Y11 )
		)
		:effect
		(and
			
			( AT_X3_Y11 )
			(not ( AT_X4_Y11 ))
		)
	)
	(:action FORWARD-LEFT_X4_Y10_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y10 )
			( AT_X4_Y10 )
		)
		:effect
		(and
			
			( AT_X3_Y10 )
			(not ( AT_X4_Y10 ))
		)
	)
	(:action FORWARD-LEFT_X5_Y11_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y11 )
			( AT_X5_Y11 )
		)
		:effect
		(and
			
			( AT_X4_Y11 )
			(not ( AT_X5_Y11 ))
		)
	)
	(:action FORWARD-LEFT_X5_Y10_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y10 )
			( AT_X5_Y10 )
		)
		:effect
		(and
			
			( AT_X4_Y10 )
			(not ( AT_X5_Y10 ))
		)
	)
	(:action FORWARD-LEFT_X3_Y11_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y11 )
			( AT_X3_Y11 )
		)
		:effect
		(and
			
			( AT_X2_Y11 )
			(not ( AT_X3_Y11 ))
		)
	)
	(:action FORWARD-LEFT_X3_Y10_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y10 )
			( AT_X3_Y10 )
		)
		:effect
		(and
			
			( AT_X2_Y10 )
			(not ( AT_X3_Y10 ))
		)
	)
	(:action TOGGLE-DOWN_DOOR2_KEY0_YELLOW_X9_Y6_Y7
		:parameters ()
		:precondition
		(and
			( IS-LOCKED_DOOR2 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y6 )
		)
		:effect
		(and
			
			( IS-CLEAR_X9_Y7 )
			(not ( IS-LOCKED_DOOR2 ))
		)
	)
	(:action DROP-DOWN_KEY0_X4_Y7_Y6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y7 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y6 ))
		)
	)
	(:action DROP-DOWN_KEY0_X9_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY0_X4_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY0_X13_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY0_X6_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY0_X5_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY0_X3_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY0_X2_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY0_X12_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY0_X11_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY0_X1_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY0_X10_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY0_X8_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY1_X4_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY1_X6_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY1_X5_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY1_X3_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY1_X1_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY0_X4_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY0_X6_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY0_X5_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY0_X3_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY0_X1_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y10 ))
		)
	)
	(:action DROP-DOWN_KEY0_X9_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY0_X4_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY0_X13_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY0_X6_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY0_X5_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY0_X3_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY0_X2_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY0_X12_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY0_X11_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY0_X1_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY0_X10_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY0_X8_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY1_X4_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY1_X6_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY1_X5_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY1_X3_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY1_X2_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY1_X1_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY0_X4_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY0_X6_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY0_X5_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY0_X3_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY0_X2_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY0_X1_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y9 ))
		)
	)
	(:action DROP-DOWN_KEY1_X6_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y8 ))
		)
	)
	(:action DROP-DOWN_KEY1_X2_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y8 ))
		)
	)
	(:action DROP-DOWN_KEY1_X1_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y8 ))
		)
	)
	(:action DROP-DOWN_KEY0_X4_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y8 ))
		)
	)
	(:action DROP-DOWN_KEY0_X6_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y8 ))
		)
	)
	(:action DROP-DOWN_KEY0_X5_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y8 ))
		)
	)
	(:action DROP-DOWN_KEY0_X3_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y8 ))
		)
	)
	(:action DROP-DOWN_KEY0_X2_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y8 ))
		)
	)
	(:action DROP-DOWN_KEY0_X1_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y8 ))
		)
	)
	(:action DROP-DOWN_KEY0_X4_Y8_Y7
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y7 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y7 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y7 ))
		)
	)
	(:action DROP-DOWN_KEY0_X9_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY0_X4_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY0_X13_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY0_X6_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY0_X5_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY0_X3_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY0_X2_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY0_X12_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY0_X11_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY0_X1_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY0_X10_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY0_X8_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY0_X9_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY0_X4_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY0_X13_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY0_X6_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY0_X5_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY0_X3_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY0_X2_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY0_X12_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY0_X11_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY0_X1_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY0_X10_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY0_X8_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY0_X9_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y3 ))
		)
	)
	(:action DROP-DOWN_KEY0_X4_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y3 ))
		)
	)
	(:action DROP-DOWN_KEY0_X13_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y3 ))
		)
	)
	(:action DROP-DOWN_KEY0_X6_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y3 ))
		)
	)
	(:action DROP-DOWN_KEY0_X5_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y3 ))
		)
	)
	(:action DROP-DOWN_KEY0_X3_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y3 ))
		)
	)
	(:action DROP-DOWN_KEY0_X2_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y3 ))
		)
	)
	(:action DROP-DOWN_KEY0_X12_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y3 ))
		)
	)
	(:action DROP-DOWN_KEY0_X11_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y3 ))
		)
	)
	(:action DROP-DOWN_KEY0_X1_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y3 ))
		)
	)
	(:action DROP-DOWN_KEY0_X10_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y3 ))
		)
	)
	(:action DROP-DOWN_KEY0_X8_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y3 ))
		)
	)
	(:action DROP-UP_KEY0_X4_Y7_Y6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y7 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y6 ))
		)
	)
	(:action DROP-UP_KEY0_X9_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y5 ))
		)
	)
	(:action DROP-UP_KEY0_X4_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y5 ))
		)
	)
	(:action DROP-UP_KEY0_X13_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y5 ))
		)
	)
	(:action DROP-UP_KEY0_X6_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y5 ))
		)
	)
	(:action DROP-UP_KEY0_X5_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y5 ))
		)
	)
	(:action DROP-UP_KEY0_X3_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y5 ))
		)
	)
	(:action DROP-UP_KEY0_X2_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y5 ))
		)
	)
	(:action DROP-UP_KEY0_X12_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y5 ))
		)
	)
	(:action DROP-UP_KEY0_X11_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y5 ))
		)
	)
	(:action DROP-UP_KEY0_X1_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y5 ))
		)
	)
	(:action DROP-UP_KEY0_X10_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y5 ))
		)
	)
	(:action DROP-UP_KEY0_X8_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y5 ))
		)
	)
	(:action DROP-UP_KEY1_X4_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y10 ))
		)
	)
	(:action DROP-UP_KEY1_X6_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y10 ))
		)
	)
	(:action DROP-UP_KEY1_X5_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y10 ))
		)
	)
	(:action DROP-UP_KEY1_X3_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y10 ))
		)
	)
	(:action DROP-UP_KEY1_X1_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y10 ))
		)
	)
	(:action DROP-UP_KEY0_X4_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y10 ))
		)
	)
	(:action DROP-UP_KEY0_X6_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y10 ))
		)
	)
	(:action DROP-UP_KEY0_X5_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y10 ))
		)
	)
	(:action DROP-UP_KEY0_X3_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y10 ))
		)
	)
	(:action DROP-UP_KEY0_X1_Y11_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y10 ))
		)
	)
	(:action DROP-UP_KEY0_X9_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y1 ))
		)
	)
	(:action DROP-UP_KEY0_X4_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y1 ))
		)
	)
	(:action DROP-UP_KEY0_X13_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y1 ))
		)
	)
	(:action DROP-UP_KEY0_X6_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y1 ))
		)
	)
	(:action DROP-UP_KEY0_X5_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y1 ))
		)
	)
	(:action DROP-UP_KEY0_X3_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y1 ))
		)
	)
	(:action DROP-UP_KEY0_X2_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y1 ))
		)
	)
	(:action DROP-UP_KEY0_X12_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y1 ))
		)
	)
	(:action DROP-UP_KEY0_X11_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y1 ))
		)
	)
	(:action DROP-UP_KEY0_X1_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y1 ))
		)
	)
	(:action DROP-UP_KEY0_X10_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y1 ))
		)
	)
	(:action DROP-UP_KEY0_X8_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y1 ))
		)
	)
	(:action DROP-UP_KEY1_X4_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y9 ))
		)
	)
	(:action DROP-UP_KEY1_X6_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y9 ))
		)
	)
	(:action DROP-UP_KEY1_X5_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y9 ))
		)
	)
	(:action DROP-UP_KEY1_X3_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y9 ))
		)
	)
	(:action DROP-UP_KEY1_X2_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y9 ))
		)
	)
	(:action DROP-UP_KEY1_X1_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y9 ))
		)
	)
	(:action DROP-UP_KEY0_X4_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y9 ))
		)
	)
	(:action DROP-UP_KEY0_X6_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y9 ))
		)
	)
	(:action DROP-UP_KEY0_X5_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y9 ))
		)
	)
	(:action DROP-UP_KEY0_X3_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y9 ))
		)
	)
	(:action DROP-UP_KEY0_X2_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y9 ))
		)
	)
	(:action DROP-UP_KEY0_X1_Y10_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y9 ))
		)
	)
	(:action DROP-UP_KEY1_X6_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y8 ))
		)
	)
	(:action DROP-UP_KEY1_X2_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y8 ))
		)
	)
	(:action DROP-UP_KEY1_X1_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y8 ))
		)
	)
	(:action DROP-UP_KEY0_X4_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y8 ))
		)
	)
	(:action DROP-UP_KEY0_X6_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y8 ))
		)
	)
	(:action DROP-UP_KEY0_X5_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y8 ))
		)
	)
	(:action DROP-UP_KEY0_X3_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y8 ))
		)
	)
	(:action DROP-UP_KEY0_X2_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y8 ))
		)
	)
	(:action DROP-UP_KEY0_X1_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y8 ))
		)
	)
	(:action DROP-UP_KEY0_X4_Y8_Y7
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y7 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y7 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y7 ))
		)
	)
	(:action DROP-UP_KEY0_X9_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y4 ))
		)
	)
	(:action DROP-UP_KEY0_X4_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y4 ))
		)
	)
	(:action DROP-UP_KEY0_X13_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y4 ))
		)
	)
	(:action DROP-UP_KEY0_X6_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y4 ))
		)
	)
	(:action DROP-UP_KEY0_X5_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y4 ))
		)
	)
	(:action DROP-UP_KEY0_X3_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y4 ))
		)
	)
	(:action DROP-UP_KEY0_X2_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y4 ))
		)
	)
	(:action DROP-UP_KEY0_X12_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y4 ))
		)
	)
	(:action DROP-UP_KEY0_X11_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y4 ))
		)
	)
	(:action DROP-UP_KEY0_X1_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y4 ))
		)
	)
	(:action DROP-UP_KEY0_X10_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y4 ))
		)
	)
	(:action DROP-UP_KEY0_X8_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y4 ))
		)
	)
	(:action DROP-UP_KEY0_X9_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y2 ))
		)
	)
	(:action DROP-UP_KEY0_X4_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y2 ))
		)
	)
	(:action DROP-UP_KEY0_X13_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y2 ))
		)
	)
	(:action DROP-UP_KEY0_X6_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y2 ))
		)
	)
	(:action DROP-UP_KEY0_X5_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y2 ))
		)
	)
	(:action DROP-UP_KEY0_X3_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y2 ))
		)
	)
	(:action DROP-UP_KEY0_X2_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y2 ))
		)
	)
	(:action DROP-UP_KEY0_X12_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y2 ))
		)
	)
	(:action DROP-UP_KEY0_X11_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y2 ))
		)
	)
	(:action DROP-UP_KEY0_X1_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y2 ))
		)
	)
	(:action DROP-UP_KEY0_X10_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y2 ))
		)
	)
	(:action DROP-UP_KEY0_X8_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y2 ))
		)
	)
	(:action DROP-UP_KEY0_X9_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y3 ))
		)
	)
	(:action DROP-UP_KEY0_X4_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y3 ))
		)
	)
	(:action DROP-UP_KEY0_X13_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y3 ))
		)
	)
	(:action DROP-UP_KEY0_X6_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y3 ))
		)
	)
	(:action DROP-UP_KEY0_X5_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y3 ))
		)
	)
	(:action DROP-UP_KEY0_X3_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y3 ))
		)
	)
	(:action DROP-UP_KEY0_X2_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y3 ))
		)
	)
	(:action DROP-UP_KEY0_X12_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y3 ))
		)
	)
	(:action DROP-UP_KEY0_X11_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y3 ))
		)
	)
	(:action DROP-UP_KEY0_X1_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y3 ))
		)
	)
	(:action DROP-UP_KEY0_X10_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y3 ))
		)
	)
	(:action DROP-UP_KEY0_X8_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X4_Y11_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y11 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X4_Y10_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y10 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X4_Y3_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X4_Y4_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y4 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X4_Y2_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y2 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X4_Y9_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y9 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X4_Y6_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y6 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X4_Y1_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y1 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X4_Y11_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y11 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X4_Y5_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y5 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X4_Y8_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y8 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X4_Y10_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y10 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X3_Y11_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y11 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X3_Y10_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y10 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X3_Y3_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X3_Y4_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y4 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X3_Y2_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y2 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X3_Y9_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y9 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X3_Y6_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y6 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X3_Y1_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y1 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X3_Y11_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y11 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X3_Y5_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y5 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X3_Y8_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y8 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X3_Y10_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y10 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X7_Y3_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X7_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X9_Y3_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X9_Y4_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y4 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X9_Y2_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y2 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X9_Y6_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y6 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X9_Y1_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y1 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X9_Y5_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y5 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X12_Y3_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X12_Y4_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y4 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X12_Y2_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y2 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X12_Y6_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y6 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X12_Y1_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y1 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X12_Y5_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X13_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X13_Y5 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X5_Y11_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y11 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X5_Y10_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y10 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X5_Y3_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X5_Y4_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y4 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X5_Y2_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y2 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X5_Y9_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y9 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X5_Y6_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y6 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X5_Y1_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y1 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X5_Y11_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y11 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X5_Y5_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y5 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X5_Y8_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y8 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X5_Y10_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y10 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X2_Y9_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y9 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X2_Y8_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y8 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X2_Y10_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y10 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X2_Y3_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X2_Y4_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y4 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X2_Y2_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y2 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X2_Y9_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y9 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X2_Y6_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y6 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X2_Y1_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y1 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X2_Y5_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y5 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X2_Y8_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y8 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X2_Y10_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y10 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X11_Y3_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X11_Y4_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y4 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X11_Y2_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y2 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X11_Y6_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y6 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X11_Y1_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y1 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X11_Y5_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y5 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X6_Y3_X7
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X7_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X7_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X7_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X1_Y9_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y9 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X1_Y11_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y11 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X1_Y8_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y8 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X1_Y10_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y10 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X1_Y3_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X1_Y4_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y4 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X1_Y2_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y2 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X1_Y9_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y9 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X1_Y6_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y6 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X1_Y1_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y1 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X1_Y11_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y11 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X1_Y5_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y5 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X1_Y8_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y8 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X1_Y10_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y10 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X10_Y3_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X10_Y4_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y4 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X10_Y2_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y2 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X10_Y6_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y6 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X10_Y1_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y1 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X10_Y5_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y5 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X8_Y3_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X8_Y4_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y4 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X8_Y2_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y2 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X8_Y6_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y6 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X8_Y1_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y1 ))
		)
	)
	(:action DROP-RIGHT_KEY0_X8_Y5_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y5 ))
		)
	)
	(:action DROP-LEFT_KEY1_X2_Y9_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y9 ))
		)
	)
	(:action DROP-LEFT_KEY1_X2_Y8_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y8 ))
		)
	)
	(:action DROP-LEFT_KEY1_X2_Y10_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y10 ))
		)
	)
	(:action DROP-LEFT_KEY0_X2_Y3_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY0_X2_Y4_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y4 ))
		)
	)
	(:action DROP-LEFT_KEY0_X2_Y2_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y2 ))
		)
	)
	(:action DROP-LEFT_KEY0_X2_Y9_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y9 ))
		)
	)
	(:action DROP-LEFT_KEY0_X2_Y6_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y6 ))
		)
	)
	(:action DROP-LEFT_KEY0_X2_Y1_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y1 ))
		)
	)
	(:action DROP-LEFT_KEY0_X2_Y5_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y5 ))
		)
	)
	(:action DROP-LEFT_KEY0_X2_Y8_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y8 ))
		)
	)
	(:action DROP-LEFT_KEY0_X2_Y10_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X2_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X1_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X1_Y10 ))
		)
	)
	(:action DROP-LEFT_KEY0_X7_Y3_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X7_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X6_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X6_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY1_X6_Y9_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y9 ))
		)
	)
	(:action DROP-LEFT_KEY1_X6_Y11_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y11 ))
		)
	)
	(:action DROP-LEFT_KEY1_X6_Y8_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y8 ))
		)
	)
	(:action DROP-LEFT_KEY1_X6_Y10_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y10 ))
		)
	)
	(:action DROP-LEFT_KEY0_X6_Y3_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY0_X6_Y4_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y4 ))
		)
	)
	(:action DROP-LEFT_KEY0_X6_Y2_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y2 ))
		)
	)
	(:action DROP-LEFT_KEY0_X6_Y9_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y9 ))
		)
	)
	(:action DROP-LEFT_KEY0_X6_Y6_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y6 ))
		)
	)
	(:action DROP-LEFT_KEY0_X6_Y1_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y1 ))
		)
	)
	(:action DROP-LEFT_KEY0_X6_Y11_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y11 ))
		)
	)
	(:action DROP-LEFT_KEY0_X6_Y5_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y5 ))
		)
	)
	(:action DROP-LEFT_KEY0_X6_Y8_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y8 ))
		)
	)
	(:action DROP-LEFT_KEY0_X6_Y10_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X5_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X5_Y10 ))
		)
	)
	(:action DROP-LEFT_KEY0_X13_Y3_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY0_X13_Y4_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y4 ))
		)
	)
	(:action DROP-LEFT_KEY0_X13_Y2_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y2 ))
		)
	)
	(:action DROP-LEFT_KEY0_X13_Y6_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y6 ))
		)
	)
	(:action DROP-LEFT_KEY0_X13_Y1_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y1 ))
		)
	)
	(:action DROP-LEFT_KEY0_X13_Y5_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X13_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X12_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X12_Y5 ))
		)
	)
	(:action DROP-LEFT_KEY0_X8_Y3_X7
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X7_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X8_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X7_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X7_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY1_X4_Y11_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y11 ))
		)
	)
	(:action DROP-LEFT_KEY1_X4_Y10_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y10 ))
		)
	)
	(:action DROP-LEFT_KEY0_X4_Y3_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY0_X4_Y4_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y4 ))
		)
	)
	(:action DROP-LEFT_KEY0_X4_Y2_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y2 ))
		)
	)
	(:action DROP-LEFT_KEY0_X4_Y9_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y9 ))
		)
	)
	(:action DROP-LEFT_KEY0_X4_Y6_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y6 ))
		)
	)
	(:action DROP-LEFT_KEY0_X4_Y1_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y1 ))
		)
	)
	(:action DROP-LEFT_KEY0_X4_Y11_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y11 ))
		)
	)
	(:action DROP-LEFT_KEY0_X4_Y5_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y5 ))
		)
	)
	(:action DROP-LEFT_KEY0_X4_Y8_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y8 ))
		)
	)
	(:action DROP-LEFT_KEY0_X4_Y10_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X3_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X3_Y10 ))
		)
	)
	(:action DROP-LEFT_KEY1_X5_Y11_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y11 ))
		)
	)
	(:action DROP-LEFT_KEY1_X5_Y10_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y10 ))
		)
	)
	(:action DROP-LEFT_KEY0_X5_Y3_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY0_X5_Y4_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y4 ))
		)
	)
	(:action DROP-LEFT_KEY0_X5_Y2_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y2 ))
		)
	)
	(:action DROP-LEFT_KEY0_X5_Y9_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y9 ))
		)
	)
	(:action DROP-LEFT_KEY0_X5_Y6_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y6 ))
		)
	)
	(:action DROP-LEFT_KEY0_X5_Y1_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y1 ))
		)
	)
	(:action DROP-LEFT_KEY0_X5_Y11_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y11 ))
		)
	)
	(:action DROP-LEFT_KEY0_X5_Y5_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y5 ))
		)
	)
	(:action DROP-LEFT_KEY0_X5_Y8_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y8 ))
		)
	)
	(:action DROP-LEFT_KEY0_X5_Y10_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X5_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X4_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X4_Y10 ))
		)
	)
	(:action DROP-LEFT_KEY0_X10_Y3_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY0_X10_Y4_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y4 ))
		)
	)
	(:action DROP-LEFT_KEY0_X10_Y2_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y2 ))
		)
	)
	(:action DROP-LEFT_KEY0_X10_Y6_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y6 ))
		)
	)
	(:action DROP-LEFT_KEY0_X10_Y1_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y1 ))
		)
	)
	(:action DROP-LEFT_KEY0_X10_Y5_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X10_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X9_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X9_Y5 ))
		)
	)
	(:action DROP-LEFT_KEY0_X12_Y3_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY0_X12_Y4_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y4 ))
		)
	)
	(:action DROP-LEFT_KEY0_X12_Y2_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y2 ))
		)
	)
	(:action DROP-LEFT_KEY0_X12_Y6_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y6 ))
		)
	)
	(:action DROP-LEFT_KEY0_X12_Y1_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y1 ))
		)
	)
	(:action DROP-LEFT_KEY0_X12_Y5_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X12_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X11_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X11_Y5 ))
		)
	)
	(:action DROP-LEFT_KEY1_X3_Y11_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y11 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y11 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y11 ))
		)
	)
	(:action DROP-LEFT_KEY1_X3_Y10_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y10 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y10 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y10 ))
		)
	)
	(:action DROP-LEFT_KEY0_X3_Y3_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY0_X3_Y4_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y4 ))
		)
	)
	(:action DROP-LEFT_KEY0_X3_Y2_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y2 ))
		)
	)
	(:action DROP-LEFT_KEY0_X3_Y9_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y9 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y9 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y9 ))
		)
	)
	(:action DROP-LEFT_KEY0_X3_Y6_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y6 ))
		)
	)
	(:action DROP-LEFT_KEY0_X3_Y1_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y1 ))
		)
	)
	(:action DROP-LEFT_KEY0_X3_Y11_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y11 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y11 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y11 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y11 ))
		)
	)
	(:action DROP-LEFT_KEY0_X3_Y5_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y5 ))
		)
	)
	(:action DROP-LEFT_KEY0_X3_Y8_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y8 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y8 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y8 ))
		)
	)
	(:action DROP-LEFT_KEY0_X3_Y10_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y10 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y10 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y10 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X2_Y10 ))
		)
	)
	(:action DROP-LEFT_KEY0_X11_Y3_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY0_X11_Y4_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y4 ))
		)
	)
	(:action DROP-LEFT_KEY0_X11_Y2_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y2 ))
		)
	)
	(:action DROP-LEFT_KEY0_X11_Y6_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y6 ))
		)
	)
	(:action DROP-LEFT_KEY0_X11_Y1_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y1 ))
		)
	)
	(:action DROP-LEFT_KEY0_X11_Y5_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X11_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X10_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X10_Y5 ))
		)
	)
	(:action DROP-LEFT_KEY0_X9_Y3_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y3 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y3 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY0_X9_Y4_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y4 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y4 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y4 ))
		)
	)
	(:action DROP-LEFT_KEY0_X9_Y2_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y2 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y2 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y2 ))
		)
	)
	(:action DROP-LEFT_KEY0_X9_Y6_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y6 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y6 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y6 ))
		)
	)
	(:action DROP-LEFT_KEY0_X9_Y1_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y1 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y1 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y1 ))
		)
	)
	(:action DROP-LEFT_KEY0_X9_Y5_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y5 )
			( IS-CARRYING_KEY0 )
			( AT_X9_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X8_Y5 )
			(not ( IS-CARRYING_KEY0 ))
			(not ( IS-CLEAR_X8_Y5 ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X4_Y7_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y8 )
			( AT_X4_Y7 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y8 )
			(not ( CARRIABLE-AT_KEY1_X4_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X4_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y9 )
			( AT_X4_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y9 )
			(not ( CARRIABLE-AT_KEY1_X4_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X6_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y9 )
			( AT_X6_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y9 )
			(not ( CARRIABLE-AT_KEY1_X6_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X5_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y9 )
			( AT_X5_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y9 )
			(not ( CARRIABLE-AT_KEY1_X5_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X3_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y9 )
			( AT_X3_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y9 )
			(not ( CARRIABLE-AT_KEY1_X3_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X2_Y8_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y9 )
			( AT_X2_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y9 )
			(not ( CARRIABLE-AT_KEY1_X2_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY0_X2_Y10_Y11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y11 )
			( AT_X2_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y11 )
			(not ( CARRIABLE-AT_KEY0_X2_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X13_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y6 )
			( AT_X13_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y6 )
			(not ( CARRIABLE-AT_KEY1_X13_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X12_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y6 )
			( AT_X12_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y6 )
			(not ( CARRIABLE-AT_KEY1_X12_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X13_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y5 )
			( AT_X13_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y5 )
			(not ( CARRIABLE-AT_KEY1_X13_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X12_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y5 )
			( AT_X12_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y5 )
			(not ( CARRIABLE-AT_KEY1_X12_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X13_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y5 )
			( AT_X13_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y5 )
			(not ( CARRIABLE-AT_KEY1_X13_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X12_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y5 )
			( AT_X12_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y5 )
			(not ( CARRIABLE-AT_KEY1_X12_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X4_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y9 )
			( AT_X4_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y9 )
			(not ( CARRIABLE-AT_KEY1_X4_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X6_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y9 )
			( AT_X6_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y9 )
			(not ( CARRIABLE-AT_KEY1_X6_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X5_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y9 )
			( AT_X5_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y9 )
			(not ( CARRIABLE-AT_KEY1_X5_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X3_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y9 )
			( AT_X3_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y9 )
			(not ( CARRIABLE-AT_KEY1_X3_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X2_Y10_Y9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y9 )
			( AT_X2_Y10 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y9 )
			(not ( CARRIABLE-AT_KEY1_X2_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X4_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y8 )
			( AT_X4_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y8 )
			(not ( CARRIABLE-AT_KEY1_X4_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X6_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y8 )
			( AT_X6_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y8 )
			(not ( CARRIABLE-AT_KEY1_X6_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X2_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y8 )
			( AT_X2_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y8 )
			(not ( CARRIABLE-AT_KEY1_X2_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X4_Y9_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y9 )
			( AT_X4_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y9 )
			(not ( CARRIABLE-AT_KEY1_X5_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X3_Y9_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y9 )
			( AT_X3_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y9 )
			(not ( CARRIABLE-AT_KEY1_X4_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X3_Y8_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y8 )
			( AT_X3_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y8 )
			(not ( CARRIABLE-AT_KEY1_X4_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X12_Y6_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y6 )
			( AT_X12_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y6 )
			(not ( CARRIABLE-AT_KEY1_X13_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X12_Y5_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y5 )
			( AT_X12_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y5 )
			(not ( CARRIABLE-AT_KEY1_X13_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X5_Y9_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y9 )
			( AT_X5_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y9 )
			(not ( CARRIABLE-AT_KEY1_X6_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X5_Y8_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y8 )
			( AT_X5_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y8 )
			(not ( CARRIABLE-AT_KEY1_X6_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X2_Y9_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y9 )
			( AT_X2_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y9 )
			(not ( CARRIABLE-AT_KEY1_X3_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X2_Y8_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y8 )
			( AT_X2_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y8 )
			(not ( CARRIABLE-AT_KEY1_X3_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X11_Y6_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y6 )
			( AT_X11_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y6 )
			(not ( CARRIABLE-AT_KEY1_X12_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X11_Y5_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y5 )
			( AT_X11_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y5 )
			(not ( CARRIABLE-AT_KEY1_X12_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X1_Y9_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y9 )
			( AT_X1_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y9 )
			(not ( CARRIABLE-AT_KEY1_X2_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X1_Y8_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y8 )
			( AT_X1_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y8 )
			(not ( CARRIABLE-AT_KEY1_X2_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY0_X1_Y11_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y11 )
			( AT_X1_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y11 )
			(not ( CARRIABLE-AT_KEY0_X2_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X6_Y9_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y9 )
			( AT_X6_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y9 )
			(not ( CARRIABLE-AT_KEY1_X5_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X6_Y8_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y8 )
			( AT_X6_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y8 )
			(not ( CARRIABLE-AT_KEY1_X5_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X13_Y6_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y6 )
			( AT_X13_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y6 )
			(not ( CARRIABLE-AT_KEY1_X12_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X13_Y5_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y5 )
			( AT_X13_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y5 )
			(not ( CARRIABLE-AT_KEY1_X12_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X4_Y9_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y9 )
			( AT_X4_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y9 )
			(not ( CARRIABLE-AT_KEY1_X3_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X5_Y9_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y9 )
			( AT_X5_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y9 )
			(not ( CARRIABLE-AT_KEY1_X4_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X5_Y8_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y8 )
			( AT_X5_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y8 )
			(not ( CARRIABLE-AT_KEY1_X4_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X3_Y9_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y9 )
			( AT_X3_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y9 )
			(not ( CARRIABLE-AT_KEY1_X2_Y9 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X3_Y8_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y8 )
			( AT_X3_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y8 )
			(not ( CARRIABLE-AT_KEY1_X2_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY0_X3_Y11_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY0_X2_Y11 )
			( AT_X3_Y11 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY0 )
			( IS-CLEAR_X2_Y11 )
			(not ( CARRIABLE-AT_KEY0_X2_Y11 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action FORWARD-DOWN_X6_Y8_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y9 )
			( AT_X6_Y8 )
		)
		:effect
		(and
			
			( AT_X6_Y9 )
			(not ( AT_X6_Y8 ))
		)
	)
	(:action FORWARD-DOWN_X2_Y8_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y9 )
			( AT_X2_Y8 )
		)
		:effect
		(and
			
			( AT_X2_Y9 )
			(not ( AT_X2_Y8 ))
		)
	)
	(:action FORWARD-DOWN_X1_Y8_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y9 )
			( AT_X1_Y8 )
		)
		:effect
		(and
			
			( AT_X1_Y9 )
			(not ( AT_X1_Y8 ))
		)
	)
	(:action FORWARD-DOWN_X4_Y10_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y11 )
			( AT_X4_Y10 )
		)
		:effect
		(and
			
			( AT_X4_Y11 )
			(not ( AT_X4_Y10 ))
		)
	)
	(:action FORWARD-DOWN_X6_Y10_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y11 )
			( AT_X6_Y10 )
		)
		:effect
		(and
			
			( AT_X6_Y11 )
			(not ( AT_X6_Y10 ))
		)
	)
	(:action FORWARD-DOWN_X5_Y10_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y11 )
			( AT_X5_Y10 )
		)
		:effect
		(and
			
			( AT_X5_Y11 )
			(not ( AT_X5_Y10 ))
		)
	)
	(:action FORWARD-DOWN_X3_Y10_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y11 )
			( AT_X3_Y10 )
		)
		:effect
		(and
			
			( AT_X3_Y11 )
			(not ( AT_X3_Y10 ))
		)
	)
	(:action FORWARD-DOWN_X1_Y10_Y11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y11 )
			( AT_X1_Y10 )
		)
		:effect
		(and
			
			( AT_X1_Y11 )
			(not ( AT_X1_Y10 ))
		)
	)
	(:action FORWARD-DOWN_X4_Y9_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y10 )
			( AT_X4_Y9 )
		)
		:effect
		(and
			
			( AT_X4_Y10 )
			(not ( AT_X4_Y9 ))
		)
	)
	(:action FORWARD-DOWN_X6_Y9_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y10 )
			( AT_X6_Y9 )
		)
		:effect
		(and
			
			( AT_X6_Y10 )
			(not ( AT_X6_Y9 ))
		)
	)
	(:action FORWARD-DOWN_X5_Y9_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y10 )
			( AT_X5_Y9 )
		)
		:effect
		(and
			
			( AT_X5_Y10 )
			(not ( AT_X5_Y9 ))
		)
	)
	(:action FORWARD-DOWN_X3_Y9_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y10 )
			( AT_X3_Y9 )
		)
		:effect
		(and
			
			( AT_X3_Y10 )
			(not ( AT_X3_Y9 ))
		)
	)
	(:action FORWARD-DOWN_X2_Y9_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y10 )
			( AT_X2_Y9 )
		)
		:effect
		(and
			
			( AT_X2_Y10 )
			(not ( AT_X2_Y9 ))
		)
	)
	(:action FORWARD-DOWN_X1_Y9_Y10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y10 )
			( AT_X1_Y9 )
		)
		:effect
		(and
			
			( AT_X1_Y10 )
			(not ( AT_X1_Y9 ))
		)
	)
	(:action FORWARD-UP_X4_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y8 )
			( AT_X4_Y9 )
		)
		:effect
		(and
			
			( AT_X4_Y8 )
			(not ( AT_X4_Y9 ))
		)
	)
	(:action FORWARD-UP_X6_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y8 )
			( AT_X6_Y9 )
		)
		:effect
		(and
			
			( AT_X6_Y8 )
			(not ( AT_X6_Y9 ))
		)
	)
	(:action FORWARD-UP_X5_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y8 )
			( AT_X5_Y9 )
		)
		:effect
		(and
			
			( AT_X5_Y8 )
			(not ( AT_X5_Y9 ))
		)
	)
	(:action FORWARD-UP_X3_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y8 )
			( AT_X3_Y9 )
		)
		:effect
		(and
			
			( AT_X3_Y8 )
			(not ( AT_X3_Y9 ))
		)
	)
	(:action FORWARD-UP_X2_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y8 )
			( AT_X2_Y9 )
		)
		:effect
		(and
			
			( AT_X2_Y8 )
			(not ( AT_X2_Y9 ))
		)
	)
	(:action FORWARD-UP_X1_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y8 )
			( AT_X1_Y9 )
		)
		:effect
		(and
			
			( AT_X1_Y8 )
			(not ( AT_X1_Y9 ))
		)
	)
	(:action FORWARD-RIGHT_X4_Y9_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y9 )
			( AT_X4_Y9 )
		)
		:effect
		(and
			
			( AT_X5_Y9 )
			(not ( AT_X4_Y9 ))
		)
	)
	(:action FORWARD-RIGHT_X3_Y9_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y9 )
			( AT_X3_Y9 )
		)
		:effect
		(and
			
			( AT_X4_Y9 )
			(not ( AT_X3_Y9 ))
		)
	)
	(:action FORWARD-RIGHT_X5_Y9_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y9 )
			( AT_X5_Y9 )
		)
		:effect
		(and
			
			( AT_X6_Y9 )
			(not ( AT_X5_Y9 ))
		)
	)
	(:action FORWARD-RIGHT_X5_Y8_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y8 )
			( AT_X5_Y8 )
		)
		:effect
		(and
			
			( AT_X6_Y8 )
			(not ( AT_X5_Y8 ))
		)
	)
	(:action FORWARD-RIGHT_X2_Y9_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y9 )
			( AT_X2_Y9 )
		)
		:effect
		(and
			
			( AT_X3_Y9 )
			(not ( AT_X2_Y9 ))
		)
	)
	(:action FORWARD-RIGHT_X2_Y8_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y8 )
			( AT_X2_Y8 )
		)
		:effect
		(and
			
			( AT_X3_Y8 )
			(not ( AT_X2_Y8 ))
		)
	)
	(:action FORWARD-RIGHT_X1_Y9_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y9 )
			( AT_X1_Y9 )
		)
		:effect
		(and
			
			( AT_X2_Y9 )
			(not ( AT_X1_Y9 ))
		)
	)
	(:action FORWARD-RIGHT_X1_Y8_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y8 )
			( AT_X1_Y8 )
		)
		:effect
		(and
			
			( AT_X2_Y8 )
			(not ( AT_X1_Y8 ))
		)
	)
	(:action FORWARD-LEFT_X2_Y9_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y9 )
			( AT_X2_Y9 )
		)
		:effect
		(and
			
			( AT_X1_Y9 )
			(not ( AT_X2_Y9 ))
		)
	)
	(:action FORWARD-LEFT_X2_Y8_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y8 )
			( AT_X2_Y8 )
		)
		:effect
		(and
			
			( AT_X1_Y8 )
			(not ( AT_X2_Y8 ))
		)
	)
	(:action FORWARD-LEFT_X13_Y6_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y6 )
			( AT_X13_Y6 )
		)
		:effect
		(and
			
			( AT_X12_Y6 )
			(not ( AT_X13_Y6 ))
		)
	)
	(:action FORWARD-LEFT_X13_Y5_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y5 )
			( AT_X13_Y5 )
		)
		:effect
		(and
			
			( AT_X12_Y5 )
			(not ( AT_X13_Y5 ))
		)
	)
	(:action FORWARD-LEFT_X4_Y9_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y9 )
			( AT_X4_Y9 )
		)
		:effect
		(and
			
			( AT_X3_Y9 )
			(not ( AT_X4_Y9 ))
		)
	)
	(:action FORWARD-LEFT_X5_Y9_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y9 )
			( AT_X5_Y9 )
		)
		:effect
		(and
			
			( AT_X4_Y9 )
			(not ( AT_X5_Y9 ))
		)
	)
	(:action FORWARD-LEFT_X5_Y8_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y8 )
			( AT_X5_Y8 )
		)
		:effect
		(and
			
			( AT_X4_Y8 )
			(not ( AT_X5_Y8 ))
		)
	)
	(:action FORWARD-LEFT_X12_Y6_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y6 )
			( AT_X12_Y6 )
		)
		:effect
		(and
			
			( AT_X11_Y6 )
			(not ( AT_X12_Y6 ))
		)
	)
	(:action FORWARD-LEFT_X12_Y5_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y5 )
			( AT_X12_Y5 )
		)
		:effect
		(and
			
			( AT_X11_Y5 )
			(not ( AT_X12_Y5 ))
		)
	)
	(:action FORWARD-LEFT_X3_Y9_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y9 )
			( AT_X3_Y9 )
		)
		:effect
		(and
			
			( AT_X2_Y9 )
			(not ( AT_X3_Y9 ))
		)
	)
	(:action FORWARD-LEFT_X3_Y8_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y8 )
			( AT_X3_Y8 )
		)
		:effect
		(and
			
			( AT_X2_Y8 )
			(not ( AT_X3_Y8 ))
		)
	)
	(:action FORWARD-LEFT_X11_Y6_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y6 )
			( AT_X11_Y6 )
		)
		:effect
		(and
			
			( AT_X10_Y6 )
			(not ( AT_X11_Y6 ))
		)
	)
	(:action FORWARD-LEFT_X11_Y5_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y5 )
			( AT_X11_Y5 )
		)
		:effect
		(and
			
			( AT_X10_Y5 )
			(not ( AT_X11_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY1_X13_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY1_X12_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY1_X11_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY1_X4_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y8 ))
		)
	)
	(:action DROP-DOWN_KEY1_X5_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y8 ))
		)
	)
	(:action DROP-DOWN_KEY1_X3_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y8 ))
		)
	)
	(:action DROP-DOWN_KEY1_X13_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY1_X12_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY1_X11_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y4 ))
		)
	)
	(:action DROP-UP_KEY1_X13_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y5 ))
		)
	)
	(:action DROP-UP_KEY1_X12_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y5 ))
		)
	)
	(:action DROP-UP_KEY1_X11_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y5 ))
		)
	)
	(:action DROP-UP_KEY1_X4_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y8 ))
		)
	)
	(:action DROP-UP_KEY1_X5_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y8 ))
		)
	)
	(:action DROP-UP_KEY1_X3_Y9_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y8 ))
		)
	)
	(:action DROP-UP_KEY1_X13_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y4 ))
		)
	)
	(:action DROP-UP_KEY1_X12_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y4 ))
		)
	)
	(:action DROP-UP_KEY1_X11_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y4 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X4_Y9_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y9 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X3_Y9_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y9 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X3_Y8_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y8 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X12_Y6_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y6 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X12_Y5_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y5 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X5_Y9_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y9 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X5_Y8_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y8 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X11_Y6_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y6 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X11_Y5_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y5 ))
		)
	)
	(:action DROP-LEFT_KEY1_X13_Y6_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y6 ))
		)
	)
	(:action DROP-LEFT_KEY1_X13_Y5_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y5 ))
		)
	)
	(:action DROP-LEFT_KEY1_X4_Y9_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y9 ))
		)
	)
	(:action DROP-LEFT_KEY1_X5_Y9_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y9 ))
		)
	)
	(:action DROP-LEFT_KEY1_X5_Y8_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y8 ))
		)
	)
	(:action DROP-LEFT_KEY1_X12_Y6_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y6 ))
		)
	)
	(:action DROP-LEFT_KEY1_X12_Y5_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y5 ))
		)
	)
	(:action DROP-LEFT_KEY1_X3_Y9_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y9 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y9 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y9 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y9 ))
		)
	)
	(:action DROP-LEFT_KEY1_X3_Y8_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y8 ))
		)
	)
	(:action DROP-LEFT_KEY1_X11_Y6_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y6 ))
		)
	)
	(:action DROP-LEFT_KEY1_X11_Y5_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y5 ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X4_Y6_Y7
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y7 )
			( AT_X4_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y7 )
			(not ( CARRIABLE-AT_KEY1_X4_Y7 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X13_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y4 )
			( AT_X13_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y4 )
			(not ( CARRIABLE-AT_KEY1_X13_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X12_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y4 )
			( AT_X12_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y4 )
			(not ( CARRIABLE-AT_KEY1_X12_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X11_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y4 )
			( AT_X11_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y4 )
			(not ( CARRIABLE-AT_KEY1_X11_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X13_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y3 )
			( AT_X13_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y3 )
			(not ( CARRIABLE-AT_KEY1_X13_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X12_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y3 )
			( AT_X12_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y3 )
			(not ( CARRIABLE-AT_KEY1_X12_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X11_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y6 )
			( AT_X11_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y6 )
			(not ( CARRIABLE-AT_KEY1_X11_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X13_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y2 )
			( AT_X13_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y2 )
			(not ( CARRIABLE-AT_KEY1_X13_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X12_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y2 )
			( AT_X12_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y2 )
			(not ( CARRIABLE-AT_KEY1_X12_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X11_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y5 )
			( AT_X11_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y5 )
			(not ( CARRIABLE-AT_KEY1_X11_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X11_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y5 )
			( AT_X11_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y5 )
			(not ( CARRIABLE-AT_KEY1_X11_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X13_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y1 )
			( AT_X13_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y1 )
			(not ( CARRIABLE-AT_KEY1_X13_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X12_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y1 )
			( AT_X12_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y1 )
			(not ( CARRIABLE-AT_KEY1_X12_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X5_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y8 )
			( AT_X5_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y8 )
			(not ( CARRIABLE-AT_KEY1_X5_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X3_Y9_Y8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y8 )
			( AT_X3_Y9 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y8 )
			(not ( CARRIABLE-AT_KEY1_X3_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X4_Y8_Y7
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y7 )
			( AT_X4_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y7 )
			(not ( CARRIABLE-AT_KEY1_X4_Y7 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X13_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y4 )
			( AT_X13_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y4 )
			(not ( CARRIABLE-AT_KEY1_X13_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X12_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y4 )
			( AT_X12_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y4 )
			(not ( CARRIABLE-AT_KEY1_X12_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X11_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y4 )
			( AT_X11_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y4 )
			(not ( CARRIABLE-AT_KEY1_X11_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X13_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y2 )
			( AT_X13_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y2 )
			(not ( CARRIABLE-AT_KEY1_X13_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X12_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y2 )
			( AT_X12_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y2 )
			(not ( CARRIABLE-AT_KEY1_X12_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X13_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y3 )
			( AT_X13_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y3 )
			(not ( CARRIABLE-AT_KEY1_X13_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X12_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y3 )
			( AT_X12_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y3 )
			(not ( CARRIABLE-AT_KEY1_X12_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X4_Y8_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y8 )
			( AT_X4_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y8 )
			(not ( CARRIABLE-AT_KEY1_X5_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X12_Y3_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y3 )
			( AT_X12_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y3 )
			(not ( CARRIABLE-AT_KEY1_X13_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X12_Y4_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y4 )
			( AT_X12_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y4 )
			(not ( CARRIABLE-AT_KEY1_X13_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X12_Y2_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y2 )
			( AT_X12_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y2 )
			(not ( CARRIABLE-AT_KEY1_X13_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X12_Y1_X13
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y1 )
			( AT_X12_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X13_Y1 )
			(not ( CARRIABLE-AT_KEY1_X13_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X11_Y3_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y3 )
			( AT_X11_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y3 )
			(not ( CARRIABLE-AT_KEY1_X12_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X11_Y4_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y4 )
			( AT_X11_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y4 )
			(not ( CARRIABLE-AT_KEY1_X12_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X11_Y2_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y2 )
			( AT_X11_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y2 )
			(not ( CARRIABLE-AT_KEY1_X12_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X11_Y1_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y1 )
			( AT_X11_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y1 )
			(not ( CARRIABLE-AT_KEY1_X12_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X10_Y4_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y4 )
			( AT_X10_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y4 )
			(not ( CARRIABLE-AT_KEY1_X11_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X10_Y6_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y6 )
			( AT_X10_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y6 )
			(not ( CARRIABLE-AT_KEY1_X11_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X10_Y5_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y5 )
			( AT_X10_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y5 )
			(not ( CARRIABLE-AT_KEY1_X11_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X13_Y3_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y3 )
			( AT_X13_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y3 )
			(not ( CARRIABLE-AT_KEY1_X12_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X13_Y4_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y4 )
			( AT_X13_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y4 )
			(not ( CARRIABLE-AT_KEY1_X12_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X13_Y2_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y2 )
			( AT_X13_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y2 )
			(not ( CARRIABLE-AT_KEY1_X12_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X13_Y1_X12
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y1 )
			( AT_X13_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X12_Y1 )
			(not ( CARRIABLE-AT_KEY1_X12_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X4_Y8_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y8 )
			( AT_X4_Y8 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y8 )
			(not ( CARRIABLE-AT_KEY1_X3_Y8 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X12_Y4_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y4 )
			( AT_X12_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y4 )
			(not ( CARRIABLE-AT_KEY1_X11_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X12_Y6_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y6 )
			( AT_X12_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y6 )
			(not ( CARRIABLE-AT_KEY1_X11_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X12_Y5_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y5 )
			( AT_X12_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y5 )
			(not ( CARRIABLE-AT_KEY1_X11_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X11_Y6_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y6 )
			( AT_X11_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y6 )
			(not ( CARRIABLE-AT_KEY1_X10_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X11_Y5_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y5 )
			( AT_X11_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y5 )
			(not ( CARRIABLE-AT_KEY1_X10_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action FORWARD-DOWN_X4_Y8_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y9 )
			( AT_X4_Y8 )
		)
		:effect
		(and
			
			( AT_X4_Y9 )
			(not ( AT_X4_Y8 ))
		)
	)
	(:action FORWARD-DOWN_X5_Y8_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y9 )
			( AT_X5_Y8 )
		)
		:effect
		(and
			
			( AT_X5_Y9 )
			(not ( AT_X5_Y8 ))
		)
	)
	(:action FORWARD-DOWN_X3_Y8_Y9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y9 )
			( AT_X3_Y8 )
		)
		:effect
		(and
			
			( AT_X3_Y9 )
			(not ( AT_X3_Y8 ))
		)
	)
	(:action FORWARD-DOWN_X13_Y5_Y6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y6 )
			( AT_X13_Y5 )
		)
		:effect
		(and
			
			( AT_X13_Y6 )
			(not ( AT_X13_Y5 ))
		)
	)
	(:action FORWARD-DOWN_X12_Y5_Y6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y6 )
			( AT_X12_Y5 )
		)
		:effect
		(and
			
			( AT_X12_Y6 )
			(not ( AT_X12_Y5 ))
		)
	)
	(:action FORWARD-DOWN_X11_Y5_Y6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y6 )
			( AT_X11_Y5 )
		)
		:effect
		(and
			
			( AT_X11_Y6 )
			(not ( AT_X11_Y5 ))
		)
	)
	(:action FORWARD-DOWN_X13_Y4_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y5 )
			( AT_X13_Y4 )
		)
		:effect
		(and
			
			( AT_X13_Y5 )
			(not ( AT_X13_Y4 ))
		)
	)
	(:action FORWARD-DOWN_X12_Y4_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y5 )
			( AT_X12_Y4 )
		)
		:effect
		(and
			
			( AT_X12_Y5 )
			(not ( AT_X12_Y4 ))
		)
	)
	(:action FORWARD-DOWN_X11_Y4_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y5 )
			( AT_X11_Y4 )
		)
		:effect
		(and
			
			( AT_X11_Y5 )
			(not ( AT_X11_Y4 ))
		)
	)
	(:action FORWARD-UP_X4_Y7_Y6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y6 )
			( AT_X4_Y7 )
		)
		:effect
		(and
			
			( AT_X4_Y6 )
			(not ( AT_X4_Y7 ))
		)
	)
	(:action FORWARD-UP_X13_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y5 )
			( AT_X13_Y6 )
		)
		:effect
		(and
			
			( AT_X13_Y5 )
			(not ( AT_X13_Y6 ))
		)
	)
	(:action FORWARD-UP_X12_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y5 )
			( AT_X12_Y6 )
		)
		:effect
		(and
			
			( AT_X12_Y5 )
			(not ( AT_X12_Y6 ))
		)
	)
	(:action FORWARD-UP_X11_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y5 )
			( AT_X11_Y6 )
		)
		:effect
		(and
			
			( AT_X11_Y5 )
			(not ( AT_X11_Y6 ))
		)
	)
	(:action FORWARD-UP_X4_Y8_Y7
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y7 )
			( AT_X4_Y8 )
		)
		:effect
		(and
			
			( AT_X4_Y7 )
			(not ( AT_X4_Y8 ))
		)
	)
	(:action FORWARD-UP_X13_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y4 )
			( AT_X13_Y5 )
		)
		:effect
		(and
			
			( AT_X13_Y4 )
			(not ( AT_X13_Y5 ))
		)
	)
	(:action FORWARD-UP_X12_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y4 )
			( AT_X12_Y5 )
		)
		:effect
		(and
			
			( AT_X12_Y4 )
			(not ( AT_X12_Y5 ))
		)
	)
	(:action FORWARD-UP_X11_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y4 )
			( AT_X11_Y5 )
		)
		:effect
		(and
			
			( AT_X11_Y4 )
			(not ( AT_X11_Y5 ))
		)
	)
	(:action FORWARD-UP_X13_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y3 )
			( AT_X13_Y4 )
		)
		:effect
		(and
			
			( AT_X13_Y3 )
			(not ( AT_X13_Y4 ))
		)
	)
	(:action FORWARD-UP_X12_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y3 )
			( AT_X12_Y4 )
		)
		:effect
		(and
			
			( AT_X12_Y3 )
			(not ( AT_X12_Y4 ))
		)
	)
	(:action FORWARD-UP_X11_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y3 )
			( AT_X11_Y4 )
		)
		:effect
		(and
			
			( AT_X11_Y3 )
			(not ( AT_X11_Y4 ))
		)
	)
	(:action FORWARD-RIGHT_X4_Y8_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y8 )
			( AT_X4_Y8 )
		)
		:effect
		(and
			
			( AT_X5_Y8 )
			(not ( AT_X4_Y8 ))
		)
	)
	(:action FORWARD-RIGHT_X3_Y8_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y8 )
			( AT_X3_Y8 )
		)
		:effect
		(and
			
			( AT_X4_Y8 )
			(not ( AT_X3_Y8 ))
		)
	)
	(:action FORWARD-RIGHT_X12_Y4_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y4 )
			( AT_X12_Y4 )
		)
		:effect
		(and
			
			( AT_X13_Y4 )
			(not ( AT_X12_Y4 ))
		)
	)
	(:action FORWARD-RIGHT_X12_Y6_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y6 )
			( AT_X12_Y6 )
		)
		:effect
		(and
			
			( AT_X13_Y6 )
			(not ( AT_X12_Y6 ))
		)
	)
	(:action FORWARD-RIGHT_X12_Y5_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y5 )
			( AT_X12_Y5 )
		)
		:effect
		(and
			
			( AT_X13_Y5 )
			(not ( AT_X12_Y5 ))
		)
	)
	(:action FORWARD-RIGHT_X11_Y4_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y4 )
			( AT_X11_Y4 )
		)
		:effect
		(and
			
			( AT_X12_Y4 )
			(not ( AT_X11_Y4 ))
		)
	)
	(:action FORWARD-RIGHT_X11_Y6_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y6 )
			( AT_X11_Y6 )
		)
		:effect
		(and
			
			( AT_X12_Y6 )
			(not ( AT_X11_Y6 ))
		)
	)
	(:action FORWARD-RIGHT_X11_Y5_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y5 )
			( AT_X11_Y5 )
		)
		:effect
		(and
			
			( AT_X12_Y5 )
			(not ( AT_X11_Y5 ))
		)
	)
	(:action FORWARD-RIGHT_X10_Y4_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y4 )
			( AT_X10_Y4 )
		)
		:effect
		(and
			
			( AT_X11_Y4 )
			(not ( AT_X10_Y4 ))
		)
	)
	(:action FORWARD-RIGHT_X10_Y6_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y6 )
			( AT_X10_Y6 )
		)
		:effect
		(and
			
			( AT_X11_Y6 )
			(not ( AT_X10_Y6 ))
		)
	)
	(:action FORWARD-RIGHT_X10_Y5_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y5 )
			( AT_X10_Y5 )
		)
		:effect
		(and
			
			( AT_X11_Y5 )
			(not ( AT_X10_Y5 ))
		)
	)
	(:action FORWARD-LEFT_X13_Y3_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y3 )
			( AT_X13_Y3 )
		)
		:effect
		(and
			
			( AT_X12_Y3 )
			(not ( AT_X13_Y3 ))
		)
	)
	(:action FORWARD-LEFT_X13_Y4_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y4 )
			( AT_X13_Y4 )
		)
		:effect
		(and
			
			( AT_X12_Y4 )
			(not ( AT_X13_Y4 ))
		)
	)
	(:action FORWARD-LEFT_X13_Y2_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y2 )
			( AT_X13_Y2 )
		)
		:effect
		(and
			
			( AT_X12_Y2 )
			(not ( AT_X13_Y2 ))
		)
	)
	(:action FORWARD-LEFT_X13_Y1_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y1 )
			( AT_X13_Y1 )
		)
		:effect
		(and
			
			( AT_X12_Y1 )
			(not ( AT_X13_Y1 ))
		)
	)
	(:action FORWARD-LEFT_X4_Y8_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y8 )
			( AT_X4_Y8 )
		)
		:effect
		(and
			
			( AT_X3_Y8 )
			(not ( AT_X4_Y8 ))
		)
	)
	(:action FORWARD-LEFT_X10_Y4_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y4 )
			( AT_X10_Y4 )
		)
		:effect
		(and
			
			( AT_X9_Y4 )
			(not ( AT_X10_Y4 ))
		)
	)
	(:action FORWARD-LEFT_X10_Y6_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y6 )
			( AT_X10_Y6 )
		)
		:effect
		(and
			
			( AT_X9_Y6 )
			(not ( AT_X10_Y6 ))
		)
	)
	(:action FORWARD-LEFT_X10_Y5_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y5 )
			( AT_X10_Y5 )
		)
		:effect
		(and
			
			( AT_X9_Y5 )
			(not ( AT_X10_Y5 ))
		)
	)
	(:action FORWARD-LEFT_X12_Y3_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y3 )
			( AT_X12_Y3 )
		)
		:effect
		(and
			
			( AT_X11_Y3 )
			(not ( AT_X12_Y3 ))
		)
	)
	(:action FORWARD-LEFT_X12_Y4_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y4 )
			( AT_X12_Y4 )
		)
		:effect
		(and
			
			( AT_X11_Y4 )
			(not ( AT_X12_Y4 ))
		)
	)
	(:action FORWARD-LEFT_X12_Y2_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y2 )
			( AT_X12_Y2 )
		)
		:effect
		(and
			
			( AT_X11_Y2 )
			(not ( AT_X12_Y2 ))
		)
	)
	(:action FORWARD-LEFT_X12_Y1_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y1 )
			( AT_X12_Y1 )
		)
		:effect
		(and
			
			( AT_X11_Y1 )
			(not ( AT_X12_Y1 ))
		)
	)
	(:action FORWARD-LEFT_X11_Y3_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y3 )
			( AT_X11_Y3 )
		)
		:effect
		(and
			
			( AT_X10_Y3 )
			(not ( AT_X11_Y3 ))
		)
	)
	(:action FORWARD-LEFT_X11_Y4_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y4 )
			( AT_X11_Y4 )
		)
		:effect
		(and
			
			( AT_X10_Y4 )
			(not ( AT_X11_Y4 ))
		)
	)
	(:action FORWARD-LEFT_X11_Y2_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y2 )
			( AT_X11_Y2 )
		)
		:effect
		(and
			
			( AT_X10_Y2 )
			(not ( AT_X11_Y2 ))
		)
	)
	(:action FORWARD-LEFT_X11_Y1_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y1 )
			( AT_X11_Y1 )
		)
		:effect
		(and
			
			( AT_X10_Y1 )
			(not ( AT_X11_Y1 ))
		)
	)
	(:action TOGGLE-UP_DOOR0_KEY1_PURPLE_X4_Y8_Y7
		:parameters ()
		:precondition
		(and
			( IS-LOCKED_DOOR0 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y8 )
		)
		:effect
		(and
			
			( IS-CLEAR_X4_Y7 )
			(not ( IS-LOCKED_DOOR0 ))
		)
	)
	(:action DROP-DOWN_KEY1_X4_Y7_Y6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y7 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y6 ))
		)
	)
	(:action DROP-DOWN_KEY1_X10_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY1_X13_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY1_X12_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY1_X11_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY1_X4_Y8_Y7
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y7 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y7 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y7 ))
		)
	)
	(:action DROP-DOWN_KEY1_X10_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY1_X13_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY1_X12_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY1_X11_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY1_X13_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y3 ))
		)
	)
	(:action DROP-DOWN_KEY1_X12_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y3 ))
		)
	)
	(:action DROP-DOWN_KEY1_X11_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y3 ))
		)
	)
	(:action DROP-DOWN_KEY1_X10_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y3 ))
		)
	)
	(:action DROP-UP_KEY1_X4_Y7_Y6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y7 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y6 ))
		)
	)
	(:action DROP-UP_KEY1_X10_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y5 ))
		)
	)
	(:action DROP-UP_KEY1_X13_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y1 ))
		)
	)
	(:action DROP-UP_KEY1_X12_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y1 ))
		)
	)
	(:action DROP-UP_KEY1_X11_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y1 ))
		)
	)
	(:action DROP-UP_KEY1_X4_Y8_Y7
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y7 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y7 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y7 ))
		)
	)
	(:action DROP-UP_KEY1_X10_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y4 ))
		)
	)
	(:action DROP-UP_KEY1_X13_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y2 ))
		)
	)
	(:action DROP-UP_KEY1_X12_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y2 ))
		)
	)
	(:action DROP-UP_KEY1_X11_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y2 ))
		)
	)
	(:action DROP-UP_KEY1_X13_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y3 ))
		)
	)
	(:action DROP-UP_KEY1_X12_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y3 ))
		)
	)
	(:action DROP-UP_KEY1_X11_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y3 ))
		)
	)
	(:action DROP-UP_KEY1_X10_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X4_Y8_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y8 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X12_Y3_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X12_Y4_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y4 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X12_Y2_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y2 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X12_Y1_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X13_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X13_Y1 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X11_Y3_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X11_Y4_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y4 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X11_Y2_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y2 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X11_Y1_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y1 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X10_Y4_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y4 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X10_Y6_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y6 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X10_Y5_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y5 ))
		)
	)
	(:action DROP-LEFT_KEY1_X13_Y3_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY1_X13_Y4_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y4 ))
		)
	)
	(:action DROP-LEFT_KEY1_X13_Y2_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y2 ))
		)
	)
	(:action DROP-LEFT_KEY1_X13_Y1_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X13_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X12_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X12_Y1 ))
		)
	)
	(:action DROP-LEFT_KEY1_X4_Y8_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y8 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y8 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y8 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y8 ))
		)
	)
	(:action DROP-LEFT_KEY1_X10_Y4_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y4 ))
		)
	)
	(:action DROP-LEFT_KEY1_X10_Y6_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y6 ))
		)
	)
	(:action DROP-LEFT_KEY1_X10_Y5_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y5 ))
		)
	)
	(:action DROP-LEFT_KEY1_X12_Y3_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY1_X12_Y4_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y4 ))
		)
	)
	(:action DROP-LEFT_KEY1_X12_Y2_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y2 ))
		)
	)
	(:action DROP-LEFT_KEY1_X12_Y1_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X12_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y1 ))
		)
	)
	(:action DROP-LEFT_KEY1_X11_Y3_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY1_X11_Y4_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y4 ))
		)
	)
	(:action DROP-LEFT_KEY1_X11_Y2_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y2 ))
		)
	)
	(:action DROP-LEFT_KEY1_X11_Y1_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X11_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y1 ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X9_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y4 )
			( AT_X9_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y4 )
			(not ( CARRIABLE-AT_KEY1_X9_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X4_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y4 )
			( AT_X4_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y4 )
			(not ( CARRIABLE-AT_KEY1_X4_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X6_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y4 )
			( AT_X6_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y4 )
			(not ( CARRIABLE-AT_KEY1_X6_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X5_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y4 )
			( AT_X5_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y4 )
			(not ( CARRIABLE-AT_KEY1_X5_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X3_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y4 )
			( AT_X3_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y4 )
			(not ( CARRIABLE-AT_KEY1_X3_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X2_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y4 )
			( AT_X2_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y4 )
			(not ( CARRIABLE-AT_KEY1_X2_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X1_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y4 )
			( AT_X1_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y4 )
			(not ( CARRIABLE-AT_KEY1_X1_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X8_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y4 )
			( AT_X8_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y4 )
			(not ( CARRIABLE-AT_KEY1_X8_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X9_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y3 )
			( AT_X9_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y3 )
			(not ( CARRIABLE-AT_KEY1_X9_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X4_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y3 )
			( AT_X4_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y3 )
			(not ( CARRIABLE-AT_KEY1_X4_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X6_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y3 )
			( AT_X6_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y3 )
			(not ( CARRIABLE-AT_KEY1_X6_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X5_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y3 )
			( AT_X5_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y3 )
			(not ( CARRIABLE-AT_KEY1_X5_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X3_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y3 )
			( AT_X3_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y3 )
			(not ( CARRIABLE-AT_KEY1_X3_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X2_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y3 )
			( AT_X2_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y3 )
			(not ( CARRIABLE-AT_KEY1_X2_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X11_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y3 )
			( AT_X11_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y3 )
			(not ( CARRIABLE-AT_KEY1_X11_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X1_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y3 )
			( AT_X1_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y3 )
			(not ( CARRIABLE-AT_KEY1_X1_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X10_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y3 )
			( AT_X10_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y3 )
			(not ( CARRIABLE-AT_KEY1_X10_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X8_Y2_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y3 )
			( AT_X8_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y3 )
			(not ( CARRIABLE-AT_KEY1_X8_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X9_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y6 )
			( AT_X9_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y6 )
			(not ( CARRIABLE-AT_KEY1_X9_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X4_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y6 )
			( AT_X4_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y6 )
			(not ( CARRIABLE-AT_KEY1_X4_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X6_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y6 )
			( AT_X6_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y6 )
			(not ( CARRIABLE-AT_KEY1_X6_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X5_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y6 )
			( AT_X5_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y6 )
			(not ( CARRIABLE-AT_KEY1_X5_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X3_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y6 )
			( AT_X3_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y6 )
			(not ( CARRIABLE-AT_KEY1_X3_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X2_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y6 )
			( AT_X2_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y6 )
			(not ( CARRIABLE-AT_KEY1_X2_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X1_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y6 )
			( AT_X1_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y6 )
			(not ( CARRIABLE-AT_KEY1_X1_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X10_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y6 )
			( AT_X10_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y6 )
			(not ( CARRIABLE-AT_KEY1_X10_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X8_Y5_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y6 )
			( AT_X8_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y6 )
			(not ( CARRIABLE-AT_KEY1_X8_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X9_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y2 )
			( AT_X9_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y2 )
			(not ( CARRIABLE-AT_KEY1_X9_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X4_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y2 )
			( AT_X4_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y2 )
			(not ( CARRIABLE-AT_KEY1_X4_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X6_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y2 )
			( AT_X6_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y2 )
			(not ( CARRIABLE-AT_KEY1_X6_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X5_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y2 )
			( AT_X5_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y2 )
			(not ( CARRIABLE-AT_KEY1_X5_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X3_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y2 )
			( AT_X3_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y2 )
			(not ( CARRIABLE-AT_KEY1_X3_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X2_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y2 )
			( AT_X2_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y2 )
			(not ( CARRIABLE-AT_KEY1_X2_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X11_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y2 )
			( AT_X11_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y2 )
			(not ( CARRIABLE-AT_KEY1_X11_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X1_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y2 )
			( AT_X1_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y2 )
			(not ( CARRIABLE-AT_KEY1_X1_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X10_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y2 )
			( AT_X10_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y2 )
			(not ( CARRIABLE-AT_KEY1_X10_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X8_Y1_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y2 )
			( AT_X8_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y2 )
			(not ( CARRIABLE-AT_KEY1_X8_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X9_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y5 )
			( AT_X9_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y5 )
			(not ( CARRIABLE-AT_KEY1_X9_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X4_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y5 )
			( AT_X4_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y5 )
			(not ( CARRIABLE-AT_KEY1_X4_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X6_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y5 )
			( AT_X6_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y5 )
			(not ( CARRIABLE-AT_KEY1_X6_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X5_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y5 )
			( AT_X5_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y5 )
			(not ( CARRIABLE-AT_KEY1_X5_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X3_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y5 )
			( AT_X3_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y5 )
			(not ( CARRIABLE-AT_KEY1_X3_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X2_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y5 )
			( AT_X2_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y5 )
			(not ( CARRIABLE-AT_KEY1_X2_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X1_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y5 )
			( AT_X1_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y5 )
			(not ( CARRIABLE-AT_KEY1_X1_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X10_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y5 )
			( AT_X10_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y5 )
			(not ( CARRIABLE-AT_KEY1_X10_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X8_Y4_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y5 )
			( AT_X8_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y5 )
			(not ( CARRIABLE-AT_KEY1_X8_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X4_Y7_Y6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y6 )
			( AT_X4_Y7 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y6 )
			(not ( CARRIABLE-AT_KEY1_X4_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X9_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y5 )
			( AT_X9_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y5 )
			(not ( CARRIABLE-AT_KEY1_X9_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X4_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y5 )
			( AT_X4_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y5 )
			(not ( CARRIABLE-AT_KEY1_X4_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X6_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y5 )
			( AT_X6_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y5 )
			(not ( CARRIABLE-AT_KEY1_X6_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X5_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y5 )
			( AT_X5_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y5 )
			(not ( CARRIABLE-AT_KEY1_X5_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X3_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y5 )
			( AT_X3_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y5 )
			(not ( CARRIABLE-AT_KEY1_X3_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X2_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y5 )
			( AT_X2_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y5 )
			(not ( CARRIABLE-AT_KEY1_X2_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X1_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y5 )
			( AT_X1_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y5 )
			(not ( CARRIABLE-AT_KEY1_X1_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X10_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y5 )
			( AT_X10_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y5 )
			(not ( CARRIABLE-AT_KEY1_X10_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X8_Y6_Y5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y5 )
			( AT_X8_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y5 )
			(not ( CARRIABLE-AT_KEY1_X8_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X9_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y1 )
			( AT_X9_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y1 )
			(not ( CARRIABLE-AT_KEY1_X9_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X4_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y1 )
			( AT_X4_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y1 )
			(not ( CARRIABLE-AT_KEY1_X4_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X6_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y1 )
			( AT_X6_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y1 )
			(not ( CARRIABLE-AT_KEY1_X6_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X5_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y1 )
			( AT_X5_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y1 )
			(not ( CARRIABLE-AT_KEY1_X5_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X3_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y1 )
			( AT_X3_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y1 )
			(not ( CARRIABLE-AT_KEY1_X3_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X2_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y1 )
			( AT_X2_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y1 )
			(not ( CARRIABLE-AT_KEY1_X2_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X11_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y1 )
			( AT_X11_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y1 )
			(not ( CARRIABLE-AT_KEY1_X11_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X1_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y1 )
			( AT_X1_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y1 )
			(not ( CARRIABLE-AT_KEY1_X1_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X10_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y1 )
			( AT_X10_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y1 )
			(not ( CARRIABLE-AT_KEY1_X10_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X8_Y2_Y1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y1 )
			( AT_X8_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y1 )
			(not ( CARRIABLE-AT_KEY1_X8_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X9_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y4 )
			( AT_X9_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y4 )
			(not ( CARRIABLE-AT_KEY1_X9_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X4_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y4 )
			( AT_X4_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y4 )
			(not ( CARRIABLE-AT_KEY1_X4_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X6_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y4 )
			( AT_X6_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y4 )
			(not ( CARRIABLE-AT_KEY1_X6_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X5_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y4 )
			( AT_X5_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y4 )
			(not ( CARRIABLE-AT_KEY1_X5_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X3_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y4 )
			( AT_X3_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y4 )
			(not ( CARRIABLE-AT_KEY1_X3_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X2_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y4 )
			( AT_X2_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y4 )
			(not ( CARRIABLE-AT_KEY1_X2_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X1_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y4 )
			( AT_X1_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y4 )
			(not ( CARRIABLE-AT_KEY1_X1_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X10_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y4 )
			( AT_X10_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y4 )
			(not ( CARRIABLE-AT_KEY1_X10_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X8_Y5_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y4 )
			( AT_X8_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y4 )
			(not ( CARRIABLE-AT_KEY1_X8_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X9_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y2 )
			( AT_X9_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y2 )
			(not ( CARRIABLE-AT_KEY1_X9_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X4_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y2 )
			( AT_X4_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y2 )
			(not ( CARRIABLE-AT_KEY1_X4_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X6_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y2 )
			( AT_X6_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y2 )
			(not ( CARRIABLE-AT_KEY1_X6_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X5_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y2 )
			( AT_X5_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y2 )
			(not ( CARRIABLE-AT_KEY1_X5_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X3_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y2 )
			( AT_X3_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y2 )
			(not ( CARRIABLE-AT_KEY1_X3_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X2_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y2 )
			( AT_X2_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y2 )
			(not ( CARRIABLE-AT_KEY1_X2_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X11_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y2 )
			( AT_X11_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y2 )
			(not ( CARRIABLE-AT_KEY1_X11_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X1_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y2 )
			( AT_X1_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y2 )
			(not ( CARRIABLE-AT_KEY1_X1_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X10_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y2 )
			( AT_X10_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y2 )
			(not ( CARRIABLE-AT_KEY1_X10_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X8_Y3_Y2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y2 )
			( AT_X8_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y2 )
			(not ( CARRIABLE-AT_KEY1_X8_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X9_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y3 )
			( AT_X9_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y3 )
			(not ( CARRIABLE-AT_KEY1_X9_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X4_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y3 )
			( AT_X4_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y3 )
			(not ( CARRIABLE-AT_KEY1_X4_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X6_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y3 )
			( AT_X6_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y3 )
			(not ( CARRIABLE-AT_KEY1_X6_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X5_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y3 )
			( AT_X5_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y3 )
			(not ( CARRIABLE-AT_KEY1_X5_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X3_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y3 )
			( AT_X3_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y3 )
			(not ( CARRIABLE-AT_KEY1_X3_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X2_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y3 )
			( AT_X2_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y3 )
			(not ( CARRIABLE-AT_KEY1_X2_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X11_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y3 )
			( AT_X11_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y3 )
			(not ( CARRIABLE-AT_KEY1_X11_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X1_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y3 )
			( AT_X1_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y3 )
			(not ( CARRIABLE-AT_KEY1_X1_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X10_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y3 )
			( AT_X10_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y3 )
			(not ( CARRIABLE-AT_KEY1_X10_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-UP_KEY1_X8_Y4_Y3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y3 )
			( AT_X8_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y3 )
			(not ( CARRIABLE-AT_KEY1_X8_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X4_Y3_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y3 )
			( AT_X4_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y3 )
			(not ( CARRIABLE-AT_KEY1_X5_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X4_Y4_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y4 )
			( AT_X4_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y4 )
			(not ( CARRIABLE-AT_KEY1_X5_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X4_Y2_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y2 )
			( AT_X4_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y2 )
			(not ( CARRIABLE-AT_KEY1_X5_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X4_Y6_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y6 )
			( AT_X4_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y6 )
			(not ( CARRIABLE-AT_KEY1_X5_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X4_Y1_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y1 )
			( AT_X4_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y1 )
			(not ( CARRIABLE-AT_KEY1_X5_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X4_Y5_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y5 )
			( AT_X4_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y5 )
			(not ( CARRIABLE-AT_KEY1_X5_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X3_Y3_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y3 )
			( AT_X3_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y3 )
			(not ( CARRIABLE-AT_KEY1_X4_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X3_Y4_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y4 )
			( AT_X3_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y4 )
			(not ( CARRIABLE-AT_KEY1_X4_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X3_Y2_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y2 )
			( AT_X3_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y2 )
			(not ( CARRIABLE-AT_KEY1_X4_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X3_Y6_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y6 )
			( AT_X3_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y6 )
			(not ( CARRIABLE-AT_KEY1_X4_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X3_Y1_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y1 )
			( AT_X3_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y1 )
			(not ( CARRIABLE-AT_KEY1_X4_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X3_Y5_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y5 )
			( AT_X3_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y5 )
			(not ( CARRIABLE-AT_KEY1_X4_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X7_Y3_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y3 )
			( AT_X7_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y3 )
			(not ( CARRIABLE-AT_KEY1_X8_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X9_Y3_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y3 )
			( AT_X9_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y3 )
			(not ( CARRIABLE-AT_KEY1_X10_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X9_Y2_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y2 )
			( AT_X9_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y2 )
			(not ( CARRIABLE-AT_KEY1_X10_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X9_Y6_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y6 )
			( AT_X9_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y6 )
			(not ( CARRIABLE-AT_KEY1_X10_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X9_Y1_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y1 )
			( AT_X9_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y1 )
			(not ( CARRIABLE-AT_KEY1_X10_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X9_Y5_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y5 )
			( AT_X9_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y5 )
			(not ( CARRIABLE-AT_KEY1_X10_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X5_Y3_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y3 )
			( AT_X5_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y3 )
			(not ( CARRIABLE-AT_KEY1_X6_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X5_Y4_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y4 )
			( AT_X5_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y4 )
			(not ( CARRIABLE-AT_KEY1_X6_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X5_Y2_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y2 )
			( AT_X5_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y2 )
			(not ( CARRIABLE-AT_KEY1_X6_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X5_Y6_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y6 )
			( AT_X5_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y6 )
			(not ( CARRIABLE-AT_KEY1_X6_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X5_Y1_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y1 )
			( AT_X5_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y1 )
			(not ( CARRIABLE-AT_KEY1_X6_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X5_Y5_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y5 )
			( AT_X5_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y5 )
			(not ( CARRIABLE-AT_KEY1_X6_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X2_Y3_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y3 )
			( AT_X2_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y3 )
			(not ( CARRIABLE-AT_KEY1_X3_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X2_Y4_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y4 )
			( AT_X2_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y4 )
			(not ( CARRIABLE-AT_KEY1_X3_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X2_Y2_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y2 )
			( AT_X2_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y2 )
			(not ( CARRIABLE-AT_KEY1_X3_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X2_Y6_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y6 )
			( AT_X2_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y6 )
			(not ( CARRIABLE-AT_KEY1_X3_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X2_Y1_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y1 )
			( AT_X2_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y1 )
			(not ( CARRIABLE-AT_KEY1_X3_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X2_Y5_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y5 )
			( AT_X2_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y5 )
			(not ( CARRIABLE-AT_KEY1_X3_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X6_Y3_X7
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X7_Y3 )
			( AT_X6_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X7_Y3 )
			(not ( CARRIABLE-AT_KEY1_X7_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X1_Y3_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y3 )
			( AT_X1_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y3 )
			(not ( CARRIABLE-AT_KEY1_X2_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X1_Y4_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y4 )
			( AT_X1_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y4 )
			(not ( CARRIABLE-AT_KEY1_X2_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X1_Y2_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y2 )
			( AT_X1_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y2 )
			(not ( CARRIABLE-AT_KEY1_X2_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X1_Y6_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y6 )
			( AT_X1_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y6 )
			(not ( CARRIABLE-AT_KEY1_X2_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X1_Y1_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y1 )
			( AT_X1_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y1 )
			(not ( CARRIABLE-AT_KEY1_X2_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X1_Y5_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y5 )
			( AT_X1_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y5 )
			(not ( CARRIABLE-AT_KEY1_X2_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X10_Y3_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y3 )
			( AT_X10_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y3 )
			(not ( CARRIABLE-AT_KEY1_X11_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X10_Y2_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y2 )
			( AT_X10_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y2 )
			(not ( CARRIABLE-AT_KEY1_X11_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X10_Y1_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y1 )
			( AT_X10_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y1 )
			(not ( CARRIABLE-AT_KEY1_X11_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X8_Y3_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y3 )
			( AT_X8_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y3 )
			(not ( CARRIABLE-AT_KEY1_X9_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X8_Y4_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y4 )
			( AT_X8_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y4 )
			(not ( CARRIABLE-AT_KEY1_X9_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X8_Y2_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y2 )
			( AT_X8_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y2 )
			(not ( CARRIABLE-AT_KEY1_X9_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X8_Y6_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y6 )
			( AT_X8_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y6 )
			(not ( CARRIABLE-AT_KEY1_X9_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X8_Y1_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y1 )
			( AT_X8_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y1 )
			(not ( CARRIABLE-AT_KEY1_X9_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X8_Y5_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y5 )
			( AT_X8_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y5 )
			(not ( CARRIABLE-AT_KEY1_X9_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X2_Y3_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y3 )
			( AT_X2_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y3 )
			(not ( CARRIABLE-AT_KEY1_X1_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X2_Y4_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y4 )
			( AT_X2_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y4 )
			(not ( CARRIABLE-AT_KEY1_X1_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X2_Y2_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y2 )
			( AT_X2_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y2 )
			(not ( CARRIABLE-AT_KEY1_X1_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X2_Y6_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y6 )
			( AT_X2_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y6 )
			(not ( CARRIABLE-AT_KEY1_X1_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X2_Y1_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y1 )
			( AT_X2_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y1 )
			(not ( CARRIABLE-AT_KEY1_X1_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X2_Y5_X1
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y5 )
			( AT_X2_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X1_Y5 )
			(not ( CARRIABLE-AT_KEY1_X1_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X7_Y3_X6
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y3 )
			( AT_X7_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X6_Y3 )
			(not ( CARRIABLE-AT_KEY1_X6_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X6_Y3_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y3 )
			( AT_X6_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y3 )
			(not ( CARRIABLE-AT_KEY1_X5_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X6_Y4_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y4 )
			( AT_X6_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y4 )
			(not ( CARRIABLE-AT_KEY1_X5_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X6_Y2_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y2 )
			( AT_X6_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y2 )
			(not ( CARRIABLE-AT_KEY1_X5_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X6_Y6_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y6 )
			( AT_X6_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y6 )
			(not ( CARRIABLE-AT_KEY1_X5_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X6_Y1_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y1 )
			( AT_X6_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y1 )
			(not ( CARRIABLE-AT_KEY1_X5_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X6_Y5_X5
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y5 )
			( AT_X6_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X5_Y5 )
			(not ( CARRIABLE-AT_KEY1_X5_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X8_Y3_X7
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X7_Y3 )
			( AT_X8_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X7_Y3 )
			(not ( CARRIABLE-AT_KEY1_X7_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X4_Y3_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y3 )
			( AT_X4_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y3 )
			(not ( CARRIABLE-AT_KEY1_X3_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X4_Y4_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y4 )
			( AT_X4_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y4 )
			(not ( CARRIABLE-AT_KEY1_X3_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X4_Y2_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y2 )
			( AT_X4_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y2 )
			(not ( CARRIABLE-AT_KEY1_X3_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X4_Y6_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y6 )
			( AT_X4_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y6 )
			(not ( CARRIABLE-AT_KEY1_X3_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X4_Y1_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y1 )
			( AT_X4_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y1 )
			(not ( CARRIABLE-AT_KEY1_X3_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X4_Y5_X3
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y5 )
			( AT_X4_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X3_Y5 )
			(not ( CARRIABLE-AT_KEY1_X3_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X5_Y3_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y3 )
			( AT_X5_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y3 )
			(not ( CARRIABLE-AT_KEY1_X4_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X5_Y4_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y4 )
			( AT_X5_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y4 )
			(not ( CARRIABLE-AT_KEY1_X4_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X5_Y2_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y2 )
			( AT_X5_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y2 )
			(not ( CARRIABLE-AT_KEY1_X4_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X5_Y6_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y6 )
			( AT_X5_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y6 )
			(not ( CARRIABLE-AT_KEY1_X4_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X5_Y1_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y1 )
			( AT_X5_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y1 )
			(not ( CARRIABLE-AT_KEY1_X4_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X5_Y5_X4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y5 )
			( AT_X5_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X4_Y5 )
			(not ( CARRIABLE-AT_KEY1_X4_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X10_Y3_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y3 )
			( AT_X10_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y3 )
			(not ( CARRIABLE-AT_KEY1_X9_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X10_Y4_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y4 )
			( AT_X10_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y4 )
			(not ( CARRIABLE-AT_KEY1_X9_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X10_Y2_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y2 )
			( AT_X10_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y2 )
			(not ( CARRIABLE-AT_KEY1_X9_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X10_Y6_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y6 )
			( AT_X10_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y6 )
			(not ( CARRIABLE-AT_KEY1_X9_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X10_Y1_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y1 )
			( AT_X10_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y1 )
			(not ( CARRIABLE-AT_KEY1_X9_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X10_Y5_X9
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y5 )
			( AT_X10_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X9_Y5 )
			(not ( CARRIABLE-AT_KEY1_X9_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X12_Y3_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y3 )
			( AT_X12_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y3 )
			(not ( CARRIABLE-AT_KEY1_X11_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X12_Y2_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y2 )
			( AT_X12_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y2 )
			(not ( CARRIABLE-AT_KEY1_X11_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X12_Y1_X11
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y1 )
			( AT_X12_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X11_Y1 )
			(not ( CARRIABLE-AT_KEY1_X11_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X3_Y3_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y3 )
			( AT_X3_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y3 )
			(not ( CARRIABLE-AT_KEY1_X2_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X3_Y4_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y4 )
			( AT_X3_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y4 )
			(not ( CARRIABLE-AT_KEY1_X2_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X3_Y2_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y2 )
			( AT_X3_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y2 )
			(not ( CARRIABLE-AT_KEY1_X2_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X3_Y6_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y6 )
			( AT_X3_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y6 )
			(not ( CARRIABLE-AT_KEY1_X2_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X3_Y1_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y1 )
			( AT_X3_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y1 )
			(not ( CARRIABLE-AT_KEY1_X2_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X3_Y5_X2
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y5 )
			( AT_X3_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X2_Y5 )
			(not ( CARRIABLE-AT_KEY1_X2_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X11_Y3_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y3 )
			( AT_X11_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y3 )
			(not ( CARRIABLE-AT_KEY1_X10_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X11_Y4_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y4 )
			( AT_X11_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y4 )
			(not ( CARRIABLE-AT_KEY1_X10_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X11_Y2_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y2 )
			( AT_X11_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y2 )
			(not ( CARRIABLE-AT_KEY1_X10_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X11_Y1_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y1 )
			( AT_X11_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y1 )
			(not ( CARRIABLE-AT_KEY1_X10_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X9_Y3_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y3 )
			( AT_X9_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y3 )
			(not ( CARRIABLE-AT_KEY1_X8_Y3 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X9_Y4_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y4 )
			( AT_X9_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y4 )
			(not ( CARRIABLE-AT_KEY1_X8_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X9_Y2_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y2 )
			( AT_X9_Y2 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y2 )
			(not ( CARRIABLE-AT_KEY1_X8_Y2 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X9_Y6_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y6 )
			( AT_X9_Y6 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y6 )
			(not ( CARRIABLE-AT_KEY1_X8_Y6 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X9_Y1_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y1 )
			( AT_X9_Y1 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y1 )
			(not ( CARRIABLE-AT_KEY1_X8_Y1 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-LEFT_KEY1_X9_Y5_X8
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y5 )
			( AT_X9_Y5 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X8_Y5 )
			(not ( CARRIABLE-AT_KEY1_X8_Y5 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action FORWARD-DOWN_X4_Y7_Y8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y8 )
			( AT_X4_Y7 )
		)
		:effect
		(and
			
			( AT_X4_Y8 )
			(not ( AT_X4_Y7 ))
		)
	)
	(:action FORWARD-DOWN_X4_Y6_Y7
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y7 )
			( AT_X4_Y6 )
		)
		:effect
		(and
			
			( AT_X4_Y7 )
			(not ( AT_X4_Y6 ))
		)
	)
	(:action FORWARD-DOWN_X13_Y3_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y4 )
			( AT_X13_Y3 )
		)
		:effect
		(and
			
			( AT_X13_Y4 )
			(not ( AT_X13_Y3 ))
		)
	)
	(:action FORWARD-DOWN_X12_Y3_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y4 )
			( AT_X12_Y3 )
		)
		:effect
		(and
			
			( AT_X12_Y4 )
			(not ( AT_X12_Y3 ))
		)
	)
	(:action FORWARD-DOWN_X11_Y3_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y4 )
			( AT_X11_Y3 )
		)
		:effect
		(and
			
			( AT_X11_Y4 )
			(not ( AT_X11_Y3 ))
		)
	)
	(:action FORWARD-DOWN_X10_Y3_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y4 )
			( AT_X10_Y3 )
		)
		:effect
		(and
			
			( AT_X10_Y4 )
			(not ( AT_X10_Y3 ))
		)
	)
	(:action FORWARD-DOWN_X13_Y2_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y3 )
			( AT_X13_Y2 )
		)
		:effect
		(and
			
			( AT_X13_Y3 )
			(not ( AT_X13_Y2 ))
		)
	)
	(:action FORWARD-DOWN_X12_Y2_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y3 )
			( AT_X12_Y2 )
		)
		:effect
		(and
			
			( AT_X12_Y3 )
			(not ( AT_X12_Y2 ))
		)
	)
	(:action FORWARD-DOWN_X11_Y2_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y3 )
			( AT_X11_Y2 )
		)
		:effect
		(and
			
			( AT_X11_Y3 )
			(not ( AT_X11_Y2 ))
		)
	)
	(:action FORWARD-DOWN_X10_Y5_Y6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y6 )
			( AT_X10_Y5 )
		)
		:effect
		(and
			
			( AT_X10_Y6 )
			(not ( AT_X10_Y5 ))
		)
	)
	(:action FORWARD-DOWN_X13_Y1_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y2 )
			( AT_X13_Y1 )
		)
		:effect
		(and
			
			( AT_X13_Y2 )
			(not ( AT_X13_Y1 ))
		)
	)
	(:action FORWARD-DOWN_X12_Y1_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y2 )
			( AT_X12_Y1 )
		)
		:effect
		(and
			
			( AT_X12_Y2 )
			(not ( AT_X12_Y1 ))
		)
	)
	(:action FORWARD-DOWN_X11_Y1_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y2 )
			( AT_X11_Y1 )
		)
		:effect
		(and
			
			( AT_X11_Y2 )
			(not ( AT_X11_Y1 ))
		)
	)
	(:action FORWARD-DOWN_X10_Y4_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y5 )
			( AT_X10_Y4 )
		)
		:effect
		(and
			
			( AT_X10_Y5 )
			(not ( AT_X10_Y4 ))
		)
	)
	(:action FORWARD-UP_X9_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y5 )
			( AT_X9_Y6 )
		)
		:effect
		(and
			
			( AT_X9_Y5 )
			(not ( AT_X9_Y6 ))
		)
	)
	(:action FORWARD-UP_X10_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y5 )
			( AT_X10_Y6 )
		)
		:effect
		(and
			
			( AT_X10_Y5 )
			(not ( AT_X10_Y6 ))
		)
	)
	(:action FORWARD-UP_X8_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y5 )
			( AT_X8_Y6 )
		)
		:effect
		(and
			
			( AT_X8_Y5 )
			(not ( AT_X8_Y6 ))
		)
	)
	(:action FORWARD-UP_X13_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y1 )
			( AT_X13_Y2 )
		)
		:effect
		(and
			
			( AT_X13_Y1 )
			(not ( AT_X13_Y2 ))
		)
	)
	(:action FORWARD-UP_X12_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y1 )
			( AT_X12_Y2 )
		)
		:effect
		(and
			
			( AT_X12_Y1 )
			(not ( AT_X12_Y2 ))
		)
	)
	(:action FORWARD-UP_X11_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y1 )
			( AT_X11_Y2 )
		)
		:effect
		(and
			
			( AT_X11_Y1 )
			(not ( AT_X11_Y2 ))
		)
	)
	(:action FORWARD-UP_X9_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y4 )
			( AT_X9_Y5 )
		)
		:effect
		(and
			
			( AT_X9_Y4 )
			(not ( AT_X9_Y5 ))
		)
	)
	(:action FORWARD-UP_X10_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y4 )
			( AT_X10_Y5 )
		)
		:effect
		(and
			
			( AT_X10_Y4 )
			(not ( AT_X10_Y5 ))
		)
	)
	(:action FORWARD-UP_X8_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y4 )
			( AT_X8_Y5 )
		)
		:effect
		(and
			
			( AT_X8_Y4 )
			(not ( AT_X8_Y5 ))
		)
	)
	(:action FORWARD-UP_X13_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y2 )
			( AT_X13_Y3 )
		)
		:effect
		(and
			
			( AT_X13_Y2 )
			(not ( AT_X13_Y3 ))
		)
	)
	(:action FORWARD-UP_X12_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y2 )
			( AT_X12_Y3 )
		)
		:effect
		(and
			
			( AT_X12_Y2 )
			(not ( AT_X12_Y3 ))
		)
	)
	(:action FORWARD-UP_X11_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y2 )
			( AT_X11_Y3 )
		)
		:effect
		(and
			
			( AT_X11_Y2 )
			(not ( AT_X11_Y3 ))
		)
	)
	(:action FORWARD-UP_X10_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y3 )
			( AT_X10_Y4 )
		)
		:effect
		(and
			
			( AT_X10_Y3 )
			(not ( AT_X10_Y4 ))
		)
	)
	(:action FORWARD-RIGHT_X9_Y4_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y4 )
			( AT_X9_Y4 )
		)
		:effect
		(and
			
			( AT_X10_Y4 )
			(not ( AT_X9_Y4 ))
		)
	)
	(:action FORWARD-RIGHT_X9_Y6_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y6 )
			( AT_X9_Y6 )
		)
		:effect
		(and
			
			( AT_X10_Y6 )
			(not ( AT_X9_Y6 ))
		)
	)
	(:action FORWARD-RIGHT_X9_Y5_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y5 )
			( AT_X9_Y5 )
		)
		:effect
		(and
			
			( AT_X10_Y5 )
			(not ( AT_X9_Y5 ))
		)
	)
	(:action FORWARD-RIGHT_X12_Y3_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y3 )
			( AT_X12_Y3 )
		)
		:effect
		(and
			
			( AT_X13_Y3 )
			(not ( AT_X12_Y3 ))
		)
	)
	(:action FORWARD-RIGHT_X12_Y2_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y2 )
			( AT_X12_Y2 )
		)
		:effect
		(and
			
			( AT_X13_Y2 )
			(not ( AT_X12_Y2 ))
		)
	)
	(:action FORWARD-RIGHT_X12_Y1_X13
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X13_Y1 )
			( AT_X12_Y1 )
		)
		:effect
		(and
			
			( AT_X13_Y1 )
			(not ( AT_X12_Y1 ))
		)
	)
	(:action FORWARD-RIGHT_X11_Y3_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y3 )
			( AT_X11_Y3 )
		)
		:effect
		(and
			
			( AT_X12_Y3 )
			(not ( AT_X11_Y3 ))
		)
	)
	(:action FORWARD-RIGHT_X11_Y2_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y2 )
			( AT_X11_Y2 )
		)
		:effect
		(and
			
			( AT_X12_Y2 )
			(not ( AT_X11_Y2 ))
		)
	)
	(:action FORWARD-RIGHT_X11_Y1_X12
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X12_Y1 )
			( AT_X11_Y1 )
		)
		:effect
		(and
			
			( AT_X12_Y1 )
			(not ( AT_X11_Y1 ))
		)
	)
	(:action FORWARD-RIGHT_X10_Y3_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y3 )
			( AT_X10_Y3 )
		)
		:effect
		(and
			
			( AT_X11_Y3 )
			(not ( AT_X10_Y3 ))
		)
	)
	(:action FORWARD-RIGHT_X10_Y2_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y2 )
			( AT_X10_Y2 )
		)
		:effect
		(and
			
			( AT_X11_Y2 )
			(not ( AT_X10_Y2 ))
		)
	)
	(:action FORWARD-RIGHT_X10_Y1_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y1 )
			( AT_X10_Y1 )
		)
		:effect
		(and
			
			( AT_X11_Y1 )
			(not ( AT_X10_Y1 ))
		)
	)
	(:action FORWARD-RIGHT_X8_Y6_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y6 )
			( AT_X8_Y6 )
		)
		:effect
		(and
			
			( AT_X9_Y6 )
			(not ( AT_X8_Y6 ))
		)
	)
	(:action FORWARD-RIGHT_X8_Y5_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y5 )
			( AT_X8_Y5 )
		)
		:effect
		(and
			
			( AT_X9_Y5 )
			(not ( AT_X8_Y5 ))
		)
	)
	(:action FORWARD-LEFT_X10_Y3_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y3 )
			( AT_X10_Y3 )
		)
		:effect
		(and
			
			( AT_X9_Y3 )
			(not ( AT_X10_Y3 ))
		)
	)
	(:action FORWARD-LEFT_X10_Y2_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y2 )
			( AT_X10_Y2 )
		)
		:effect
		(and
			
			( AT_X9_Y2 )
			(not ( AT_X10_Y2 ))
		)
	)
	(:action FORWARD-LEFT_X10_Y1_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y1 )
			( AT_X10_Y1 )
		)
		:effect
		(and
			
			( AT_X9_Y1 )
			(not ( AT_X10_Y1 ))
		)
	)
	(:action FORWARD-LEFT_X9_Y3_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y3 )
			( AT_X9_Y3 )
		)
		:effect
		(and
			
			( AT_X8_Y3 )
			(not ( AT_X9_Y3 ))
		)
	)
	(:action FORWARD-LEFT_X9_Y4_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y4 )
			( AT_X9_Y4 )
		)
		:effect
		(and
			
			( AT_X8_Y4 )
			(not ( AT_X9_Y4 ))
		)
	)
	(:action FORWARD-LEFT_X9_Y2_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y2 )
			( AT_X9_Y2 )
		)
		:effect
		(and
			
			( AT_X8_Y2 )
			(not ( AT_X9_Y2 ))
		)
	)
	(:action FORWARD-LEFT_X9_Y6_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y6 )
			( AT_X9_Y6 )
		)
		:effect
		(and
			
			( AT_X8_Y6 )
			(not ( AT_X9_Y6 ))
		)
	)
	(:action FORWARD-LEFT_X9_Y1_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y1 )
			( AT_X9_Y1 )
		)
		:effect
		(and
			
			( AT_X8_Y1 )
			(not ( AT_X9_Y1 ))
		)
	)
	(:action FORWARD-LEFT_X9_Y5_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y5 )
			( AT_X9_Y5 )
		)
		:effect
		(and
			
			( AT_X8_Y5 )
			(not ( AT_X9_Y5 ))
		)
	)
	(:action TOGGLE-DOWN_DOOR0_KEY1_PURPLE_X4_Y6_Y7
		:parameters ()
		:precondition
		(and
			( IS-LOCKED_DOOR0 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y6 )
		)
		:effect
		(and
			
			( IS-CLEAR_X4_Y7 )
			(not ( IS-LOCKED_DOOR0 ))
		)
	)
	(:action DROP-DOWN_KEY1_X9_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY1_X4_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY1_X6_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY1_X5_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY1_X3_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY1_X2_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY1_X1_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY1_X8_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y5 ))
		)
	)
	(:action DROP-DOWN_KEY1_X9_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY1_X4_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY1_X6_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY1_X5_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY1_X3_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY1_X2_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY1_X1_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY1_X10_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY1_X8_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y1 ))
		)
	)
	(:action DROP-DOWN_KEY1_X9_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY1_X4_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY1_X6_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY1_X5_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY1_X3_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY1_X2_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY1_X1_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY1_X8_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y4 ))
		)
	)
	(:action DROP-DOWN_KEY1_X9_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY1_X4_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY1_X6_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY1_X5_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY1_X3_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY1_X2_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY1_X1_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY1_X10_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY1_X8_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y2 ))
		)
	)
	(:action DROP-DOWN_KEY1_X9_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y3 ))
		)
	)
	(:action DROP-DOWN_KEY1_X4_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y3 ))
		)
	)
	(:action DROP-DOWN_KEY1_X6_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y3 ))
		)
	)
	(:action DROP-DOWN_KEY1_X5_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y3 ))
		)
	)
	(:action DROP-DOWN_KEY1_X3_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y3 ))
		)
	)
	(:action DROP-DOWN_KEY1_X2_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y3 ))
		)
	)
	(:action DROP-DOWN_KEY1_X1_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y3 ))
		)
	)
	(:action DROP-DOWN_KEY1_X8_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y3 ))
		)
	)
	(:action DROP-UP_KEY1_X9_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y5 ))
		)
	)
	(:action DROP-UP_KEY1_X4_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y5 ))
		)
	)
	(:action DROP-UP_KEY1_X6_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y5 ))
		)
	)
	(:action DROP-UP_KEY1_X5_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y5 ))
		)
	)
	(:action DROP-UP_KEY1_X3_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y5 ))
		)
	)
	(:action DROP-UP_KEY1_X2_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y5 ))
		)
	)
	(:action DROP-UP_KEY1_X1_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y5 ))
		)
	)
	(:action DROP-UP_KEY1_X8_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y5 ))
		)
	)
	(:action DROP-UP_KEY1_X9_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y1 ))
		)
	)
	(:action DROP-UP_KEY1_X4_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y1 ))
		)
	)
	(:action DROP-UP_KEY1_X6_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y1 ))
		)
	)
	(:action DROP-UP_KEY1_X5_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y1 ))
		)
	)
	(:action DROP-UP_KEY1_X3_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y1 ))
		)
	)
	(:action DROP-UP_KEY1_X2_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y1 ))
		)
	)
	(:action DROP-UP_KEY1_X1_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y1 ))
		)
	)
	(:action DROP-UP_KEY1_X10_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y1 ))
		)
	)
	(:action DROP-UP_KEY1_X8_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y1 ))
		)
	)
	(:action DROP-UP_KEY1_X9_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y4 ))
		)
	)
	(:action DROP-UP_KEY1_X4_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y4 ))
		)
	)
	(:action DROP-UP_KEY1_X6_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y4 ))
		)
	)
	(:action DROP-UP_KEY1_X5_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y4 ))
		)
	)
	(:action DROP-UP_KEY1_X3_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y4 ))
		)
	)
	(:action DROP-UP_KEY1_X2_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y4 ))
		)
	)
	(:action DROP-UP_KEY1_X1_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y4 ))
		)
	)
	(:action DROP-UP_KEY1_X8_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y4 ))
		)
	)
	(:action DROP-UP_KEY1_X9_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y2 ))
		)
	)
	(:action DROP-UP_KEY1_X4_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y2 ))
		)
	)
	(:action DROP-UP_KEY1_X6_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y2 ))
		)
	)
	(:action DROP-UP_KEY1_X5_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y2 ))
		)
	)
	(:action DROP-UP_KEY1_X3_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y2 ))
		)
	)
	(:action DROP-UP_KEY1_X2_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y2 ))
		)
	)
	(:action DROP-UP_KEY1_X1_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y2 ))
		)
	)
	(:action DROP-UP_KEY1_X10_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y2 ))
		)
	)
	(:action DROP-UP_KEY1_X8_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y2 ))
		)
	)
	(:action DROP-UP_KEY1_X9_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y3 ))
		)
	)
	(:action DROP-UP_KEY1_X4_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y3 ))
		)
	)
	(:action DROP-UP_KEY1_X6_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y3 ))
		)
	)
	(:action DROP-UP_KEY1_X5_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y3 ))
		)
	)
	(:action DROP-UP_KEY1_X3_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y3 ))
		)
	)
	(:action DROP-UP_KEY1_X2_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y3 ))
		)
	)
	(:action DROP-UP_KEY1_X1_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y3 ))
		)
	)
	(:action DROP-UP_KEY1_X8_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X4_Y3_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X4_Y4_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y4 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X4_Y2_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y2 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X4_Y6_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y6 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X4_Y1_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y1 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X4_Y5_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y5 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X3_Y3_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X3_Y4_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y4 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X3_Y2_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y2 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X3_Y6_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y6 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X3_Y1_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y1 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X3_Y5_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y5 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X7_Y3_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X7_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X9_Y3_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X9_Y4_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y4 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X9_Y2_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y2 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X9_Y6_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y6 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X9_Y1_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y1 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X9_Y5_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X10_Y5 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X5_Y3_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X5_Y4_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y4 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X5_Y2_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y2 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X5_Y6_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y6 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X5_Y1_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y1 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X5_Y5_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y5 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X2_Y3_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X2_Y4_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y4 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X2_Y2_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y2 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X2_Y6_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y6 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X2_Y1_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y1 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X2_Y5_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y5 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X6_Y3_X7
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X7_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X7_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X7_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X1_Y3_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X1_Y4_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y4 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X1_Y2_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y2 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X1_Y6_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y6 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X1_Y1_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y1 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X1_Y5_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X1_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y5 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X10_Y3_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X10_Y2_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y2 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X10_Y1_X11
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X11_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X11_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X11_Y1 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X8_Y3_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y3 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X8_Y4_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y4 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X8_Y2_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y2 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X8_Y6_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y6 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X8_Y1_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y1 ))
		)
	)
	(:action DROP-RIGHT_KEY1_X8_Y5_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y5 ))
		)
	)
	(:action DROP-LEFT_KEY1_X2_Y3_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY1_X2_Y4_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y4 ))
		)
	)
	(:action DROP-LEFT_KEY1_X2_Y2_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y2 ))
		)
	)
	(:action DROP-LEFT_KEY1_X2_Y6_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y6 ))
		)
	)
	(:action DROP-LEFT_KEY1_X2_Y1_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y1 ))
		)
	)
	(:action DROP-LEFT_KEY1_X2_Y5_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X2_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X1_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X1_Y5 ))
		)
	)
	(:action DROP-LEFT_KEY1_X7_Y3_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X7_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X6_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X6_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY1_X6_Y3_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY1_X6_Y4_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y4 ))
		)
	)
	(:action DROP-LEFT_KEY1_X6_Y2_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y2 ))
		)
	)
	(:action DROP-LEFT_KEY1_X6_Y6_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y6 ))
		)
	)
	(:action DROP-LEFT_KEY1_X6_Y1_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y1 ))
		)
	)
	(:action DROP-LEFT_KEY1_X6_Y5_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X6_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X5_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X5_Y5 ))
		)
	)
	(:action DROP-LEFT_KEY1_X8_Y3_X7
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X7_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X8_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X7_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X7_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY1_X4_Y3_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY1_X4_Y4_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y4 ))
		)
	)
	(:action DROP-LEFT_KEY1_X4_Y2_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y2 ))
		)
	)
	(:action DROP-LEFT_KEY1_X4_Y6_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y6 ))
		)
	)
	(:action DROP-LEFT_KEY1_X4_Y1_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y1 ))
		)
	)
	(:action DROP-LEFT_KEY1_X4_Y5_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X4_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X3_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X3_Y5 ))
		)
	)
	(:action DROP-LEFT_KEY1_X5_Y3_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY1_X5_Y4_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y4 ))
		)
	)
	(:action DROP-LEFT_KEY1_X5_Y2_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y2 ))
		)
	)
	(:action DROP-LEFT_KEY1_X5_Y6_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y6 ))
		)
	)
	(:action DROP-LEFT_KEY1_X5_Y1_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y1 ))
		)
	)
	(:action DROP-LEFT_KEY1_X5_Y5_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X5_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X4_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X4_Y5 ))
		)
	)
	(:action DROP-LEFT_KEY1_X10_Y3_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY1_X10_Y2_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y2 ))
		)
	)
	(:action DROP-LEFT_KEY1_X10_Y1_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X10_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X9_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X9_Y1 ))
		)
	)
	(:action DROP-LEFT_KEY1_X3_Y3_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY1_X3_Y4_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y4 ))
		)
	)
	(:action DROP-LEFT_KEY1_X3_Y2_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y2 ))
		)
	)
	(:action DROP-LEFT_KEY1_X3_Y6_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y6 ))
		)
	)
	(:action DROP-LEFT_KEY1_X3_Y1_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y1 ))
		)
	)
	(:action DROP-LEFT_KEY1_X3_Y5_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X3_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X2_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X2_Y5 ))
		)
	)
	(:action DROP-LEFT_KEY1_X9_Y3_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y3 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y3 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y3 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y3 ))
		)
	)
	(:action DROP-LEFT_KEY1_X9_Y4_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y4 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y4 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y4 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y4 ))
		)
	)
	(:action DROP-LEFT_KEY1_X9_Y2_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y2 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y2 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y2 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y2 ))
		)
	)
	(:action DROP-LEFT_KEY1_X9_Y6_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y6 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y6 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y6 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y6 ))
		)
	)
	(:action DROP-LEFT_KEY1_X9_Y1_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y1 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y1 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y1 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y1 ))
		)
	)
	(:action DROP-LEFT_KEY1_X9_Y5_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y5 )
			( IS-CARRYING_KEY1 )
			( AT_X9_Y5 )
		)
		:effect
		(and
			
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X8_Y5 )
			(not ( IS-CARRYING_KEY1 ))
			(not ( IS-CLEAR_X8_Y5 ))
		)
	)
	(:action PICKUP-DOWN_KEY1_X10_Y3_Y4
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y4 )
			( AT_X10_Y3 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y4 )
			(not ( CARRIABLE-AT_KEY1_X10_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action PICKUP-RIGHT_KEY1_X9_Y4_X10
		:parameters ()
		:precondition
		(and
			( STORAGE-EMPTY )
			( CARRIABLE-AT_KEY1_X10_Y4 )
			( AT_X9_Y4 )
		)
		:effect
		(and
			
			( IS-CARRYING_KEY1 )
			( IS-CLEAR_X10_Y4 )
			(not ( CARRIABLE-AT_KEY1_X10_Y4 ))
			(not ( STORAGE-EMPTY ))
		)
	)
	(:action FORWARD-DOWN_X9_Y3_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y4 )
			( AT_X9_Y3 )
		)
		:effect
		(and
			
			( AT_X9_Y4 )
			(not ( AT_X9_Y3 ))
		)
	)
	(:action FORWARD-DOWN_X9_Y2_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y3 )
			( AT_X9_Y2 )
		)
		:effect
		(and
			
			( AT_X9_Y3 )
			(not ( AT_X9_Y2 ))
		)
	)
	(:action FORWARD-DOWN_X10_Y2_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y3 )
			( AT_X10_Y2 )
		)
		:effect
		(and
			
			( AT_X10_Y3 )
			(not ( AT_X10_Y2 ))
		)
	)
	(:action FORWARD-DOWN_X9_Y5_Y6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y6 )
			( AT_X9_Y5 )
		)
		:effect
		(and
			
			( AT_X9_Y6 )
			(not ( AT_X9_Y5 ))
		)
	)
	(:action FORWARD-DOWN_X8_Y5_Y6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y6 )
			( AT_X8_Y5 )
		)
		:effect
		(and
			
			( AT_X8_Y6 )
			(not ( AT_X8_Y5 ))
		)
	)
	(:action FORWARD-DOWN_X9_Y1_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y2 )
			( AT_X9_Y1 )
		)
		:effect
		(and
			
			( AT_X9_Y2 )
			(not ( AT_X9_Y1 ))
		)
	)
	(:action FORWARD-DOWN_X10_Y1_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y2 )
			( AT_X10_Y1 )
		)
		:effect
		(and
			
			( AT_X10_Y2 )
			(not ( AT_X10_Y1 ))
		)
	)
	(:action FORWARD-DOWN_X9_Y4_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y5 )
			( AT_X9_Y4 )
		)
		:effect
		(and
			
			( AT_X9_Y5 )
			(not ( AT_X9_Y4 ))
		)
	)
	(:action FORWARD-DOWN_X8_Y4_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y5 )
			( AT_X8_Y4 )
		)
		:effect
		(and
			
			( AT_X8_Y5 )
			(not ( AT_X8_Y4 ))
		)
	)
	(:action FORWARD-UP_X9_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y1 )
			( AT_X9_Y2 )
		)
		:effect
		(and
			
			( AT_X9_Y1 )
			(not ( AT_X9_Y2 ))
		)
	)
	(:action FORWARD-UP_X10_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y1 )
			( AT_X10_Y2 )
		)
		:effect
		(and
			
			( AT_X10_Y1 )
			(not ( AT_X10_Y2 ))
		)
	)
	(:action FORWARD-UP_X9_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y2 )
			( AT_X9_Y3 )
		)
		:effect
		(and
			
			( AT_X9_Y2 )
			(not ( AT_X9_Y3 ))
		)
	)
	(:action FORWARD-UP_X10_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y2 )
			( AT_X10_Y3 )
		)
		:effect
		(and
			
			( AT_X10_Y2 )
			(not ( AT_X10_Y3 ))
		)
	)
	(:action FORWARD-UP_X9_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y3 )
			( AT_X9_Y4 )
		)
		:effect
		(and
			
			( AT_X9_Y3 )
			(not ( AT_X9_Y4 ))
		)
	)
	(:action FORWARD-UP_X8_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y3 )
			( AT_X8_Y4 )
		)
		:effect
		(and
			
			( AT_X8_Y3 )
			(not ( AT_X8_Y4 ))
		)
	)
	(:action FORWARD-RIGHT_X9_Y3_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y3 )
			( AT_X9_Y3 )
		)
		:effect
		(and
			
			( AT_X10_Y3 )
			(not ( AT_X9_Y3 ))
		)
	)
	(:action FORWARD-RIGHT_X9_Y2_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y2 )
			( AT_X9_Y2 )
		)
		:effect
		(and
			
			( AT_X10_Y2 )
			(not ( AT_X9_Y2 ))
		)
	)
	(:action FORWARD-RIGHT_X9_Y1_X10
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X10_Y1 )
			( AT_X9_Y1 )
		)
		:effect
		(and
			
			( AT_X10_Y1 )
			(not ( AT_X9_Y1 ))
		)
	)
	(:action FORWARD-RIGHT_X8_Y3_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y3 )
			( AT_X8_Y3 )
		)
		:effect
		(and
			
			( AT_X9_Y3 )
			(not ( AT_X8_Y3 ))
		)
	)
	(:action FORWARD-RIGHT_X8_Y4_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y4 )
			( AT_X8_Y4 )
		)
		:effect
		(and
			
			( AT_X9_Y4 )
			(not ( AT_X8_Y4 ))
		)
	)
	(:action FORWARD-RIGHT_X8_Y2_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y2 )
			( AT_X8_Y2 )
		)
		:effect
		(and
			
			( AT_X9_Y2 )
			(not ( AT_X8_Y2 ))
		)
	)
	(:action FORWARD-RIGHT_X8_Y1_X9
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X9_Y1 )
			( AT_X8_Y1 )
		)
		:effect
		(and
			
			( AT_X9_Y1 )
			(not ( AT_X8_Y1 ))
		)
	)
	(:action FORWARD-LEFT_X7_Y3_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y3 )
			( AT_X7_Y3 )
		)
		:effect
		(and
			
			( AT_X6_Y3 )
			(not ( AT_X7_Y3 ))
		)
	)
	(:action FORWARD-LEFT_X8_Y3_X7
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X7_Y3 )
			( AT_X8_Y3 )
		)
		:effect
		(and
			
			( AT_X7_Y3 )
			(not ( AT_X8_Y3 ))
		)
	)
	(:action FORWARD-DOWN_X8_Y3_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y4 )
			( AT_X8_Y3 )
		)
		:effect
		(and
			
			( AT_X8_Y4 )
			(not ( AT_X8_Y3 ))
		)
	)
	(:action FORWARD-DOWN_X8_Y2_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y3 )
			( AT_X8_Y2 )
		)
		:effect
		(and
			
			( AT_X8_Y3 )
			(not ( AT_X8_Y2 ))
		)
	)
	(:action FORWARD-DOWN_X8_Y1_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y2 )
			( AT_X8_Y1 )
		)
		:effect
		(and
			
			( AT_X8_Y2 )
			(not ( AT_X8_Y1 ))
		)
	)
	(:action FORWARD-UP_X8_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y1 )
			( AT_X8_Y2 )
		)
		:effect
		(and
			
			( AT_X8_Y1 )
			(not ( AT_X8_Y2 ))
		)
	)
	(:action FORWARD-UP_X8_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y2 )
			( AT_X8_Y3 )
		)
		:effect
		(and
			
			( AT_X8_Y2 )
			(not ( AT_X8_Y3 ))
		)
	)
	(:action FORWARD-RIGHT_X4_Y3_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y3 )
			( AT_X4_Y3 )
		)
		:effect
		(and
			
			( AT_X5_Y3 )
			(not ( AT_X4_Y3 ))
		)
	)
	(:action FORWARD-RIGHT_X4_Y2_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y2 )
			( AT_X4_Y2 )
		)
		:effect
		(and
			
			( AT_X5_Y2 )
			(not ( AT_X4_Y2 ))
		)
	)
	(:action FORWARD-RIGHT_X4_Y1_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y1 )
			( AT_X4_Y1 )
		)
		:effect
		(and
			
			( AT_X5_Y1 )
			(not ( AT_X4_Y1 ))
		)
	)
	(:action FORWARD-RIGHT_X3_Y3_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y3 )
			( AT_X3_Y3 )
		)
		:effect
		(and
			
			( AT_X4_Y3 )
			(not ( AT_X3_Y3 ))
		)
	)
	(:action FORWARD-RIGHT_X3_Y2_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y2 )
			( AT_X3_Y2 )
		)
		:effect
		(and
			
			( AT_X4_Y2 )
			(not ( AT_X3_Y2 ))
		)
	)
	(:action FORWARD-RIGHT_X3_Y1_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y1 )
			( AT_X3_Y1 )
		)
		:effect
		(and
			
			( AT_X4_Y1 )
			(not ( AT_X3_Y1 ))
		)
	)
	(:action FORWARD-RIGHT_X7_Y3_X8
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X8_Y3 )
			( AT_X7_Y3 )
		)
		:effect
		(and
			
			( AT_X8_Y3 )
			(not ( AT_X7_Y3 ))
		)
	)
	(:action FORWARD-RIGHT_X5_Y3_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y3 )
			( AT_X5_Y3 )
		)
		:effect
		(and
			
			( AT_X6_Y3 )
			(not ( AT_X5_Y3 ))
		)
	)
	(:action FORWARD-RIGHT_X5_Y2_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y2 )
			( AT_X5_Y2 )
		)
		:effect
		(and
			
			( AT_X6_Y2 )
			(not ( AT_X5_Y2 ))
		)
	)
	(:action FORWARD-RIGHT_X5_Y1_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y1 )
			( AT_X5_Y1 )
		)
		:effect
		(and
			
			( AT_X6_Y1 )
			(not ( AT_X5_Y1 ))
		)
	)
	(:action FORWARD-RIGHT_X2_Y3_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y3 )
			( AT_X2_Y3 )
		)
		:effect
		(and
			
			( AT_X3_Y3 )
			(not ( AT_X2_Y3 ))
		)
	)
	(:action FORWARD-RIGHT_X2_Y2_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y2 )
			( AT_X2_Y2 )
		)
		:effect
		(and
			
			( AT_X3_Y2 )
			(not ( AT_X2_Y2 ))
		)
	)
	(:action FORWARD-RIGHT_X2_Y1_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y1 )
			( AT_X2_Y1 )
		)
		:effect
		(and
			
			( AT_X3_Y1 )
			(not ( AT_X2_Y1 ))
		)
	)
	(:action FORWARD-RIGHT_X6_Y3_X7
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X7_Y3 )
			( AT_X6_Y3 )
		)
		:effect
		(and
			
			( AT_X7_Y3 )
			(not ( AT_X6_Y3 ))
		)
	)
	(:action FORWARD-RIGHT_X1_Y3_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y3 )
			( AT_X1_Y3 )
		)
		:effect
		(and
			
			( AT_X2_Y3 )
			(not ( AT_X1_Y3 ))
		)
	)
	(:action FORWARD-RIGHT_X1_Y2_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y2 )
			( AT_X1_Y2 )
		)
		:effect
		(and
			
			( AT_X2_Y2 )
			(not ( AT_X1_Y2 ))
		)
	)
	(:action FORWARD-RIGHT_X1_Y1_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y1 )
			( AT_X1_Y1 )
		)
		:effect
		(and
			
			( AT_X2_Y1 )
			(not ( AT_X1_Y1 ))
		)
	)
	(:action FORWARD-LEFT_X2_Y3_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y3 )
			( AT_X2_Y3 )
		)
		:effect
		(and
			
			( AT_X1_Y3 )
			(not ( AT_X2_Y3 ))
		)
	)
	(:action FORWARD-LEFT_X2_Y2_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y2 )
			( AT_X2_Y2 )
		)
		:effect
		(and
			
			( AT_X1_Y2 )
			(not ( AT_X2_Y2 ))
		)
	)
	(:action FORWARD-LEFT_X2_Y1_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y1 )
			( AT_X2_Y1 )
		)
		:effect
		(and
			
			( AT_X1_Y1 )
			(not ( AT_X2_Y1 ))
		)
	)
	(:action FORWARD-LEFT_X6_Y3_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y3 )
			( AT_X6_Y3 )
		)
		:effect
		(and
			
			( AT_X5_Y3 )
			(not ( AT_X6_Y3 ))
		)
	)
	(:action FORWARD-LEFT_X6_Y2_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y2 )
			( AT_X6_Y2 )
		)
		:effect
		(and
			
			( AT_X5_Y2 )
			(not ( AT_X6_Y2 ))
		)
	)
	(:action FORWARD-LEFT_X6_Y1_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y1 )
			( AT_X6_Y1 )
		)
		:effect
		(and
			
			( AT_X5_Y1 )
			(not ( AT_X6_Y1 ))
		)
	)
	(:action FORWARD-LEFT_X4_Y3_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y3 )
			( AT_X4_Y3 )
		)
		:effect
		(and
			
			( AT_X3_Y3 )
			(not ( AT_X4_Y3 ))
		)
	)
	(:action FORWARD-LEFT_X4_Y2_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y2 )
			( AT_X4_Y2 )
		)
		:effect
		(and
			
			( AT_X3_Y2 )
			(not ( AT_X4_Y2 ))
		)
	)
	(:action FORWARD-LEFT_X4_Y1_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y1 )
			( AT_X4_Y1 )
		)
		:effect
		(and
			
			( AT_X3_Y1 )
			(not ( AT_X4_Y1 ))
		)
	)
	(:action FORWARD-LEFT_X5_Y3_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y3 )
			( AT_X5_Y3 )
		)
		:effect
		(and
			
			( AT_X4_Y3 )
			(not ( AT_X5_Y3 ))
		)
	)
	(:action FORWARD-LEFT_X5_Y2_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y2 )
			( AT_X5_Y2 )
		)
		:effect
		(and
			
			( AT_X4_Y2 )
			(not ( AT_X5_Y2 ))
		)
	)
	(:action FORWARD-LEFT_X5_Y1_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y1 )
			( AT_X5_Y1 )
		)
		:effect
		(and
			
			( AT_X4_Y1 )
			(not ( AT_X5_Y1 ))
		)
	)
	(:action FORWARD-LEFT_X3_Y3_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y3 )
			( AT_X3_Y3 )
		)
		:effect
		(and
			
			( AT_X2_Y3 )
			(not ( AT_X3_Y3 ))
		)
	)
	(:action FORWARD-LEFT_X3_Y2_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y2 )
			( AT_X3_Y2 )
		)
		:effect
		(and
			
			( AT_X2_Y2 )
			(not ( AT_X3_Y2 ))
		)
	)
	(:action FORWARD-LEFT_X3_Y1_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y1 )
			( AT_X3_Y1 )
		)
		:effect
		(and
			
			( AT_X2_Y1 )
			(not ( AT_X3_Y1 ))
		)
	)
	(:action FORWARD-DOWN_X4_Y3_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y4 )
			( AT_X4_Y3 )
		)
		:effect
		(and
			
			( AT_X4_Y4 )
			(not ( AT_X4_Y3 ))
		)
	)
	(:action FORWARD-DOWN_X6_Y3_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y4 )
			( AT_X6_Y3 )
		)
		:effect
		(and
			
			( AT_X6_Y4 )
			(not ( AT_X6_Y3 ))
		)
	)
	(:action FORWARD-DOWN_X5_Y3_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y4 )
			( AT_X5_Y3 )
		)
		:effect
		(and
			
			( AT_X5_Y4 )
			(not ( AT_X5_Y3 ))
		)
	)
	(:action FORWARD-DOWN_X3_Y3_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y4 )
			( AT_X3_Y3 )
		)
		:effect
		(and
			
			( AT_X3_Y4 )
			(not ( AT_X3_Y3 ))
		)
	)
	(:action FORWARD-DOWN_X2_Y3_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y4 )
			( AT_X2_Y3 )
		)
		:effect
		(and
			
			( AT_X2_Y4 )
			(not ( AT_X2_Y3 ))
		)
	)
	(:action FORWARD-DOWN_X1_Y3_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y4 )
			( AT_X1_Y3 )
		)
		:effect
		(and
			
			( AT_X1_Y4 )
			(not ( AT_X1_Y3 ))
		)
	)
	(:action FORWARD-DOWN_X4_Y2_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y3 )
			( AT_X4_Y2 )
		)
		:effect
		(and
			
			( AT_X4_Y3 )
			(not ( AT_X4_Y2 ))
		)
	)
	(:action FORWARD-DOWN_X6_Y2_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y3 )
			( AT_X6_Y2 )
		)
		:effect
		(and
			
			( AT_X6_Y3 )
			(not ( AT_X6_Y2 ))
		)
	)
	(:action FORWARD-DOWN_X5_Y2_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y3 )
			( AT_X5_Y2 )
		)
		:effect
		(and
			
			( AT_X5_Y3 )
			(not ( AT_X5_Y2 ))
		)
	)
	(:action FORWARD-DOWN_X3_Y2_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y3 )
			( AT_X3_Y2 )
		)
		:effect
		(and
			
			( AT_X3_Y3 )
			(not ( AT_X3_Y2 ))
		)
	)
	(:action FORWARD-DOWN_X2_Y2_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y3 )
			( AT_X2_Y2 )
		)
		:effect
		(and
			
			( AT_X2_Y3 )
			(not ( AT_X2_Y2 ))
		)
	)
	(:action FORWARD-DOWN_X1_Y2_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y3 )
			( AT_X1_Y2 )
		)
		:effect
		(and
			
			( AT_X1_Y3 )
			(not ( AT_X1_Y2 ))
		)
	)
	(:action FORWARD-DOWN_X2_Y5_Y6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y6 )
			( AT_X2_Y5 )
		)
		:effect
		(and
			
			( AT_X2_Y6 )
			(not ( AT_X2_Y5 ))
		)
	)
	(:action FORWARD-DOWN_X1_Y5_Y6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y6 )
			( AT_X1_Y5 )
		)
		:effect
		(and
			
			( AT_X1_Y6 )
			(not ( AT_X1_Y5 ))
		)
	)
	(:action FORWARD-DOWN_X4_Y1_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y2 )
			( AT_X4_Y1 )
		)
		:effect
		(and
			
			( AT_X4_Y2 )
			(not ( AT_X4_Y1 ))
		)
	)
	(:action FORWARD-DOWN_X6_Y1_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y2 )
			( AT_X6_Y1 )
		)
		:effect
		(and
			
			( AT_X6_Y2 )
			(not ( AT_X6_Y1 ))
		)
	)
	(:action FORWARD-DOWN_X5_Y1_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y2 )
			( AT_X5_Y1 )
		)
		:effect
		(and
			
			( AT_X5_Y2 )
			(not ( AT_X5_Y1 ))
		)
	)
	(:action FORWARD-DOWN_X3_Y1_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y2 )
			( AT_X3_Y1 )
		)
		:effect
		(and
			
			( AT_X3_Y2 )
			(not ( AT_X3_Y1 ))
		)
	)
	(:action FORWARD-DOWN_X2_Y1_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y2 )
			( AT_X2_Y1 )
		)
		:effect
		(and
			
			( AT_X2_Y2 )
			(not ( AT_X2_Y1 ))
		)
	)
	(:action FORWARD-DOWN_X1_Y1_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y2 )
			( AT_X1_Y1 )
		)
		:effect
		(and
			
			( AT_X1_Y2 )
			(not ( AT_X1_Y1 ))
		)
	)
	(:action FORWARD-DOWN_X2_Y4_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y5 )
			( AT_X2_Y4 )
		)
		:effect
		(and
			
			( AT_X2_Y5 )
			(not ( AT_X2_Y4 ))
		)
	)
	(:action FORWARD-DOWN_X1_Y4_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y5 )
			( AT_X1_Y4 )
		)
		:effect
		(and
			
			( AT_X1_Y5 )
			(not ( AT_X1_Y4 ))
		)
	)
	(:action FORWARD-UP_X2_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y5 )
			( AT_X2_Y6 )
		)
		:effect
		(and
			
			( AT_X2_Y5 )
			(not ( AT_X2_Y6 ))
		)
	)
	(:action FORWARD-UP_X1_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y5 )
			( AT_X1_Y6 )
		)
		:effect
		(and
			
			( AT_X1_Y5 )
			(not ( AT_X1_Y6 ))
		)
	)
	(:action FORWARD-UP_X4_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y1 )
			( AT_X4_Y2 )
		)
		:effect
		(and
			
			( AT_X4_Y1 )
			(not ( AT_X4_Y2 ))
		)
	)
	(:action FORWARD-UP_X6_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y1 )
			( AT_X6_Y2 )
		)
		:effect
		(and
			
			( AT_X6_Y1 )
			(not ( AT_X6_Y2 ))
		)
	)
	(:action FORWARD-UP_X5_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y1 )
			( AT_X5_Y2 )
		)
		:effect
		(and
			
			( AT_X5_Y1 )
			(not ( AT_X5_Y2 ))
		)
	)
	(:action FORWARD-UP_X3_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y1 )
			( AT_X3_Y2 )
		)
		:effect
		(and
			
			( AT_X3_Y1 )
			(not ( AT_X3_Y2 ))
		)
	)
	(:action FORWARD-UP_X2_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y1 )
			( AT_X2_Y2 )
		)
		:effect
		(and
			
			( AT_X2_Y1 )
			(not ( AT_X2_Y2 ))
		)
	)
	(:action FORWARD-UP_X1_Y2_Y1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y1 )
			( AT_X1_Y2 )
		)
		:effect
		(and
			
			( AT_X1_Y1 )
			(not ( AT_X1_Y2 ))
		)
	)
	(:action FORWARD-UP_X2_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y4 )
			( AT_X2_Y5 )
		)
		:effect
		(and
			
			( AT_X2_Y4 )
			(not ( AT_X2_Y5 ))
		)
	)
	(:action FORWARD-UP_X1_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y4 )
			( AT_X1_Y5 )
		)
		:effect
		(and
			
			( AT_X1_Y4 )
			(not ( AT_X1_Y5 ))
		)
	)
	(:action FORWARD-UP_X4_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y2 )
			( AT_X4_Y3 )
		)
		:effect
		(and
			
			( AT_X4_Y2 )
			(not ( AT_X4_Y3 ))
		)
	)
	(:action FORWARD-UP_X6_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y2 )
			( AT_X6_Y3 )
		)
		:effect
		(and
			
			( AT_X6_Y2 )
			(not ( AT_X6_Y3 ))
		)
	)
	(:action FORWARD-UP_X5_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y2 )
			( AT_X5_Y3 )
		)
		:effect
		(and
			
			( AT_X5_Y2 )
			(not ( AT_X5_Y3 ))
		)
	)
	(:action FORWARD-UP_X3_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y2 )
			( AT_X3_Y3 )
		)
		:effect
		(and
			
			( AT_X3_Y2 )
			(not ( AT_X3_Y3 ))
		)
	)
	(:action FORWARD-UP_X2_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y2 )
			( AT_X2_Y3 )
		)
		:effect
		(and
			
			( AT_X2_Y2 )
			(not ( AT_X2_Y3 ))
		)
	)
	(:action FORWARD-UP_X1_Y3_Y2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y2 )
			( AT_X1_Y3 )
		)
		:effect
		(and
			
			( AT_X1_Y2 )
			(not ( AT_X1_Y3 ))
		)
	)
	(:action FORWARD-UP_X4_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y3 )
			( AT_X4_Y4 )
		)
		:effect
		(and
			
			( AT_X4_Y3 )
			(not ( AT_X4_Y4 ))
		)
	)
	(:action FORWARD-UP_X6_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y3 )
			( AT_X6_Y4 )
		)
		:effect
		(and
			
			( AT_X6_Y3 )
			(not ( AT_X6_Y4 ))
		)
	)
	(:action FORWARD-UP_X5_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y3 )
			( AT_X5_Y4 )
		)
		:effect
		(and
			
			( AT_X5_Y3 )
			(not ( AT_X5_Y4 ))
		)
	)
	(:action FORWARD-UP_X3_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y3 )
			( AT_X3_Y4 )
		)
		:effect
		(and
			
			( AT_X3_Y3 )
			(not ( AT_X3_Y4 ))
		)
	)
	(:action FORWARD-UP_X2_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y3 )
			( AT_X2_Y4 )
		)
		:effect
		(and
			
			( AT_X2_Y3 )
			(not ( AT_X2_Y4 ))
		)
	)
	(:action FORWARD-UP_X1_Y4_Y3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y3 )
			( AT_X1_Y4 )
		)
		:effect
		(and
			
			( AT_X1_Y3 )
			(not ( AT_X1_Y4 ))
		)
	)
	(:action FORWARD-RIGHT_X4_Y4_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y4 )
			( AT_X4_Y4 )
		)
		:effect
		(and
			
			( AT_X5_Y4 )
			(not ( AT_X4_Y4 ))
		)
	)
	(:action FORWARD-RIGHT_X3_Y4_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y4 )
			( AT_X3_Y4 )
		)
		:effect
		(and
			
			( AT_X4_Y4 )
			(not ( AT_X3_Y4 ))
		)
	)
	(:action FORWARD-RIGHT_X5_Y4_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y4 )
			( AT_X5_Y4 )
		)
		:effect
		(and
			
			( AT_X6_Y4 )
			(not ( AT_X5_Y4 ))
		)
	)
	(:action FORWARD-RIGHT_X2_Y4_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y4 )
			( AT_X2_Y4 )
		)
		:effect
		(and
			
			( AT_X3_Y4 )
			(not ( AT_X2_Y4 ))
		)
	)
	(:action FORWARD-RIGHT_X2_Y6_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y6 )
			( AT_X2_Y6 )
		)
		:effect
		(and
			
			( AT_X3_Y6 )
			(not ( AT_X2_Y6 ))
		)
	)
	(:action FORWARD-RIGHT_X2_Y5_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y5 )
			( AT_X2_Y5 )
		)
		:effect
		(and
			
			( AT_X3_Y5 )
			(not ( AT_X2_Y5 ))
		)
	)
	(:action FORWARD-RIGHT_X1_Y4_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y4 )
			( AT_X1_Y4 )
		)
		:effect
		(and
			
			( AT_X2_Y4 )
			(not ( AT_X1_Y4 ))
		)
	)
	(:action FORWARD-RIGHT_X1_Y6_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y6 )
			( AT_X1_Y6 )
		)
		:effect
		(and
			
			( AT_X2_Y6 )
			(not ( AT_X1_Y6 ))
		)
	)
	(:action FORWARD-RIGHT_X1_Y5_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y5 )
			( AT_X1_Y5 )
		)
		:effect
		(and
			
			( AT_X2_Y5 )
			(not ( AT_X1_Y5 ))
		)
	)
	(:action FORWARD-LEFT_X2_Y4_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y4 )
			( AT_X2_Y4 )
		)
		:effect
		(and
			
			( AT_X1_Y4 )
			(not ( AT_X2_Y4 ))
		)
	)
	(:action FORWARD-LEFT_X2_Y6_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y6 )
			( AT_X2_Y6 )
		)
		:effect
		(and
			
			( AT_X1_Y6 )
			(not ( AT_X2_Y6 ))
		)
	)
	(:action FORWARD-LEFT_X2_Y5_X1
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X1_Y5 )
			( AT_X2_Y5 )
		)
		:effect
		(and
			
			( AT_X1_Y5 )
			(not ( AT_X2_Y5 ))
		)
	)
	(:action FORWARD-LEFT_X6_Y4_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y4 )
			( AT_X6_Y4 )
		)
		:effect
		(and
			
			( AT_X5_Y4 )
			(not ( AT_X6_Y4 ))
		)
	)
	(:action FORWARD-LEFT_X4_Y4_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y4 )
			( AT_X4_Y4 )
		)
		:effect
		(and
			
			( AT_X3_Y4 )
			(not ( AT_X4_Y4 ))
		)
	)
	(:action FORWARD-LEFT_X5_Y4_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y4 )
			( AT_X5_Y4 )
		)
		:effect
		(and
			
			( AT_X4_Y4 )
			(not ( AT_X5_Y4 ))
		)
	)
	(:action FORWARD-LEFT_X3_Y4_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y4 )
			( AT_X3_Y4 )
		)
		:effect
		(and
			
			( AT_X2_Y4 )
			(not ( AT_X3_Y4 ))
		)
	)
	(:action FORWARD-LEFT_X3_Y6_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y6 )
			( AT_X3_Y6 )
		)
		:effect
		(and
			
			( AT_X2_Y6 )
			(not ( AT_X3_Y6 ))
		)
	)
	(:action FORWARD-LEFT_X3_Y5_X2
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X2_Y5 )
			( AT_X3_Y5 )
		)
		:effect
		(and
			
			( AT_X2_Y5 )
			(not ( AT_X3_Y5 ))
		)
	)
	(:action FORWARD-DOWN_X4_Y5_Y6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y6 )
			( AT_X4_Y5 )
		)
		:effect
		(and
			
			( AT_X4_Y6 )
			(not ( AT_X4_Y5 ))
		)
	)
	(:action FORWARD-DOWN_X3_Y5_Y6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y6 )
			( AT_X3_Y5 )
		)
		:effect
		(and
			
			( AT_X3_Y6 )
			(not ( AT_X3_Y5 ))
		)
	)
	(:action FORWARD-DOWN_X4_Y4_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y5 )
			( AT_X4_Y4 )
		)
		:effect
		(and
			
			( AT_X4_Y5 )
			(not ( AT_X4_Y4 ))
		)
	)
	(:action FORWARD-DOWN_X6_Y4_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y5 )
			( AT_X6_Y4 )
		)
		:effect
		(and
			
			( AT_X6_Y5 )
			(not ( AT_X6_Y4 ))
		)
	)
	(:action FORWARD-DOWN_X5_Y4_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y5 )
			( AT_X5_Y4 )
		)
		:effect
		(and
			
			( AT_X5_Y5 )
			(not ( AT_X5_Y4 ))
		)
	)
	(:action FORWARD-DOWN_X3_Y4_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y5 )
			( AT_X3_Y4 )
		)
		:effect
		(and
			
			( AT_X3_Y5 )
			(not ( AT_X3_Y4 ))
		)
	)
	(:action FORWARD-UP_X4_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y5 )
			( AT_X4_Y6 )
		)
		:effect
		(and
			
			( AT_X4_Y5 )
			(not ( AT_X4_Y6 ))
		)
	)
	(:action FORWARD-UP_X3_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y5 )
			( AT_X3_Y6 )
		)
		:effect
		(and
			
			( AT_X3_Y5 )
			(not ( AT_X3_Y6 ))
		)
	)
	(:action FORWARD-UP_X4_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y4 )
			( AT_X4_Y5 )
		)
		:effect
		(and
			
			( AT_X4_Y4 )
			(not ( AT_X4_Y5 ))
		)
	)
	(:action FORWARD-UP_X6_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y4 )
			( AT_X6_Y5 )
		)
		:effect
		(and
			
			( AT_X6_Y4 )
			(not ( AT_X6_Y5 ))
		)
	)
	(:action FORWARD-UP_X5_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y4 )
			( AT_X5_Y5 )
		)
		:effect
		(and
			
			( AT_X5_Y4 )
			(not ( AT_X5_Y5 ))
		)
	)
	(:action FORWARD-UP_X3_Y5_Y4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y4 )
			( AT_X3_Y5 )
		)
		:effect
		(and
			
			( AT_X3_Y4 )
			(not ( AT_X3_Y5 ))
		)
	)
	(:action FORWARD-RIGHT_X4_Y6_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y6 )
			( AT_X4_Y6 )
		)
		:effect
		(and
			
			( AT_X5_Y6 )
			(not ( AT_X4_Y6 ))
		)
	)
	(:action FORWARD-RIGHT_X4_Y5_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y5 )
			( AT_X4_Y5 )
		)
		:effect
		(and
			
			( AT_X5_Y5 )
			(not ( AT_X4_Y5 ))
		)
	)
	(:action FORWARD-RIGHT_X3_Y6_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y6 )
			( AT_X3_Y6 )
		)
		:effect
		(and
			
			( AT_X4_Y6 )
			(not ( AT_X3_Y6 ))
		)
	)
	(:action FORWARD-RIGHT_X3_Y5_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y5 )
			( AT_X3_Y5 )
		)
		:effect
		(and
			
			( AT_X4_Y5 )
			(not ( AT_X3_Y5 ))
		)
	)
	(:action FORWARD-RIGHT_X5_Y5_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y5 )
			( AT_X5_Y5 )
		)
		:effect
		(and
			
			( AT_X6_Y5 )
			(not ( AT_X5_Y5 ))
		)
	)
	(:action FORWARD-LEFT_X6_Y5_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y5 )
			( AT_X6_Y5 )
		)
		:effect
		(and
			
			( AT_X5_Y5 )
			(not ( AT_X6_Y5 ))
		)
	)
	(:action FORWARD-LEFT_X4_Y6_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y6 )
			( AT_X4_Y6 )
		)
		:effect
		(and
			
			( AT_X3_Y6 )
			(not ( AT_X4_Y6 ))
		)
	)
	(:action FORWARD-LEFT_X4_Y5_X3
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X3_Y5 )
			( AT_X4_Y5 )
		)
		:effect
		(and
			
			( AT_X3_Y5 )
			(not ( AT_X4_Y5 ))
		)
	)
	(:action FORWARD-LEFT_X5_Y6_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y6 )
			( AT_X5_Y6 )
		)
		:effect
		(and
			
			( AT_X4_Y6 )
			(not ( AT_X5_Y6 ))
		)
	)
	(:action FORWARD-LEFT_X5_Y5_X4
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X4_Y5 )
			( AT_X5_Y5 )
		)
		:effect
		(and
			
			( AT_X4_Y5 )
			(not ( AT_X5_Y5 ))
		)
	)
	(:action FORWARD-DOWN_X6_Y5_Y6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y6 )
			( AT_X6_Y5 )
		)
		:effect
		(and
			
			( AT_X6_Y6 )
			(not ( AT_X6_Y5 ))
		)
	)
	(:action FORWARD-DOWN_X5_Y5_Y6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y6 )
			( AT_X5_Y5 )
		)
		:effect
		(and
			
			( AT_X5_Y6 )
			(not ( AT_X5_Y5 ))
		)
	)
	(:action FORWARD-UP_X6_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y5 )
			( AT_X6_Y6 )
		)
		:effect
		(and
			
			( AT_X6_Y5 )
			(not ( AT_X6_Y6 ))
		)
	)
	(:action FORWARD-UP_X5_Y6_Y5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y5 )
			( AT_X5_Y6 )
		)
		:effect
		(and
			
			( AT_X5_Y5 )
			(not ( AT_X5_Y6 ))
		)
	)
	(:action FORWARD-RIGHT_X5_Y6_X6
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X6_Y6 )
			( AT_X5_Y6 )
		)
		:effect
		(and
			
			( AT_X6_Y6 )
			(not ( AT_X5_Y6 ))
		)
	)
	(:action FORWARD-LEFT_X6_Y6_X5
		:parameters ()
		:precondition
		(and
			( IS-CLEAR_X5_Y6 )
			( AT_X6_Y6 )
		)
		:effect
		(and
			
			( AT_X5_Y6 )
			(not ( AT_X6_Y6 ))
		)
	)

)
