//
//  CharacterModel.swift
//  Assignment3
//
//  Created by Brandon  Miller on 3/20/23.
//

import Foundation

struct CharacterResultsModel : Codable, Identifiable  {
    var id : UUID {
        return UUID()
    }
    let info: InfoModel
    
    let results: [CharacterModel]
}

struct InfoModel : Codable, Identifiable {
    var id : UUID {
        return UUID()
    }
    let count: Int
    let pages: Int
    let next: String
    let prev: String?
}

struct OriginModel : Codable, Identifiable {
    var id : UUID {
        return UUID()
    }
    let name: String
    let url: String
}

struct LocationModel : Codable, Identifiable {
    var id : UUID {
        return UUID()
    }
    let name: String
    let url: String
}

struct CharacterModel : Codable, Identifiable {
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: OriginModel
    let location: LocationModel
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
