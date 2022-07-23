//
//  codespace view.swift
//  M2 Ultra
//
//  Created by Hing Tat Tsang on 23/7/2022.
//

import SwiftUI

struct codespace_view: View {
    var body: some View {
        HStack {
            Spacer()
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(Color(red: 239/255, green: 239/255, blue: 239/255))
                .scaledToFit()
            Spacer()
        }
    }
    
}

struct codespace_view_Previews: PreviewProvider {
    static var previews: some View {
        codespace_view()
    }
}

