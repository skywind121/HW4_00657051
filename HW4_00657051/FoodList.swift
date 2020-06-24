//
//  FoodList.swift
//  HW4_00657051
//
//  Created by SW on 2020/5/20.
//  Copyright © 2020 SW. All rights reserved.
//

import SwiftUI

struct FoodList: View {
    @ObservedObject var foodData = FoodData()
    @State private var show = false
    var body: some View {
        NavigationView{
            List{
                ForEach(foodData.foods){ (food) in
                    NavigationLink(destination: FoodEditor(foodData: self.foodData, editFood: food)){
                        FoodRow(food: food)
                    }
                }
                    .onMove{ (indexSet, index) in
                        self.foodData.foods.move(fromOffsets: indexSet, toOffset: index)
                    }
                    .onDelete{ (index) in
                        self.foodData.foods.remove(atOffsets: index)
                    }
            }
            .navigationBarTitle("美食日誌")
                
            .navigationBarItems(leading: EditButton().accentColor(.blue), trailing: Button(action:{
                self.show = true
            },label: {Image(systemName: "text.badge.plus").accentColor(.blue)}
            ))
                .sheet(isPresented: $show){
                    NavigationView{
                        FoodEditor(foodData: self.foodData)
                    }
            }
            
        }
    }
}

struct FoodList_Previews: PreviewProvider {
    static var previews: some View {
        FoodList()
    }
}
