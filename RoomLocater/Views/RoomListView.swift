//
//  RoomListView.swift
//  RoomLocater
//
//  Created by Moritz Asche on 2022-03-27.
//

import SwiftUI

struct RoomListView: View {
    
    @ObservedObject var roomstore: roomsdatastore
    
    var body: some View {
        
        List(roomstore.rooms) { room in
            
            NavigationLink(destination: RoomDetailView (RoomDetail: room)) {
                
                
                HStack {
                    
                    Text(room.listnumber)
                        .font(.subheadline)
                        .bold()
                    
                    Text(room.room_identifier)
                        .font(.subheadline)
                    
                    
                }
                
                
            }
            .navigationTitle("Rooms")
            
        }
        
    }
}

struct RoomListView_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationView{
            RoomListView(roomstore: teststore)
        }
        
        
    }
}
