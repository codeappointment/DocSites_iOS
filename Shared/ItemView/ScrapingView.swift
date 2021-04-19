//
//  ScrapingItem.swift
//  DocSites
//
//  Created by Shahriar Nasim Nafi on 18/4/21.
//

import SwiftUI

struct ScrapingView: View {
    
    var scrapingItem: ScrapingItem
    
    var body: some View {
        VStack {
            HStack {
                Text(scrapingItem.title)
                    .font(.title2)
                Spacer()
            }
            .padding(.all)
            HStack {
                Spacer()
                Button("Share") {
                }
                .padding(.trailing, 5)
                Button("Copy Link") {
                    
                }
                .padding(.trailing, 5)
            }
        }
        .padding(.all)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 2, style: .continuous))
    }
}

struct ScrapingView_Previews: PreviewProvider {
    static var previews: some View {
        ScrapingView(scrapingItem: ScrapingItem(title: "Online Application for Residency Program Phase-B Final Thesis Examinations, July-2021", url: "http://exam.bsmmu.edu.bd/bsmmu_latest/local/student/"))
    }
}
