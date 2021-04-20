//
//  SiteItemView.swift
//  DocSites
//
//  Created by Shahriar Nasim Nafi on 15/4/21.
//

import SwiftUI

struct SiteItemView: View {
    var title: String = "Home page"
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .font(.title2)
                    .foregroundColor(.blue)
                    
                Spacer()
            }
        }
        .padding(.all)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 2, style: .continuous))
       
    }
}

struct SiteItemView_Previews: PreviewProvider {
    static var previews: some View {
        SiteItemView()
    }
}
