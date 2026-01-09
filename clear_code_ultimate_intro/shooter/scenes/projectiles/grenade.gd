extends RigidBody2D

const speed = 750

# So we did a few things to get the grenade to boundce
# 1. We set the friction to 10 (i believe this will slow it down given time
# 2. We set the bounce to 0.4 (this tells how much energy to retain on collisions)
# 3. We set the Damp to 1.6 (this dampens the bodies energy?)
