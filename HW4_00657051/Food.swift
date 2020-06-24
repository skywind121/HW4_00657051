//
//  Food.swift
//  HW4_00657051
//
//  Created by SW on 2020/5/21.
//  Copyright © 2020 SW. All rights reserved.
//

import Foundation

struct Food:Identifiable, Codable{
    let id = UUID()
    var food:String
    var type:String
    var score:Int
}
