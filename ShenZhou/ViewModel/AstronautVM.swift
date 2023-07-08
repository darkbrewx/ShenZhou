//
//  AstronautVM.swift
//  ShenZhou
//
//  Created by 胡文博 on 2023/07/07.
//

import Foundation
class AstronautVM {
    var astronauts: [Astronaut]
    init() {
        astronauts = Bundle.main.decode(KAstronautsJSONFile)
    }
}
