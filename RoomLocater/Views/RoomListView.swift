//
//  RoomListView.swift
//  RoomLocater
//
//  Created by Moritz Asche on 2022-03-27.
//

import SwiftUI

struct RoomListView: View {
    
    @ObservedObject var roomstore: RoomsDataStore
    
    var body: some View {
        
        List(roomstore.rooms) { room in
            
            NavigationLink(destination: RoomDetailView (RoomDetail: room)) {
                
                
                HStack {
                    
                    Text(room.listNumber)
                        .font(.subheadline)
                        .bold()
                    
                    Text(room.roomIdentifier)
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
