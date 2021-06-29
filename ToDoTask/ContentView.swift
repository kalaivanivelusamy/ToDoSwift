//
//  ContentView.swift
//  ToDoTask
//
//  Created by V, Kalaivani V. (623-Extern) on 29/06/21.
//

import SwiftUI

struct ContentView: View {
     var todoItem: [String] = ["first item","second item","third item"]
    var completed = false
    
    var body: some View {
        
        NavigationView{
            
            List(0..<todoItem.count) { index in
                Image(systemName: completed ? "circle" : "checkmark.circle.fill" )
                    .resizable()
                    .frame(width: 20, height: 20)
                    .onTapGesture {
                        print("To do")
                    }
                Text(todoItem[index])
            } 
            .navigationTitle("ToDo")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
