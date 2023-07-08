//
//  PlanVM.swift
//  ShenZhou
//
//  Created by 胡文博 on 2023/07/07.
//

import Foundation
class PlanVM {
    var plans: [Plan]
    init() {
        plans = Bundle.main.decode(kPlansJSONFile)
    }
}
