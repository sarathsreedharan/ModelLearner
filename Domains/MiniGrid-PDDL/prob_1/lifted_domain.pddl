(define
	(domain grounded-MINIGRID)
	(:requirements :strips :action-costs)
	(:predicates
		( AT_X1_Y2 )
		( AT_X3_Y2 )
		( AT_X3_Y1 )
		( AT_X2_Y1 )
		( AT_X3_Y3 )
		( AT_X2_Y3 )
		( AT_X1_Y3 )
		( AT_X3_Y4 )
		( AT_X2_Y4 )
		( AT_X1_Y4 )
		( IS-CARRYING_KEY0 )
		( IS-CLEAR_X1_Y1 )
		( CARRIABLE-AT_KEY0_X1_Y3 )
		( CARRIABLE-AT_KEY0_X1_Y2 )
		( CARRIABLE-AT_KEY0_X1_Y4 )
		( CARRIABLE-AT_KEY0_X2_Y3 )
		( CARRIABLE-AT_KEY0_X2_Y1 )
		( CARRIABLE-AT_KEY0_X2_Y2 )
		( CARRIABLE-AT_KEY0_X2_Y4 )
		( CARRIABLE-AT_KEY0_X4_Y3 )
		( CARRIABLE-AT_KEY0_X4_Y1 )
		( CARRIABLE-AT_KEY0_X4_Y2 )
		( CARRIABLE-AT_KEY0_X4_Y4 )
		( CARRIABLE-AT_KEY0_X3_Y3 )
		( CARRIABLE-AT_KEY0_X3_Y1 )
		( CARRIABLE-AT_KEY0_X3_Y2 )
		( CARRIABLE-AT_KEY0_X3_Y4 )
		( AT_X1_Y1 )
		( AT_X4_Y3 )
		( AT_X4_Y1 )
		( AT_X4_Y2 )
		( AT_X4_Y4 )
		( AT_X3_Y5 )
		( AT_X4_Y5 )
		( AT_X2_Y5 )
		( AT_X1_Y5 )
		( AT_X3_Y6 )
		( AT_X4_Y6 )
		( AT_X2_Y6 )
		( AT_X1_Y6 )
		( CARRIABLE-AT_KEY0_X3_Y6 )
		( CARRIABLE-AT_KEY0_X3_Y5 )
		( CARRIABLE-AT_KEY0_X1_Y6 )
		( CARRIABLE-AT_KEY0_X1_Y5 )
		( CARRIABLE-AT_KEY0_X2_Y6 )
		( CARRIABLE-AT_KEY0_X2_Y5 )
		( CARRIABLE-AT_KEY0_X4_Y6 )
		( CARRIABLE-AT_KEY0_X4_Y5 )
		( IS-CLEAR_X5_Y2 )
		( AT_X5_Y2 )
		( AT_X6_Y2 )
		( AT_X6_Y1 )
		( AT_X6_Y3 )
		( AT_X6_Y4 )
		( CARRIABLE-AT_KEY0_X5_Y2 )
		( CARRIABLE-AT_KEY0_X6_Y2 )
		( CARRIABLE-AT_KEY0_X6_Y1 )
		( CARRIABLE-AT_KEY0_X6_Y3 )
		( AT_X6_Y5 )
		( AT_X6_Y6 )
		( CARRIABLE-AT_KEY0_X6_Y4 )
		( CARRIABLE-AT_KEY0_X6_Y5 )
		( STORAGE-EMPTY )
		( IS-CLEAR_X6_Y5 )
		( IS-CLEAR_X6_Y4 )
		( IS-LOCKED_DOOR0 )
		( IS-CLEAR_X6_Y3 )
		( IS-CLEAR_X6_Y2 )
		( IS-CLEAR_X6_Y1 )
		( IS-CLEAR_X4_Y2 )
		( IS-CLEAR_X1_Y5 )
		( IS-CLEAR_X2_Y5 )
		( IS-CLEAR_X4_Y5 )
		( IS-CLEAR_X3_Y5 )
		( IS-CLEAR_X4_Y3 )
		( IS-CLEAR_X4_Y1 )
		( IS-CLEAR_X1_Y4 )
		( IS-CLEAR_X2_Y4 )
		( IS-CLEAR_X4_Y4 )
		( IS-CLEAR_X3_Y4 )
		( IS-CLEAR_X2_Y6 )
		( IS-CLEAR_X2_Y1 )
		( IS-CLEAR_X3_Y6 )
		( IS-CLEAR_X4_Y6 )
		( IS-CLEAR_X1_Y6 )
		( IS-CLEAR_X3_Y2 )
		( IS-CLEAR_X3_Y1 )
		( IS-CLEAR_X3_Y3 )
		( IS-CLEAR_X1_Y3 )
		( IS-CLEAR_X2_Y3 )
		( IS-CLEAR_X1_Y2 )
		( IS-CLEAR_X2_Y2 )
		( CARRIABLE-AT_KEY0_X1_Y1 )
		( AT_X2_Y2 )
		
		
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
	(:action FORWARD-DOWN_X6_Y5_Y6
		:parameters ()
		:precondition
		(and
			( AT_X6_Y5 )
		)
		:effect
		(and
			
			( AT_X6_Y6 )
			(not ( AT_X6_Y5 ))
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
	(:action TOGGLE-LEFT_DOOR0_KEY0_YELLOW_X6_Y2_X5
		:parameters ()
		:precondition
		(and
			( IS-LOCKED_DOOR0 )
			( IS-CARRYING_KEY0 )
			( AT_X6_Y2 )
		)
		:effect
		(and
			
			( IS-CLEAR_X5_Y2 )
			(not ( IS-LOCKED_DOOR0 ))
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
	(:action TOGGLE-RIGHT_DOOR0_KEY0_YELLOW_X4_Y2_X5
		:parameters ()
		:precondition
		(and
			( IS-LOCKED_DOOR0 )
			( IS-CARRYING_KEY0 )
			( AT_X4_Y2 )
		)
		:effect
		(and
			
			( IS-CLEAR_X5_Y2 )
			(not ( IS-LOCKED_DOOR0 ))
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

)
