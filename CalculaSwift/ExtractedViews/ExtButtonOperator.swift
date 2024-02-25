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
            if temp != "" {
                if isValidDouble(num: temp) {
                    listnb.append(Double(temp) ?? 0.0)
                    listop.append(operatorValue)
                    string+=validDoubleToString(num :temp)+operatorValue
                    temp = ""
                }else {
                    temp = "nombre invalide"
                }
            }else {
                if string != "" {
                    string =  String(string.dropLast())
                    string+=operatorValue
                    listop != [] ? listop[listop.count-1] = operatorValue : nil
                }
            }
        })
        .buttonStyle(GrowingButton(width: 55, height: 55))
    }
}
