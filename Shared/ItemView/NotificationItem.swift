//
//  NotificationItem.swift
//  DocSites
//
//  Created by Shahriar Nasim Nafi on 17/4/21.
//

import SwiftUI

struct NotificationItem: View {
    var title: String = "Notication for"
    @Binding var isOn: Bool
    
    var body: some View {
        HStack {
            Toggle(title, isOn: $isOn)
        }
        .padding()
    }
}

struct NotificationItem_Previews: PreviewProvider {
    @State static var isOn = false
    static var previews: some View {
        NotificationItem(isOn: $isOn)
    }
}
