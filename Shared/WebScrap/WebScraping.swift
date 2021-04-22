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
    
    func dataForItem(parentId: Int, childId: Int, data: Any) -> some View {
        switch parentId {
        case 1:
            switch childId {
            case 1:
                return AnyView(NavigationLink(destination: WebsiteView(url: "https://www.bsmmu.edu.bd")) {
                    SiteItemView(title: data as! String)
                })
                
            case 2:
                return  AnyView(SiteItemView(title: data as! String)
                                    .sheet(isPresented: $showModal, content: {
                                        ScrapingListView(parentId: .constant(parentId), childId: .constant(childId), entity: .constant(entity), showWebsite: .constant(nil), loading: $webScrap.loading, scrapingItems: $webScrap.scrapingItems)
                                        
                                    }).onTapGesture {
                                        showModal = true
                                        DispatchQueue.global(qos: .userInitiated).async {
                                            webScrap.BSMMUTypeOne()
                                        }
                                    })
                
            case 3:
                return  AnyView(SiteItemView(title: data as! String)
                                    .sheet(isPresented: $showModal, content: {
                                        ScrapingListView(parentId: .constant(parentId), childId: .constant(childId), entity: .constant(entity), showWebsite: .constant(nil), loading: $webScrap.loading, scrapingItems: $webScrap.scrapingItems)
                                    }).onTapGesture {
                                        showModal = true
                                        DispatchQueue.global(qos: .userInitiated).async {
                                            webScrap.BSMMUTypeTwo()
                                        }
                                    })
                
            case 4:
                return  AnyView(SiteItemView(title: data as! String)
                                    .sheet(isPresented: $showModal, content: {
                                        ScrapingListView(parentId: .constant(parentId), childId: .constant(childId), entity: .constant(entity), showWebsite: .constant(nil), loading: $webScrap.loading, scrapingItems: $webScrap.scrapingItems)
                                    }).onTapGesture {
                                        showModal = true
                                        DispatchQueue.global(qos: .userInitiated).async {
                                            webScrap.BSMMUTag(url: "https://www.bsmmu.edu.bd", tagForText: "#tab1 a", attr: "abs:href")
                                        }
                                    })
                
            case 5:
                return  AnyView(SiteItemView(title: data as! String)
                                    .sheet(isPresented: $showModal, content: {
                                        ScrapingListView(parentId: .constant(parentId), childId: .constant(childId), entity: .constant(entity), showWebsite: .constant(nil), loading: $webScrap.loading, scrapingItems: $webScrap.scrapingItems)
                                        
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
            
        case 2:
            switch childId {
            case 1:
                return AnyView(NavigationLink(destination: WebsiteView(url: "https://bcps.edu.bd/")) {
                    SiteItemView(title: data as! String)
                })
                
            case 2:
                return  AnyView(NavigationLink(destination: WebsiteView(url: "https://bcps.edu.bd/notice.php")) {
                    SiteItemView(title: data as! String)
                })
                
            case 3:
                return  AnyView(NavigationLink(destination: WebsiteView(url: "https://bcps.edu.bd/exam_fees.htm")) {
                    SiteItemView(title: data as! String)
                })
                
            case 4:
                return  AnyView(NavigationLink(destination: WebsiteView(url: "https://bcps.edu.bd/result/")) {
                    SiteItemView(title: data as! String)
                })
                
            case 5:
                return  AnyView(SiteItemView(title: data as! String)
                                    .sheet(isPresented: $showModal, content: {
                                        ScrapingListView(parentId: .constant(parentId), childId: .constant(childId), entity: .constant(entity), showWebsite: .constant("https://bcps.edu.bd/refund.htm"), loading: .constant(false), scrapingItems: .constant([ScrapingItem(title: "In case a candidate wishes not to appear in any of the examinations of the College after submission of application, he must apply to College on or before the 27th May for the July examination and on or before the 27th November for the January examination about his intention to withdraw. In these circumstances the candidate is eligible to get a refund of his fee after a 25% deduction. No application will be entertained after the date mentioned above and the fee will not be freewill not be refunded.", url: "https://bcps.edu.bd/refund.htm")]))
                                    }).onTapGesture {
                                        showModal = true
                                    })
            default:
                return AnyView(NavigationLink(destination: WebsiteView(url: "https://bcps.edu.bd/")) {
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
