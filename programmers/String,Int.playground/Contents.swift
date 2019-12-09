//: A UIKit based Playground for presenting user interface
  
import UIKit

// 상수는 변경 불가능
let star:Int = 100
//star += 10

// 변수는 변경 가능
var moon:Int = 200
moon += 20
// 타입은 한 번 선언되면 계속해서 그 타입으로 사용해야 함
moon += Int(10.2)


let name = "조예은"
var greeting = "Hello"

greeting += ", " + name

let url = "www.naver.com"
let hasPrefix = url.hasPrefix("http://")
let count = url.count

print("\(name)")

//---------------------------------------

let intMax: Int = Int.max
let intMin: Int = Int.min
let UintMax: UInt = UInt.max
let UintMin: UInt = UInt.min

let Pi = 3.14
let Devider = 2
let halfPi = Pi/2
// 타입을 맞춰라
let dHalfPi = Pi/Double(Devider)


