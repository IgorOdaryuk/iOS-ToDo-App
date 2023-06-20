//
//  ToDoListViewViewModel.swift
//  ToDOiOS
//
//  Created by Igor Odaryuk on 19.06.2023.
//

import Foundation

///ViewModel for list of items view
///Primary Tab
class ToDoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    
    init() {}
    
    func delete(id: String) {
        
    }
}
