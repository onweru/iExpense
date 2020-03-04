 //
//  ContentView.swift
//  iExpense
//
//  Created by dan on 3/3/20.
//  Copyright © 2020 dan. All rights reserved.
//

import SwiftUI
 
 class User: ObservableObject {
    @Published var firstName  = "Bill"
    @Published var lastName = "Williams"
 }

struct ContentView: View {
    @ObservedObject private var user = User()
    var body: some View {
        VStack (alignment: .leading, spacing: 20){
            Text("Your Name is \(user.firstName) \(user.lastName)").font(.headline)
            TextField("First Name", text: $user.firstName)
            TextField("Seccond Name", text: $user.lastName)
        }
    .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
