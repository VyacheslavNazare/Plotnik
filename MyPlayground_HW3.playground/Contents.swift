import UIKit

enum engineState {
    case off, on
}
enum carAction {
    case Load(Int)
    case setEngineState(engineState)
    case setWindowsState(windowsState)
}
enum windowsState {
    case open, close
}

struct Car {
    var mark: String
    var age: Int
    var isEngineState: engineState = .off
    var windowsState: windowsState = .close
    var maxLoad: Int
    var truckLoad: Int = 0
    
    
    mutating func makeAction (action: carAction) {
        switch action {
        case .Load(let load):
            if truckLoad + load > maxLoad{
                print("Багажник переполнен")
            } else {
                self.truckLoad += load
            }
        case .setEngineState(let state):
            self.isEngineState = state
        case .setWindowsState(let state):
            self.windowsState = state
        }
        
    }
    func describeSelf() {
        print("Я \(self.mark), мне \(self.age) лет, двигатель \(self.isEngineState), окна \(self.windowsState), я загружен на \(self.truckLoad), объём кузова \(self.maxLoad)")
    }
}

var sportCar = Car(mark: "Audi", age: 2, isEngineState: .off, windowsState: .close, maxLoad: 100, truckLoad: 5)
var trunkCar = Car(mark: "Volvo", age: 5, isEngineState: .off, windowsState: .close, maxLoad: 1000, truckLoad: 155)

sportCar.makeAction(action: .Load(4))
trunkCar.makeAction(action: .Load(99))

sportCar.makeAction(action: .setEngineState(.on))
trunkCar.makeAction(action: .setWindowsState(.open))

sportCar.describeSelf()
trunkCar.describeSelf()










