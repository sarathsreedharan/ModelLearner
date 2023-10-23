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
		( CARRY_BALL7_RIGHT )
		( CARRY_BALL7_LEFT )
		( CARRY_BALL8_RIGHT )
		( CARRY_BALL8_LEFT )
		( CARRY_BALL9_RIGHT )
		( CARRY_BALL9_LEFT )
		( CARRY_BALL10_RIGHT )
		( CARRY_BALL10_LEFT )
		( CARRY_BALL11_RIGHT )
		( CARRY_BALL11_LEFT )
		( CARRY_BALL12_RIGHT )
		( CARRY_BALL12_LEFT )
		( CARRY_BALL13_RIGHT )
		( CARRY_BALL13_LEFT )
		( CARRY_BALL14_RIGHT )
		( CARRY_BALL14_LEFT )
		( CARRY_BALL15_RIGHT )
		( CARRY_BALL15_LEFT )
		( CARRY_BALL16_RIGHT )
		( CARRY_BALL16_LEFT )
		( CARRY_BALL17_RIGHT )
		( CARRY_BALL17_LEFT )
		( CARRY_BALL18_RIGHT )
		( CARRY_BALL18_LEFT )
		( AT_BALL1_ROOMB )
		( AT_BALL2_ROOMB )
		( AT_BALL3_ROOMB )
		( AT_BALL4_ROOMB )
		( AT_BALL5_ROOMB )
		( AT_BALL6_ROOMB )
		( AT_BALL7_ROOMB )
		( AT_BALL8_ROOMB )
		( AT_BALL9_ROOMB )
		( AT_BALL10_ROOMB )
		( AT_BALL11_ROOMB )
		( AT_BALL12_ROOMB )
		( AT_BALL13_ROOMB )
		( AT_BALL14_ROOMB )
		( AT_BALL15_ROOMB )
		( AT_BALL16_ROOMB )
		( AT_BALL17_ROOMB )
		( AT_BALL18_ROOMB )
		( FREE_LEFT )
		( FREE_RIGHT )
		( AT_BALL18_ROOMA )
		( AT_BALL17_ROOMA )
		( AT_BALL16_ROOMA )
		( AT_BALL15_ROOMA )
		( AT_BALL14_ROOMA )
		( AT_BALL13_ROOMA )
		( AT_BALL12_ROOMA )
		( AT_BALL11_ROOMA )
		( AT_BALL10_ROOMA )
		( AT_BALL9_ROOMA )
		( AT_BALL8_ROOMA )
		( AT_BALL7_ROOMA )
		( AT_BALL6_ROOMA )
		( AT_BALL5_ROOMA )
		( AT_BALL4_ROOMA )
		( AT_BALL3_ROOMA )
		( AT_BALL2_ROOMA )
		( AT_BALL1_ROOMA )
		( AT-ROBBY_ROOMA )
		
		
	) 
	
	(:action PICK_BALL18_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMB )
			( AT_BALL18_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL18_LEFT )
			(not ( AT_BALL18_ROOMB ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL18_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMB )
			( AT_BALL18_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL18_RIGHT )
			(not ( AT_BALL18_ROOMB ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL17_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMB )
			( AT_BALL17_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL17_LEFT )
			(not ( AT_BALL17_ROOMB ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL17_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMB )
			( AT_BALL17_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL17_RIGHT )
			(not ( AT_BALL17_ROOMB ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL16_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMB )
			( AT_BALL16_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL16_LEFT )
			(not ( AT_BALL16_ROOMB ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL16_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMB )
			( AT_BALL16_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL16_RIGHT )
			(not ( AT_BALL16_ROOMB ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL15_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMB )
			( AT_BALL15_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL15_LEFT )
			(not ( AT_BALL15_ROOMB ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL15_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMB )
			( AT_BALL15_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL15_RIGHT )
			(not ( AT_BALL15_ROOMB ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL14_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMB )
			( AT_BALL14_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL14_LEFT )
			(not ( AT_BALL14_ROOMB ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL14_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMB )
			( AT_BALL14_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL14_RIGHT )
			(not ( AT_BALL14_ROOMB ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL13_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMB )
			( AT_BALL13_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL13_LEFT )
			(not ( AT_BALL13_ROOMB ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL13_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMB )
			( AT_BALL13_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL13_RIGHT )
			(not ( AT_BALL13_ROOMB ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL12_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMB )
			( AT_BALL12_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL12_LEFT )
			(not ( AT_BALL12_ROOMB ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL12_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMB )
			( AT_BALL12_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL12_RIGHT )
			(not ( AT_BALL12_ROOMB ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL11_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMB )
			( AT_BALL11_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL11_LEFT )
			(not ( AT_BALL11_ROOMB ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL11_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMB )
			( AT_BALL11_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL11_RIGHT )
			(not ( AT_BALL11_ROOMB ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL10_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMB )
			( AT_BALL10_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL10_LEFT )
			(not ( AT_BALL10_ROOMB ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL10_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMB )
			( AT_BALL10_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL10_RIGHT )
			(not ( AT_BALL10_ROOMB ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL9_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMB )
			( AT_BALL9_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL9_LEFT )
			(not ( AT_BALL9_ROOMB ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL9_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMB )
			( AT_BALL9_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL9_RIGHT )
			(not ( AT_BALL9_ROOMB ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL8_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMB )
			( AT_BALL8_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL8_LEFT )
			(not ( AT_BALL8_ROOMB ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL8_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMB )
			( AT_BALL8_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL8_RIGHT )
			(not ( AT_BALL8_ROOMB ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL7_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMB )
			( AT_BALL7_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL7_LEFT )
			(not ( AT_BALL7_ROOMB ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL7_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMB )
			( AT_BALL7_ROOMB )
		)
		:effect
		(and
			
			( CARRY_BALL7_RIGHT )
			(not ( AT_BALL7_ROOMB ))
			(not ( FREE_RIGHT ))
		)
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
	(:action DROP_BALL18_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL18_LEFT )
		)
		:effect
		(and
			
			( AT_BALL18_ROOMA )
			( FREE_LEFT )
			(not ( CARRY_BALL18_LEFT ))
		)
	)
	(:action DROP_BALL18_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL18_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL18_ROOMA )
			( FREE_RIGHT )
			(not ( CARRY_BALL18_RIGHT ))
		)
	)
	(:action DROP_BALL18_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL18_LEFT )
		)
		:effect
		(and
			
			( AT_BALL18_ROOMB )
			( FREE_LEFT )
			(not ( CARRY_BALL18_LEFT ))
		)
	)
	(:action DROP_BALL18_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL18_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL18_ROOMB )
			( FREE_RIGHT )
			(not ( CARRY_BALL18_RIGHT ))
		)
	)
	(:action DROP_BALL17_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL17_LEFT )
		)
		:effect
		(and
			
			( AT_BALL17_ROOMA )
			( FREE_LEFT )
			(not ( CARRY_BALL17_LEFT ))
		)
	)
	(:action DROP_BALL17_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL17_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL17_ROOMA )
			( FREE_RIGHT )
			(not ( CARRY_BALL17_RIGHT ))
		)
	)
	(:action DROP_BALL17_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL17_LEFT )
		)
		:effect
		(and
			
			( AT_BALL17_ROOMB )
			( FREE_LEFT )
			(not ( CARRY_BALL17_LEFT ))
		)
	)
	(:action DROP_BALL17_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL17_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL17_ROOMB )
			( FREE_RIGHT )
			(not ( CARRY_BALL17_RIGHT ))
		)
	)
	(:action DROP_BALL16_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL16_LEFT )
		)
		:effect
		(and
			
			( AT_BALL16_ROOMA )
			( FREE_LEFT )
			(not ( CARRY_BALL16_LEFT ))
		)
	)
	(:action DROP_BALL16_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL16_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL16_ROOMA )
			( FREE_RIGHT )
			(not ( CARRY_BALL16_RIGHT ))
		)
	)
	(:action DROP_BALL16_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL16_LEFT )
		)
		:effect
		(and
			
			( AT_BALL16_ROOMB )
			( FREE_LEFT )
			(not ( CARRY_BALL16_LEFT ))
		)
	)
	(:action DROP_BALL16_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL16_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL16_ROOMB )
			( FREE_RIGHT )
			(not ( CARRY_BALL16_RIGHT ))
		)
	)
	(:action DROP_BALL15_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL15_LEFT )
		)
		:effect
		(and
			
			( AT_BALL15_ROOMA )
			( FREE_LEFT )
			(not ( CARRY_BALL15_LEFT ))
		)
	)
	(:action DROP_BALL15_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL15_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL15_ROOMA )
			( FREE_RIGHT )
			(not ( CARRY_BALL15_RIGHT ))
		)
	)
	(:action DROP_BALL15_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL15_LEFT )
		)
		:effect
		(and
			
			( AT_BALL15_ROOMB )
			( FREE_LEFT )
			(not ( CARRY_BALL15_LEFT ))
		)
	)
	(:action DROP_BALL15_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL15_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL15_ROOMB )
			( FREE_RIGHT )
			(not ( CARRY_BALL15_RIGHT ))
		)
	)
	(:action DROP_BALL14_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL14_LEFT )
		)
		:effect
		(and
			
			( AT_BALL14_ROOMA )
			( FREE_LEFT )
			(not ( CARRY_BALL14_LEFT ))
		)
	)
	(:action DROP_BALL14_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL14_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL14_ROOMA )
			( FREE_RIGHT )
			(not ( CARRY_BALL14_RIGHT ))
		)
	)
	(:action DROP_BALL14_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL14_LEFT )
		)
		:effect
		(and
			
			( AT_BALL14_ROOMB )
			( FREE_LEFT )
			(not ( CARRY_BALL14_LEFT ))
		)
	)
	(:action DROP_BALL14_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL14_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL14_ROOMB )
			( FREE_RIGHT )
			(not ( CARRY_BALL14_RIGHT ))
		)
	)
	(:action DROP_BALL13_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL13_LEFT )
		)
		:effect
		(and
			
			( AT_BALL13_ROOMA )
			( FREE_LEFT )
			(not ( CARRY_BALL13_LEFT ))
		)
	)
	(:action DROP_BALL13_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL13_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL13_ROOMA )
			( FREE_RIGHT )
			(not ( CARRY_BALL13_RIGHT ))
		)
	)
	(:action DROP_BALL13_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL13_LEFT )
		)
		:effect
		(and
			
			( AT_BALL13_ROOMB )
			( FREE_LEFT )
			(not ( CARRY_BALL13_LEFT ))
		)
	)
	(:action DROP_BALL13_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL13_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL13_ROOMB )
			( FREE_RIGHT )
			(not ( CARRY_BALL13_RIGHT ))
		)
	)
	(:action DROP_BALL12_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL12_LEFT )
		)
		:effect
		(and
			
			( AT_BALL12_ROOMA )
			( FREE_LEFT )
			(not ( CARRY_BALL12_LEFT ))
		)
	)
	(:action DROP_BALL12_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL12_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL12_ROOMA )
			( FREE_RIGHT )
			(not ( CARRY_BALL12_RIGHT ))
		)
	)
	(:action DROP_BALL12_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL12_LEFT )
		)
		:effect
		(and
			
			( AT_BALL12_ROOMB )
			( FREE_LEFT )
			(not ( CARRY_BALL12_LEFT ))
		)
	)
	(:action DROP_BALL12_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL12_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL12_ROOMB )
			( FREE_RIGHT )
			(not ( CARRY_BALL12_RIGHT ))
		)
	)
	(:action DROP_BALL11_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL11_LEFT )
		)
		:effect
		(and
			
			( AT_BALL11_ROOMA )
			( FREE_LEFT )
			(not ( CARRY_BALL11_LEFT ))
		)
	)
	(:action DROP_BALL11_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL11_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL11_ROOMA )
			( FREE_RIGHT )
			(not ( CARRY_BALL11_RIGHT ))
		)
	)
	(:action DROP_BALL11_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL11_LEFT )
		)
		:effect
		(and
			
			( AT_BALL11_ROOMB )
			( FREE_LEFT )
			(not ( CARRY_BALL11_LEFT ))
		)
	)
	(:action DROP_BALL11_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL11_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL11_ROOMB )
			( FREE_RIGHT )
			(not ( CARRY_BALL11_RIGHT ))
		)
	)
	(:action DROP_BALL10_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL10_LEFT )
		)
		:effect
		(and
			
			( AT_BALL10_ROOMA )
			( FREE_LEFT )
			(not ( CARRY_BALL10_LEFT ))
		)
	)
	(:action DROP_BALL10_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL10_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL10_ROOMA )
			( FREE_RIGHT )
			(not ( CARRY_BALL10_RIGHT ))
		)
	)
	(:action DROP_BALL10_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL10_LEFT )
		)
		:effect
		(and
			
			( AT_BALL10_ROOMB )
			( FREE_LEFT )
			(not ( CARRY_BALL10_LEFT ))
		)
	)
	(:action DROP_BALL10_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL10_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL10_ROOMB )
			( FREE_RIGHT )
			(not ( CARRY_BALL10_RIGHT ))
		)
	)
	(:action DROP_BALL9_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL9_LEFT )
		)
		:effect
		(and
			
			( AT_BALL9_ROOMA )
			( FREE_LEFT )
			(not ( CARRY_BALL9_LEFT ))
		)
	)
	(:action DROP_BALL9_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL9_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL9_ROOMA )
			( FREE_RIGHT )
			(not ( CARRY_BALL9_RIGHT ))
		)
	)
	(:action DROP_BALL9_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL9_LEFT )
		)
		:effect
		(and
			
			( AT_BALL9_ROOMB )
			( FREE_LEFT )
			(not ( CARRY_BALL9_LEFT ))
		)
	)
	(:action DROP_BALL9_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL9_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL9_ROOMB )
			( FREE_RIGHT )
			(not ( CARRY_BALL9_RIGHT ))
		)
	)
	(:action DROP_BALL8_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL8_LEFT )
		)
		:effect
		(and
			
			( AT_BALL8_ROOMA )
			( FREE_LEFT )
			(not ( CARRY_BALL8_LEFT ))
		)
	)
	(:action DROP_BALL8_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL8_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL8_ROOMA )
			( FREE_RIGHT )
			(not ( CARRY_BALL8_RIGHT ))
		)
	)
	(:action DROP_BALL8_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL8_LEFT )
		)
		:effect
		(and
			
			( AT_BALL8_ROOMB )
			( FREE_LEFT )
			(not ( CARRY_BALL8_LEFT ))
		)
	)
	(:action DROP_BALL8_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL8_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL8_ROOMB )
			( FREE_RIGHT )
			(not ( CARRY_BALL8_RIGHT ))
		)
	)
	(:action DROP_BALL7_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL7_LEFT )
		)
		:effect
		(and
			
			( AT_BALL7_ROOMA )
			( FREE_LEFT )
			(not ( CARRY_BALL7_LEFT ))
		)
	)
	(:action DROP_BALL7_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMA )
			( CARRY_BALL7_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL7_ROOMA )
			( FREE_RIGHT )
			(not ( CARRY_BALL7_RIGHT ))
		)
	)
	(:action DROP_BALL7_ROOMB_LEFT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL7_LEFT )
		)
		:effect
		(and
			
			( AT_BALL7_ROOMB )
			( FREE_LEFT )
			(not ( CARRY_BALL7_LEFT ))
		)
	)
	(:action DROP_BALL7_ROOMB_RIGHT
		:parameters ()
		:precondition
		(and
			( AT-ROBBY_ROOMB )
			( CARRY_BALL7_RIGHT )
		)
		:effect
		(and
			
			( AT_BALL7_ROOMB )
			( FREE_RIGHT )
			(not ( CARRY_BALL7_RIGHT ))
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
	(:action PICK_BALL18_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMA )
			( AT_BALL18_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL18_LEFT )
			(not ( AT_BALL18_ROOMA ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL18_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMA )
			( AT_BALL18_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL18_RIGHT )
			(not ( AT_BALL18_ROOMA ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL17_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMA )
			( AT_BALL17_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL17_LEFT )
			(not ( AT_BALL17_ROOMA ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL17_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMA )
			( AT_BALL17_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL17_RIGHT )
			(not ( AT_BALL17_ROOMA ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL16_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMA )
			( AT_BALL16_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL16_LEFT )
			(not ( AT_BALL16_ROOMA ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL16_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMA )
			( AT_BALL16_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL16_RIGHT )
			(not ( AT_BALL16_ROOMA ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL15_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMA )
			( AT_BALL15_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL15_LEFT )
			(not ( AT_BALL15_ROOMA ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL15_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMA )
			( AT_BALL15_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL15_RIGHT )
			(not ( AT_BALL15_ROOMA ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL14_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMA )
			( AT_BALL14_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL14_LEFT )
			(not ( AT_BALL14_ROOMA ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL14_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMA )
			( AT_BALL14_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL14_RIGHT )
			(not ( AT_BALL14_ROOMA ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL13_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMA )
			( AT_BALL13_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL13_LEFT )
			(not ( AT_BALL13_ROOMA ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL13_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMA )
			( AT_BALL13_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL13_RIGHT )
			(not ( AT_BALL13_ROOMA ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL12_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMA )
			( AT_BALL12_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL12_LEFT )
			(not ( AT_BALL12_ROOMA ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL12_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMA )
			( AT_BALL12_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL12_RIGHT )
			(not ( AT_BALL12_ROOMA ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL11_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMA )
			( AT_BALL11_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL11_LEFT )
			(not ( AT_BALL11_ROOMA ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL11_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMA )
			( AT_BALL11_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL11_RIGHT )
			(not ( AT_BALL11_ROOMA ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL10_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMA )
			( AT_BALL10_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL10_LEFT )
			(not ( AT_BALL10_ROOMA ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL10_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMA )
			( AT_BALL10_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL10_RIGHT )
			(not ( AT_BALL10_ROOMA ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL9_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMA )
			( AT_BALL9_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL9_LEFT )
			(not ( AT_BALL9_ROOMA ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL9_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMA )
			( AT_BALL9_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL9_RIGHT )
			(not ( AT_BALL9_ROOMA ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL8_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMA )
			( AT_BALL8_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL8_LEFT )
			(not ( AT_BALL8_ROOMA ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL8_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMA )
			( AT_BALL8_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL8_RIGHT )
			(not ( AT_BALL8_ROOMA ))
			(not ( FREE_RIGHT ))
		)
	)
	(:action PICK_BALL7_ROOMA_LEFT
		:parameters ()
		:precondition
		(and
			( FREE_LEFT )
			( AT-ROBBY_ROOMA )
			( AT_BALL7_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL7_LEFT )
			(not ( AT_BALL7_ROOMA ))
			(not ( FREE_LEFT ))
		)
	)
	(:action PICK_BALL7_ROOMA_RIGHT
		:parameters ()
		:precondition
		(and
			( FREE_RIGHT )
			( AT-ROBBY_ROOMA )
			( AT_BALL7_ROOMA )
		)
		:effect
		(and
			
			( CARRY_BALL7_RIGHT )
			(not ( AT_BALL7_ROOMA ))
			(not ( FREE_RIGHT ))
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
