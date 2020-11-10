//
//  FrameworkTitleView.swift
//  frameworks
//
//  Created by Nawaf B Al sharqi on 10/11/2020.
//

import SwiftUI
 //MARK:- FrameworkTitleView
struct FrameworkTitleView : View{
    let framework: Framework
    var body: some View{
        //creating VStack that holds the framework icon and name
        VStack{
            Image("\(framework.imageName)")
                .resizable()
                .frame(width: 90, height: 90)
            Text("\(framework.name)")
                .font(.title)
                .fontWeight(.semibold)
                //making the text shrinks if need it
                .scaledToFit()
            //minimum shrink
                .minimumScaleFactor(0.5)
        }
        .padding()

    }
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkTitleView(framework: MockData.sampleFramework)
    }
}
