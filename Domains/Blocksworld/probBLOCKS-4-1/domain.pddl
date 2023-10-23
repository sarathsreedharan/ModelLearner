(define
	(domain grounded-BLOCKS)
	(:requirements :strips :action-costs)
	(:predicates
		( HOLDING_D )
		( HOLDING_B )
		( HOLDING_A )
		( HOLDING_C )
		( ON_D_B )
		( ON_D_A )
		( ON_D_C )
		( ON_B_D )
		( ON_B_A )
		( ON_B_C )
		( ON_A_D )
		( ON_A_B )
		( ON_A_C )
		( ON_C_D )
		( ON_C_B )
		( ON_C_A )
		( CLEAR_C )
		( HANDEMPTY )
		( CLEAR_A )
		( CLEAR_B )
		( CLEAR_D )
		( ONTABLE_C )
		( ONTABLE_A )
		( ONTABLE_B )
		( ONTABLE_D )
		
	) 
	
	(:action UNSTACK_C_A
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_C )
			( ON_C_A )
		)
		:effect
		(and
			
			( HOLDING_C )
			( CLEAR_A )
			(not ( CLEAR_C ))
			(not ( HANDEMPTY ))
			(not ( ON_C_A ))
		)
	)
	(:action UNSTACK_C_B
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_C )
			( ON_C_B )
		)
		:effect
		(and
			
			( HOLDING_C )
			( CLEAR_B )
			(not ( CLEAR_C ))
			(not ( HANDEMPTY ))
			(not ( ON_C_B ))
		)
	)
	(:action UNSTACK_C_D
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_C )
			( ON_C_D )
		)
		:effect
		(and
			
			( HOLDING_C )
			( CLEAR_D )
			(not ( CLEAR_C ))
			(not ( HANDEMPTY ))
			(not ( ON_C_D ))
		)
	)
	(:action UNSTACK_A_C
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_A )
			( ON_A_C )
		)
		:effect
		(and
			
			( HOLDING_A )
			( CLEAR_C )
			(not ( CLEAR_A ))
			(not ( HANDEMPTY ))
			(not ( ON_A_C ))
		)
	)
	(:action UNSTACK_A_B
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_A )
			( ON_A_B )
		)
		:effect
		(and
			
			( HOLDING_A )
			( CLEAR_B )
			(not ( CLEAR_A ))
			(not ( HANDEMPTY ))
			(not ( ON_A_B ))
		)
	)
	(:action UNSTACK_A_D
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_A )
			( ON_A_D )
		)
		:effect
		(and
			
			( HOLDING_A )
			( CLEAR_D )
			(not ( CLEAR_A ))
			(not ( HANDEMPTY ))
			(not ( ON_A_D ))
		)
	)
	(:action UNSTACK_B_C
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_B )
			( ON_B_C )
		)
		:effect
		(and
			
			( HOLDING_B )
			( CLEAR_C )
			(not ( CLEAR_B ))
			(not ( HANDEMPTY ))
			(not ( ON_B_C ))
		)
	)
	(:action UNSTACK_B_A
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_B )
			( ON_B_A )
		)
		:effect
		(and
			
			( HOLDING_B )
			( CLEAR_A )
			(not ( CLEAR_B ))
			(not ( HANDEMPTY ))
			(not ( ON_B_A ))
		)
	)
	(:action UNSTACK_B_D
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_B )
			( ON_B_D )
		)
		:effect
		(and
			
			( HOLDING_B )
			( CLEAR_D )
			(not ( CLEAR_B ))
			(not ( HANDEMPTY ))
			(not ( ON_B_D ))
		)
	)
	(:action UNSTACK_D_C
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_D )
			( ON_D_C )
		)
		:effect
		(and
			
			( HOLDING_D )
			( CLEAR_C )
			(not ( CLEAR_D ))
			(not ( HANDEMPTY ))
			(not ( ON_D_C ))
		)
	)
	(:action UNSTACK_D_A
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_D )
			( ON_D_A )
		)
		:effect
		(and
			
			( HOLDING_D )
			( CLEAR_A )
			(not ( CLEAR_D ))
			(not ( HANDEMPTY ))
			(not ( ON_D_A ))
		)
	)
	(:action UNSTACK_D_B
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_D )
			( ON_D_B )
		)
		:effect
		(and
			
			( HOLDING_D )
			( CLEAR_B )
			(not ( CLEAR_D ))
			(not ( HANDEMPTY ))
			(not ( ON_D_B ))
		)
	)
	(:action STACK_C_A
		:parameters ()
		:precondition
		(and
			( CLEAR_A )
			( HOLDING_C )
		)
		:effect
		(and
			
			( CLEAR_C )
			( HANDEMPTY )
			( ON_C_A )
			(not ( HOLDING_C ))
			(not ( CLEAR_A ))
		)
	)
	(:action STACK_C_B
		:parameters ()
		:precondition
		(and
			( CLEAR_B )
			( HOLDING_C )
		)
		:effect
		(and
			
			( CLEAR_C )
			( HANDEMPTY )
			( ON_C_B )
			(not ( HOLDING_C ))
			(not ( CLEAR_B ))
		)
	)
	(:action STACK_C_D
		:parameters ()
		:precondition
		(and
			( CLEAR_D )
			( HOLDING_C )
		)
		:effect
		(and
			
			( CLEAR_C )
			( HANDEMPTY )
			( ON_C_D )
			(not ( HOLDING_C ))
			(not ( CLEAR_D ))
		)
	)
	(:action STACK_A_C
		:parameters ()
		:precondition
		(and
			( CLEAR_C )
			( HOLDING_A )
		)
		:effect
		(and
			
			( CLEAR_A )
			( HANDEMPTY )
			( ON_A_C )
			(not ( HOLDING_A ))
			(not ( CLEAR_C ))
		)
	)
	(:action STACK_A_B
		:parameters ()
		:precondition
		(and
			( CLEAR_B )
			( HOLDING_A )
		)
		:effect
		(and
			
			( CLEAR_A )
			( HANDEMPTY )
			( ON_A_B )
			(not ( HOLDING_A ))
			(not ( CLEAR_B ))
		)
	)
	(:action STACK_A_D
		:parameters ()
		:precondition
		(and
			( CLEAR_D )
			( HOLDING_A )
		)
		:effect
		(and
			
			( CLEAR_A )
			( HANDEMPTY )
			( ON_A_D )
			(not ( HOLDING_A ))
			(not ( CLEAR_D ))
		)
	)
	(:action STACK_B_C
		:parameters ()
		:precondition
		(and
			( CLEAR_C )
			( HOLDING_B )
		)
		:effect
		(and
			
			( CLEAR_B )
			( HANDEMPTY )
			( ON_B_C )
			(not ( HOLDING_B ))
			(not ( CLEAR_C ))
		)
	)
	(:action STACK_B_A
		:parameters ()
		:precondition
		(and
			( CLEAR_A )
			( HOLDING_B )
		)
		:effect
		(and
			
			( CLEAR_B )
			( HANDEMPTY )
			( ON_B_A )
			(not ( HOLDING_B ))
			(not ( CLEAR_A ))
		)
	)
	(:action STACK_B_D
		:parameters ()
		:precondition
		(and
			( CLEAR_D )
			( HOLDING_B )
		)
		:effect
		(and
			
			( CLEAR_B )
			( HANDEMPTY )
			( ON_B_D )
			(not ( HOLDING_B ))
			(not ( CLEAR_D ))
		)
	)
	(:action STACK_D_C
		:parameters ()
		:precondition
		(and
			( CLEAR_C )
			( HOLDING_D )
		)
		:effect
		(and
			
			( CLEAR_D )
			( HANDEMPTY )
			( ON_D_C )
			(not ( HOLDING_D ))
			(not ( CLEAR_C ))
		)
	)
	(:action STACK_D_A
		:parameters ()
		:precondition
		(and
			( CLEAR_A )
			( HOLDING_D )
		)
		:effect
		(and
			
			( CLEAR_D )
			( HANDEMPTY )
			( ON_D_A )
			(not ( HOLDING_D ))
			(not ( CLEAR_A ))
		)
	)
	(:action STACK_D_B
		:parameters ()
		:precondition
		(and
			( CLEAR_B )
			( HOLDING_D )
		)
		:effect
		(and
			
			( CLEAR_D )
			( HANDEMPTY )
			( ON_D_B )
			(not ( HOLDING_D ))
			(not ( CLEAR_B ))
		)
	)
	(:action PUTDOWN_C
		:parameters ()
		:precondition
		(and
			( HOLDING_C )
		)
		:effect
		(and
			
			( CLEAR_C )
			( HANDEMPTY )
			( ONTABLE_C )
			(not ( HOLDING_C ))
		)
	)
	(:action PUTDOWN_A
		:parameters ()
		:precondition
		(and
			( HOLDING_A )
		)
		:effect
		(and
			
			( CLEAR_A )
			( HANDEMPTY )
			( ONTABLE_A )
			(not ( HOLDING_A ))
		)
	)
	(:action PUTDOWN_B
		:parameters ()
		:precondition
		(and
			( HOLDING_B )
		)
		:effect
		(and
			
			( CLEAR_B )
			( HANDEMPTY )
			( ONTABLE_B )
			(not ( HOLDING_B ))
		)
	)
	(:action PUTDOWN_D
		:parameters ()
		:precondition
		(and
			( HOLDING_D )
		)
		:effect
		(and
			
			( CLEAR_D )
			( HANDEMPTY )
			( ONTABLE_D )
			(not ( HOLDING_D ))
		)
	)
	(:action PICKUP_C
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( ONTABLE_C )
			( CLEAR_C )
		)
		:effect
		(and
			
			( HOLDING_C )
			(not ( ONTABLE_C ))
			(not ( CLEAR_C ))
			(not ( HANDEMPTY ))
		)
	)
	(:action PICKUP_A
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( ONTABLE_A )
			( CLEAR_A )
		)
		:effect
		(and
			
			( HOLDING_A )
			(not ( ONTABLE_A ))
			(not ( CLEAR_A ))
			(not ( HANDEMPTY ))
		)
	)
	(:action PICKUP_B
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( ONTABLE_B )
			( CLEAR_B )
		)
		:effect
		(and
			
			( HOLDING_B )
			(not ( ONTABLE_B ))
			(not ( CLEAR_B ))
			(not ( HANDEMPTY ))
		)
	)
	(:action PICKUP_D
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( ONTABLE_D )
			( CLEAR_D )
		)
		:effect
		(and
			
			( HOLDING_D )
			(not ( ONTABLE_D ))
			(not ( CLEAR_D ))
			(not ( HANDEMPTY ))
		)
	)

)
