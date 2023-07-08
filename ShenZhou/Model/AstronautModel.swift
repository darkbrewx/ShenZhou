//
//  AstronautModel.swift
//  ShenZhou
//
//  Created by 胡文博 on 2023/07/07.
//

import Foundation

struct Astronaut: Codable, Identifiable {
    let id: Int
    let name: String
    let description: String
    
    var imageName: String {"\(name)"}
}
