import UIKit
let summ: Double = 100
let per: Double = 0.05
let per5year: Double = (summ + (summ * per)) * 5 // вклад + процент за 5 лет без капитализации





let k1: Double = 4
let k2: Double = 3
let s: Double = (k1 * k2) / 2 // прощадь
let gip: Double = sqrt(k1*k1 + k2*k2) // гипотенуза
let p: Double = k1 + k2 + gip // периметр





// b^2 - 4 a c
var x1: Double = 0
var x2: Double = 0
var d: Double = 0

let a: Double = 10
let b: Double = 0
let c: Double = 0
    d = b * b - 4 * a * c
    x1 = (-b + sqrt(d)) / (2 * a)
    x2 = (-b - sqrt(d)) / (2 * a)


