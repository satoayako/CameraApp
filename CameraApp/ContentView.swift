//
//  ContentView.swift
//  CameraApp
//
//  Created by 佐藤 順子 on 2020/11/06.
//  Copyright © 2020 佐藤 順子. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var image:Image?
    @State var isPicking = false
    var body: some View {
        ZStack {
            VStack{
                VStack {
                    Spacer()
                    image?
                        .resizable()
                        .scaledToFill()
                    Spacer()
                }
                HStack {
                    Spacer()
                    Button(action:{
                        self.isPicking = true
                    }){
                        Image(systemName: "camera")
                        Text("カメラ")
                    }.padding()
                }
            }
            if isPicking{
                ImagePicker()
                    .edgesIgnoringSafeArea(.all)
                    .transition(.move(edge: .top))
                    .animation(.linear)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
