import Foundation

// 1. Решить квадратное уравнение
// a * x^2 + b * x + c = 0
var a: Double = 6
var b: Double = 1
var c: Double = -1

var d = pow(b, 2) - 4 * a * c

var x1 = (-b+pow(d, 0.5))/2*a
var x2 = (-b-pow(d, 0.5))/2*a


//2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.
// S = a * b * 0.5; C = a + b + c; c^2 = a^2 + b^2;
var k1: Double = 4
var k2: Double = 3
var s = k1 * k2 * 0.5
var g = pow(pow(k1, 2) + pow(k2, 2), 0.5)
var p = k1 + k2 + g


//3. Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.
var year: Int = 5
var sum: Double = 100
var percent: Double = 10

for _ in 1...year-1 {
    sum = sum + (sum/100*percent)
}
sum
