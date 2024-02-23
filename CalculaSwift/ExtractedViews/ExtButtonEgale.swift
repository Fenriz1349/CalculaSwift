//
//  ExtButtonEgale.swift
//  CalculaSwift
//
//  Created by apprenant68 on 23/02/2024.
//

import Foundation
import SwiftUI
struct ExtButtonEgale : View {
    @Binding var string : String
    @Binding var temp : String
    @Binding var listnb : [Double]
    @Binding var listop : [String]
    
    var body: some View {
        Button("=",action:{
            listnb.append(Double(temp) ?? 0.0)
            if listnb.count-1 != listop.count {
                temp = "pas assez de nombre"
            }else {
                string+=temp+"="
                var total :Double = listnb[0]
                for indice in (1...listnb.count-1) {
                    switch listop[indice-1] {
                    case "+" : total+=listnb[indice]
                    case "-" : total-=listnb[indice]
                    case "x" : total*=listnb[indice]
                    case "÷" :
                        if listnb[indice] == 0.0 {
                            string = "division par zero"
                        }else {
                            total/=listnb[indice]
                        }
                    default : total = 0.0
                    }
                }
                listnb = []
                listop = []
                temp = floor(total) == total ? String(Int(total)) : String(total)
            }
            
        } )
        .buttonStyle(GrowingButtonEgale())
        
    }
}

