//
//  CustomProgressViewStyle.swift
//  sendm
//
//  Created by Mirza Ucanbarlic on 18. 12. 2021..
//

import Foundation
import SwiftUI

struct CustomProgressViewStyle: ProgressViewStyle {
   func makeBody(configuration: Configuration) -> some View {
       ZStack(alignment: .leading) {
           RoundedRectangle(cornerRadius: 14)
               .frame(height: 20)
               .foregroundColor(.primaryGray)
           RoundedRectangle(cornerRadius: 14)
               .frame(width: CGFloat(configuration.fractionCompleted ?? 0) * 250, height: 20)
               .foregroundColor(.primaryGreen)
       }
       .padding()
   }
}
