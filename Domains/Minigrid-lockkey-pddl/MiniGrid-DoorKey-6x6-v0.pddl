(define (problem prob)
(:domain minigrid)
(:objects
	x0 x1 x2 x3 x4 - xpos
y0 y4 y3 y1 y2 - ypos
key0 - key
door0 - door
yellow - color

	)

(:init
	(has-color door0 yellow)
(next-y-down y1 y2)
(next-y-up y1 y0)
(is-clear x1 y1)
(next-x-right x2 x3)
(next-x-left x2 x1)
(has-color key0 yellow)
(is-locked door0)
(next-x-right x3 x4)
(door-at door0 x2 y1)
(next-y-up y3 y2)
(is-clear x3 y1)
(storage-empty)
(next-x-left x1 x0)
(next-x-left x3 x2)
(next-x-left x4 x3)
(is-clear x1 y3)
(is-clear x3 y3)
(next-y-up y4 y3)
(next-x-right x1 x2)
(next-y-up y2 y1)
(next-y-down y3 y4)
(next-x-right x0 x1)
(next-y-down y0 y1)
(next-y-down y2 y3)
(at x1 y3)
(carriable-at key0 x1 y2)
(is-clear x3 y2)
	)

(:goal (and
    (at x3 y3)
	))

)
