//
//  ExtButtonClear.swift
//  CalculaSwift
//
//  Created by apprenant68 on 23/02/2024.
//

import Foundation
import SwiftUI

struct ExtButtonClear : View {
    @Binding var string : String
    @Binding var temp : String
    @Binding var listnb : [Double]
    @Binding var listop : [String]
    
    var body: some View {
        Button("C",action:{

            listnb=[]
            listop=[]
            string = ""
            temp = ""
            
        })
        .buttonStyle(GrowingButton())
    }
}
