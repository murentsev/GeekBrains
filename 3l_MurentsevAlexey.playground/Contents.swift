//создал одну структуру т.к. отличия будут только в названии кузов или багажник

struct UniversalAuto {
    
    let marka: String
    let godVipuska: Int
    let obemBagazhnika: Double
    var zapuschenDvigatel: Bool
    var otkrityOkna: Bool
    var zapolnenniyObem: Double
    
    enum Actions {
        case zapustitDvigatel
        case zaglushitDvigatel
        case otkritOkna
        case zakritOkna
        case pogruzit(obem: Double)
        case vigruzit(obem: Double)
    }
    
   mutating func doAction(action: Actions) {
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
            if self.obemBagazhnika >= self.zapolnenniyObem + count {
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
    
    func description() {
        print("Марка: \(marka)")
        print("Год выпуска: \(godVipuska)")
        print("Объем багажника: \(obemBagazhnika)")
        print("Двигатель запущен: \(zapuschenDvigatel)")
        print("Открыты окна: \(otkrityOkna)")
        print("Заполненный объем багажника: \(zapolnenniyObem)")
    }
}

var legkovoyAuto = UniversalAuto(marka: "Zhiguli", godVipuska: 1999, obemBagazhnika: 356.6, zapuschenDvigatel: false, otkrityOkna: false, zapolnenniyObem: 34.5)
legkovoyAuto.description()
legkovoyAuto.doAction(action: .otkritOkna)
legkovoyAuto.doAction(action: .zapustitDvigatel)
legkovoyAuto.doAction(action: .pogruzit(obem: 56))
legkovoyAuto.description()
