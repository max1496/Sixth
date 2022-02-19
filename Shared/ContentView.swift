//
//  ContentView.swift
//  Shared
//
//  Created by Yongsoo Chang on 2022/02/18.
//

import SwiftUI

struct ContentView: View {
    
    @State
    private var isActivated: Bool = false
    
    // 몸체
    var body: some View {
        
        
        NavigationView{
            VStack{
        HStack{
            
            
            MyVstackView()
            MyVstackView()
            MyVstackView()
        }//Hstack
        .padding(isActivated ? 50.0 : 10)
        .background(isActivated ? Color.yellow : Color.black)
        // 텝 제스쳐 추가
        .onTapGesture{
            print("HStack이 클릭되었다.")
            //애니매이션과 함께
            withAnimation{
            // toggle() true 이면 false 로 false이면 true
            self.isActivated.toggle()
            }
        }
            //HStack
            
            //네비게이션 버튼(링크)
            NavigationLink(destination: MyVstackView()){
                Text("네비게이션")
                    .fontWeight(.heavy)
                    .font(.system(size: 40))
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(Color.white)
                    .cornerRadius(30)
            } .padding(.top, 50)
        }
    }
        //navigationview
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
            
.previewInterfaceOrientation(.portrait)
        }
    }
}
