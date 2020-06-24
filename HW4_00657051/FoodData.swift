//
//  FoodData.swift
//  HW4_00657051
//
//  Created by SW on 2020/5/21.
//  Copyright © 2020 SW. All rights reserved.
//

import Foundation
import Combine

class FoodData: ObservableObject{
    var cancellable: AnyCancellable?
    @Published var foods = [Food]()
    
    init(){
        if let data = UserDefaults.standard.data(forKey: "foods"){
            let decoder = JSONDecoder()
            if let decodedData = try? decoder.decode([Food].self, from: data){
                foods = decodedData
            }
        }
        
        cancellable = $foods
            .sink(receiveValue: { (value) in
                let encoder = JSONEncoder()
                if let data = try? encoder.encode(value){
                    UserDefaults.standard.set(data, forKey: "foods")
                }
            })
    }
}
