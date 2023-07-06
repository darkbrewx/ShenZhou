//
//  GeometryReaderView.swift
//  ShenZhou
//
//  Created by 胡文博 on 2023/07/07.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        VStack{
            GeometryReader { Proxy in
                Rectangle()
                    .frame(width: Proxy.size.width/2, height: Proxy.size.height/2)
            }
        }
//        .frame(width: 300, height: 300)
        .background(.green)
        .ignoresSafeArea()
    }
}

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
    }
}
