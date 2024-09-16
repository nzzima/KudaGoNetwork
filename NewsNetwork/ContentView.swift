//
//  ContentView.swift
//  NewsNetwork
//
//  Created by Nikita Krylov on 13.09.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var data: [Result] = []

    var body: some View {
        List(data, id: \.id) {result in
            VStack {
                Text(Helper.getDate(date: result.publicationDate))
                    .font(.body)
                    .fontWeight(.light)
                Text(result.title)
                    .font(.title)
                    .fontWeight(.heavy)
            }
        }
        .onAppear {
            loadData()
        }
    }
    
    func loadData() {
        guard let url = URL(string: "https://kudago.com/public-api/v1.4/news/?lang=&fields=id,title,publication_date&expand=&order_by=&text_format=&ids=&location=&actual_only=true") else {return}
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {return}
            do {
                let news = try JSONDecoder().decode([Result].self, from: data)
                DispatchQueue.main.async {
                    self.data = news
                }
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}

#Preview {
    ContentView()
}
