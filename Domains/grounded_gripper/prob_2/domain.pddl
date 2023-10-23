(define
	(domain grounded-GRIPPER-STRIPS)
	(:requirements :strips :action-costs)
	(:predicates
		( AT-ROBBY_ROOMB )
		( CARRY_BALL1_RIGHT )
		( CARRY_BALL1_LEFT )
		( CARRY_BALL2_RIGHT )
		( CARRY_BALL2_LEFT )
		( CARRY_BALL3_RIGHT )
		( CARRY_BALL3_LEFT )
		( CARRY_BALL4_RIGHT )
		( CARRY_BALL4_LEFT )
		( CARRY_BALL5_RIGHT )
		( CARRY_BALL5_LEFT )
		( CARRY_BALL6_RIGHT )
		( CARRY_BALL6_LEFT )
		( AT_BALL1_ROOMB )
		( AT_BALL2_ROOMB )
		( AT_BALL3_ROOMB )
		( AT_BALL4_ROOMB )
		( AT_BALL5_ROOMB )
		( AT_BALL6_ROOMB )
		( FREE_LEFT )
		( FREE_RIGHT )
		( AT_BALL6_ROOMA )
		( AT_BALL5_ROOMA )
		( AT_BALL4_ROOMA )
		( AT_BALL3_ROOMA )
		( AT_BALL2_ROOMA )
		( AT_BALL1_ROOMA )
		( AT-ROBBY_ROOMA )
		
		
	) 
	
	(:action PICK_BALL6_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMB )
			( AT_BALL6_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL6_LEFT )
			(not ( AT_BALL6_ROOMB ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL6_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMB )
			( AT_BALL6_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL6_RIGHT )
			(not ( AT_BALL6_ROOMB ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL5_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMB )
			( AT_BALL5_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL5_LEFT )
			(not ( AT_BALL5_ROOMB ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL5_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMB )
			( AT_BALL5_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL5_RIGHT )
			(not ( AT_BALL5_ROOMB ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL4_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMB )
			( AT_BALL4_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL4_LEFT )
			(not ( AT_BALL4_ROOMB ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL4_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMB )
			( AT_BALL4_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL4_RIGHT )
			(not ( AT_BALL4_ROOMB ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL3_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMB )
			( AT_BALL3_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL3_LEFT )
			(not ( AT_BALL3_ROOMB ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL3_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMB )
			( AT_BALL3_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL3_RIGHT )
			(not ( AT_BALL3_ROOMB ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL2_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMB )
			( AT_BALL2_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL2_LEFT )
			(not ( AT_BALL2_ROOMB ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL2_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMB )
			( AT_BALL2_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL2_RIGHT )
			(not ( AT_BALL2_ROOMB ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL1_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMB )
			( AT_BALL1_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL1_LEFT )
			(not ( AT_BALL1_ROOMB ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL1_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMB )
			( AT_BALL1_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL1_RIGHT )
			(not ( AT_BALL1_ROOMB ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action MOVE_ROOMB_ROOMA
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
		)
		:effect
		(and
			
			( AT-ROBBY_ROOMA )
			(not ( AT-ROBBY_ROOMB ))
		)
	)
	(:action DROP_BALL6_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL6_LEFT )
		)
		:effect
		(and
			
			( AT_BALL6_ROOMA )
			( FREE_LEFT )
			(not ( CARRY_BALL6_LEFT ))
		)
	)
	(:action DROP_BALL6_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL6_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL6_ROOMA )
			( FREE_RIGHT )
			(not ( CARRY_BALL6_RIGHT ))
		)
	)
	(:action DROP_BALL6_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL6_LEFT )
		)
		:effect
		(and
			
			( AT_BALL6_ROOMB )
			( FREE_LEFT )
			(not ( CARRY_BALL6_LEFT ))
		)
	)
	(:action DROP_BALL6_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL6_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL6_ROOMB )
			( FREE_RIGHT )
			(not ( CARRY_BALL6_RIGHT ))
		)
	)
	(:action DROP_BALL5_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL5_LEFT )
		)
		:effect
		(and
			
			( AT_BALL5_ROOMA )
			( FREE_LEFT )
			(not ( CARRY_BALL5_LEFT ))
		)
	)
	(:action DROP_BALL5_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL5_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL5_ROOMA )
			( FREE_RIGHT )
			(not ( CARRY_BALL5_RIGHT ))
		)
	)
	(:action DROP_BALL5_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL5_LEFT )
		)
		:effect
		(and
			
			( AT_BALL5_ROOMB )
			( FREE_LEFT )
			(not ( CARRY_BALL5_LEFT ))
		)
	)
	(:action DROP_BALL5_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL5_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL5_ROOMB )
			( FREE_RIGHT )
			(not ( CARRY_BALL5_RIGHT ))
		)
	)
	(:action DROP_BALL4_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL4_LEFT )
		)
		:effect
		(and
			
			( AT_BALL4_ROOMA )
			( FREE_LEFT )
			(not ( CARRY_BALL4_LEFT ))
		)
	)
	(:action DROP_BALL4_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL4_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL4_ROOMA )
			( FREE_RIGHT )
			(not ( CARRY_BALL4_RIGHT ))
		)
	)
	(:action DROP_BALL4_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL4_LEFT )
		)
		:effect
		(and
			
			( AT_BALL4_ROOMB )
			( FREE_LEFT )
			(not ( CARRY_BALL4_LEFT ))
		)
	)
	(:action DROP_BALL4_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL4_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL4_ROOMB )
			( FREE_RIGHT )
			(not ( CARRY_BALL4_RIGHT ))
		)
	)
	(:action DROP_BALL3_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL3_LEFT )
		)
		:effect
		(and
			
			( AT_BALL3_ROOMA )
			( FREE_LEFT )
			(not ( CARRY_BALL3_LEFT ))
		)
	)
	(:action DROP_BALL3_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL3_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL3_ROOMA )
			( FREE_RIGHT )
			(not ( CARRY_BALL3_RIGHT ))
		)
	)
	(:action DROP_BALL3_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL3_LEFT )
		)
		:effect
		(and
			
			( AT_BALL3_ROOMB )
			( FREE_LEFT )
			(not ( CARRY_BALL3_LEFT ))
		)
	)
	(:action DROP_BALL3_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL3_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL3_ROOMB )
			( FREE_RIGHT )
			(not ( CARRY_BALL3_RIGHT ))
		)
	)
	(:action DROP_BALL2_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL2_LEFT )
		)
		:effect
		(and
			
			( AT_BALL2_ROOMA )
			( FREE_LEFT )
			(not ( CARRY_BALL2_LEFT ))
		)
	)
	(:action DROP_BALL2_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL2_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL2_ROOMA )
			( FREE_RIGHT )
			(not ( CARRY_BALL2_RIGHT ))
		)
	)
	(:action DROP_BALL2_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL2_LEFT )
		)
		:effect
		(and
			
			( AT_BALL2_ROOMB )
			( FREE_LEFT )
			(not ( CARRY_BALL2_LEFT ))
		)
	)
	(:action DROP_BALL2_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL2_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL2_ROOMB )
			( FREE_RIGHT )
			(not ( CARRY_BALL2_RIGHT ))
		)
	)
	(:action DROP_BALL1_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL1_LEFT )
		)
		:effect
		(and
			
			( AT_BALL1_ROOMA )
			( FREE_LEFT )
			(not ( CARRY_BALL1_LEFT ))
		)
	)
	(:action DROP_BALL1_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL1_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL1_ROOMA )
			( FREE_RIGHT )
			(not ( CARRY_BALL1_RIGHT ))
		)
	)
	(:action DROP_BALL1_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL1_LEFT )
		)
		:effect
		(and
			
			( AT_BALL1_ROOMB )
			( FREE_LEFT )
			(not ( CARRY_BALL1_LEFT ))
		)
	)
	(:action DROP_BALL1_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL1_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL1_ROOMB )
			( FREE_RIGHT )
			(not ( CARRY_BALL1_RIGHT ))
		)
	)
	(:action PICK_BALL6_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMA )
			( AT_BALL6_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL6_LEFT )
			(not ( AT_BALL6_ROOMA ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL6_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMA )
			( AT_BALL6_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL6_RIGHT )
			(not ( AT_BALL6_ROOMA ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL5_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMA )
			( AT_BALL5_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL5_LEFT )
			(not ( AT_BALL5_ROOMA ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL5_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMA )
			( AT_BALL5_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL5_RIGHT )
			(not ( AT_BALL5_ROOMA ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL4_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMA )
			( AT_BALL4_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL4_LEFT )
			(not ( AT_BALL4_ROOMA ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL4_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMA )
			( AT_BALL4_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL4_RIGHT )
			(not ( AT_BALL4_ROOMA ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL3_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMA )
			( AT_BALL3_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL3_LEFT )
			(not ( AT_BALL3_ROOMA ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL3_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMA )
			( AT_BALL3_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL3_RIGHT )
			(not ( AT_BALL3_ROOMA ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL2_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMA )
			( AT_BALL2_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL2_LEFT )
			(not ( AT_BALL2_ROOMA ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL2_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMA )
			( AT_BALL2_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL2_RIGHT )
			(not ( AT_BALL2_ROOMA ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL1_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMA )
			( AT_BALL1_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL1_LEFT )
			(not ( AT_BALL1_ROOMA ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL1_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMA )
			( AT_BALL1_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL1_RIGHT )
			(not ( AT_BALL1_ROOMA ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action MOVE_ROOMA_ROOMB
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
		)
		:effect
		(and
			
			( AT-ROBBY_ROOMB )
			(not ( AT-ROBBY_ROOMA ))
		)
	)

)
