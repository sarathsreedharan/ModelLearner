(define
	(problem grounded-PROB)
	(:domain grounded-MINIGRID)
	(:init
		
		( IS-CLEAR_X7_Y3 )
		( IS-CLEAR_X1_Y11 )
		( IS-CLEAR_X13_Y9 )
		( IS-CLEAR_X13_Y1 )
		( IS-CLEAR_X3_Y4 )
		( IS-CLEAR_X6_Y8 )
		( IS-CLEAR_X10_Y8 )
		( STORAGE-EMPTY )
		( IS-CLEAR_X8_Y1 )
		( IS-CLEAR_X5_Y12 )
		( IS-CLEAR_X11_Y5 )
		( IS-CLEAR_X9_Y4 )
		( IS-CLEAR_X13_Y10 )
		( IS-CLEAR_X12_Y5 )
		( IS-CLEAR_X1_Y13 )
		( IS-LOCKED_DOOR0 )
		( IS-CLEAR_X1_Y3 )
		( IS-CLEAR_X13_Y12 )
		( IS-CLEAR_X13_Y11 )
		( IS-CLEAR_X6_Y10 )
		( IS-CLEAR_X1_Y8 )
		( IS-CLEAR_X6_Y4 )
		( IS-CLEAR_X12_Y10 )
		( IS-CLEAR_X1_Y1 )
		( IS-CLEAR_X11_Y13 )
		( IS-CLEAR_X3_Y6 )
		( IS-CLEAR_X8_Y5 )
		( IS-CLEAR_X1_Y2 )
		( IS-CLEAR_X3_Y12 )
		( IS-CLEAR_X3_Y3 )
		( IS-CLEAR_X6_Y3 )
		( IS-CLEAR_X10_Y1 )
		( IS-CLEAR_X8_Y8 )
		( IS-CLEAR_X10_Y11 )
		( IS-CLEAR_X8_Y9 )
		( IS-CLEAR_X3_Y1 )
		( IS-CLEAR_X1_Y5 )
		( IS-CLEAR_X6_Y12 )
		( IS-CLEAR_X5_Y11 )
		( IS-CLEAR_X10_Y12 )
		( IS-CLEAR_X2_Y5 )
		( IS-CLEAR_X5_Y1 )
		( IS-CLEAR_X13_Y6 )
		( IS-CLEAR_X8_Y3 )
		( IS-CLEAR_X10_Y10 )
		( IS-CLEAR_X11_Y11 )
		( IS-CLEAR_X9_Y11 )
		( IS-CLEAR_X12_Y3 )
		( IS-CLEAR_X4_Y11 )
		( IS-CLEAR_X13_Y3 )
		( AT_X6_Y6 )
		( IS-CLEAR_X4_Y12 )
		( IS-CLEAR_X4_Y3 )
		( CARRIABLE-AT_KEY0_X2_Y11 )
		( IS-CLEAR_X2_Y2 )
		( IS-CLEAR_X4_Y10 )
		( IS-CLEAR_X11_Y12 )
		( IS-CLEAR_X6_Y13 )
		( IS-CLEAR_X3_Y10 )
		( IS-CLEAR_X9_Y5 )
		( IS-CLEAR_X9_Y3 )
		( IS-CLEAR_X12_Y6 )
		( IS-CLEAR_X9_Y8 )
		( IS-CLEAR_X9_Y13 )
		( IS-CLEAR_X4_Y9 )
		( IS-CLEAR_X11_Y6 )
		( IS-CLEAR_X4_Y6 )
		( IS-CLEAR_X4_Y4 )
		( IS-CLEAR_X4_Y8 )
		( IS-CLEAR_X8_Y4 )
		( IS-CLEAR_X8_Y13 )
		( IS-CLEAR_X5_Y13 )
		( IS-CLEAR_X12_Y12 )
		( IS-CLEAR_X3_Y5 )
		( IS-CLEAR_X13_Y13 )
		( CARRIABLE-AT_KEY1_X10_Y4 )
		( IS-CLEAR_X2_Y8 )
		( IS-CLEAR_X3_Y2 )
		( IS-CLEAR_X2_Y6 )
		( IS-CLEAR_X10_Y3 )
		( IS-CLEAR_X12_Y2 )
		( IS-CLEAR_X6_Y1 )
		( IS-CLEAR_X9_Y1 )
		( IS-CLEAR_X4_Y2 )
		( IS-CLEAR_X6_Y9 )
		( IS-CLEAR_X5_Y9 )
		( IS-CLEAR_X4_Y1 )
		( IS-CLEAR_X2_Y13 )
		( IS-CLEAR_X5_Y5 )
		( IS-CLEAR_X8_Y2 )
		( IS-CLEAR_X12_Y1 )
		( IS-CLEAR_X10_Y6 )
		( IS-CLEAR_X10_Y5 )
		( IS-CLEAR_X6_Y5 )
		( IS-CLEAR_X2_Y3 )
		( IS-CLEAR_X3_Y9 )
		( IS-CLEAR_X1_Y6 )
		( IS-CLEAR_X2_Y9 )
		( IS-CLEAR_X8_Y6 )
		( IS-CLEAR_X2_Y10 )
		( IS-CLEAR_X10_Y2 )
		( IS-CLEAR_X1_Y10 )
		( IS-CLEAR_X12_Y11 )
		( IS-CLEAR_X8_Y12 )
		( IS-CLEAR_X13_Y8 )
		( IS-CLEAR_X12_Y8 )
		( IS-CLEAR_X6_Y2 )
		( IS-CLEAR_X1_Y4 )
		( IS-CLEAR_X6_Y11 )
		( IS-CLEAR_X4_Y5 )
		( IS-CLEAR_X11_Y1 )
		( IS-CLEAR_X8_Y11 )
		( IS-CLEAR_X12_Y13 )
		( IS-CLEAR_X1_Y9 )
		( IS-CLEAR_X5_Y2 )
		( IS-CLEAR_X5_Y4 )
		( IS-CLEAR_X2_Y1 )
		( IS-CLEAR_X3_Y13 )
		( IS-LOCKED_DOOR2 )
		( IS-CLEAR_X11_Y10 )
		( IS-CLEAR_X10_Y9 )
		( IS-CLEAR_X9_Y12 )
		( IS-CLEAR_X5_Y10 )
		( IS-CLEAR_X11_Y9 )
		( IS-CLEAR_X5_Y6 )
		( IS-CLEAR_X4_Y13 )
		( IS-CLEAR_X8_Y10 )
		( IS-CLEAR_X9_Y10 )
		( IS-CLEAR_X9_Y2 )
		( IS-CLEAR_X13_Y4 )
		( IS-CLEAR_X6_Y6 )
		( IS-CLEAR_X2_Y12 )
		( IS-CLEAR_X11_Y2 )
		( IS-CLEAR_X9_Y6 )
		( IS-CLEAR_X5_Y3 )
		( IS-CLEAR_X2_Y4 )
		( IS-CLEAR_X9_Y9 )
		( IS-CLEAR_X13_Y5 )
		( IS-CLEAR_X3_Y11 )
		( IS-CLEAR_X1_Y12 )
		( IS-CLEAR_X12_Y4 )
		( IS-CLEAR_X5_Y8 )
		( IS-CLEAR_X11_Y4 )
		( IS-CLEAR_X10_Y13 )
		( IS-CLEAR_X11_Y3 )
		( IS-CLEAR_X13_Y2 )
		( IS-CLEAR_X11_Y8 )
		( IS-CLEAR_X3_Y8 )
		( IS-CLEAR_X12_Y9 )
		
	)
	(:goal
		(and 
		( AT_X13_Y8 )
		
		)
	)
	

)
