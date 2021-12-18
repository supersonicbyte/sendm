//
//  ServiceDetailsView.swift
//  sendm
//
//  Created by Mirza Ucanbarlic on 18. 12. 2021..
//

import SwiftUI

struct ServiceDetailsView: View {
    let service: ServiceItem
    var body: some View {
        ScrollView {
            VStack {
                Text(service.shortTitle)
                    .font(.custom("Raleway", size: 30))
                    .fontWeight(.bold)
                    .frame(width: 70, height: 79)
                    .background(RoundedRectangle(cornerRadius: 10).fill(service.color).frame(width: 70, height: 70))
                Text(service.title)
                    .font(.custom("Raleway", size: 30))
                    .fontWeight(.bold)
                Text(service.description)
                    .font(.custom("Raleway", size: 18))
                    .multilineTextAlignment(.leading)
                    .padding()
                Button(action: {}) {
                    VStack {
                        Text("Posjeti servis").font(.custom("Raleway", size: 24)).fontWeight(.bold)
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
            }
    }
    }
