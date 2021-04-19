//
//  EntityDetail.swift
//  DocSites
//
//  Created by Shahriar Nasim Nafi on 15/4/21.
//

import SwiftUI

struct EntityDetail: View {
    var entity: Entity = entities.first!
    var namespace: Namespace.ID
    
    @ViewBuilder
    var body: some View {
        
        #if os(iOS)
        content.edgesIgnoringSafeArea(.all)
        #else
        content
        #endif
        
    }
    
    var content: some View {
        VStack() {
            header
                .frame(height: 260)
                .matchedGeometryEffect(id: entity.id, in: namespace)
            VStack {
                ScrollView {
                    ForEach(entity.items) { item in
                        NavigationLink(destination: WebsiteView(url: "https://www.bsmmu.edu.bd")) {
                            SiteItemView(title: item.title)
                        }
                        Divider()
                            
                    }
                }
            }
            .padding()
        }.matchedGeometryEffect(id: "base\(entity.id)", in: namespace)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 0, style: .continuous))
    }
    
    var header: some View {
    
        HStack{
            VStack(alignment: .leading) {
                Spacer()
                HStack(alignment: .bottom) {
                    Image(entity.title.lowercased())
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80)
                    Text(entity.title)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
                Text(entity.header)
                    .font(.custom("Kalpursh", size: 17))
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.white)
                Text(entity.subheader)
                    .font(.footnote)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
    
              
            }
           
            Spacer()
        }.padding(.all)
        .gradientBackground()
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
        .shadow(color: .gray, radius: 20, x: 3, y: 2)
    }
}

struct EntityDetail_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        EntityDetail(namespace: namespace)
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}
