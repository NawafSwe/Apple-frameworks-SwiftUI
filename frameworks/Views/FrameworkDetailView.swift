//
//  FrameworkDetailView.swift
//  frameworks
//
//  Created by Nawaf B Al sharqi on 09/11/2020.
//

import SwiftUI

struct FrameworkDetailView: View {
     //MARK:- States
    @State var frameWork: Framework
    
    var body: some View {
        VStack{
            //X mark button to dismiss from current view
            XmarkButtonView()
                   
            Spacer()
            //framework title view
            FrameworkTitleView(framework: frameWork)

            
            Text("\(frameWork.description)")
                //making body to be like paragraph to read
                .font(.body)
                .padding()
               
                Spacer()
            
            AFButtonView(title:"Learn More")
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



struct XmarkButtonView: View {
    var body: some View {
        HStack{
            Spacer()
            
            Button(action: {}, label: {
                Image(systemName: "xmark")
                    //.label black in white mode and white in dark mode
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    // 44 is a touch target
                    .frame(width:44, height: 44)
            })
            
            
        }
        .padding()
       
    }
}
