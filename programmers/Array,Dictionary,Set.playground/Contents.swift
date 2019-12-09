import UIKit
// Array ----------------------------------------------
var meetingRooms: Array<String> = ["a", "b", "c", "d"]
var groups: [Int] = [3, 4, 5, 6]

meetingRooms += ["e"]

let maxSpeed = 200
var currentSpeed = 120
var historySpeed: [Int] = []
// Array 값추가 방법
historySpeed += [currentSpeed]
let gpsSpeed = 114.2
historySpeed.append(Int(gpsSpeed))

// Array 참조
historySpeed[1]
historySpeed.first
historySpeed.last

// Array 복사
let BackupHistory = historySpeed
historySpeed += [130]
BackupHistory

// Dictionary ----------------------------------------------
var roomCapacity: [String:Int] = ["a":4, "b":8, "c":10, "d":20]
//roomCapacity += ["e":40]
roomCapacity["e"] = 40

// Dictionary의 값을 Dictionary 형태로 가져옴
let roomName = roomCapacity.keys
let capacities = roomCapacity.values

// Dictionary값을 값자체로 리스트에 넣어서 가져옴
let roomName2 = [String](roomCapacity.keys)
let capacities2 = [Int](roomCapacity.values)
//배열의 값을 초기값부터 해당 결과를 보임
let total = capacities2.reduce(0, +)

// Set ----------------------------------------------
let subway2: Set = ["당산", "홍대입구", "동역문","까치산", "신촌", "영등포구청", "문래", "신도림"]
let subway5: Set = ["오목교", "동역문","까치산","목동","영등포구청","양평","마포"]

let union = subway2.union(subway5)
let transfer = subway2.intersection(subway5)
let notTransfer = subway2.subtracting(subway5)
let exOR = subway2.symmetricDifference(subway5)

if transfer.count > 0 {
    print("환승 가능 역은 \(transfer.description)입니다.")
}else{
    print("환승 가능한 역이 없습니다.")
}

for station in subway2{
    print("이번 역은 \(station)입니다")
}


