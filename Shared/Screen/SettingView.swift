//
//  SettingView.swift
//  DocSites
//
//  Created by Shahriar Nasim Nafi on 17/4/21.
//

import SwiftUI

struct SettingView: View {
    
    @AppStorage("BSMMU") var bsmmu = true
    @AppStorage("DGHS") var dghs = true
    @AppStorage("CCD") var ccd = true
    @AppStorage("BPSC") var bpsc = true
    @AppStorage("MOHFW") var mohfw = true
    @AppStorage("DGFP") var dgfp = true
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Notification")) {
                    
                    NotificationItem(title: "BSMMU", isOn: $bsmmu)
                    NotificationItem(title: "DGHS", isOn: $dghs)
                    NotificationItem(title: "CCD", isOn: $ccd)
                    NotificationItem(title: "BPSC", isOn: $bpsc)
                    NotificationItem(title: "MOHFW", isOn: $mohfw)
                    NotificationItem(title: "DGFP", isOn: $dgfp)
                   
                }
            }.navigationTitle("Setting")
            .listStyle(InsetGroupedListStyle())
        }
     
       
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
    }
}
