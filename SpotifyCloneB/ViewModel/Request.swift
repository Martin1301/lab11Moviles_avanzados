//
//  Request.swift
//  SpotifyCloneB
//
//  Created by Linder Anderson Hassinger Solano    on 7/05/22.
//

import Foundation

class Request {
    
    let token = "BQCDotwrtoCdnqUwCobZrotUQJlwnpp1jfNz_5-UyDbEmLtoXhQNgR5W1teJfQfbZf08-rTmZJiufAb_V4rgiSzPoFJ-xC_gMs-8uDFJAaYNNUjCrpeuUdXHebD0SHhV_S3pJBHLpr_NFTD8VpYVeS2x-6t5euTH9vJ5sHGJceFBeuRkU_Hq7A"
    
    let BASE_URL = "https://api.spotify.com/v1/"
    
    func getDataFromAPI(url: String) async -> Data? {
        do {
            var request = URLRequest(url: HelperString.getURLFromString(url: "\(BASE_URL)\(url)")!)
            request.httpMethod = "GET"
            request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
            
            let (data, _) = try await URLSession.shared.data(for: request)
            
            return data
        } catch {
            return nil
        }
    }
    
}
