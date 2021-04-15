//
//  DismissButton.swift
//  DocSites
//
//  Created by Shahriar Nasim Nafi on 15/4/21.
//

import SwiftUI

struct DismissButton: View {
    var body: some View {
        Image(systemName: "xmark")
            .padding()
            .foregroundColor(.white)
            .background(Color.clear)
            .clipShape(Circle())
    }
}

struct DismissButton_Previews: PreviewProvider {
    static var previews: some View {
        DismissButton()
    }
}
