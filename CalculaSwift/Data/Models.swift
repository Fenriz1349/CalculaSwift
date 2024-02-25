//
//  Models.swift
//  CalculaSwift
//
//  Created by apprenant68 on 23/02/2024.
//

import Foundation
import SwiftUI

enum CalculsError : Error {
    case divideByZero
    case invalidNumber
    
}
// struct pour animer les bouton
struct GrowingButton: ButtonStyle {
    var width : CGFloat
    var height : CGFloat
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .frame(width: width,height: height)
            .background(Color.yellow)
            .foregroundStyle(Color.black)
            .clipShape(RoundedRectangle(cornerRadius: 15.0))
            .scaleEffect(configuration.isPressed ? 1.5 : 1)
            .animation(.easeOut(duration: 0.3), value: configuration.isPressed)
    }
}

//fonction pour tester si le temp entré contient 0 ou 1 virgules
func isValidDouble (num :String) ->Bool {
    let numberVirgule = num.components(separatedBy:".").count-1
    return numberVirgule == 0 || numberVirgule == 1
}
//fonction qui transforme la saisie temporaire qui est un Double valide pour laffichage du resultat
func validDoubleToString (num : String) ->String{
    if num.first == "." {
        return "0"+num
    }else if num.last == "." {
        return String(num.dropLast())
    }else {
        return num
    }
}
//fonction pour renvoyer un Int si le nombre n'as rien après la virgule, et sinon au maximum 5 chiffres après la virgulkes
func goodDoubleFormat (number:Double) ->String{
    if number.truncatingRemainder(dividingBy: 1) == 0 {
        return  String(Int(number))
    } else if number * 10 - Double(Int(number * 10)) == 0 {
        return String(format: "%.1f", number)
    }else if number * 100 - Double(Int(number * 100)) == 0 {
        return String(format: "%.2f", number)
    }else if number * 1000 - Double(Int(number * 1000)) == 0 {
        return String(format: "%.3f", number)
    }else if number * 10000 - Double(Int(number * 10000)) == 0 {
        return String(format: "%.4f", number)
    }else{
        return String(format: "%.5f", number)
    }
}
   
