//
//  FrameworkDetailView.swift
//  frameworks
//
//  Created by Nawaf B Al sharqi on 09/11/2020.
//

import SwiftUI

struct FrameworkDetailView: View {
    var frameWork: Framework
    var body: some View {
        VStack{
            //framework title view
            FrameworkTitleView(framework: frameWork)

            
            Text("\(frameWork.description)")
                //making body to be like paragraph to read
                .font(.body)
                .padding()
               
                Spacer()
            
            LearnMoreButton()
                }
        .padding(.vertical,50)
        
    }
}
struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(frameWork: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}

struct LearnMoreButton : View{
    var body: some View{
        Button(action: {
            print("button printed")
        }, label: {
            Text("Learn More")
                .frame(width: 250, height: 50)
                .background(Color(#colorLiteral(red: 0.9918883443, green: 0.3287213445, blue: 0.2923873961, alpha: 1)))
                .foregroundColor(.white)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
        })
    }
}
