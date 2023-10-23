(define
	(problem grounded-BLOCKS-4-0)
	(:domain grounded-BLOCKS)
	(:init
		( HANDEMPTY )
		( ONTABLE_D )
		( ONTABLE_B )
		( ONTABLE_A )
		( ONTABLE_C )
		( CLEAR_D )
		( CLEAR_B )
		( CLEAR_A )
		( CLEAR_C )
	)
	(:goal
		(and 
		( ON_B_A )
		( ON_C_B )
		( ON_D_C )
		)
	)

)
