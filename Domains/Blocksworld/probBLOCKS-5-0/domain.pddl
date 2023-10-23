(define
	(domain grounded-BLOCKS)
	(:requirements :strips :action-costs)
	(:predicates
		( HOLDING_D )
		( ON_D_C )
		( HOLDING_C )
		( CLEAR_E )
		( ONTABLE_C )
		( ON_C_D )
		( ON_D_E )
		( HOLDING_E )
		( CLEAR_B )
		( ONTABLE_E )
		( ON_E_C )
		( ON_E_D )
		( ON_C_B )
		( ON_D_B )
		( HOLDING_B )
		( CLEAR_A )
		( HOLDING_A )
		( ONTABLE_B )
		( ON_B_E )
		( ON_B_C )
		( ON_B_D )
		( ON_E_A )
		( ON_A_B )
		( ON_A_E )
		( ON_A_C )
		( ON_A_D )
		( ON_C_A )
		( ON_D_A )
		( HANDEMPTY )
		( CLEAR_D )
		( CLEAR_C )
		( ONTABLE_A )
		( ON_B_A )
		( ON_E_B )
		( ON_C_E )
		( ONTABLE_D )
		
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
	(:action UNSTACK_A_E
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_A )
			( ON_A_E )
		)
		:effect
		(and
			
			( HOLDING_A )
			( CLEAR_E )
			(not ( CLEAR_A ))
			(not ( HANDEMPTY ))
			(not ( ON_A_E ))
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
	(:action UNSTACK_E_A
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_E )
			( ON_E_A )
		)
		:effect
		(and
			
			( HOLDING_E )
			( CLEAR_A )
			(not ( CLEAR_E ))
			(not ( HANDEMPTY ))
			(not ( ON_E_A ))
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
	(:action UNSTACK_B_E
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_B )
			( ON_B_E )
		)
		:effect
		(and
			
			( HOLDING_B )
			( CLEAR_E )
			(not ( CLEAR_B ))
			(not ( HANDEMPTY ))
			(not ( ON_B_E ))
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
	(:action STACK_A_E
		:parameters ()
		:precondition
		(and
			( CLEAR_E )
			( HOLDING_A )
		)
		:effect
		(and
			
			( CLEAR_A )
			( HANDEMPTY )
			( ON_A_E )
			(not ( HOLDING_A ))
			(not ( CLEAR_E ))
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
	(:action STACK_E_A
		:parameters ()
		:precondition
		(and
			( CLEAR_A )
			( HOLDING_E )
		)
		:effect
		(and
			
			( CLEAR_E )
			( HANDEMPTY )
			( ON_E_A )
			(not ( HOLDING_E ))
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
	(:action STACK_B_E
		:parameters ()
		:precondition
		(and
			( CLEAR_E )
			( HOLDING_B )
		)
		:effect
		(and
			
			( CLEAR_B )
			( HANDEMPTY )
			( ON_B_E )
			(not ( HOLDING_B ))
			(not ( CLEAR_E ))
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
	(:action PICKUP_E
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( ONTABLE_E )
			( CLEAR_E )
		)
		:effect
		(and
			
			( HOLDING_E )
			(not ( ONTABLE_E ))
			(not ( CLEAR_E ))
			(not ( HANDEMPTY ))
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
	(:action UNSTACK_E_D
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_E )
			( ON_E_D )
		)
		:effect
		(and
			
			( HOLDING_E )
			( CLEAR_D )
			(not ( CLEAR_E ))
			(not ( HANDEMPTY ))
			(not ( ON_E_D ))
		)
	)
	(:action UNSTACK_E_C
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_E )
			( ON_E_C )
		)
		:effect
		(and
			
			( HOLDING_E )
			( CLEAR_C )
			(not ( CLEAR_E ))
			(not ( HANDEMPTY ))
			(not ( ON_E_C ))
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
	(:action STACK_E_D
		:parameters ()
		:precondition
		(and
			( CLEAR_D )
			( HOLDING_E )
		)
		:effect
		(and
			
			( CLEAR_E )
			( HANDEMPTY )
			( ON_E_D )
			(not ( HOLDING_E ))
			(not ( CLEAR_D ))
		)
	)
	(:action STACK_E_C
		:parameters ()
		:precondition
		(and
			( CLEAR_C )
			( HOLDING_E )
		)
		:effect
		(and
			
			( CLEAR_E )
			( HANDEMPTY )
			( ON_E_C )
			(not ( HOLDING_E ))
			(not ( CLEAR_C ))
		)
	)
	(:action STACK_E_B
		:parameters ()
		:precondition
		(and
			( CLEAR_B )
			( HOLDING_E )
		)
		:effect
		(and
			
			( CLEAR_E )
			( HANDEMPTY )
			( ON_E_B )
			(not ( HOLDING_E ))
			(not ( CLEAR_B ))
		)
	)
	(:action PUTDOWN_E
		:parameters ()
		:precondition
		(and
			( HOLDING_E )
		)
		:effect
		(and
			
			( CLEAR_E )
			( HANDEMPTY )
			( ONTABLE_E )
			(not ( HOLDING_E ))
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
	(:action UNSTACK_D_E
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_D )
			( ON_D_E )
		)
		:effect
		(and
			
			( HOLDING_D )
			( CLEAR_E )
			(not ( CLEAR_D ))
			(not ( HANDEMPTY ))
			(not ( ON_D_E ))
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
	(:action UNSTACK_E_B
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_E )
			( ON_E_B )
		)
		:effect
		(and
			
			( HOLDING_E )
			( CLEAR_B )
			(not ( CLEAR_E ))
			(not ( HANDEMPTY ))
			(not ( ON_E_B ))
		)
	)
	(:action STACK_D_E
		:parameters ()
		:precondition
		(and
			( CLEAR_E )
			( HOLDING_D )
		)
		:effect
		(and
			
			( CLEAR_D )
			( HANDEMPTY )
			( ON_D_E )
			(not ( HOLDING_D ))
			(not ( CLEAR_E ))
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
	(:action STACK_C_E
		:parameters ()
		:precondition
		(and
			( CLEAR_E )
			( HOLDING_C )
		)
		:effect
		(and
			
			( CLEAR_C )
			( HANDEMPTY )
			( ON_C_E )
			(not ( HOLDING_C ))
			(not ( CLEAR_E ))
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
	(:action UNSTACK_C_E
		:parameters ()
		:precondition
		(and
			( HANDEMPTY )
			( CLEAR_C )
			( ON_C_E )
		)
		:effect
		(and
			
			( HOLDING_C )
			( CLEAR_E )
			(not ( CLEAR_C ))
			(not ( HANDEMPTY ))
			(not ( ON_C_E ))
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
