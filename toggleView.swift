//
//  toggleView.swift
//  M2 Ultra
//
//  Created by Hing Tat Tsang on 23/7/2022.
//

import SwiftUI

struct toggleView: View {
    @State var view = false
    var body: some View {
        ScrollView {
            Text("Creating a toggle with SwiftUI:")
                .font(.title)
            Spacer()
                .frame(height: 50)
            Text("First, we need to create a variable")
                .font(.title)
            Image("photo 7")
                .frame(width: 50)
                .padding()
            Spacer()
            Text("Like this:")
                .font(.title)
            HStack {
                toggleViewcodepre()
                toggleViewpre()
            }

        }
        .navigationTitle("Toggle")
    }
}


struct toggleViewcodepre: View {
    var body: some View {
        VStack {
            Text("Code:")
            ZStack {
                codespace_view()
                Image("photo 8")
                    .resizable()
                    .padding()
                    .scaledToFit()
            }
            
        }
    }
}

struct toggleViewpre: View {
    @State var on = false
    var body: some View {
        VStack {
            Text("Result:")
            ZStack {
                
                codespace_view()
                ZStack {
                    toggleViewlistpre()
                    .cornerRadius(25)
                    
                }
            }
            
        }
    }
}
struct toggleViewlistpre: View {
    init() {
        UITableView.appearance().separatorStyle = .none
        UITableViewCell.appearance().backgroundColor = UIColor(Color(red: 239/255, green: 239/255, blue: 239/255))
        UITableView.appearance().backgroundColor = UIColor(Color(red: 239/255, green: 239/255, blue: 239/255))
    }
    @State var on = false
    var body: some View {
        List {
            Toggle(isOn: $on) {
                Text("on/off ?")
                    .foregroundColor(.black)
            }
            .listRowBackground(Color.white)
            
        }
    }
}
struct toggleView_Previews: PreviewProvider {
    static var previews: some View {
        toggleView()
    }
}
