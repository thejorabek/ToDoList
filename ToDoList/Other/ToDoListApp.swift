//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Jorabek Boyxorozov on 17/12/24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    
    init() {
        FirebaseApp.initialize()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
