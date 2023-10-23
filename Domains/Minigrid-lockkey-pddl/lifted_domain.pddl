(define (domain minigrid)
(:requirements :strips :typing)
(:types xpos ypos color item - object
    carriable door - item
	key ball - carriable)

(:predicates (at ?x - xpos ?y - ypos)
             (is-clear ?x - xpos ?y - ypos)
    	     (next-x-left ?x1 - xpos ?x2 - xpos)
    	     (next-x-right ?x1 - xpos ?x2 - xpos)
    	     (next-y-up ?y1 - ypos ?y2 - ypos)
    	     (next-y-down ?y1 - ypos ?y2 - ypos)
             (door-at ?d - door ?x - xpos ?y - ypos)
             (has-color ?i - item ?c - color)
             (carriable-at ?i - carriable ?x - xpos ?y - ypos)
             (is-carrying ?i - carriable)
             (is-locked ?d - door)
             (is-closed ?d - door)
             (storage-empty)
             )

(:action forward-left
 :parameters (?x - xpos ?y - ypos ?nx - xpos)
 :precondition (and (at ?x ?y) (next-x-left ?x ?nx) (is-clear ?nx ?y))
 :effect (and (not (at ?x ?y)) (at ?nx ?y)))


(:action forward-right
 :parameters (?x - xpos ?y - ypos ?nx - xpos)
 :precondition (and (at ?x ?y) (next-x-right ?x ?nx) (is-clear ?nx ?y))
 :effect (and (not (at ?x ?y)) (at ?nx ?y)))


(:action forward-up
 :parameters (?x - xpos ?y - ypos ?ny - ypos)
 :precondition (and (at ?x ?y) (next-y-up ?y ?ny) (is-clear ?x ?ny))
 :effect (and (not (at ?x ?y)) (at ?x ?ny)))


(:action forward-down
 :parameters (?x - xpos ?y - ypos ?ny - ypos)
 :precondition (and (at ?x ?y) (next-y-down ?y ?ny) (is-clear ?x ?ny))
 :effect (and (not (at ?x ?y)) (at ?x ?ny)))

(:action pickup-left
 :parameters (?i - carriable ?x - xpos ?y - ypos ?nx - xpos)
 :precondition (and (at ?x ?y) (next-x-left ?x ?nx) (carriable-at ?i ?nx ?y) (storage-empty))
 :effect (and (not (carriable-at ?i ?nx ?y)) (not (storage-empty)) (is-carrying ?i) (is-clear ?nx ?y)))

(:action pickup-right
 :parameters (?i - carriable ?x - xpos ?y - ypos ?nx - xpos)
 :precondition (and (at ?x ?y) (next-x-right ?x ?nx) (carriable-at ?i ?nx ?y) (storage-empty))
 :effect (and (not (carriable-at ?i ?nx ?y)) (not (storage-empty)) (is-carrying ?i) (is-clear ?nx ?y)))

(:action pickup-up
 :parameters (?i - carriable ?x - xpos ?y - ypos ?ny - ypos)
 :precondition (and (at ?x ?y) (next-y-up ?y ?ny) (carriable-at ?i ?x ?ny) (storage-empty))
 :effect (and (not (carriable-at ?i ?x ?ny)) (not (storage-empty)) (is-carrying ?i) (is-clear ?x ?ny)))

(:action pickup-down
 :parameters (?i - carriable ?x - xpos ?y - ypos ?ny - ypos)
 :precondition (and (at ?x ?y) (next-y-down ?y ?ny) (carriable-at ?i ?x ?ny) (storage-empty))
 :effect (and (not (carriable-at ?i ?x ?ny)) (not (storage-empty)) (is-carrying ?i) (is-clear ?x ?ny)))

(:action drop-left
 :parameters (?i - carriable ?x - xpos ?y - ypos ?nx - xpos)
 :precondition (and (at ?x ?y) (next-x-left ?x ?nx) (is-carrying ?i) (is-clear ?nx ?y))
 :effect (and (not (is-carrying ?i)) (not (is-clear ?nx ?y)) (storage-empty) (carriable-at ?i ?nx ?y)))

(:action drop-right
 :parameters (?i - carriable ?x - xpos ?y - ypos ?nx - xpos)
 :precondition (and (at ?x ?y) (next-x-right ?x ?nx) (is-carrying ?i) (is-clear ?nx ?y))
 :effect (and (not (is-carrying ?i)) (not (is-clear ?nx ?y)) (storage-empty) (carriable-at ?i ?nx ?y)))

(:action drop-up
 :parameters (?i - carriable ?x - xpos ?y - ypos ?ny - ypos)
 :precondition (and (at ?x ?y) (next-y-up ?y ?ny) (is-carrying ?i) (is-clear ?x ?ny))
 :effect (and (not (is-carrying ?i)) (not (is-clear ?x ?ny)) (storage-empty) (carriable-at ?i ?x ?ny)))

(:action drop-down
 :parameters (?i - carriable ?x - xpos ?y - ypos ?ny - ypos)
 :precondition (and (at ?x ?y) (next-y-up ?y ?ny) (is-carrying ?i) (is-clear ?x ?ny))
 :effect (and (not (is-carrying ?i)) (not (is-clear ?x ?ny)) (storage-empty) (carriable-at ?i ?x ?ny)))

(:action toggle-left
 :parameters (?d - door ?k - key ?c - color ?x - xpos ?y - ypos ?nx - xpos)
 :precondition (and (at ?x ?y) (next-x-left ?x ?nx) (door-at ?d ?nx ?y) (is-carrying ?k) (has-color ?d ?c) (has-color ?k ?c) (is-locked ?d))
 :effect (and (not (is-locked ?d)) (is-clear ?nx ?y)))

(:action toggle-right
 :parameters (?d - door ?k - key ?c - color ?x - xpos ?y - ypos ?nx - xpos)
 :precondition (and (at ?x ?y) (next-x-right ?x ?nx) (door-at ?d ?nx ?y) (is-carrying ?k) (has-color ?d ?c) (has-color ?k ?c) (is-locked ?d))
 :effect (and (not (is-locked ?d)) (is-clear ?nx ?y)))

(:action toggle-up
 :parameters (?d - door ?k - key ?c - color  ?x - xpos ?y - ypos ?ny - ypos)
 :precondition (and (at ?x ?y) (next-y-up ?y ?ny) (door-at ?d ?x ?ny) (is-carrying ?k) (has-color ?d ?c) (has-color ?k ?c) (is-locked ?d))
 :effect (and (not (is-locked ?d)) (is-clear ?x ?ny)))

(:action toggle-down
 :parameters (?d - door ?k - key ?c - color  ?x - xpos ?y - ypos ?ny - ypos)
 :precondition (and (at ?x ?y) (next-y-down ?y ?ny) (door-at ?d ?x ?ny) (is-carrying ?k) (has-color ?d ?c) (has-color ?k ?c) (is-locked ?d))
 :effect (and (not (is-locked ?d)) (is-clear ?x ?ny)))
)