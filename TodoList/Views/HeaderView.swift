//
//  HeaderView.swift
//  TodoList
//
//  Created by fathan azka on 04/12/24.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subTitle: String
    let angle: Double
    let background: Color
    var body: some View {
        ZStack(){
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(background)
                .rotationEffect(Angle(degrees:angle))
            
            VStack{
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                Text(subTitle)
                    .font(.system(size: 30))
                    .foregroundColor(Color.white)
            }.padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds.width * 3,height: 350)
        .offset(y: -150)
        
    }
}

#Preview {
    HeaderView(title: "Title", subTitle: "Sub Title", angle: 15, background: .blue )
}
