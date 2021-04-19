//
//  WebsiteView.swift
//  DocSites
//
//  Created by Shahriar Nasim Nafi on 18/4/21.
//

import SwiftUI

struct WebsiteView: View {
    @State var loading: Bool = true
    var url: String
    var body: some View {
        ZStack {
            Webview(url: URL(string: url)!) {
                self.loading = false
            }
            if loading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
            }
            
        }
        
        
    }
}

struct WebsiteView_Previews: PreviewProvider {
    static var previews: some View {
        WebsiteView(url: "https://snnafi.com")
    }
}
