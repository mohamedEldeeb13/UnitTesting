//
//  Repository.swift
//  UnitTesting
//
//  Created by Mohamed Abd Elhakam on 04/03/2024.
//

import Foundation


struct Repository: Codable {
    
    let repositiryName: String?
    let owner: Owner?
    enum CodingKeys: String, CodingKey {
        case repositiryName = "name"
        case owner
    }
}

struct Owner: Codable {
    let ownerImage: String?
    
    enum CodingKeys: String, CodingKey {
        case ownerImage = "avatar_url"
    }
    
}
