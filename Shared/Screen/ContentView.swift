//
//  ContentView.swift
//  Shared
//
//  Created by Shahriar Nasim Nafi on 15/4/21.
//

import SwiftUI

struct ContentView: View {
    
    @Namespace var namespace
    @State var selectedEntity: Entity? = nil
    @State var show = false
    @State var disable = false
    
    var body: some View {
        ZStack {
           content
            fullContent
            
        }
    }
    
    var content: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))]) {
                    ForEach(entities) { entity in
                        VStack {
                            EntityView(entity: entity)
                                .matchedGeometryEffect(id: entity.id, in: namespace, isSource: !show)
                                .frame(height: 300)
                                .onTapGesture {
                                    withAnimation(.spring(response: 0.4, dampingFraction: 0.6, blendDuration: 0)) {
                                        show.toggle()
                                        selectedEntity = entity
                                        disable = true
                                    }
                                }
                                .disabled(disable)
                        }.matchedGeometryEffect(id: "base\(entity.id)", in: namespace)
                    }
                    
                }.padding(16)
            }
            .navigationTitle("DocSite")
            .zIndex(1)
        }
    }
    
    @ViewBuilder
    var fullContent: some View {
        if selectedEntity != nil {
            ZStack(alignment: .topTrailing) {
                EntityDetail(entity: selectedEntity!, namespace: namespace)
                DismissButton()
                    .padding(.trailing, 10)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            show.toggle()
                            selectedEntity = nil
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                disable = false
                            }
                        }
                    }
            }.zIndex(2)
            .frame(maxWidth: 712)
            .frame(maxWidth: .infinity)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}
