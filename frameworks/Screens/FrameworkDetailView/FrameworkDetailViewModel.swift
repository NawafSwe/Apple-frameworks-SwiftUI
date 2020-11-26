//
//  FrameworkDetailViewModel.swift
//  frameworks
//
//  Created by Nawaf B Al sharqi on 26/11/2020.
//

import Foundation
import SwiftUI

final class FrameworkDetailViewModel: ObservableObject{
    let frameWork: Framework
    var isShowingDetailView : Binding<Bool>
    @Published var  showSafariDetail: Bool = false
    init(framework:Framework , isShowingDetailView: Binding<Bool> ){
        self.frameWork = framework
        self.isShowingDetailView = isShowingDetailView
    }
}
