//
//  GridView.swift
//  ShenZhou
//
//  Created by 胡文博 on 2023/07/06.
//

import SwiftUI

struct VGridView: View {
    var body: some View {
        // 垂直方向的网格视图时:
        //columns参数的gridItem配置列宽(网格的宽度),列间距,里面的内容对齐方式等;
        //lazyVGrid其余参数配置行间距,网格对齐方式,页眉页脚是否固定等
        let columns = Array(repeating: GridItem(.fixed(100), spacing: 20), count: 3)
        
        // MARK: - 简单的GridView
        //        ScrollView {
        //            LazyVGrid(columns: columns) {
        //                ForEach(0..<50) { index in
        //                    RoundedRectangle(cornerRadius: 5)
        //                        .foregroundColor(Color(hue: 0.03 * Double(index), saturation: 1, brightness: 1))
        //                        .frame(height: 50)
        //                        .overlay(Text("\(index)"))
        //                }
        //            }
        //        }
        
        // MARK: - 带header和footer的多段GridView
        //        ScrollView{
        //            LazyVGrid(columns: columns, pinnedViews: [.sectionHeaders, .sectionFooters]) {
        //                ForEach(0..<5){ index in
        //                    Section {
        //                        ForEach(0..<10){ idx in
        //                            RoundedRectangle(cornerRadius: 5)
        //                                .foregroundColor(Color(hue: 0.03 * Double(index * 10 + idx), saturation: 1, brightness: 1))
        //                                .frame(height: 50)
        //                                .overlay(Text("\(index)"))
        //                        }
        //                    } header: {
        //                        Text("Header\(index + 1)")
        //                            .bold()
        //                            .font(.largeTitle)
        //                            // 需要向左对齐的时候,注意要将frame的宽度设置和屏幕等宽
        //                            .frame(maxWidth: .infinity, alignment: .leading)
        //                    } footer: {
        //                        Text("Footer\(index + 1)")
        //                            .bold()
        //                            .font(.largeTitle)
        //                            .frame(maxWidth: .infinity, alignment: .leading)
        //                            .padding(.bottom)
        //                    }
        //                }
        //            }
        //            .padding()
        //        }
        
        // MARK: - 弹性网格: 1.默认使用最大可用件 2.会和其他flexible的格子均等分割控件
//        let flexibleColumns =
//    [
//        GridItem(.flexible()),
//        GridItem(.flexible()),
//        GridItem(.flexible())
//    ]
//        ScrollView {
//            LazyVGrid(columns: flexibleColumns) {
//                ForEach(0..<50) { index in
//                    RoundedRectangle(cornerRadius: 5)
//                        .foregroundColor(Color(hue: 0.03 * Double(index), saturation: 1, brightness: 1))
//                        .frame(height: 50)
//                        .overlay(Text("\(index)"))
//                }
//            }
//            .padding()
//        }
        
        let adapatableColumns =
        [
            GridItem(.adaptive(minimum: 150))
        ]
        
        ScrollView{
            LazyVGrid(columns: adapatableColumns) {
                ForEach(0..<50) { index in
                    RoundedRectangle(cornerRadius: 5)
                        .foregroundColor(Color(hue: 0.03 * Double(index), saturation: 1, brightness: 1))
                        .frame(height: 150)
                        .overlay(Text("\(index)"))
                }
            }
        }
    }
    
    
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        VGridView()
    }
}
