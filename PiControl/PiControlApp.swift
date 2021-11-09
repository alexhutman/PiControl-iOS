//
//  PiControlApp.swift
//  PiControl
//
//  Created by Alex on 11/8/21.
//

import SwiftUI

@main
struct PiControlApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
