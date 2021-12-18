//
//  AmountPickerView.swift
//  sendm
//
//  Created by Mirza Ucanbarlic on 18. 12. 2021..
//

import SwiftUI

struct AmountPickerView: View {
    var money = [Int](50...1000)
    @State private var isShowingLoader = false
    @State private var selectedMoney = 50
    @State private var isShowingServices = false
    var body: some View {
        ZStack {
            Color.primaryGreen.ignoresSafeArea(.all)
            VStack {
                Text("Odaberite sumu").font(.custom("Raleway", size:48)).fontWeight(.bold).foregroundColor(.white).frame(alignment: .top)
                HStack {
                TextField("Unesite iznos novca", value:$selectedMoney, formatter: NumberFormatter())
                    .textFieldStyle(OvalTextFieldStyle())
                    .keyboardType(.numberPad)
                    .controlSize(.large)
                    .padding()
                }
                
                Text("Odabrali ste: \(selectedMoney) €")
                    .font(.custom("Raleway", size: 18))
                    .foregroundColor(.white)
                NavigationLink(destination: ServicesView(), isActive: $isShowingServices) {}
                NavigationLink(destination: LoadingView(), isActive: $isShowingLoader){
                    Button(action: {
                      //  isShowingLoader = true
                        isShowingServices = true
                    }) {
                        VStack {
                            Text("Dalje").font(.custom("Raleway", size: 24)).fontWeight(.bold)
                                .foregroundColor(.primaryGreen)
                        }
                        .frame(maxWidth: .infinity)
                    }
                    .tint(.white)
                    .buttonStyle(.borderedProminent)
                    .buttonBorderShape(.capsule)
                    .controlSize(.large)
                    .padding(20)
                }
                Spacer()
            }
        }
    }
}

struct AmountPickerView_Previews: PreviewProvider {
    static var previews: some View {
        AmountPickerView()
    }
}

