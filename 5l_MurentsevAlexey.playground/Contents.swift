protocol Car {
    var name: String {get}
    var windows: Bool {get set}
    var engine: Bool {get set}
    var year: Int {get}
}

extension Car {
   mutating func startStopEngine() {
        engine = !engine
    }
    
   mutating func openCloseWindows() {
        windows = !windows
       }
}

class trunkCar: Car {
    
    var name: String
    var windows: Bool
    var engine: Bool
    var year: Int
    var tankFull: Bool
    
    init(name: String, windows: Bool, engine: Bool, year: Int, tankFull: Bool) {
        self.name = name
        self.windows = windows
        self.engine = engine
        self.year = year
        self.tankFull = tankFull
    }
    
    func fillFreeTank() {
        tankFull = !tankFull
    }
    
}

extension trunkCar: CustomStringConvertible {
    var description: String {
        return "Name: \(name)\nWindows: \(windows)\nEngine: \(engine)\nYear: \(year)\nTankFull: \(tankFull)"
    }
}

class sportCar: Car {
    var name: String
    var windows: Bool
    var engine: Bool
    var year: Int
    var nitro: Bool
    
   init(name: String, windows: Bool, engine: Bool, year: Int, nitro: Bool) {
        self.name = name
        self.windows = windows
        self.engine = engine
        self.year = year
        self.nitro = nitro
    }
    
    func startStopNitro() {
        nitro = !nitro
    }

}

extension sportCar: CustomStringConvertible {
    var description: String {
        return "Name: \(name)\nWindows: \(windows)\nEngine: \(engine)\nYear: \(year)\nNitro: \(nitro)"
    }
}
var kamaz = trunkCar(name: "kamaz", windows: true, engine: true, year: 1992, tankFull: true)
kamaz.fillFreeTank()
kamaz.startStopEngine()
kamaz.openCloseWindows()
print(kamaz.description)
print("------------------------------")
var ferrari = sportCar(name: "ferrari", windows: false, engine: false, year: 1995, nitro: false)
ferrari.startStopNitro()
ferrari.startStopEngine()
ferrari.openCloseWindows()
print(ferrari.description)
