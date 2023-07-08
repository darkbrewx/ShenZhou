//
//  ContentView.swift
//  ShenZhou
//
//  Created by 胡文博 on 2023/07/06.
//

import SwiftUI

struct ContentView: View {
    let planVM = PlanVM()
    let columns = [GridItem(.adaptive(minimum: 150))]
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: columns) {
                    ForEach(planVM.plans) { plan in
                        NavigationLink {
                            PlanView(plan: plan)
                        } label: {
                            VStack {
                                Image(plan.imageName)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .padding()
                                VStack {
                                    Text(plan.name)
                                        .font(.headline)
                                        .foregroundColor(.white)
                                    Text(plan.launchDate)
                                        .font(.caption)
                                        .foregroundColor(.white.opacity(0.5))
                                }
                                .padding(.vertical)
                                .frame(maxWidth: .infinity)
                                .background(kLightBGColor)
                            }
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(kLightBGColor)
                            )
                        }
                    }
                }
                .padding([.horizontal, .vertical])
            }
            .background(kDarkBGColor)
            .navigationTitle("神舟飞船")
            .preferredColorScheme(.dark)
            .navigationBarTitleDisplayMode(.large)
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
