//  ListView.swift
//  TaskMinder
//
//  Created by Joseph DeWeese on 1/24/22.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "This is the first Item", isCompleted: false),
        ItemModel(title: "This is the seconmd item", isCompleted: true),
        ItemModel(title: "This is the third Item", isCompleted: false)]
    
    
    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Task Manager 〽️")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: Text("Destination"))
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ListView()
    }
}
}


