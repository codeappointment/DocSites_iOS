//
//  EntityView.swift
//  DocSites
//
//  Created by Shahriar Nasim Nafi on 15/4/21.
//

import SwiftUI

struct EntityView: View {
    var entity: Entity = entities.first!
    
    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            HStack {
                Text(entity.title)
                    .font(.largeTitle)
                    .foregroundColor(.white)
              
            }
            HStack {
                Spacer()
                Image(entity.title.lowercased())
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80)
                Spacer()
            }
            Text(entity.header)
                .foregroundColor(.white)
                .font(.custom("Kalpursh", size: 17))
                .multilineTextAlignment(.leading)
            Text(entity.subheader)
                .foregroundColor(.white)
                .font(.footnote)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.leading)
          
        }
        .padding(.all)
        .background(Color.orange)
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
        .shadow(color: .gray, radius: 20, x: 3, y: 2)
    }
}

struct EntityView_Previews: PreviewProvider {
    static var previews: some View {
        EntityView()
    }
}
