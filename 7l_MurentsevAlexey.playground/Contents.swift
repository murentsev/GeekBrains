enum ProgrammistError: Error {
    case tooOldProgrammist
    case programmistWithoutBrain
    case programmistNotFound
}

struct Programmer {
    var year: Int
    var brain: Bool
}

class Programming {
    var Programmers = [
        "Sergey": Programmer(year: 25, brain: true),
        "Stepan Ivanovich": Programmer(year: 51, brain: true),
        "Platon": Programmer(year: 18, brain: false),
        "Yura Yaponets": Programmer(year: 45, brain: false),
        "Fura": Programmer(year: 1000, brain: true)
        ]
    
    var maxYear = 999
    var programmerBrain = true
    
    func CheckProgramist(name: String) throws {
        
        guard let Prog = Programmers[name] else {
            throw ProgrammistError.programmistNotFound
        }
        
        guard Prog.brain else {
            throw ProgrammistError.programmistWithoutBrain
        }
        
        guard Prog.year <= maxYear else {
            throw ProgrammistError.tooOldProgrammist
        }
       // let nameProg = Programmers[name]
        print("\(name) is programming. His brain is: \(Prog.brain). He is \(Prog.year) years old.")
    }
}

func programming(programmistName: String, funcProgram: Programming) throws {
    try funcProgram.CheckProgramist(name: programmistName)
}

var program = Programming()
do {
    try programming(programmistName: "Yura Yaponets", funcProgram: program)
} catch ProgrammistError.programmistNotFound {
    print("Programmist not found")
} catch ProgrammistError.programmistWithoutBrain {
    print("Programmist without brain")
} catch ProgrammistError.tooOldProgrammist {
    print("too old programmist")
}
