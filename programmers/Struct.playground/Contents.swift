import UIKit

//struct -----------------------------------------------
struct Task{
    var title: String
    var time: Int?
    
    var owner: Employee
    var participant: Employee?
    
    var type:TaskType
    enum TaskType {
        case Call
        case Report
        case Meet
        case Support
        
        var typeTitle:String{
            get {
                let titleString:String
                switch self {
                case .Call:
                    titleString = "Call"
                case .Report:
                    titleString = "Report"
                case .Meet:
                    titleString = "Meet"
                case .Support:
                    titleString = "Support"
                }
                return titleString
            }
        }
    }
}

class Employee {
    var name: String?
    var phoneNum: String?
    var boss: Employee?
    
    init (name:String){
        self.name = name
    }
    convenience init (name:String, phone:String){
        self.init(name: name)
        self.phoneNum = phone
    }
}
//class 내부의 변수로 선언했기 때문에 클래스는 상수로 선언해도 내부 변수를 수정할 수 있다
let me: Employee = Employee(name: "silbia", phone: "0102345678")
//me.name = "silbia"
//me.phoneNum = "01012345678"

let moon: Employee = Employee(name: "Jong")
//moon.name = "jong"
moon.phoneNum = "01156781234"

var callTask = Task(title: "call to silvia", time: 10*60, owner: me, participant: moon, type: .Call)
var reportTask = Task(title: "Report to boss", time: nil, owner: me, participant: nil, type: Task.TaskType.Report)

callTask.participant?.phoneNum = "01093867347"
//class로 만들어졌기 때문에 복사한 callTask의 participant로 접근해도 수정가능
print(moon.phoneNum)

var todayTask: [Task] = []
todayTask += [callTask, reportTask]

todayTask[1].time = 15*60
callTask.title = "call to malon"
//복사만 되기 때문에 callTask의 title을 바꿔도 todayTask의 title은 바뀌지 않음
print("todayTask : \(todayTask)")
