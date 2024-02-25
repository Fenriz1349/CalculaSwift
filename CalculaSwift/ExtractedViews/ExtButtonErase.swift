//
//  ExtButtonErase.swift
//  CalculaSwift
//
//  Created by apprenant68 on 23/02/2024.
//

import Foundation
import SwiftUI

struct ExtButtonErase : View {

    @Binding var temp : String
    var body: some View {
        Button("Err",action:{

            temp = String(temp.dropLast())
            
        })
        .buttonStyle(GrowingButton(width: 55, height: 55))
    }
}
