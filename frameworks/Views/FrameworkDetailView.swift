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


