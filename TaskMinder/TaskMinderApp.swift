//
//  TaskMinderApp.swift
//  TaskMinder
//
//  Created by Joseph DeWeese on 1/24/22.
//

import SwiftUI
/*
 MVVM Architecture
 */
@main
struct TaskMinderApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
        }
    }
}
