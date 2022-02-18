//
//  ContentView.swift
//  Shared
//
//  Created by Yongsoo Chang on 2022/02/18.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        HStack{
            
            
            MyVstackView()
            MyVstackView()
            MyVstackView()
        }//Hstack
        .padding(20.0)
        .background(Color.yellow)
    }
}

struct MyVstackView: View {
    var body: some View {
        VStack{
            Text("1")
                .fontWeight(.bold)
                .font(.system(size: 50))
                .padding()
            Text("2")
                .fontWeight(.bold)
                .font(.system(size: 50))
                .padding()
            Text("3")
                .fontWeight(.bold)
                .font(.system(size: 50))
                .padding()
        }
        .background(Color.red)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
.previewInterfaceOrientation(.portrait)
            ContentView()
        }
    }
}
