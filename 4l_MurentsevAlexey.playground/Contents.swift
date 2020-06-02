//создал одну структуру т.к. отличия будут только в названии кузов или багажник

class Car {
    
    let marka: String
    let godVipuska: Int
    var zapuschenDvigatel: Bool
    var otkrityOkna: Bool
    
    init(marka: String, godVipuska: Int, zapuschenDvigatel: Bool, otkrityOkna: Bool) {
        self.marka = marka
        self.godVipuska = godVipuska
        self.zapuschenDvigatel = zapuschenDvigatel
        self.otkrityOkna = otkrityOkna
    }
    
    enum Actions {
        case zapustitDvigatel
        case zaglushitDvigatel
        case otkritOkna
        case zakritOkna
    }
    
    func doAction(action: Actions) {
        switch action {
        case .zapustitDvigatel:
            self.zapuschenDvigatel = true
        case .zaglushitDvigatel:
            self.zapuschenDvigatel = false
        case .otkritOkna:
            self.otkrityOkna = true
        case .zakritOkna:
            self.otkrityOkna = false
        }
    }
    
    func description() {
        print("Марка: \(marka)")
        print("Год выпуска: \(godVipuska)")
        print("Двигатель запущен: \(zapuschenDvigatel)")
        print("Открыты окна: \(otkrityOkna)")
    }
}


class trunkCar: Car {
    let obemKuzova: Double
    var zapolnenniyObem: Double
    
    enum Actions {
        case zapustitDvigatel
        case zaglushitDvigatel
        case otkritOkna
        case zakritOkna
        case pogruzit(obem: Double)
        case vigruzit(obem: Double)
    }
    
    init(marka: String, godVipuska: Int, zapuschenDvigatel: Bool, otkrityOkna: Bool, obemKuzova: Double, zapolnenniyObem: Double) {
        self.obemKuzova = obemKuzova
        self.zapolnenniyObem = zapolnenniyObem
        super.init(marka: marka, godVipuska: godVipuska, zapuschenDvigatel: zapuschenDvigatel, otkrityOkna: otkrityOkna)
    }
    
    func doAction(action: Actions) {
        switch action {
        case .zapustitDvigatel:
            self.zapuschenDvigatel = true
        case .zaglushitDvigatel:
            self.zapuschenDvigatel = false
        case .otkritOkna:
            self.otkrityOkna = true
        case .zakritOkna:
            self.otkrityOkna = false
        case .pogruzit(let count):
            if self.obemKuzova >= self.zapolnenniyObem + count {
                self.zapolnenniyObem = self.zapolnenniyObem + count
            } else {
                print("Объем превышает максимально допустимый")
            }
        case .vigruzit(let count):
            if self.zapolnenniyObem >= self.zapolnenniyObem - count {
                self.zapolnenniyObem = self.zapolnenniyObem - count
            } else {
                print("Вы хотите выгрузить больше чем у вас есть =)")
            }
        }
        
    }
    
    override func description() {
        print("Марка: \(marka)")
        print("Год выпуска: \(godVipuska)")
        print("Двигатель запущен: \(zapuschenDvigatel)")
        print("Открыты окна: \(otkrityOkna)")
        print("Объем кузова: \(obemKuzova)")
        print("Заполненный объем: \(zapolnenniyObem)")
    }
}

class sportCar: Car {
    var nitro: Bool
    
    init(marka: String, godVipuska: Int, zapuschenDvigatel: Bool, otkrityOkna: Bool, nitro: Bool) {
        self.nitro = nitro
        super.init(marka: marka, godVipuska: godVipuska, zapuschenDvigatel: zapuschenDvigatel, otkrityOkna: otkrityOkna)
    }
    
    enum Actions {
        case zapustitDvigatel
        case zaglushitDvigatel
        case otkritOkna
        case zakritOkna
        case nitroOn
        case nitroOff
    }
    
    func doAction(action: Actions) {
        switch action {
        case .zapustitDvigatel:
            self.zapuschenDvigatel = true
        case .zaglushitDvigatel:
            self.zapuschenDvigatel = false
        case .otkritOkna:
            self.otkrityOkna = true
        case .zakritOkna:
            self.otkrityOkna = false
        case .nitroOn:
            self.nitro = true
        case .nitroOff:
            self.nitro = false
        }
    }
        
    override func description() {
        print("Марка: \(marka)")
        print("Год выпуска: \(godVipuska)")
        print("Двигатель запущен: \(zapuschenDvigatel)")
        print("Открыты окна: \(otkrityOkna)")
        print("Нитро: \(nitro)")
        
    }
    
}

var kamaz = trunkCar(marka: "kamaz", godVipuska: 2000, zapuschenDvigatel: true, otkrityOkna: true, obemKuzova: 1234.0, zapolnenniyObem: 1000.1)
kamaz.description()
print("-----------------------------")
kamaz.doAction(action: trunkCar.Actions.pogruzit(obem: 123.5))
kamaz.description()
print("-----------------------------")

var mashina = Car(marka: "reno", godVipuska: 2020, zapuschenDvigatel: false, otkrityOkna: false)
mashina.description()
print("-----------------------------")


var ferrari = sportCar(marka: "Ferrari", godVipuska: 1999, zapuschenDvigatel: false, otkrityOkna: true, nitro: false)
ferrari.description()
print("-----------------------------")
ferrari.doAction(action: sportCar.Actions.nitroOn)
ferrari.description()
