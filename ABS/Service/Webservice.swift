//
//  Webservice.swift
//  ABS
//
//  Created by Baskaran Thanigaimani on 07/05/22.
//

import Foundation

// Error case
enum NetworkError: Error {
    case badURL
    case notFound
}

// String
extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}

//1. URL Formation
//2. Get Response
//3. JSON Serilization

class Webservice {
    
    func getAcromine(searchTerm: String) async throws -> [Acromine] {
        
        var components  = URLComponents()
        components.scheme = "http"
        components.host = "www.nactem.ac.uk"
        components.path = "/software/acromine/dictionary.py"
        components.queryItems = [
            URLQueryItem(name: "sf", value: searchTerm.trimmed())
        ]
        
        guard let url = components.url else {
            throw NetworkError.badURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
    
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
            throw NetworkError.notFound
        }
        
        let  wordResponse = try JSONDecoder().decode([AcromineResponse].self, from: data)
        if(wordResponse.count > 0){
        return wordResponse[0].name
        } else {
        return []
        }
     
    }

}
