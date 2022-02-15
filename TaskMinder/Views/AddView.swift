//
//  AddView.swift
//  TaskMinder
//
//  Created by Joseph DeWeese on 1/24/22.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    @EnvironmentObject var listViewModel: ListViewModel
    @Environment(\.presentationMode) var presentationMode  //path to return one screen higher in the hierarchy.
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Enter task...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color.gray.opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/))
                .cornerRadius(10)
                
                Button(action: saveButtonPressed, label: {
                    
                    Text("Save".uppercased())
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            .padding(14)
    }
        .navigationTitle("Add Task 📝").alert(isPresented: $showAlert, content: getAlert)
}
    func saveButtonPressed() {
        if textIsAppropriate(){
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()//pops back to preevious screen once save button has been selected
        }
    
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 4 {
            alertTitle = "Your new item must be at least 4 characters long.😏"
            showAlert.toggle()
            return false
        }
        return true
    }
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
}
}
struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        AddView()
        }
        .environmentObject(ListViewModel())
}
}
