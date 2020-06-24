//
//  BarChartView.swift
//  HW4_00657051
//
//  Created by SW on 2020/6/23.
//  Copyright © 2020 SW. All rights reserved.
//

import SwiftUI

struct BarChartView: View {
    var typeWidths: [Double]

    var body: some View {
        HStack {
            BarChart(Width: typeWidths[0])
                .foregroundColor(.red)
            BarChart(Width: typeWidths[1])
                .foregroundColor(.orange)
            BarChart(Width: typeWidths[2])
                .foregroundColor(.yellow)
            BarChart(Width: typeWidths[3])
                .foregroundColor(.green)
            BarChart(Width: typeWidths[4])
                .foregroundColor(.blue)
            BarChart(Width: typeWidths[5])
                .foregroundColor(Color(hue: 0.627, saturation: 1.0, brightness: 1.0))
            BarChart(Width: typeWidths[6])
                .foregroundColor(.purple)
        }//.frame(width: 400, height: 500)
    }
}

struct BarChartView_Previews: PreviewProvider {
    static var previews: some View {
        BarChartView(typeWidths: [2, 10, 10, 10, 10, 10, 10])
    }
}
