;; AlgerMancaHW4.nlogo Nelly Alger, Mason Manca
;; HW4 - Deer eating Feb 21. 2021
;; This program generates

;;start handler, generates turtles
to start
  clear-all
  spawn-deer
  grow-shoots
end


;;move handler
to move
  ask turtles
  [
    right (-20 + random 41)
    forward 1
  ]

end

;;spawns buck, doe, fawn
to spawn-deer
  create-turtles 3
  ask turtle 0
  [
    set shape "airplane"
    set color brown
    setxy random-xcor random-ycor
    set size 2
  ]
  ask turtle 1
  [
    set shape "butterfly"
    set color yellow
    setxy random-xcor random-ycor
    set size 2
  ]
  ask turtle 2
  [
    set shape "fish"
    set color red
    setxy random-xcor random-ycor
    set size 2
  ]
end

;;grows shoots, the edible plants
to grow-shoots
  ask n-of 15 patches [ sprout 1]
  ask turtles [set shape "flower"]
end
