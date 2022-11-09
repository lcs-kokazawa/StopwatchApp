//
//  ContentView.swift
//  StopwatchApp
//
//  Created by Kiho Okazawa on 2022-11-09.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            //First layer (background)
            Color.black
                .ignoresSafeArea()
            
            //Second layer (rest of interface)
            VStack {
                Text("00:09.96")
                    .font(Font.system(size: 90,weight: .thin))
                    .foregroundColor(.white)
                
                HStack {
                    CircleButtonView(buttoncolor: .gray, label: "Reset", labelColor: .white)
                        
                    Spacer()
                    
                    CircleButtonView(buttoncolor: .brown, label: "Start", labelColor:.green)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
