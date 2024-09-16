//
//  StartView.swift
//  NewsNetwork
//
//  Created by Nikita Krylov on 13.09.2024.
//

import SwiftUI

struct StartView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("News", destination: ContentView())
                .font(.system(size: 25))
        }
    }
}

#Preview {
    StartView()
}
