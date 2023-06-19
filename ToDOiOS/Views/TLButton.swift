//
//  TLButton.swift
//  ToDOiOS
//
//  Created by Igor Odaryuk on 19.06.2023.
//

import Foundation
import SwiftUI

struct TLButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            //Action
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
    }
}

struct TLButton_Previews: PreviewProvider {
    static var previews: some View {
        TLButton(title: "Value", background: .green) {
            //Action
        }
    }
}
