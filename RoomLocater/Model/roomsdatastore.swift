//
//  roomsdatastore.swift
//  RoomLocater
//
//  Created by Moritz Asche on 2022-03-25.
//

import Foundation

class roomsdatastore: ObservableObject {
    
    var rooms: [Room]
    
    init() {
        //Get a pointer to the file
        let url = Bundle.main.url(forResource: "rooms", withExtension: "json")!
        
        //Load the contents of the JSON file
        let data = try! Data(contentsOf: url)
        
        //convert the data from JSON file into the array
        rooms = try! JSONDecoder().decode([Room].self, from: data)
        
        //sort the list of locations alphabetically by name, in ascending order
        rooms.sort(by: {
            $0.room_identifier < $1.room_identifier
        })
    }
}
