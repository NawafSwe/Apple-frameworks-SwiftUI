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
    @State var showSafariDetail: Bool = false
    
    var body: some View {
        VStack{
            //X mark button to dismiss from current view
            HStack{
                Spacer()
                
                Button(action: {
                    //because it is linked to viewModel it will dismiss its self from the sheet because it is published
                    self.isShowingDetailView = false
                
                }, label: {
                    Image(systemName: "xmark")
                        //.label black in white mode and white in dark mode
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        // 44 is a touch target
                        .frame(width:44, height: 44)
                })
                
                
            }
            .padding()
                   
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
                //do not unwrap URL unless you are sure
                SafariView(url: URL(string: self.frameWork.urlString)!)
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




