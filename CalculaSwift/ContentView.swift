//
//  ContentView.swift
//  CalculaSwift
//
//  Created by apprenant68 on 23/02/2024.
//

import SwiftUI

struct ContentView: View {
//    variable pour stocker tout l'enoncé du calcul
    @State var stringCalcul : String = ""
//    variable pour stocker la saisie du nombre
    @State var tempNumberString : String = ""
//    variable pour stocker la liste des opérateur du calcul
    @State var listOperators : [String] = []
//    liste pour stocker tous les nombres en Double du calcul
    @State var listNumbers : [Double] = []
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill(Color("BackgroundColor"))
                .frame(width: 300, height: 500)
            VStack {
                ZStack{
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .fill(Color("ScreenBackgroundColor"))
                        .frame(width: 275, height: 100)
                    HStack{
                        Spacer()
                        VStack(alignment: .trailing){
                            Text(stringCalcul)
                            Text(tempNumberString == "" ? "0" : tempNumberString)
                        }
                        Spacer()
                            .frame(width: 75)
                    }
                }
                .padding(.bottom, 30)
    //            Text("liste nb :"+listNumbers.map{String($0)}.joined(separator: ","))
    //            Text("liste op :"+listOperators.map{String($0)}.joined(separator: ","))
                HStack{
                    ExtButtonClear(string: $stringCalcul, temp: $tempNumberString, listnb: $listNumbers, listop: $listOperators)
                    ExtButtonErase(temp: $tempNumberString)
                        .font(.system(size: 15))
                    ExtButtonNumeric(numberValue: "-/+", temp: $tempNumberString)
                        .font(.system(size: 15))
                    ExtButtonOperator(operatorValue: "÷", string: $stringCalcul, temp: $tempNumberString, listnb: $listNumbers, listop: $listOperators)
                }
                HStack{
                    ExtButtonNumeric(numberValue: "7", temp: $tempNumberString)
                    ExtButtonNumeric(numberValue: "8", temp: $tempNumberString)
                    ExtButtonNumeric(numberValue: "9", temp: $tempNumberString)
                    ExtButtonOperator(operatorValue: "x", string: $stringCalcul, temp: $tempNumberString, listnb: $listNumbers, listop: $listOperators)
                }
                HStack{
                    ExtButtonNumeric(numberValue: "4", temp: $tempNumberString)
                    ExtButtonNumeric(numberValue: "5", temp: $tempNumberString)
                    ExtButtonNumeric(numberValue: "6", temp: $tempNumberString)
                    ExtButtonOperator(operatorValue: "-", string: $stringCalcul, temp: $tempNumberString, listnb: $listNumbers, listop: $listOperators)
                }
                HStack{
                    ExtButtonNumeric(numberValue: "1", temp: $tempNumberString)
                    ExtButtonNumeric(numberValue: "2", temp: $tempNumberString)
                    ExtButtonNumeric(numberValue: "3", temp: $tempNumberString)
                    ExtButtonOperator(operatorValue: "+", string: $stringCalcul, temp: $tempNumberString, listnb: $listNumbers, listop: $listOperators)
                }
                HStack{
                    ExtButtonNumeric(numberValue: "0", temp: $tempNumberString)
                    ExtButtonNumeric(numberValue: ",", temp: $tempNumberString)
                    ExtButtonEgale(string: $stringCalcul, temp: $tempNumberString, listnb: $listNumbers, listop: $listOperators)
                }
            }
            .padding()
            .font(.system(size: 30))
        }
        }
}

#Preview {
    ContentView()
}
