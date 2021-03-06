//
//  rooms.swift
//  RoomLocater
//
//  Created by Moritz Asche on 2022-03-25.
//

import Foundation

struct Room: Decodable, Identifiable {
    
    let id: Int
    let roomIdentifier: String
    let locationDescription: String
    let listNumber: String //remember that u can have A or B in the rooms name
    let detailPicture: String
    
    
}

let example = Room(id: 1, roomIdentifier: "Room1", locationDescription: "Turn right when u see me", listNumber: "1", detailPicture: "Room1")
