//
//  ToDoListItemViewViewModel.swift
//  ToDOiOS
//
//  Created by Igor Odaryuk on 19.06.2023.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

///ViewModel for SINGLE todo list item
///Primary Tab
class ToDoListItemViewViewModel: ObservableObject {
    init() {}
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item
        itemCopy.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
