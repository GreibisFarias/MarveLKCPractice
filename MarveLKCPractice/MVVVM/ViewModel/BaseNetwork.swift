//
//  BaseNetwork.swift
//  MarveLKCPractice
//
//  Created by Greibis Farias on 5/22/25.
//

import Foundation
import Combine

class MarvelViewModel: ObservableObject {
    @Published var Characters: [MarvelCharacters] = []
    @Published var errorMensaje: String?

    private var cancellables = Set<AnyCancellable>()

    func fetchPersonas() {
        guard let url = URL(string: "https://gateway.marvel.com/v1/public/characters?apikey=ed368f479d903c82081349c6d1bdcb9f&ts=1&hash=99aecaad20085ec270b760d377418cdf&orderBy=-modified") else {
            self.errorMensaje = "Invalid URL"
            return
        }

        URLSession.shared.dataTaskPublisher(for: url)
            .map{$0.data}
            .decode(type: Marvel.self, decoder: JSONDecoder())
            .map { $0.data.results }
            .receive(on: DispatchQueue.main)
            .sink { completion in
                if case let .failure(error) = completion {
                    self.errorMensaje = "Failed to load: \(error.localizedDescription)"
                }
            } receiveValue: { characters in
                self.Characters = characters
            }
            .store(in: &cancellables)
    }
}

