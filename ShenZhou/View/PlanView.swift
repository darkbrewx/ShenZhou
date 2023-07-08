//
//  PlanView.swift
//  ShenZhou
//
//  Created by 胡文博 on 2023/07/07.
//

import SwiftUI

struct PlanView: View {
    let plan: Plan
    var rows: [GridItem] {
        Array(repeating: GridItem(.fixed(200)), count: plan.hasBadge ? (plan.members?.count ?? 0) : 0)
    }
    var body: some View {
        GeometryReader { Proxy in
            ScrollView {
                LazyVStack {
                    // MARK: - 1. 徽章
                    Image(plan.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: Proxy.size.width * 0.6)
                        .padding(.top)
                    
                    //  MARK: - 2.任务简介
                    LazyVStack(alignment: .leading) {
                        
                        Divider()
                            .frame(height: 2)
                            .background(Color.secondary)
                            .cornerRadius(10)
                            .padding(.vertical)
                        
                        Text("任务简介")
                            .boldTitleWithPadding()
                        Text(plan.description)
                        
                        Divider()
                            .frame(height: 2)
                            .background(Color.secondary)
                            .cornerRadius(10)
                            .padding(.vertical)
                        if plan.members != nil {
                            Text("宇航员").font(.largeTitle.bold())
                        }
                    }
                    .padding(.horizontal)
                    
                    //  MARK: - 3.参与此次任务的宇航员
                    if let members = plan.members {
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                ForEach(members, id: \.name) { member in
                                    NavigationLink {
                                        AstronautView(name: member.name)
                                    } label: {
                                        HStack{
                                            Image(member.name)
                                                .resizable()
                                                .scaledToFill()
                                                .frame(width: 104, height: 72)
                                                .clipShape(Capsule())
                                                .overlay(
                                                    Capsule()
                                                        .strokeBorder(.white)
                                                )
                                            VStack(alignment: .leading){
                                                Text(member.name)
                                                    .foregroundColor(.white)
                                                    .font(.headline)
                                                Text(member.birth)
                                                    .foregroundColor(.secondary)
                                            }
                                        }
                                        .padding()
                                    }
                                }
                            }
                        }
                        
                    }
                }
                .padding(.bottom)
            }
        }
        .background(kDarkBGColor)
        .navigationTitle(plan.name)
        .navigationBarTitleDisplayMode(.inline)
        //        Form {
        //            Section {
        //                Image(plan.imageName)
        //            }
        //            Section {
        //                VStack {
        //                    Text("任务简介")
        //                    Text(plan.description)
        //                }
        //            }
        //            Section {
        //                VStack{
        //                    Text("宇航员")
        //                    HStack{
        //                        Text("宇航员头像")
        //                        VStack{
        //                            Text("姓名")
        //                            Text("生日")
        //                        }
        //                    }
        //                }
        //            }
        //        }
    }
}

struct planView_Previews: PreviewProvider {
    static var previews: some View {
        let plan = PlanVM().plans[6]
        PlanView(plan: plan).preferredColorScheme(.dark)
    }
}
