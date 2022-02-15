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
    
   @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ListView()
            }
            .environmentObject(listViewModel)
            //This permits access for all views to use the logic from the viewModel: 'ListViewModel'
        }
    }
}
