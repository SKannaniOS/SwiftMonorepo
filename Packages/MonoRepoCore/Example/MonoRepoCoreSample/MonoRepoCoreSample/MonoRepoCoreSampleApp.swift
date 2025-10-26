//
//  MonoRepoCoreSampleApp.swift
//  MonoRepoCoreSample
//
//  Created by Satheesh Kannan on 26/10/25.
//

import SwiftUI
import MonoRepoCore

@main
struct MonoRepoCoreSampleApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    let instance = MonoRepoCore()
                    instance.printClassName()
                }
        }
    }
}
