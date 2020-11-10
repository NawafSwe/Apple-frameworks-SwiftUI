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
    @Binding var isShowingDetailView : Bool
    @State private var showSafariDetail: Bool = false
    
    var body: some View {
        VStack{
            //X mark button to dismiss from current view
            XmarkView(dissmis: self.$isShowingDetailView)
                   
            Spacer()
            //framework title view
            FrameworkTitleView(framework: frameWork)

            
            Text("\(frameWork.description)")
                //making body to be like paragraph to read
                .font(.body)
                .padding()
               
                Spacer()
            
            // button to view safari
            Button(action: {self.showSafariDetail.toggle()}, label: {
                AFButtonView(title:"Learn More")
            })
        
            .sheet(isPresented: self.$showSafariDetail){
                //if there is no url redirect user to apple.com or your server side with custom page
                SafariView(url: URL(string: self.frameWork.urlString) ?? URL(string:"www.apple.com")!)
            }
                }
        .padding(.vertical,50)
        
    }
}
struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(frameWork: MockData.sampleFramework, isShowingDetailView: .constant(false))
            .preferredColorScheme(.dark)
    }
}




