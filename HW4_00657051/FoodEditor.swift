//
//  FoodEditor.swift
//  HW4_00657051
//
//  Created by SW on 2020/5/21.
//  Copyright © 2020 SW. All rights reserved.
//

import SwiftUI

struct FoodEditor: View {
    @Environment(\.presentationMode) var presentationMode
    var foodData: FoodData
    var editFood : Food?
    @State private var food = ""
    @State private var type = ""
    @State private var score = 5
    
    let dateFormatter: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        return dateFormatter
    }()
    
    var foodType = ["主食","副食","零食","飲料","其他"]
    
    var body: some View {
        Form{
            TextField("食物名稱", text: $food)
            Picker(selection: self.$type, label: Text("食物類型")){
                ForEach(self.foodType, id: \.self){ (role)in
                    Text(role)
                }
            }.pickerStyle(SegmentedPickerStyle())
            Stepper("評分 \(score)", value: $score,in: 1...10, step:1)
        }
        .navigationBarTitle("食物")
        .navigationBarItems(trailing: Button("SAVE"){
            
            let foods = Food(food: self.food, type: self.type, score: self.score)
            
            if let editFood = self.editFood{
                let index = self.foodData.foods.firstIndex{
                    $0.id == editFood.id
                }!
                self.foodData.foods[index] = foods
            } else{
                self.foodData.foods.insert(foods, at: 0)
            }
            self.presentationMode.wrappedValue.dismiss()
        })
        .onAppear{
            if let editFood = self.editFood{
                self.food = editFood.food
                self.type = editFood.type
                self.score = editFood.score
                
            }
        }
    }
}

struct FoodEditor_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            FoodEditor(foodData: FoodData())
        }
    }
}
