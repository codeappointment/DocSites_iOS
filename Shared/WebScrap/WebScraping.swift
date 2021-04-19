//
//  WebScraping.swift
//  DocSites
//
//  Created by Shahriar Nasim Nafi on 19/4/21.
//

/// Problem
// Function declares an opaque return type, but the return statements in its body do not have matching underlying types
/// Solution
// Wrap in AnyView(view)

import SwiftUI

struct WebScraping {
    
    let parentIndex: Int
    let childIndex: Int
    
    static func dataForItem(parentIndex: Int,  childIndex: Int,  title: String) -> some View {
        switch parentIndex {
        case 1:
            switch childIndex {
            case 1:
                return AnyView(NavigationLink(destination: WebsiteView(url: "https://www.bsmmu.edu.bd")) {
                    SiteItemView(title: title)
                })
            case 2:
                return AnyView(NavigationLink(destination: WebsiteView(url: "https://www.bsmmu.edu.bd")) {
                    SiteItemView(title: title)
                })
            case 3:
                return AnyView(NavigationLink(destination: WebsiteView(url: "https://www.bsmmu.edu.bd")) {
                    SiteItemView(title: title)
                })
            case 4:
                return AnyView(NavigationLink(destination: WebsiteView(url: "https://www.bsmmu.edu.bd")) {
                    SiteItemView(title: title)
                })
            case 5:
                return AnyView(SiteItemView(title: title))
                
            case 6:
                return AnyView(NavigationLink(destination: WebsiteView(url: "https://www.bsmmu.edu.bd/?page=menu&content=139020387254")) {
                    SiteItemView(title: title)
                })
            case 7:
                return AnyView(NavigationLink(destination: WebsiteView(url: "https://www.bsmmu.edu.bd/?page=menu&content=139020390785")) {
                    SiteItemView(title: title)
                })
            case 8:
                return AnyView(NavigationLink(destination: WebsiteView(url: "https://www.bsmmu.edu.bd")) {
                    SiteItemView(title: title)
                })
            default:
                return AnyView(NavigationLink(destination: WebsiteView(url: "https://www.bsmmu.edu.bd")) {
                    SiteItemView(title: title)
                })
            }
            
        default:
            return AnyView(NavigationLink(destination: WebsiteView(url: "https://www.bsmmu.edu.bd")) {
                SiteItemView(title: title)                
            })
        }
        
        
        
    }
}
