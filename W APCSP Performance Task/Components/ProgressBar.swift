//
//  ProgressBar.swift
//  W APCSP Performance Task
//
//  Created by Maya Omar24 on 4/24/23.
//

import SwiftUI

struct ProgressBar: View {
    var progress: CGFloat
    
    var body: some View {
        ZStack(alignment: .leading) {
            Rectangle()
                .frame(maxWidth: 350, maxHeight:4)
                .foregroundColor(Color(hue: 0.085, saturation: 0.542, brightness: 0.994, opacity: 0.874))
                .cornerRadius(10)
            
            Rectangle()
                .frame(width: progress, height: 4)
                .foregroundColor(Color("AccentColor"))
                .cornerRadius(10)
        }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 50)
    } 
}
