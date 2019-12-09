import UIKit

//optional: 값이 없는 상태(nil)
//실행 중에 nil이 될 수 있는 변수를 안전하게 만드는 장치
var title: String = "my name is bingbong"
var rating: [Int]? = nil
var supportURL: String? = nil
//초기에는 nil로 선언해야 하지만 무조건 값을 갖는 것이 보장되어 있다면 !로 옵셔널처리. 옵셔널이지만 옵셔널처럼 사용되지 않음
var writer: String! = nil
writer = "choyeaeun"

supportURL = "www.bingbong.com"

var Description: String = "\(title)"
//force Unwrapping: 옵셔널 강제 해제 (추천하지 않는 방식)
if rating != nil {
    Description += "has \(rating!.count) ratings"
}
//옵셔널 변수 값이 있다면 이를 새로운 변수에 할당하여 사용
if let supportingURL = supportURL{
    Description += "\r\nsupport web page is \(supportingURL)"
}

Description += "\r\nwriter name is \(writer)"

print(Description)
