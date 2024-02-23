//
//  ExtButtonOperator.swift
//  CalculaSwift
//
//  Created by apprenant68 on 23/02/2024.
//

import Foundation
import SwiftUI

struct ExtButtonOperator : View {
    var operatorValue : String

    @Binding var string : String
    @Binding var temp : String
    @Binding var listnb : [Double]
    @Binding var listop : [String]
    var body: some View {
        Button(operatorValue,action:{
            listnb.append(Double(temp) ?? 0.0)
            listop.append(operatorValue)
            string+=temp+operatorValue
            temp = ""
            
        })
        .buttonStyle(GrowingButton())
    }
}
