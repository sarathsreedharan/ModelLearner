(define
	(problem grounded-PROB)
	(:domain grounded-MINIGRID)
	(:init
		( IS-CLEAR_X3_Y1 )
		( CARRIABLE-AT_KEY0_X1_Y2 )
		( IS-CLEAR_X3_Y2 )
		( IS-CLEAR_X1_Y1 )
		( STORAGE-EMPTY )
		( IS-LOCKED_DOOR0 )
		( AT_X1_Y3 )
	)
	(:goal
		(and
		( AT_X3_Y3 )
		)
	)

)