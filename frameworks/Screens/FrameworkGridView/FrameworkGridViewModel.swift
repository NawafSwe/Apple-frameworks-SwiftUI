//
//  FrameworkGridViewModel.swift
//  frameworks
//
//  Created by Nawaf B Al sharqi on 09/11/2020.
//

import Foundation
import SwiftUI

 //MARK:- FrameworkGridViewModel
/**
 ObservableObject means that this view is can be updated any time depend on the data so I want you to listen to the updates which
 it will be published where you use FrameworkGridViewModel
 note: making class final here because there is no sub-classes
 
 */
final class FrameworkGridViewModel : ObservableObject{
    //if selected framework
    var selectedFramework : Framework? {
        //if the frameWork been set make showDetail true which is the mean of didSet is to check
        didSet{ self.isShowingDetail = true }
    }
    
    //Published to listen to any change for the variable and use it or do action for it.
  @Published var isShowingDetail : Bool = false
    
    //creating lazy grid , flexible telling him fill the size of the screen as much as you can
    //each gridItem inside the grid item array represents number of columns
    let columns : [GridItem] = [ GridItem(.flexible()) ,GridItem(.flexible()) ,GridItem(.flexible()) ]
}
