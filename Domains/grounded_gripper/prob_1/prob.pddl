(define
	(problem grounded-STRIPS-GRIPPER-X-1)
	(:domain grounded-GRIPPER-STRIPS)
	(:init
		
		( AT_BALL1_ROOMA )
		( AT_BALL2_ROOMA )
		( AT_BALL3_ROOMA )
		( AT_BALL4_ROOMA )
		( FREE_RIGHT )
		( FREE_LEFT )
		( AT-ROBBY_ROOMA )
		
	)
	(:goal
		(and 
		( AT_BALL1_ROOMB )
		( AT_BALL2_ROOMB )
		( AT_BALL3_ROOMB )
		( AT_BALL4_ROOMB )
		
		)
	)
	

)
