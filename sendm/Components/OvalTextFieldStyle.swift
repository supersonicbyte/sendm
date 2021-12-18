//
//  OvalTextFieldStyle.swift
//  sendm
//
//  Created by Mirza Ucanbarlic on 18. 12. 2021..
//

import Foundation
import SwiftUI

struct OvalTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(10)
            .background(.white)
            .cornerRadius(40)
            .font(.custom("Raleway", size: 24))
    }
}
