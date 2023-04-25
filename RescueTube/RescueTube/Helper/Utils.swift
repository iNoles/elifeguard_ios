//
//  Utils.swift
//  RescueTube
//
//  Created by TECH1 on 4/18/23.
//

import Foundation

func readJSONFromFile<T: Decodable>(fileName: String, type: T.Type) -> T? {
    if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let jsonData = try decoder.decode(T.self, from: data)
            return jsonData
        } catch {
            print("error:\(error)")
        }
    }
    return nil
}
