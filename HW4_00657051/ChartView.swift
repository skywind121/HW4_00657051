//
//  ChartView.swift
//  HW4_00657051
//
//  Created by SW on 2020/5/20.
//  Copyright © 2020 SW. All rights reserved.
//

import SwiftUI

struct ChartView: View {
    var body: some View{
        VStack{
            ZStack{
                Text("測試")
                Circle()
                    .trim(from:0, to:0.15)
                    .stroke(Color.red, lineWidth: 30)
                Circle()
                    .trim(from:0.15, to:0.35)
                    .stroke(Color.blue, lineWidth: 30)
                Circle()
                    .trim(from:0.35, to:0.65)
                    .stroke(Color.green, lineWidth: 30)
                Circle()
                    .trim(from:0.65, to:85)
                    .stroke(Color.yellow, lineWidth: 30)
                Circle()
                    .trim(from:0.85, to:1)
                    .stroke(Color.orange, lineWidth: 30)
                
            }.frame(width:300, height: 300)
            VStack(){
                HStack{
                    Text("主食")
                    Rectangle()
                        .frame(width:10,height:10)
                        .foregroundColor(.red)
                }
                HStack{
                    Text("副食")
                    Rectangle()
                    .frame(width:10,height:10)
                    .foregroundColor(.blue)
                }
                HStack{
                    Text("零食")
                    Rectangle()
                    .frame(width:10,height:10)
                    .foregroundColor(.green)
                }
                HStack{
                    Text("飲料")
                    Rectangle()
                    .frame(width:10,height:10)
                    .foregroundColor(.yellow)
                }
                HStack{
                    Text("其他")
                    Rectangle()
                    .frame(width:10,height:10)
                    .foregroundColor(.orange)
                }
                
            }.offset(y:50)
            
        }
        
    }
    
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
    }
}
