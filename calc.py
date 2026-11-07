#!/usr/bin/python
import math

class Unit:
    def __init__(
        self,

        hp,
        quality,
        defense,
        speed,
    ):
        self.hp = hp
        self.quality = (7 - quality) / 6.0
        self.defense = defense
        self.speed = speed
    
    def calc(self):
        s = self.speed
        if self.speed == 0:
            s = 0.5

        t = self.hp * self.quality * self.defense * s

        return t / 3.0

class Weapon:
    def __init__(
        self,

        attacks,
        _range,
        quality,
    ):
        self.attacks = attacks
        self._range = _range / 2.0
        self.quality = (7 - quality) / 6.0

    def calc(self):
        t = self.attacks * self._range * self.quality
        return t / 3.0

unit_name = "Alice"
u_hp = 6
u_defense = 4
u_quality = 4 # 4+
u_speed = 2 # default?

u_cost = Unit(u_hp, u_quality, u_defense, u_speed).calc()

w_attacks = 2
w_range = 3
w_quality = u_quality
w_cost = Weapon(w_attacks, w_range, w_quality).calc()

cost = u_cost + w_cost

print(f"{unit_name} costs: {cost}c or {math.ceil(cost)}")
