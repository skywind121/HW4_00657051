//
//  ContentView.swift
//  HW4_00657051
//
//  Created by SW on 2020/5/20.
//  Copyright © 2020 SW. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var foodData = FoodData()
    var body: some View {
        VStack{
            TabView{
                FoodList(foodData: self.foodData).tabItem{
                        Text("List")
                        Image(systemName: "list.dash")
                    }
                
                ChartView().tabItem{
                        Text("Chart")
                        Image(systemName: "chart.pie")
                    }
            }
            .accentColor(.blue)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
