//
//  MyProfileView.swift
//  sendm
//
//  Created by Mirza Ucanbarlic on 18. 12. 2021..
//

import SwiftUI

struct MyProfileView: View {
    @State private var isShowingMoneyPedia = false
    @State private var isShowingSmartBudget = false
    @State private var isShowingLessons = false
    var body: some View {
        VStack {
            Image("avatar")
                .resizable()
                .clipShape(Circle())
                .frame(width: 100, height: 100)
            Text("Ime Prezime")
                .font(.custom("Raleway", size: 34))
                .fontWeight(.bold)
                .foregroundColor(.primaryGreen)
            ProgressView(value: 74, total: 100)
                .progressViewStyle(CustomProgressViewStyle())
            Text("74% lekcija predjeno")
                .foregroundColor(.primaryGreen)
                .font(.custom("Raleway", size: 18))
            NavigationLink(destination: LessonsView(), isActive: $isShowingLessons) {
            Button(action: {
                isShowingLessons = true
            }) {
                VStack {
                    Text("Lekcije").font(.custom("Raleway", size: 24)).fontWeight(.bold)
                        .foregroundColor(.primaryGreen)
                }
                .frame(maxWidth: .infinity)
            }
            .tint(.primaryGray)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            .padding(20)
            }
            Divider()
            NavigationLink(destination: SmartBudgetView(), isActive: $isShowingSmartBudget) {
            Button(action: {
                isShowingSmartBudget = true
            }) {
                VStack {
                    Text("Pametni budzet").font(.custom("Raleway", size: 24)).fontWeight(.bold)
                        .foregroundColor(.primaryGreen)
                }
                .frame(maxWidth: .infinity)
            }
            .tint(.primaryGray)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            .padding(20)
            }
            Divider()
            NavigationLink(destination: MoneyPediaView(), isActive: $isShowingMoneyPedia) {
            Button(action: {
                isShowingMoneyPedia = true
            }) {
                VStack {
                    Text("NovacPedia").font(.custom("Raleway", size: 24)).fontWeight(.bold)
                        .foregroundColor(.primaryGreen)
                }
                .frame(maxWidth: .infinity)
            }
            .tint(.primaryGray)
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            .padding(20)
            }
            Spacer()
        }
    }
}

struct MyProfileView_Previews: PreviewProvider {
    static var previews: some View {
        MyProfileView()
    }
}
