//
//  RoomListView.swift
//  RoomLocater
//
//  Created by Moritz Asche on 2022-03-25.
//

import SwiftUI

struct RoomListView: View {
    
    @ObservedObject var roomstore: roomsdatastore
    
    var body: some View {
        
        List(roomstore.rooms) { room in
            
            NavigationLink(destination: RoomDetailView (RoomDetail: room)) {
                
                
                
                
            }
            
            
            
            
            
        }
        
        
        
        
        
        
    }
}

//struct RoomListView_Previews: PreviewProvider {
//    static var previews: some View {
//        RoomListView()
//    }
//}
