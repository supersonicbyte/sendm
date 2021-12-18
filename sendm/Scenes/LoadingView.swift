//
//  LoadingView.swift
//  sendm
//
//  Created by Mirza Ucanbarlic on 18. 12. 2021..
//

import Foundation
import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color.primaryGreen.ignoresSafeArea(.all)
            VStack {
                Text("Trazimo odgovarajuce servise...")
                    .font(.custom("Raleway", size: 40))
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                Spacer()
                Image("senndm11 1")
                    .resizable()
                    .frame(width: 100, height: 150)
            }
        }
    }
}
