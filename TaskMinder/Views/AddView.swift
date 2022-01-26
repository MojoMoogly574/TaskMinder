//
//  AddView.swift
//  TaskMinder
//
//  Created by Joseph DeWeese on 1/24/22.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Enter task...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray.opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/))
                .cornerRadius(10)
            }
    }
        .navigationTitle("Add Task 📝")
}
}
struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        AddView()
    }
}
}
