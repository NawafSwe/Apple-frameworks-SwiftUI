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
    var selectedFramework : Framework?
}
