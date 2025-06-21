//
//  MarveLKCPracticeApp.swift
//  MarveLKCPractice
//
//  Created by Greibis Farias on 5/22/25.
//

import SwiftUI

@main
struct MarveLKCPracticeApp: App {
    @StateObject private var vm = MarvelViewModel()

    var body: some Scene {
        WindowGroup {
            CharacterListView()
                .environmentObject(vm)
        }
    }
}
