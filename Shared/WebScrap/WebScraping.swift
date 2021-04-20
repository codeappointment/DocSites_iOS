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

extension EntityDetail {
    
    func dataForItem(parentIndex: Int, childIndex: Int, data: Any) -> some View {
        switch parentIndex {
        case 1:
            switch childIndex {
            case 1:
                return AnyView(NavigationLink(destination: WebsiteView(url: "https://www.bsmmu.edu.bd")) {
                    SiteItemView(title: data as! String)
                })
                
            case 2:
                return  AnyView(SiteItemView(title: data as! String)
                    .sheet(isPresented: $showModal, content: {
                        ScrapingListView(parentIndex: parentIndex, childIndex: childIndex, entity: .constant(entity), loading: $webScrap.loading, scrapingItems: $webScrap.scrapingItems)
                           
                    }).onTapGesture {
                        showModal = true
                        DispatchQueue.global(qos: .userInitiated).async {
                            webScrap.BSMMUTypeOne()
                        }
                    })
                                   
            case 3:
                return  AnyView(SiteItemView(title: data as! String)
                    .sheet(isPresented: $showModal, content: {
                        ScrapingListView(parentIndex: parentIndex, childIndex: childIndex, entity: .constant(entity), loading: $webScrap.loading, scrapingItems: $webScrap.scrapingItems)
                    }).onTapGesture {
                        showModal = true
                        DispatchQueue.global(qos: .userInitiated).async {
                            webScrap.BSMMUTypeTwo()
                        }
                    })
                
            case 4:
                return  AnyView(SiteItemView(title: data as! String)
                    .sheet(isPresented: $showModal, content: {
                        ScrapingListView(parentIndex: parentIndex, childIndex: childIndex, entity: .constant(entity), loading: $webScrap.loading, scrapingItems: $webScrap.scrapingItems)
                    }).onTapGesture {
                        showModal = true
                        DispatchQueue.global(qos: .userInitiated).async {
                            webScrap.BSMMUTag(url: "https://www.bsmmu.edu.bd", tagForText: "#tab1 a", attr: "abs:href")
                        }
                    })
                
            case 5:
                return  AnyView(SiteItemView(title: data as! String)
                    .sheet(isPresented: $showModal, content: {
                        ScrapingListView(parentIndex: parentIndex, childIndex: childIndex, entity: .constant(entity), loading: $webScrap.loading, scrapingItems: $webScrap.scrapingItems)
                            
                    }).onTapGesture {
                        showModal = true
                        DispatchQueue.global(qos: .userInitiated).async {
                            webScrap.BSMMUTag(url: "https://www.bsmmu.edu.bd", tagForText: "#tab3 a", attr: "abs:href")
                        }
                    })
                
            case 6:
        
                return AnyView(NavigationLink(destination: WebsiteView(url: "https://www.bsmmu.edu.bd/?page=menu&content=139020387254")) {
                    SiteItemView(title: data as! String)
                })
            case 7:
                return AnyView(NavigationLink(destination: WebsiteView(url: "https://www.bsmmu.edu.bd/?page=menu&content=139020390785")) {
                    SiteItemView(title: data as! String)
                })
            default:
                return AnyView(NavigationLink(destination: WebsiteView(url: "https://www.bsmmu.edu.bd")) {
                    SiteItemView(title: data as! String)
                })
            }
            
        default:
            return AnyView(NavigationLink(destination: WebsiteView(url: "https://www.bsmmu.edu.bd")) {
                SiteItemView(title: data as! String)                
            })
        }
        
        
        
    }
}
