//
//  CircleButtonView.swift
//  StopwatchApp
//
//  Created by Kiho Okazawa on 2022-11-09.
//

import SwiftUI

struct CircleButtonView: View {
    
    //MARK: Stored properties
    let buttoncolor: Color
    let label: String
    let labelColor: Color
    
    //MARK: Computed properties
    
    // Returns the button's user interface...
    var body: some View {
        ZStack {
            
            //First layer
            Circle()
                .foregroundColor(buttoncolor)
            .frame(width: 100)
            
            // Second layer
            Circle()
                .foregroundColor(.black)
                .frame(width: 93)
            
            // Third layer
            Circle()
                .foregroundColor(buttoncolor)
                .frame(width: 89)
            
            // Forth layer
            Text("Reset")
                .foregroundColor(labelColor)
                .font(.title2)
        }
    }
}

struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CircleButtonView(buttoncolor: Color("Dark Grey"), label: "Reset", labelColor: .white)
    }
}
