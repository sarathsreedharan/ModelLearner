(define (problem prob)
(:domain minigrid)
(:objects
	x6 x11 x5 x2 x1 x9 x14 x10 x15 x12 x0 x13 x8 x4 x3 x7 - xpos
y2 y10 y4 y6 y8 y15 y12 y0 y5 y7 y1 y3 y13 y14 y9 y11 - ypos
key0 - key
door0 - door
yellow - color

	)

(:init
	(is-clear x11 y2)
(is-clear x13 y11)
(is-clear x1 y8)
(is-clear x6 y1)
(is-clear x9 y1)
(is-clear x9 y9)
(is-clear x1 y7)
(next-x-right x5 x6)
(is-clear x13 y3)
(is-clear x8 y7)
(is-clear x14 y13)
(is-clear x10 y11)
(next-y-down y14 y15)
(is-clear x14 y3)
(is-clear x13 y9)
(is-clear x11 y5)
(is-clear x9 y13)
(next-y-up y2 y1)
(is-clear x1 y1)
(is-clear x2 y7)
(is-locked door0)
(is-clear x13 y4)
(storage-empty)
(is-clear x5 y14)
(is-clear x14 y5)
(is-clear x3 y5)
(is-clear x1 y9)
(is-clear x6 y14)
(is-clear x7 y4)
(next-y-down y10 y11)
(next-x-left x11 x10)
(is-clear x2 y1)
(is-clear x2 y9)
(is-clear x10 y4)
(is-clear x8 y10)
(is-clear x3 y8)
(is-clear x7 y9)
(next-y-up y12 y11)
(is-clear x11 y14)
(is-clear x5 y13)
(next-y-up y11 y10)
(is-clear x14 y8)
(is-clear x10 y6)
(is-clear x3 y7)
(is-clear x10 y13)
(next-y-down y2 y3)
(is-clear x13 y13)
(is-clear x5 y2)
(is-clear x5 y8)
(is-clear x11 y8)
(next-y-up y14 y13)
(is-clear x2 y11)
(is-clear x4 y13)
(is-clear x14 y12)
(is-clear x14 y14)
(is-clear x1 y3)
(is-clear x5 y3)
(is-clear x10 y10)
(next-y-down y12 y13)
(is-clear x1 y10)
(next-x-left x4 x3)
(next-x-left x15 x14)
(is-clear x4 y4)
(next-x-right x8 x9)
(is-clear x3 y12)
(is-clear x2 y14)
(is-clear x13 y5)
(next-y-down y11 y12)
(is-clear x3 y1)
(is-clear x9 y3)
(next-y-down y1 y2)
(is-clear x4 y2)
(next-y-up y9 y8)
(is-clear x4 y9)
(next-y-up y13 y12)
(next-x-left x13 x12)
(has-color key0 yellow)
(is-clear x2 y13)
(is-clear x5 y4)
(is-clear x10 y2)
(is-clear x5 y1)
(is-clear x9 y11)
(is-clear x7 y1)
(is-clear x8 y1)
(is-clear x14 y1)
(is-clear x7 y3)
(is-clear x4 y3)
(is-clear x8 y9)
(next-x-right x2 x3)
(is-clear x6 y4)
(is-clear x7 y6)
(is-clear x11 y1)
(is-clear x11 y4)
(is-clear x11 y13)
(at x7 y8)
(is-clear x14 y6)
(is-clear x14 y7)
(is-clear x6 y5)
(is-clear x6 y7)
(is-clear x6 y13)
(next-x-left x5 x4)
(is-clear x11 y3)
(next-x-right x13 x14)
(next-y-up y10 y9)
(is-clear x5 y5)
(is-clear x6 y8)
(is-clear x10 y3)
(next-x-right x6 x7)
(next-x-left x6 x5)
(is-clear x4 y8)
(is-clear x13 y6)
(is-clear x10 y5)
(is-clear x13 y1)
(is-clear x13 y8)
(is-clear x7 y5)
(is-clear x8 y3)
(is-clear x7 y8)
(is-clear x7 y13)
(next-y-down y0 y1)
(is-clear x9 y14)
(next-x-left x3 x2)
(next-x-left x14 x13)
(is-clear x6 y3)
(door-at door0 x12 y5)
(next-x-right x7 x8)
(is-clear x7 y12)
(is-clear x6 y10)
(is-clear x11 y12)
(is-clear x3 y9)
(is-clear x13 y14)
(is-clear x9 y5)
(is-clear x8 y14)
(is-clear x3 y10)
(is-clear x4 y14)
(next-x-left x10 x9)
(is-clear x8 y2)
(is-clear x3 y11)
(is-clear x10 y7)
(is-clear x4 y11)
(is-clear x14 y10)
(is-clear x3 y3)
(is-clear x3 y13)
(is-clear x5 y9)
(next-x-right x1 x2)
(next-y-down y9 y10)
(is-clear x1 y2)
(is-clear x6 y2)
(next-y-up y3 y2)
(next-x-left x9 x8)
(next-y-down y7 y8)
(is-clear x10 y14)
(is-clear x8 y11)
(is-clear x11 y6)
(is-clear x14 y4)
(next-x-left x1 x0)
(is-clear x1 y12)
(is-clear x9 y7)
(next-x-right x10 x11)
(is-clear x1 y4)
(is-clear x1 y11)
(is-clear x2 y3)
(is-clear x2 y8)
(next-y-up y7 y6)
(is-clear x14 y2)
(is-clear x14 y11)
(next-x-left x2 x1)
(is-clear x13 y2)
(is-clear x7 y14)
(is-clear x8 y12)
(next-x-right x11 x12)
(is-clear x3 y6)
(is-clear x4 y12)
(is-clear x2 y12)
(is-clear x9 y8)
(is-clear x8 y4)
(is-clear x13 y12)
(is-clear x10 y9)
(next-x-left x8 x7)
(next-y-up y1 y0)
(is-clear x3 y14)
(is-clear x1 y6)
(is-clear x7 y11)
(next-y-down y4 y5)
(is-clear x8 y5)
(is-clear x13 y10)
(next-y-down y13 y14)
(is-clear x5 y10)
(is-clear x5 y11)
(is-clear x10 y1)
(is-clear x11 y10)
(next-x-right x14 x15)
(next-y-up y5 y4)
(is-clear x9 y4)
(next-x-right x3 x4)
(is-clear x1 y13)
(is-clear x4 y5)
(is-clear x5 y6)
(next-y-down y8 y9)
(is-clear x8 y6)
(next-x-right x12 x13)
(is-clear x3 y2)
(is-clear x9 y6)
(is-clear x11 y9)
(has-color door0 yellow)
(carriable-at key0 x9 y10)
(next-x-left x7 x6)
(is-clear x5 y7)
(next-y-up y8 y7)
(is-clear x2 y2)
(is-clear x7 y7)
(is-clear x9 y12)
(is-clear x11 y7)
(is-clear x14 y9)
(next-x-right x4 x5)
(next-x-right x0 x1)
(is-clear x6 y12)
(is-clear x6 y9)
(is-clear x4 y6)
(is-clear x7 y2)
(is-clear x2 y5)
(next-x-left x12 x11)
(next-y-down y5 y6)
(is-clear x3 y4)
(is-clear x5 y12)
(next-y-up y4 y3)
(next-y-up y15 y14)
(next-y-down y6 y7)
(is-clear x1 y14)
(is-clear x2 y4)
(is-clear x6 y6)
(next-x-right x9 x10)
(is-clear x4 y1)
(is-clear x6 y11)
(is-clear x7 y10)
(is-clear x2 y10)
(is-clear x10 y12)
(is-clear x9 y2)
(is-clear x13 y7)
(is-clear x11 y11)
(is-clear x1 y5)
(is-clear x2 y6)
(is-clear x8 y8)
(next-y-down y3 y4)
(is-clear x8 y13)
(is-clear x4 y7)
(is-clear x4 y10)
(next-y-up y6 y5)
(is-clear x10 y8)
	)

(:goal (and
    (at x14 y14)
	))

)