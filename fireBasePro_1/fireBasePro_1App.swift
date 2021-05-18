//
//  fireBasePro_1App.swift
//  fireBasePro_1
//
//  Created by Abhinav krishna on 12/05/21.
//

import SwiftUI
import Firebase

@main
struct fireBasePro_1App: App {
    
    init() {
        FirebaseApp.configure()
        
        makeResrvation()
    }
    
    func makeResrvation(){
        // Reference to the cloud firestore database
        let db = Firestore.firestore()
        
        //reference to the reservations collection
        //Will be created if it doesn'talready exist
        let reservations = db.collection("reservations")
            
       let res = reservations.addDocument(data: ["name" : "abhinav"])
        //create a document with a given identifier
      //  reservations.setData(["people":26], merge: true)
        res.delete()
        
       // res.delete()
        //create a document with a unique identifier
     //   reservations.document().setData(["name":"tom"])
        
        //create a document with given data
    //    let document = reservations.addDocument(data: ["name" : "Sue", "people":10])
        
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
