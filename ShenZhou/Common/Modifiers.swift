//
//  Modifiers.swift
//  ShenZhou
//
//  Created by 胡文博 on 2023/07/08.
//

import Foundation
import SwiftUI

struct BoldTitleWithPadding: ViewModifier {
    let edges: Edge.Set
    func body(content: Content) -> some View {
        content
            .font(.title.bold())
            .padding(edges, 5)
    }
}

extension View {
    func boldTitleWithPadding(_ edges: Edge.Set = .bottom) -> some View {
        modifier(BoldTitleWithPadding(edges: edges))
    }
}
