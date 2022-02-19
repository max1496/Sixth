//
//  MyTextView.swift
//  Sixth (iOS)
//
//  Created by Yongsoo Chang on 2022/02/19.
//

import Foundation
import SwiftUI

struct MyTextView: View{
    var body: some View {
        VStack{
            Text("배경 아이템 인덱스 ")
                .font(.system(size: 30))
                .fontWeight(.bold)
        }.background(Color.red)
    }
}
