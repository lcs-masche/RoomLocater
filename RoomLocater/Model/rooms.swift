//
//  rooms.swift
//  RoomLocater
//
//  Created by Moritz Asche on 2022-03-25.
//

import Foundation

struct Room: Decodable, Identifiable {
    
    let id: Int
    let room_identifier: String //remember that u can have A or B in the rooms name
    let location_description: String
    let listnumber: String
    let detailpicture: String
    
    
}

let example = Room(id: 1, room_identifier: "Room1", location_description: "Turn right when u see me", listnumber: "", detailpicture: "")
