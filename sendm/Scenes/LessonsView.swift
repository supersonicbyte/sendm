//
//  LessonsView.swift
//  sendm
//
//  Created by Mirza Ucanbarlic on 18. 12. 2021..
//

import SwiftUI

struct LessonsView: View {
    let lorem =
"""
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse a lobortis est. Donec nibh leo, efficitur ut mauris et, blandit aliquet ex. Sed purus nulla, laoreet non sem ut, euismod dapibus dui. Proin ac venenatis risus. Maecenas imperdiet dui a ornare ullamcorper. Aliquam erat volutpat. Sed rutrum ac lorem quis auctor. In sed malesuada odio.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tempor sem eget magna auctor, at rutrum lectus vehicula. In laoreet gravida purus quis vestibulum. Integer ac hendrerit elit. Cras gravida urna non ligula faucibus lobortis. Donec tincidunt, lectus convallis semper pellentesque, mi neque pellentesque mi, pharetra lacinia nibh nulla et massa. Proin a condimentum lacus, nec tincidunt urna. Lorem ipsum dolor sit amet, consectetur adipiscing elit.
"""
    var body: some View {
        ScrollView {
        VStack {
            HStack {
                Image(systemName: "chevron.left")
                    .foregroundColor(.primaryGreen)
                Text("Lekcija 4")
                    .font(.custom("Raleway", size: 34))
                    .fontWeight(.bold)
                    .foregroundColor(.primaryGreen)
                Image(systemName: "chevron.right")
                    .foregroundColor(.primaryGreen)
                    .frame(width: 20, height: 20)
            }
            Divider()
            Text("Vođenje budžeta")
                .font(.custom("Raleway", size: 24))
                .fontWeight(.bold)
                .foregroundColor(.primaryGreen)
            Image("player")
                .resizable()
                .frame(height: 200)
            Text(lorem)
                .font(.custom("Raleway", size: 18))
                .foregroundColor(.primaryGreen)
            Spacer()
    }
        .padding()
}
    }
}

struct LessonsView_Previews: PreviewProvider {
    static var previews: some View {
        LessonsView()
    }
}
