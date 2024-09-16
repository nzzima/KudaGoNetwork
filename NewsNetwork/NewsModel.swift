//
//  NewsModel.swift
//  NewsNetwork
//
//  Created by Nikita Krylov on 13.09.2024.
//

import Foundation

//struct Response: Codable {
//    var response: [Result]
//}

struct Result: Codable {
    var id: Int
    var publicationDate: Double
    var title: String
    var slug: String
}
