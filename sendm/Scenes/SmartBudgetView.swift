//
//  SmartBudgetView.swift
//  sendm
//
//  Created by Mirza Ucanbarlic on 18. 12. 2021..
//

import SwiftUI
import SwiftPieChart

struct SmartBudgetView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("Pametni budzet")
                    .font(.custom("Raleway", size: 34))
                    .fontWeight(.bold)
                    .foregroundColor(.primaryGreen)
                Divider()
                HStack {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.primaryGreen)
                    Text("Decembar")
                        .font(.custom("Raleway", size: 20))
                        .fontWeight(.bold)
                        .foregroundColor(.primaryGreen)
                    Image(systemName: "chevron.right")
                        .foregroundColor(.primaryGreen)
                }
                
                Button(action: {}) {
                    VStack {
                        Text("Dodaj stavku").font(.custom("Raleway", size: 24)).fontWeight(.bold)
                            .foregroundColor(.primaryGreen)
                    }
                    .frame(maxWidth: .infinity)
                }
                .tint(.primaryGray)
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.capsule)
                .controlSize(.large)
                .padding(20)
                PieChartView(
                    values: [1300, 500, 300, 200],
                    names: ["Rezije", "Hrana", "Zabava", "Pretplate"],
                    formatter: {value in String(format: "$%.2f", value)},
                    colors: [Color.primaryGray, Color.primaryGreen, Color.red, Color.yellow],
                    backgroundColor: .white)
                
            }
            .padding()
        }
    }
}

struct SmartBudgetView_Previews: PreviewProvider {
    static var previews: some View {
        SmartBudgetView()
    }
}
