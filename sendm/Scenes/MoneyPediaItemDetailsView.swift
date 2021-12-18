//
//  MoneyPediaItemDetailsView.swift
//  sendm
//
//  Created by Mirza Ucanbarlic on 18. 12. 2021..
//

import SwiftUI

struct MoneyPediaItemDetailsView: View {
    var item: PediaItem
    var body: some View {
        VStack {
            Text(item.title).font(.custom("Raleway", size: 34)).foregroundColor(.primaryGreen).fontWeight(.bold)
        Divider()
        Text(item.description).font(.custom("Raleway", size: 18)).foregroundColor(.primaryGreen)
        Spacer()
        }
    }
}
