//
//  View1.swift
//  UiComponentization
//
//  Created by Victor Levenetz Mariano on 15/09/24.
//

import SwiftUI

struct View1: View {
    @Binding var activeView: activeViewEnum
    var body: some View {
        Button {
            activeView = .view2
        } label: {
            Text("X")
        }
    }
}





