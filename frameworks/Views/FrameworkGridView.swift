//
//  FrameworkGridView.swift
//  frameworks
//
//  Created by Nawaf B Al sharqi on 09/11/2020.
//

import SwiftUI

struct FrameworkGridView: View {
     //MARK:- States
    @State var showDetail = false
    //using stateObject when injecting an object.
    @StateObject var viewModel : FrameworkGridViewModel = FrameworkGridViewModel()
    //MARK:- Variables
    //creating lazy grid , flexible telling him fill the size of the screen as much as you can
    //each gridItem inside the grid item array represents number of columns
    let columns : [GridItem] = [GridItem(.flexible()) ,GridItem(.flexible()) ,GridItem(.flexible())
    ]
    
    var body: some View {
        //navigation view
        NavigationView {
            //scroll view for lazyVGrid
            ScrollView{
                LazyVGrid(columns:columns){
                        ForEach(MockData.frameworks, id: \.id) { framework in
                            //making navigation links to navigate to detail view
                                    FrameworkTitleView(framework: framework)
                                        .onTapGesture(perform: {
                                            //making selected framework be the clicked framework
                                            self.viewModel.selectedFramework = framework
                                            //making show details true
                                            self.showDetail = true
                                        })
                                        //as long as show detail is true it means there is selected framework so unwrap it ! safely
                                        .sheet(isPresented: self.$showDetail, content: {FrameworkDetailView(frameWork: self.viewModel.selectedFramework!)})
                                     
                    }
                }
            }
         //navigation modifiers
            .navigationTitle(Text("🍎Frameworks"))
        }
        
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
            FrameworkGridView()
                .preferredColorScheme(.dark)
           
        
    }
}
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
