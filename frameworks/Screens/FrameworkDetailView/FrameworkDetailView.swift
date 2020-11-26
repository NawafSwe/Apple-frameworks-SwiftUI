//
//  FrameworkDetailView.swift
//  frameworks
//
//  Created by Nawaf B Al sharqi on 09/11/2020.
//

import SwiftUI

struct FrameworkDetailView: View {
    //MARK:- States
    /// we are relaying on the data from the previous screen so we use observed object wrapper
    @ObservedObject var viewModel: FrameworkDetailViewModel
    var body: some View {
        VStack{
            //X mark button to dismiss from current view , using wrappedValue to take the binding values
            XmarkView(dissmis: self.$viewModel.isShowingDetailView.wrappedValue)
            
            Spacer()
            //framework title view
            FrameworkTitleView(framework: viewModel.frameWork)
            
            
            Text("\(viewModel.frameWork.description)")
                //making body to be like paragraph to read
                .font(.body)
                .padding()
            
            Spacer()
            
            /// built in swiftUI safari
            Link(destination:  URL(string: viewModel.frameWork.urlString) ?? URL(string:"www.apple.com")!, label: {
                AFButtonView(title:"Learn More")
            })
            
//            // button to view safari
//            Button(action: {self.viewModel.showSafariDetail.toggle()}, label: {
//                AFButtonView(title:"Learn More")
//            })
//
//            .sheet(isPresented: self.$viewModel.showSafariDetail){
//                //if there is no url redirect user to apple.com or your server side with custom page
//                SafariView(url: URL(string: viewModel.frameWork.urlString) ?? URL(string:"www.apple.com")!)
//            }
        }
        .padding(.vertical,50)
        
    }
}
struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(viewModel: FrameworkDetailViewModel(framework: MockData.sampleFramework, isShowingDetailView: .constant(false)))
            .preferredColorScheme(.dark)
    }
}




