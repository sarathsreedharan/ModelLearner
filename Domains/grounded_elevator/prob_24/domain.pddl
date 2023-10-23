(define
	(domain grounded-MICONIC)
	(:requirements :strips :action-costs)
	(:predicates
		( LIFT-AT_F9 )
		( LIFT-AT_F8 )
		( LIFT-AT_F7 )
		( LIFT-AT_F6 )
		( LIFT-AT_F5 )
		( LIFT-AT_F4 )
		( LIFT-AT_F3 )
		( LIFT-AT_F2 )
		( LIFT-AT_F1 )
		( BOARDED_P4 )
		( BOARDED_P3 )
		( BOARDED_P2 )
		( BOARDED_P1 )
		( BOARDED_P0 )
		( SERVED_P4 )
		( SERVED_P3 )
		( SERVED_P2 )
		( SERVED_P1 )
		( SERVED_P0 )
		( LIFT-AT_F0 )
		
		
	) 
	
	(:action UP_F1_F2
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F1 )
		)
		:effect
		(and
			
			( LIFT-AT_F2 )
			(not ( LIFT-AT_F1 ))
		)
	)
	(:action UP_F1_F3
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F1 )
		)
		:effect
		(and
			
			( LIFT-AT_F3 )
			(not ( LIFT-AT_F1 ))
		)
	)
	(:action UP_F1_F4
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F1 )
		)
		:effect
		(and
			
			( LIFT-AT_F4 )
			(not ( LIFT-AT_F1 ))
		)
	)
	(:action UP_F1_F5
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F1 )
		)
		:effect
		(and
			
			( LIFT-AT_F5 )
			(not ( LIFT-AT_F1 ))
		)
	)
	(:action UP_F1_F6
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F1 )
		)
		:effect
		(and
			
			( LIFT-AT_F6 )
			(not ( LIFT-AT_F1 ))
		)
	)
	(:action UP_F1_F7
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F1 )
		)
		:effect
		(and
			
			( LIFT-AT_F7 )
			(not ( LIFT-AT_F1 ))
		)
	)
	(:action UP_F1_F8
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F1 )
		)
		:effect
		(and
			
			( LIFT-AT_F8 )
			(not ( LIFT-AT_F1 ))
		)
	)
	(:action UP_F1_F9
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F1 )
		)
		:effect
		(and
			
			( LIFT-AT_F9 )
			(not ( LIFT-AT_F1 ))
		)
	)
	(:action UP_F2_F3
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F2 )
		)
		:effect
		(and
			
			( LIFT-AT_F3 )
			(not ( LIFT-AT_F2 ))
		)
	)
	(:action UP_F2_F4
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F2 )
		)
		:effect
		(and
			
			( LIFT-AT_F4 )
			(not ( LIFT-AT_F2 ))
		)
	)
	(:action UP_F2_F5
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F2 )
		)
		:effect
		(and
			
			( LIFT-AT_F5 )
			(not ( LIFT-AT_F2 ))
		)
	)
	(:action UP_F2_F6
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F2 )
		)
		:effect
		(and
			
			( LIFT-AT_F6 )
			(not ( LIFT-AT_F2 ))
		)
	)
	(:action UP_F2_F7
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F2 )
		)
		:effect
		(and
			
			( LIFT-AT_F7 )
			(not ( LIFT-AT_F2 ))
		)
	)
	(:action UP_F2_F8
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F2 )
		)
		:effect
		(and
			
			( LIFT-AT_F8 )
			(not ( LIFT-AT_F2 ))
		)
	)
	(:action UP_F2_F9
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F2 )
		)
		:effect
		(and
			
			( LIFT-AT_F9 )
			(not ( LIFT-AT_F2 ))
		)
	)
	(:action UP_F3_F4
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F3 )
		)
		:effect
		(and
			
			( LIFT-AT_F4 )
			(not ( LIFT-AT_F3 ))
		)
	)
	(:action UP_F3_F5
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F3 )
		)
		:effect
		(and
			
			( LIFT-AT_F5 )
			(not ( LIFT-AT_F3 ))
		)
	)
	(:action UP_F3_F6
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F3 )
		)
		:effect
		(and
			
			( LIFT-AT_F6 )
			(not ( LIFT-AT_F3 ))
		)
	)
	(:action UP_F3_F7
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F3 )
		)
		:effect
		(and
			
			( LIFT-AT_F7 )
			(not ( LIFT-AT_F3 ))
		)
	)
	(:action UP_F3_F8
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F3 )
		)
		:effect
		(and
			
			( LIFT-AT_F8 )
			(not ( LIFT-AT_F3 ))
		)
	)
	(:action UP_F3_F9
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F3 )
		)
		:effect
		(and
			
			( LIFT-AT_F9 )
			(not ( LIFT-AT_F3 ))
		)
	)
	(:action UP_F4_F5
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F4 )
		)
		:effect
		(and
			
			( LIFT-AT_F5 )
			(not ( LIFT-AT_F4 ))
		)
	)
	(:action UP_F4_F6
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F4 )
		)
		:effect
		(and
			
			( LIFT-AT_F6 )
			(not ( LIFT-AT_F4 ))
		)
	)
	(:action UP_F4_F7
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F4 )
		)
		:effect
		(and
			
			( LIFT-AT_F7 )
			(not ( LIFT-AT_F4 ))
		)
	)
	(:action UP_F4_F8
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F4 )
		)
		:effect
		(and
			
			( LIFT-AT_F8 )
			(not ( LIFT-AT_F4 ))
		)
	)
	(:action UP_F4_F9
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F4 )
		)
		:effect
		(and
			
			( LIFT-AT_F9 )
			(not ( LIFT-AT_F4 ))
		)
	)
	(:action UP_F5_F6
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F5 )
		)
		:effect
		(and
			
			( LIFT-AT_F6 )
			(not ( LIFT-AT_F5 ))
		)
	)
	(:action UP_F5_F7
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F5 )
		)
		:effect
		(and
			
			( LIFT-AT_F7 )
			(not ( LIFT-AT_F5 ))
		)
	)
	(:action UP_F5_F8
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F5 )
		)
		:effect
		(and
			
			( LIFT-AT_F8 )
			(not ( LIFT-AT_F5 ))
		)
	)
	(:action UP_F5_F9
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F5 )
		)
		:effect
		(and
			
			( LIFT-AT_F9 )
			(not ( LIFT-AT_F5 ))
		)
	)
	(:action UP_F6_F7
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F6 )
		)
		:effect
		(and
			
			( LIFT-AT_F7 )
			(not ( LIFT-AT_F6 ))
		)
	)
	(:action UP_F6_F8
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F6 )
		)
		:effect
		(and
			
			( LIFT-AT_F8 )
			(not ( LIFT-AT_F6 ))
		)
	)
	(:action UP_F6_F9
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F6 )
		)
		:effect
		(and
			
			( LIFT-AT_F9 )
			(not ( LIFT-AT_F6 ))
		)
	)
	(:action UP_F7_F8
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F7 )
		)
		:effect
		(and
			
			( LIFT-AT_F8 )
			(not ( LIFT-AT_F7 ))
		)
	)
	(:action UP_F7_F9
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F7 )
		)
		:effect
		(and
			
			( LIFT-AT_F9 )
			(not ( LIFT-AT_F7 ))
		)
	)
	(:action UP_F8_F9
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F8 )
		)
		:effect
		(and
			
			( LIFT-AT_F9 )
			(not ( LIFT-AT_F8 ))
		)
	)
	(:action DEPART_F5_P0
		:parameters ()
		:precondition
		(and
			( BOARDED_P0 )
			( LIFT-AT_F5 )
		)
		:effect
		(and
			
			( SERVED_P0 )
			(not ( BOARDED_P0 ))
		)
	)
	(:action DEPART_F9_P1
		:parameters ()
		:precondition
		(and
			( BOARDED_P1 )
			( LIFT-AT_F9 )
		)
		:effect
		(and
			
			( SERVED_P1 )
			(not ( BOARDED_P1 ))
		)
	)
	(:action DEPART_F8_P2
		:parameters ()
		:precondition
		(and
			( BOARDED_P2 )
			( LIFT-AT_F8 )
		)
		:effect
		(and
			
			( SERVED_P2 )
			(not ( BOARDED_P2 ))
		)
	)
	(:action DEPART_F8_P3
		:parameters ()
		:precondition
		(and
			( BOARDED_P3 )
			( LIFT-AT_F8 )
		)
		:effect
		(and
			
			( SERVED_P3 )
			(not ( BOARDED_P3 ))
		)
	)
	(:action DEPART_F2_P4
		:parameters ()
		:precondition
		(and
			( BOARDED_P4 )
			( LIFT-AT_F2 )
		)
		:effect
		(and
			
			( SERVED_P4 )
			(not ( BOARDED_P4 ))
		)
	)
	(:action BOARD_F3_P0
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F3 )
		)
		:effect
		(and
			
			( BOARDED_P0 )
		)
	)
	(:action BOARD_F6_P1
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F6 )
		)
		:effect
		(and
			
			( BOARDED_P1 )
		)
	)
	(:action BOARD_F9_P2
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F9 )
		)
		:effect
		(and
			
			( BOARDED_P2 )
		)
	)
	(:action BOARD_F5_P3
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F5 )
		)
		:effect
		(and
			
			( BOARDED_P3 )
		)
	)
	(:action BOARD_F1_P4
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F1 )
		)
		:effect
		(and
			
			( BOARDED_P4 )
		)
	)
	(:action DOWN_F1_F0
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F1 )
		)
		:effect
		(and
			
			( LIFT-AT_F0 )
			(not ( LIFT-AT_F1 ))
		)
	)
	(:action DOWN_F2_F0
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F2 )
		)
		:effect
		(and
			
			( LIFT-AT_F0 )
			(not ( LIFT-AT_F2 ))
		)
	)
	(:action DOWN_F3_F0
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F3 )
		)
		:effect
		(and
			
			( LIFT-AT_F0 )
			(not ( LIFT-AT_F3 ))
		)
	)
	(:action DOWN_F4_F0
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F4 )
		)
		:effect
		(and
			
			( LIFT-AT_F0 )
			(not ( LIFT-AT_F4 ))
		)
	)
	(:action DOWN_F5_F0
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F5 )
		)
		:effect
		(and
			
			( LIFT-AT_F0 )
			(not ( LIFT-AT_F5 ))
		)
	)
	(:action DOWN_F6_F0
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F6 )
		)
		:effect
		(and
			
			( LIFT-AT_F0 )
			(not ( LIFT-AT_F6 ))
		)
	)
	(:action DOWN_F7_F0
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F7 )
		)
		:effect
		(and
			
			( LIFT-AT_F0 )
			(not ( LIFT-AT_F7 ))
		)
	)
	(:action DOWN_F8_F0
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F8 )
		)
		:effect
		(and
			
			( LIFT-AT_F0 )
			(not ( LIFT-AT_F8 ))
		)
	)
	(:action DOWN_F9_F0
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F9 )
		)
		:effect
		(and
			
			( LIFT-AT_F0 )
			(not ( LIFT-AT_F9 ))
		)
	)
	(:action DOWN_F2_F1
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F2 )
		)
		:effect
		(and
			
			( LIFT-AT_F1 )
			(not ( LIFT-AT_F2 ))
		)
	)
	(:action DOWN_F3_F1
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F3 )
		)
		:effect
		(and
			
			( LIFT-AT_F1 )
			(not ( LIFT-AT_F3 ))
		)
	)
	(:action DOWN_F4_F1
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F4 )
		)
		:effect
		(and
			
			( LIFT-AT_F1 )
			(not ( LIFT-AT_F4 ))
		)
	)
	(:action DOWN_F5_F1
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F5 )
		)
		:effect
		(and
			
			( LIFT-AT_F1 )
			(not ( LIFT-AT_F5 ))
		)
	)
	(:action DOWN_F6_F1
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F6 )
		)
		:effect
		(and
			
			( LIFT-AT_F1 )
			(not ( LIFT-AT_F6 ))
		)
	)
	(:action DOWN_F7_F1
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F7 )
		)
		:effect
		(and
			
			( LIFT-AT_F1 )
			(not ( LIFT-AT_F7 ))
		)
	)
	(:action DOWN_F8_F1
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F8 )
		)
		:effect
		(and
			
			( LIFT-AT_F1 )
			(not ( LIFT-AT_F8 ))
		)
	)
	(:action DOWN_F9_F1
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F9 )
		)
		:effect
		(and
			
			( LIFT-AT_F1 )
			(not ( LIFT-AT_F9 ))
		)
	)
	(:action DOWN_F3_F2
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F3 )
		)
		:effect
		(and
			
			( LIFT-AT_F2 )
			(not ( LIFT-AT_F3 ))
		)
	)
	(:action DOWN_F4_F2
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F4 )
		)
		:effect
		(and
			
			( LIFT-AT_F2 )
			(not ( LIFT-AT_F4 ))
		)
	)
	(:action DOWN_F5_F2
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F5 )
		)
		:effect
		(and
			
			( LIFT-AT_F2 )
			(not ( LIFT-AT_F5 ))
		)
	)
	(:action DOWN_F6_F2
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F6 )
		)
		:effect
		(and
			
			( LIFT-AT_F2 )
			(not ( LIFT-AT_F6 ))
		)
	)
	(:action DOWN_F7_F2
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F7 )
		)
		:effect
		(and
			
			( LIFT-AT_F2 )
			(not ( LIFT-AT_F7 ))
		)
	)
	(:action DOWN_F8_F2
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F8 )
		)
		:effect
		(and
			
			( LIFT-AT_F2 )
			(not ( LIFT-AT_F8 ))
		)
	)
	(:action DOWN_F9_F2
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F9 )
		)
		:effect
		(and
			
			( LIFT-AT_F2 )
			(not ( LIFT-AT_F9 ))
		)
	)
	(:action DOWN_F4_F3
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F4 )
		)
		:effect
		(and
			
			( LIFT-AT_F3 )
			(not ( LIFT-AT_F4 ))
		)
	)
	(:action DOWN_F5_F3
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F5 )
		)
		:effect
		(and
			
			( LIFT-AT_F3 )
			(not ( LIFT-AT_F5 ))
		)
	)
	(:action DOWN_F6_F3
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F6 )
		)
		:effect
		(and
			
			( LIFT-AT_F3 )
			(not ( LIFT-AT_F6 ))
		)
	)
	(:action DOWN_F7_F3
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F7 )
		)
		:effect
		(and
			
			( LIFT-AT_F3 )
			(not ( LIFT-AT_F7 ))
		)
	)
	(:action DOWN_F8_F3
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F8 )
		)
		:effect
		(and
			
			( LIFT-AT_F3 )
			(not ( LIFT-AT_F8 ))
		)
	)
	(:action DOWN_F9_F3
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F9 )
		)
		:effect
		(and
			
			( LIFT-AT_F3 )
			(not ( LIFT-AT_F9 ))
		)
	)
	(:action DOWN_F5_F4
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F5 )
		)
		:effect
		(and
			
			( LIFT-AT_F4 )
			(not ( LIFT-AT_F5 ))
		)
	)
	(:action DOWN_F6_F4
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F6 )
		)
		:effect
		(and
			
			( LIFT-AT_F4 )
			(not ( LIFT-AT_F6 ))
		)
	)
	(:action DOWN_F7_F4
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F7 )
		)
		:effect
		(and
			
			( LIFT-AT_F4 )
			(not ( LIFT-AT_F7 ))
		)
	)
	(:action DOWN_F8_F4
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F8 )
		)
		:effect
		(and
			
			( LIFT-AT_F4 )
			(not ( LIFT-AT_F8 ))
		)
	)
	(:action DOWN_F9_F4
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F9 )
		)
		:effect
		(and
			
			( LIFT-AT_F4 )
			(not ( LIFT-AT_F9 ))
		)
	)
	(:action DOWN_F6_F5
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F6 )
		)
		:effect
		(and
			
			( LIFT-AT_F5 )
			(not ( LIFT-AT_F6 ))
		)
	)
	(:action DOWN_F7_F5
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F7 )
		)
		:effect
		(and
			
			( LIFT-AT_F5 )
			(not ( LIFT-AT_F7 ))
		)
	)
	(:action DOWN_F8_F5
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F8 )
		)
		:effect
		(and
			
			( LIFT-AT_F5 )
			(not ( LIFT-AT_F8 ))
		)
	)
	(:action DOWN_F9_F5
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F9 )
		)
		:effect
		(and
			
			( LIFT-AT_F5 )
			(not ( LIFT-AT_F9 ))
		)
	)
	(:action DOWN_F7_F6
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F7 )
		)
		:effect
		(and
			
			( LIFT-AT_F6 )
			(not ( LIFT-AT_F7 ))
		)
	)
	(:action DOWN_F8_F6
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F8 )
		)
		:effect
		(and
			
			( LIFT-AT_F6 )
			(not ( LIFT-AT_F8 ))
		)
	)
	(:action DOWN_F9_F6
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F9 )
		)
		:effect
		(and
			
			( LIFT-AT_F6 )
			(not ( LIFT-AT_F9 ))
		)
	)
	(:action DOWN_F8_F7
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F8 )
		)
		:effect
		(and
			
			( LIFT-AT_F7 )
			(not ( LIFT-AT_F8 ))
		)
	)
	(:action DOWN_F9_F7
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F9 )
		)
		:effect
		(and
			
			( LIFT-AT_F7 )
			(not ( LIFT-AT_F9 ))
		)
	)
	(:action DOWN_F9_F8
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F9 )
		)
		:effect
		(and
			
			( LIFT-AT_F8 )
			(not ( LIFT-AT_F9 ))
		)
	)
	(:action UP_F0_F1
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F0 )
		)
		:effect
		(and
			
			( LIFT-AT_F1 )
			(not ( LIFT-AT_F0 ))
		)
	)
	(:action UP_F0_F2
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F0 )
		)
		:effect
		(and
			
			( LIFT-AT_F2 )
			(not ( LIFT-AT_F0 ))
		)
	)
	(:action UP_F0_F3
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F0 )
		)
		:effect
		(and
			
			( LIFT-AT_F3 )
			(not ( LIFT-AT_F0 ))
		)
	)
	(:action UP_F0_F4
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F0 )
		)
		:effect
		(and
			
			( LIFT-AT_F4 )
			(not ( LIFT-AT_F0 ))
		)
	)
	(:action UP_F0_F5
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F0 )
		)
		:effect
		(and
			
			( LIFT-AT_F5 )
			(not ( LIFT-AT_F0 ))
		)
	)
	(:action UP_F0_F6
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F0 )
		)
		:effect
		(and
			
			( LIFT-AT_F6 )
			(not ( LIFT-AT_F0 ))
		)
	)
	(:action UP_F0_F7
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F0 )
		)
		:effect
		(and
			
			( LIFT-AT_F7 )
			(not ( LIFT-AT_F0 ))
		)
	)
	(:action UP_F0_F8
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F0 )
		)
		:effect
		(and
			
			( LIFT-AT_F8 )
			(not ( LIFT-AT_F0 ))
		)
	)
	(:action UP_F0_F9
		:parameters ()
		:precondition
		(and
			( LIFT-AT_F0 )
		)
		:effect
		(and
			
			( LIFT-AT_F9 )
			(not ( LIFT-AT_F0 ))
		)
	)

)
