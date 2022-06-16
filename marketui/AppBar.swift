//
//  AppBar.swift
//  marketui
//
//  Created by iOS UNAM 18 on 16/06/22.
//

import SwiftUI

struct AppBar: View {
    var body: some View {
        VStack {
            HStack{
                Text("Market UI").foregroundColor(.white).font(.title2)
                Spacer()
                Image(systemName: "ellipsis").foregroundColor(.white)
            }.padding().background(.red)
        }
    }
}

struct AppBar_Previews: PreviewProvider {
    static var previews: some View {
        AppBar()
    }
}
