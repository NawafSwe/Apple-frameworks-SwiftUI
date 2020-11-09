//
//  FrameworkGridView.swift
//  frameworks
//
//  Created by Nawaf B Al sharqi on 09/11/2020.
//

import SwiftUI

struct FrameworkGridView: View {
     //MARK:- States
    
    //MARK:- Variables
    //creating lazy grid , flexible telling him fill the size of the screen as much as you can
    //each gridItem inside the grid item array represents number of columns
    let columns : [GridItem] = [GridItem(.flexible()) ,GridItem(.flexible())
        ,GridItem(.flexible())
    ]
    
    
    var body: some View {
        LazyVGrid(columns:columns){
            FrameworkTitleView(name: "ClassKit", image: "classkit")
            FrameworkTitleView(name: "ClassKit", image: "classkit")
            FrameworkTitleView(name: "ClassKit", image: "classkit")
            FrameworkTitleView(name: "ClassKit", image: "classkit")
        }
    
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
 //MARK:- FrameworkTitleView
struct FrameworkTitleView : View{
    let name: String
    let image: String
    var body: some View{
        //creating VStack that holds the framework icon and name
        VStack{
            Image("\(image)")
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fill)
            Text("\(name)")
                .font(.title)
                .fontWeight(.semibold)
                //making the text shrinks if need it
                .scaledToFit()
            //minimum shrink
                .minimumScaleFactor(0.5)
        }

    }
}
