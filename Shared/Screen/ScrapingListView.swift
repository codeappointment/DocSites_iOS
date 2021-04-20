//
//  ScrapingItemView.swift
//  DocSites
//
//  Created by Shahriar Nasim Nafi on 19/4/21.
//

import SwiftUI

struct ScrapingListView: View {
    var parentIndex: Int = 0
    var childIndex: Int = 1
    @Binding var entity: Entity?
    
    @Binding var loading: Bool
    @Binding var scrapingItems: [ScrapingItem]
    

    
    var body: some View {
        ZStack {
            VStack {
                header
                    .frame(height: 250)
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack {
                            ForEach(scrapingItems) {
                               ScrapingView(scrapingItem: $0)
                            }
                    }
                }.onAppear {print(entity!.items[childIndex].title)}
                
                
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
            Text(entity!.items[childIndex].title)
                .foregroundColor(.white)
                .font(.custom("Kalpursh", size: 17))
                .multilineTextAlignment(.leading)
                    
                
        }
        .padding(.all)
        .gradientBackground()
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
        .shadow(color: .gray, radius: 20, x: 3, y: 2)
    }
}

struct ScrapingListView_Previews: PreviewProvider {
    @State  static var scrapingItems = [ScrapingItem]()
    
    static var previews: some View {
        ScrapingListView(entity: .constant(entities[0]), loading: .constant(true), scrapingItems: $scrapingItems)
    }
}
