//
//  Helper.swift
//  NewsNetwork
//
//  Created by Nikita Krylov on 13.09.2024.
//

import Foundation

final class Helper {
    static func getDate(date: Double) -> String {
        let currentDate = Date(timeIntervalSince1970: date)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd MMMM YYYY"
        dateFormatter.locale = Locale(identifier: "ru_RU")
        
        return dateFormatter.string(from: currentDate)
    }
}
