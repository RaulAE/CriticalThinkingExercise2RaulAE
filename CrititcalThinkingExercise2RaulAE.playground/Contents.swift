import UIKit

// Listing off the type effectiveness of the pokemon ice type offensively

let ice_normal = 1  // 1 means ice deals x1 damage to the defending type (normal)
let ice_fire = 0.5  // 0.5 means ice deals x0.5 damage to the defending type (fire)
let ice_water = 0.5
let ice_electric = 1
let ice_grass = 2   // 2 means ice deals x2 damage to the defending type (grass)
let ice_ice = 0.5
let ice_fighting = 1
let ice_poison = 1
let ice_ground = 2
let ice_flying = 2
let ice_psychic = 1
let ice_bug = 1
let ice_rock = 1
let ice_ghost = 1
let ice_dragon = 2
let ice_dark = 1
let ice_steel = 0.5
let ice_fairy = 1

// list of ice type moves

let iceBeam = 90
let avalanche = 60
let tripleAxel = 25 // This move hits three times

// list of scenarios

// atacking a ground type
var ground_damage_recieved = iceBeam * ice_ground
var gdr_string = String(ground_damage_recieved)
print("The ground type pokemon recieved " + gdr_string + " damage!")

// attacking normal type
var normal_damage_recieved = iceBeam * ice_normal
var ndm_string = String(normal_damage_recieved)
print("The normal type pokemon recieved " + ndm_string + " damage!")

// attackiing a ground/dragon type
var groundDragon_damage_recieved = iceBeam * (ice_ground * ice_dragon)
var gddm_string = String(groundDragon_damage_recieved)
print("The Ground/Dragon type pokemon recieved " + gddm_string + " damage!")

// attacking a ground/dragon with triple axle (this move hits 3 times)
groundDragon_damage_recieved = (tripleAxel * (ice_ground * ice_dragon)) + (tripleAxel * (ice_ground * ice_dragon)) + (tripleAxel * (ice_ground * ice_dragon))
gddm_string = String(groundDragon_damage_recieved)
print("The Ground/Dragon type pokemon recieved " + gddm_string + " damage!")

// attacking a ground/dragon type pokemon with a chopple berry (This halves damage from ice type moves if they're super effetcive)
groundDragon_damage_recieved = iceBeam * (ice_ground * ice_dragon) / 2
gddm_string = String(groundDragon_damage_recieved)
print("The Ground/Dragon type pokemon recieved " + gddm_string + " damage!")

// attakcing a pokemon with a barrier up preventing 100 ice damage (this is a fictional mechanic I made to demosntrate subtraction)
normal_damage_recieved = iceBeam * ice_normal - 100
ndm_string = String(normal_damage_recieved)
var damage_negated = (0 < normal_damage_recieved ? ndm_string : "no")
print("The normal type pokemon recieved " + damage_negated + " damage!")

