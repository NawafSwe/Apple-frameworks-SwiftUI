//
//  LearnMoreButton.swift
//  frameworks
//
//  Created by Nawaf B Al sharqi on 09/11/2020.
//

import SwiftUI

struct AFButton : View{
     //MARK:- variables
    //title of the button
    var title: String
    var body: some View{
        Button(action: {
            print("button printed")
        }, label: {
            Text("\(title)")
                .font(.title2)
                .fontWeight(.semibold)
                .frame(width: 250, height: 50)
                .background(Color(#colorLiteral(red: 0.9918883443, green: 0.3287213445, blue: 0.2923873961, alpha: 1)))
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
        })
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title:"Learn More")
    }
}
