//
//  DetailsViewModel.swift
//  Assignment3
//
//  Created by Brandon  Miller on 3/20/23.
//

import Foundation

class DetailsViewModel : ObservableObject {
    
    @Published private(set) var characterData = [CharacterModel]()
    private let url = "https://rickandmortyapi.com/api/character?count=15"
    
    func fetchCharacters() {
        if let url = URL(string: url) {
            URLSession
                .shared
                .dataTask(with: url) { (data, response, error) in
                    if let error = error {
                        print(error)
                    } else {
                        if let data = data {
                            do {
                                let results = try JSONDecoder().decode(CharacterResultsModel.self, from: data)
                                
                                DispatchQueue.main.async {
                                    self.characterData = results.results
                                }
                                
                            } catch {
                                print(error)
                            }
                        }
                    }
                    
                }.resume()
        }
    }
    

}
