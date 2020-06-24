//
//  FoodRow.swift
//  HW4_00657051
//
//  Created by SW on 2020/5/21.
//  Copyright © 2020 SW. All rights reserved.
//

import SwiftUI

struct FoodRow: View {
    var food: Food
    var body: some View {
        HStack{
            Text("名字:\(food.food)")
            Text("類型:\(food.type)")
            Text("評分:\(food.score)")
        }
    }
}

struct FoodRow_Previews: PreviewProvider {
    static var previews: some View {
        FoodRow(food: Food(food: "rice", type: "主食", score: 5))
    }
}
