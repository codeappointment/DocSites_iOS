//
//  ScrapingItemView.swift
//  DocSites
//
//  Created by Shahriar Nasim Nafi on 19/4/21.
//

import SwiftUI

struct ScrapingListView: View {
    @Binding var parentId: Int
    @Binding var childId: Int
    @Binding var entity: Entity?
    @Binding var showWebsite: String?
    @Binding var loading: Bool
    @Binding var scrapingItems: [ScrapingItem]
    @State var subtitle: String = ""
    

    
    var body: some View {
        ZStack {
            NavigationView {
                VStack {
                    header
                        .frame(height: 250)
                        .edgesIgnoringSafeArea(.all)
                    ScrollView {
                        VStack {
                                ForEach(scrapingItems) { scrapingItem in
                                    if showWebsite != nil {
                                        NavigationLink(
                                            destination: WebsiteView(url: showWebsite!),
                                            label: {
                                                ScrapingView(scrapingItem: scrapingItem)
                                            })
                                       
                                    } else {
                                        ScrapingView(scrapingItem: scrapingItem)
                                        
                                    }
                                }
                        }
                    }
                    
                    
                }.navigationBarHidden(true)
            }
            if loading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
                    .onAppear { scrapingItems.removeAll() }
            }
        }
    }
    
    var header: some View {
    
        VStack(alignment: .center) {
            Spacer()
            HStack {
                Spacer()
                VStack {
                    Image(entity!.title.lowercased())
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                    Text(entity!.title)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
                Spacer()
            }
            Text(subtitle)
                .foregroundColor(.white)
                .font(.custom("Kalpursh", size: 17))
                .multilineTextAlignment(.leading)
                .onAppear { subtitle = entity!.items.first(where: { $0.id == childId })!.title }
                    
                
        }
        .padding(.all)
        .gradientBackground()
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
        .shadow(color: .gray, radius: 20, x: 3, y: 2)
    }
}

struct ScrapingListView_Previews: PreviewProvider {
    @State  static var scrapingItems = [ScrapingItem]()
    @State  static var showWebsite: String? = "false"
    static var previews: some View {
        ScrapingListView(parentId: .constant(1),childId: .constant(2), entity: .constant(entities[0]), showWebsite: $showWebsite, loading: .constant(true), scrapingItems: $scrapingItems)
    }
}
