//
//  AstronautView.swift
//  ShenZhou
//
//  Created by 胡文博 on 2023/07/08.
//

import SwiftUI

struct AstronautView: View {
    let astronautVM = AstronautVM()
    let name: String
    
    var astronaut: Astronaut {
        astronautVM.astronauts.first{ $0.name == name }!
    }
    
    var body: some View {
        ScrollView{
            VStack {
                Image(name)
                    .resizable()
                    .scaledToFit()
                Text(astronaut.description)
                    .padding()
            }
        }
        .background(kDarkBGColor)
        .navigationTitle(name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AstronautView_Previews: PreviewProvider {
    static var previews: some View {
        let name = PlanVM().plans[6].members![0].name
        AstronautView(name: name).preferredColorScheme(.dark)
    }
}
