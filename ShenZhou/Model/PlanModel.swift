//
//  PlanModel.swift
//  ShenZhou
//
//  Created by 胡文博 on 2023/07/07.
//

import Foundation


struct Plan: Codable, Identifiable {
    let id: Int
    let name: String
    let launchDate: String
    let members: [Member]?
    let description: String
    let hasBadge: Bool
    
    struct Member: Codable {
        let name: String
        let birth: String
    }
    
    var imageName: String { hasBadge ? "shenzhou\(id)" : "placeholder"}
}
