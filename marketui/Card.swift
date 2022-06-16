//
//  Card.swift
//  marketui
//
//  Created by iOS UNAM 18 on 16/06/22.
//

import SwiftUI

struct Card: View {
    @State public var imagen = ""
    @State public var platillo = ""
    @State public var precio = 0
    
    var body: some View {
        VStack{
            Image("\(imagen)").resizable().frame(width: 250, height: 150, alignment: .center).cornerRadius(20).padding()
            HStack {
                Spacer()
                Text("\(platillo)").bold()
                Spacer()
                Text("$\(precio)")
                Spacer()
            }
            HStack {
                Image(systemName: "cart").foregroundColor(.blue)
                Button("Add to cart"){}
            }
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
