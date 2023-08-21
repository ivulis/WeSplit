//
//  ContentView.swift
//  WeSplit
//
//  Created by jazeps.ivulis on 18/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    @State private var name = ""
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    Text("Hello, world!")
                }

                Section {
                    Text("Hello, world!")
                    Text("Hello, world!")
                }
                
                Button("Tap Count: \(tapCount)") {
                    tapCount += 1
                }
                
                TextField("Enter your name", text: $name)
                Text("Your name is \(name)")
                
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
                
            }
            .navigationTitle("SwiftUI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
