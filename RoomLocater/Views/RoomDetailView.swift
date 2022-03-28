//
//  RoomDetailView.swift
//  RoomLocater
//
//  Created by Moritz Asche on 2022-03-25.
//

import SwiftUI

struct RoomDetailView: View {
    
    let RoomDetail: Room
    
    var body: some View {
        
        ScrollView {
            
            Image(RoomDetail.detailPicture)
            
        }
    }
}

//struct RoomDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        RoomDetailView()
//    }
//}
