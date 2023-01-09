//
//  ListView.swift
//  ToDoListApp
//
//  Created by Ali Mert Güleç on 9.01.2023.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
    "This is the first title! ",
    "This is the second!",
    "Third!"
    ]
    
    var body: some View {
        List{
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
            
        }
        .listStyle(PlainListStyle())
        .navigationTitle("Todo list 📝")
        .navigationBarItems(leading: EditButton(), trailing: NavigationLink("Add", destination: AddView()))
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView{
            ListView()
        }
        
    }
}

