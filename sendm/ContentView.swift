//
//  ContentView.swift
//  sendm
//
//  Created by Mirza Ucanbarlic on 18. 12. 2021..
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingAmountPickerView = false
    @State private var isShowingMyProfileView = false
    var body: some View {
        NavigationView {
            ZStack {
                Color.primaryGreen.ignoresSafeArea(.all)
                VStack {
                    Text("Izaberite opciju").font(.custom("Raleway", size: 48)).fontWeight(.bold).foregroundColor(.white)
                    
                    NavigationLink(destination: AmountPickerView(), isActive: $isShowingAmountPickerView) {
                        Button(action: {
                            self.isShowingAmountPickerView = true
                        }) {
                            VStack {
                                Text("Posalji novac").font(.custom("Raleway", size: 34)).fontWeight(.bold)
                                    .foregroundColor(.primaryGreen)
                                Image("euro")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                            }
                            .frame(maxWidth: .infinity)
                        }
                        .tint(.white)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle)
                        .controlSize(.large)
                        .padding(20)
                    }
                    
                    NavigationLink(destination: MyProfileView(), isActive: $isShowingMyProfileView) {
                        Button(action: {
                            self.isShowingMyProfileView = true
                        }) {
                            VStack {
                                Text("Moj profil").font(.custom("Raleway", size: 34)).fontWeight(.bold)
                                    .foregroundColor(.primaryGreen)
                                Image("avatar")
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                            }
                            .frame(maxWidth: .infinity)
                        }
                        .tint(.white)
                        .buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle)
                        .controlSize(.large)
                        .padding(20)
                    }
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
