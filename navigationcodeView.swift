//
//  navigationcodeView.swift
//  M2 Ultra
//
//  Created by Hing Tat Tsang on 23/7/2022.
//

import SwiftUI

struct navigationcodeView: View {
    @State var view = "0"
    @State var pop = false
    var body: some View {
        ScrollView {
            Text("You can use NavigationView to create a navigation-based app")
                .font(.title)
            Spacer()
                .frame(height: 50)
            Text("Here is how to use NavigationView:")
                .font(.title)
            Spacer()
                .frame(height: 50)
            HStack {
                navigationViewcodepre()
                navigationViewpre()
            }
            Spacer()
                .frame(height: 50)
            Button("go to apple documentation") {
                guard let url = URL(string: "https://developer.apple.com/documentation/swiftui/navigationview") else { return }
                UIApplication.shared.open(url)
            }
            
            

        }
        .fullScreenCover(isPresented: $pop) {
            
        }   
        .navigationTitle("NavigationView")
    }
}

struct navigationViewcodepre: View {
    var body: some View {
        VStack {
            Text("Code:")
            ZStack {
                codespace_view()
                Image("photo 10")
                    .resizable()
                    .padding()
                    .scaledToFit()
            }
            
        }
    }
}

struct navigationViewpre: View {
    var body: some View {
        VStack {
            Text("Result:")
            ZStack {
                codespace_view()
                Image("photo 9")
                    .resizable()
                    .padding()
                    .scaledToFit()
            }
            
        }
    }
}

struct navigationcodeView_Previews: PreviewProvider {
    static var previews: some View {
        navigationcodeView()
    }
}
