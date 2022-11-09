import Foundation

/*
 개미 군단이 사냥을 나가려고 합니다. 개미군단은 사냥감의 체력에 딱 맞는 병력을 데리고 나가려고 합니다. 장군개미는 5의 공격력을, 병정개미는 3의 공격력을 일개미는 1의 공격력을 가지고 있습니다. 예를 들어 체력 23의 여치를 사냥하려고 할 때, 일개미 23마리를 데리고 가도 되지만, 장군개미 네 마리와 병정개미 한 마리를 데리고 간다면 더 적은 병력으로 사냥할 수 있습니다. 사냥감의 체력 hp가 매개변수로 주어질 때, 사냥감의 체력에 딱 맞게 최소한의 병력을 구성하려면 몇 마리의 개미가 필요한지를 return하도록 solution 함수를 완성해주세요.
 */

public func 개미_군단(_ hp: Int) -> Int {
    var result: Int = 0
    var mutableHp: Int = hp
    
    func ant(_ n: Int) {
        result += mutableHp / n
        mutableHp = mutableHp % n
    }
    
    while(mutableHp != 0) {
        if mutableHp >= 5 {
            ant(5)
        } else if mutableHp >= 3 {
            ant(3)
        } else {
            ant(1)
        }
    }
    
    return result
}

//다른풀이
//func solution(_ hp: Int) -> Int { hp / 5 + hp % 5 / 3 + hp % 5 % 3 }
//
//func solutino(_ hp: Int) -> Int {
//    var hp = hp
//    var result = 0
//    for i in [5, 3, 1] {
//        result += hp / i
//        hp %= i
//    }
//    return result
//}
