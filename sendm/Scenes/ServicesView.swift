//
//  ServicesView.swift
//  sendm
//
//  Created by Mirza Ucanbarlic on 18. 12. 2021..
//

import Foundation
import SwiftUI

struct ServiceItem: Identifiable {
    let id = UUID()
    var title: String
    var provision: Double
    var description: String
    var color: Color
    var shortTitle: String
}

struct ServicesView: View {
    static let lorem =
"""
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse a lobortis est. Donec nibh leo, efficitur ut mauris et, blandit aliquet ex. Sed purus nulla, laoreet non sem ut, euismod dapibus dui. Proin ac venenatis risus. Maecenas imperdiet dui a ornare ullamcorper. Aliquam erat volutpat. Sed rutrum ac lorem quis auctor. In sed malesuada odio.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tempor sem eget magna auctor, at rutrum lectus vehicula. In laoreet gravida purus quis vestibulum. Integer ac hendrerit elit. Cras gravida urna non ligula faucibus lobortis. Donec tincidunt, lectus convallis semper pellentesque, mi neque pellentesque mi, pharetra lacinia nibh nulla et massa. Proin a condimentum lacus, nec tincidunt urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
"""
    var items = [
        ServiceItem(title: "Commerzbank AG", provision: 0, description: lorem
                    , color: Color.red, shortTitle: "cm"),
        ServiceItem(title: "Western Union", provision: 3.9, description: lorem
                    , color: Color.yellow, shortTitle: "we"),
        ServiceItem(title: "Azimo", provision: 2.99, description: lorem
                    , color: Color.purple, shortTitle: "az")
    ]
    var body: some View {
        Text("Pronasli smo 3 servisa")
            .font(.custom("Raleway", size: 40))
            .fontWeight(.bold)
            .foregroundColor(.primaryGreen)
            .multilineTextAlignment(.center)
        List(items) { item in
            ZStack {
                ServiceRow(service: item)
            NavigationLink(destination: ServiceDetailsView(service: item))
            {
            }
            .listRowSeparator(.hidden)
            .buttonStyle(PlainButtonStyle())
            .frame(width: 0)
            .opacity(0)
            .opacity(0)
            }
        }.listStyle(.plain)
    }
}

struct ServiceRow: View {
    var service: ServiceItem
    var body: some View {
        HStack {
            Text(service.shortTitle)
                .font(.custom("Raleway", size: 30))
                .fontWeight(.bold)
                .frame(width: 70, height: 79)
                .background(RoundedRectangle(cornerRadius: 10).fill(service.color).frame(width: 70, height: 70))
            Spacer()
            Divider()
            Spacer()
            VStack {
                Text("Provizija")
                    .font(.custom("Raleway", size: 20))
                    .foregroundColor(.primaryGreen)
                Text(String(format: "%.2f €", service.provision))
                    .font(.custom("Raleway", size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(.primaryGreen)
            }
            Spacer()
            Divider()
            Spacer()
            Image(systemName:"info.circle")
                .resizable()
                .foregroundColor(.primaryGray)
                .frame(width: 20, height: 20)
            Spacer()
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 20).stroke(Color.primaryGray, lineWidth: 2))
        .listRowSeparator(.hidden)
    }
}
