//
//  TabBarButton.swift
//  SharedTabBar
//
//  Created by recherst on 2021/9/4.
//

import SwiftUI

struct TabBarButton: View {
    var image: String
    var title: String
    @Binding var selectedTab: String
    var body: some View {
        Button(action: {
            withAnimation(.easeInOut) { selectedTab = title }
        }, label: {
            VStack(spacing: 6) {
                Image(systemName: image)
                    .font(.system(size: 30))
                    // For Dark mode adoption
                    .foregroundColor(selectedTab == title ? .white : .primary)

                Text(title)
                    .font(.caption)
                    .fontWeight(.semibold)
                    // For Dark mode adoption
                    .foregroundColor(selectedTab == title ? .white : .primary)
            }
            .padding(.bottom, 8)
            // Total four tabs
            .frame(width: (rect.width - 75) / 4, height: 55 + safeAreaBottom)
            // Bottom up effect
            .background(Color("purple").offset(y: selectedTab == title ? 0 : 110))
        })
    }
}

struct TabBarButton_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
