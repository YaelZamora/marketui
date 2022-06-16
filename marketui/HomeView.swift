//
//  HomeView.swift
//  marketui
//
//  Created by iOS UNAM 18 on 16/06/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack{
            AppBar()
            Text("Platillos Favoritos").font(.largeTitle)
            ScrollView(.horizontal) {
                HStack {
                    Card(imagen: "chile", platillo: "Chile Poblano", precio: 250)
                    Card(imagen: "mole", platillo: "Mole", precio: 150)
                    Card(imagen: "pambazos", platillo: "Pambazos", precio: 100)
                }
            }
            Text("Mejores precios").font(.largeTitle)
            ScrollView(.horizontal){
                HStack{
                    Card(imagen: "tacos", platillo: "Tacos de pastor", precio: 50)
                    Card(imagen: "pambazos", platillo: "Pambazos", precio: 100)
                    Card(imagen: "mole", platillo: "Mole", precio: 150)
                }
            }
            Spacer()
            Button(action: {
               
            }, label: {
                Image(systemName: "cart")
                    .frame(width: 70, height: 70)
                    .foregroundColor(.white)
            })
            .background(Color.blue)
            .cornerRadius(38.5)
            .padding()
            .shadow(color: Color.black.opacity(0.3),
                    radius: 3,
                    x: 3,
                    y: 3)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
