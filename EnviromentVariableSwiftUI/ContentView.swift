//
//  ContentView.swift
//  EnviromentVariableSwiftUI
//
//  Created by naresh kukkala on 28/04/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isPresented: Bool = false
    
    var body: some View {
        
        VStack {
            
            HStack {
                Button("Left") {
                    
                }
                
                Button("Right") {
                    
                }
                
                Button("Show Sheet") {
                    isPresented = true
                } 
            }.sheet(isPresented: $isPresented) {
                // dismiss
            } content: {
                AddView()
            }

            
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Add View")
            Button("Dismiss") {
                presentationMode.wrappedValue.dismiss()
            }
        }.padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
