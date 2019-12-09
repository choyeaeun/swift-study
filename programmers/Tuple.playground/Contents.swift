//: A UIKit based Playground for presenting user interface
  
import UIKit

//튜플은 어떤 타입의 집합이어도 된다
let time1 = (9, 0, 14)
time1.0
let time2:(h:Int, m:Int, s:Int) = (10, 51, 22)
time2.h
// 튜플 안에서 튜플형이 될 수 있다
let duration = (time1, time2)
let (start, end) = duration
let endHour = end.h

//다른 타입형도 사용가능 하지만 특히 튜플에서는 Typealies를 많이 활용한다
typealias Time = (h:Int, m:Int, s:Int)
typealias Duration = (start:Time, end:Time)

let today:Duration = ((2, 0, 0), (9,17,55))
print("오늘은 \(today.end.h)시까지 공부했다!")
