//
//  View2.swift
//  UiComponentization
//
//  Created by Victor Levenetz Mariano on 15/09/24.
//

import SwiftUI

struct View2: View {
    @Binding var activeView: activeViewEnum
    var body: some View {
        Text("Hell")
        Button {
                activeView = .view1
            } label: {
                Text("X")
            }

    }
}

#Preview {
    View2(activeView: .constant(.view2))
}
