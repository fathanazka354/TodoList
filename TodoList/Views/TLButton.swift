//
//  TLButton.swift
//  TodoList
//
//  Created by fathan azka on 04/12/24.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let backgroundColor: Color
    let action : ()->Void
    var body: some View {
        Button{
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }.padding()
    }
}

#Preview {
    TLButton(title: "Title", backgroundColor: .blue,action: {})
}
