//
//  buttonView.swift
//  M2 Ultra
//
//  Created by Hing Tat Tsang on 23/7/2022.
//

import SwiftUI

struct buttonView: View {
    @State var view = "0"
    var body: some View {
        ScrollView {
            Text("You can use the following code to create a button:")
                .font(.title)
            Image("photo 5")
                .frame(width: 30)
            Spacer()
            Text("Like this:")
                .font(.title)
            HStack {
                buttonViewcodepre()
                buttonViewpre()
            }

        }
        .navigationTitle("Button")
    }
}

struct buttonViewcodepre: View {
    var body: some View {
        VStack {
            Text("Code:")
            ZStack {
                codespace_view()
                Image("photo 6")
                    .resizable()
                    .padding()
                    .scaledToFit()
            }
            
        }
    }
}

struct buttonViewpre: View {
    @State var popover = false
    var body: some View {
        VStack {
            Text("Result:")
            ZStack {
                
                codespace_view()
                ZStack {
                    Button(action: {
                        popover = true
                    }) {
                        Text("press me !")
                            .font(.largeTitle)
                    }
                }
            }
            
        }
        .popover(isPresented: $popover) {
            Text("button pressed")
        }
    }
}


struct buttonView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            buttonView()
                .navigationTitle("Button")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}
