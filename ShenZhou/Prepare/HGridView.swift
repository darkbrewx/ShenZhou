//
//  HGridView.swift
//  ShenZhou
//
//  Created by 胡文博 on 2023/07/07.
//

import SwiftUI

struct HGridView: View {
    var body: some View {
//        let rows = Array(repeating: GridItem(.fixed(70)), count: 6)
        let rows = [GridItem()]
        GeometryReader { proxy in
            // MARK: - 简单的GridView
            ScrollView(.horizontal) {
                LazyHGrid(rows: rows) {
                    ForEach(0..<50) { index in
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(Color(hue: 0.03 * Double(index), saturation: 1, brightness: 1))
                            .frame(width: 0.3 * proxy.size.width)
                            .overlay(Text("\(index)"))
                    }
                }
                .frame(height: 0.3 * proxy.size.width)
            }
        }
    }
}

struct HGridView_Previews: PreviewProvider {
    static var previews: some View {
        HGridView()
    }
}
