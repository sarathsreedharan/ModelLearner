(define
	(domain grounded-MINIGRID)
	(:requirements :strips)
	(:predicates
		( IS-CARRYING_KEY0 )
		( IS-CLEAR_X1_Y2 )
		( AT_X1_Y2 )
		( CARRIABLE-AT_KEY0_X1_Y1 )
		( AT_X1_Y1 )
		( IS-CLEAR_X2_Y1 )
		( AT_X2_Y1 )
		( CARRIABLE-AT_KEY0_X3_Y1 )
		( CARRIABLE-AT_KEY0_X2_Y1 )
		( AT_X3_Y1 )
		( AT_X3_Y2 )
		( AT_X3_Y3 )
		( CARRIABLE-AT_KEY0_X3_Y2 )
		( STORAGE-EMPTY )
		( IS-LOCKED_DOOR0 )
		( IS-CLEAR_X3_Y2 )
		( IS-CLEAR_X3_Y1 )
		( IS-CLEAR_X1_Y1 )
		( CARRIABLE-AT_KEY0_X1_Y2 )
		( AT_X1_Y3 )
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
	(:action TOGGLE-LEFT_DOOR0_KEY0_YELLOW_X3_Y1_X2
		:parameters ()
		:precondition
		(and
			( IS-LOCKED_DOOR0 )
			( IS-CARRYING_KEY0 )
			( AT_X3_Y1 )
		)
		:effect
		(and

			( IS-CLEAR_X2_Y1 )
			(not ( IS-LOCKED_DOOR0 ))
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
	(:action FORWARD-DOWN_X3_Y2_Y3
		:parameters ()
		:precondition
		(and
			( AT_X3_Y2 )
		)
		:effect
		(and

			( AT_X3_Y3 )
			(not ( AT_X3_Y2 ))
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
	(:action TOGGLE-RIGHT_DOOR0_KEY0_YELLOW_X1_Y1_X2
		:parameters ()
		:precondition
		(and
			( IS-LOCKED_DOOR0 )
			( IS-CARRYING_KEY0 )
			( AT_X1_Y1 )
		)
		:effect
		(and

			( IS-CLEAR_X2_Y1 )
			(not ( IS-LOCKED_DOOR0 ))
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
	(:action FORWARD-DOWN_X1_Y2_Y3
		:parameters ()
		:precondition
		(and
			( AT_X1_Y2 )
		)
		:effect
		(and

			( AT_X1_Y3 )
			(not ( AT_X1_Y2 ))
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

)