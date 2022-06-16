//
//  ContentView.swift
//  marketui
//
//  Created by iOS UNAM 18 on 16/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack{
            Spacer()
            Text("Que bueno que estas de regreso!").font(.largeTitle).foregroundColor(.blue).bold()
            Spacer()
            HStack {
                Image(systemName: "envelope")
                    .foregroundColor(.gray).padding(.horizontal)
                TextField("Correo", text: $email)
                    .keyboardType(.emailAddress)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(.gray, lineWidth: 1).padding(.horizontal))
            
            HStack{
                Image(systemName: "key")
                    .foregroundColor(.gray).padding(.horizontal)
                SecureField("Contraseña", text: $password)
            }
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(.gray, lineWidth: 1).padding(.horizontal))
            
            Button("Iniciar Sesión"){}
            .buttonStyle(.bordered)
            
            Button("Registrarse", role: .destructive) {}
            .buttonStyle(.bordered)
            Spacer()
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
