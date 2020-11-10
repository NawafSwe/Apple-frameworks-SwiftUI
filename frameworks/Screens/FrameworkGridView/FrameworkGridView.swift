//
//  FrameworkGridView.swift
//  frameworks
//
//  Created by Nawaf B Al sharqi on 09/11/2020.
//

import SwiftUI

struct FrameworkGridView: View {
     //MARK:- States

    //using stateObject when injecting an object.
    @StateObject var viewModel : FrameworkGridViewModel = FrameworkGridViewModel()
   
    var body: some View {
        //navigation view
        NavigationView {
            //scroll view for lazyVGrid
            ScrollView{
                //LazyGrid to not load everything at once
                LazyVGrid(columns:self.viewModel.columns){
                        ForEach(MockData.frameworks, id: \.id) { framework in
                            //making navigation links to navigate to detail view
                                    FrameworkTitleView(framework: framework)
                                        .onTapGesture(perform: {
                                            //making selected framework be the current clicked framework
                                            self.viewModel.selectedFramework = framework
                                        })
                                        //if in case that the selectedFramework is nil you can create a custom view that tells the user does not exist or error but in this case we will pass the sample frame work if nil , if the viewModel.isShowingDetail updated to false the sheet will dismiss it self.
                                        .sheet(isPresented: self.$viewModel.isShowingDetail){
                                            //content
                                            FrameworkDetailView(frameWork: self.viewModel.selectedFramework ?? MockData.sampleFramework,isShowingDetailView: self.$viewModel.isShowingDetail)}
                                     
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
