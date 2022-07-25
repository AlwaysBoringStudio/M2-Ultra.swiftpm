//
//  stackView.swift
//  M2 Ultra
//
//  Created by Hing Tat Tsang on 23/7/2022.
//

import SwiftUI

struct stackView: View {
    @State var view = "0"
    var body: some View {
        ScrollView {
            Text("Individually, **HStack**, **VStack**, and **ZStack** are simple views.")
                .font(.title2)
            
            Spacer()
            HStack {
                Spacer()
                Button("VStack") {
                    view = "0"
                }
                Button("HStack") {
                    view = "1"
                }
                Button("ZStack") {
                    view = "2"
                }
                Spacer()
            }
            
            if view == "2" {
                Text("ZStack overlays views on top of one another.")
                    .font(.title2)
                Text("You can use ZStack like this:")
                    .font(.title3)
                    .padding()
                HStack {
                    zstackViewcodepre()
                    zstackViewpre()
                }
                Spacer()
                    .frame(height: 50)
                Button("go to apple documentation") {
                    guard let url = URL(string: "https://developer.apple.com/documentation/swiftui/zstack") else { return }
                    UIApplication.shared.open(url)
                }
            } else if view == "1" {
                Text("HStack positions views in a horizontal line.")
                    .font(.title2)
                Text("You can use HStack like this:")
                    .font(.title3)
                    .padding()
                HStack {
                    hstackViewcodepre()
                    hstackViewpre()
                }
                Spacer()
                    .frame(height: 50)
                Button("go to apple documentation") {
                    guard let url = URL(string: "https://developer.apple.com/documentation/swiftui/hstack") else { return }
                    UIApplication.shared.open(url)
                }
            } else if view == "0" {
                Text("VStack positions them in a vertical line.")
                    .font(.title2)
                Text("You can use VStack like this:")
                    .font(.title3)
                    .padding()
                HStack {
                    vstackViewcodepre()
                    vstackViewpre()
                    }
                Spacer()
                    .frame(height: 50)
                Button("go to apple documentation") {
                    guard let url = URL(string: "https://developer.apple.com/documentation/swiftui/vstack") else { return }
                    UIApplication.shared.open(url)
                }
            } else {
                Text("Error")
            }

            
        }
        .navigationTitle("Stack Views")
    }
}

struct zstackViewcodepre: View {
    var body: some View {
        VStack {
            Text("Code:")
            ZStack {
                codespace_view()
                Image("photo4")
                    .resizable()
                    .padding()
                    .scaledToFit()
            }
            
        }
    }
}

struct zstackViewpre: View {
    var body: some View {
        VStack {
            Text("Result:")
            ZStack {
                
                codespace_view()
                ZStack {
                    Text("Hello World")
                        .foregroundColor(Color.white)
                    Image("swiftui")
                        .resizable()
                        .frame(width: 90, height: 90)
                    Text("Hello World 2")
                        .foregroundColor(Color.white)
                }
            }
            
        }
    }
}


struct vstackViewcodepre: View {
    var body: some View {
        VStack {
            Text("Code:")
            ZStack {
                codespace_view()
                Image("photo2")
                    .resizable()
                    .padding()
                    .scaledToFit()
                
            }
        }
    }
}

struct vstackViewpre: View {
    var body: some View {
        VStack {
            Text("Result:")
            ZStack {
                codespace_view()
                VStack {
                    Text("Hello World")
                        .foregroundColor(Color.black)
                    Image("swiftui")
                        .resizable()
                        .frame(width: 90, height: 90)
                    Text("Hello World 2")
                        .foregroundColor(Color.black)
                }
            }
        }
    }
}

struct hstackViewcodepre: View {
    var body: some View {
        VStack {
            Text("Code:")
            ZStack {
                codespace_view()
                Image("photo3")
                    .resizable()
                    .padding()
                    .scaledToFit()
            }
        }
    }
}

struct hstackViewpre: View {
    var body: some View {
        VStack {
            Text("Result:")
            ZStack {
                codespace_view()
                HStack {
                    Text("Hello World")
                        .foregroundColor(Color.black)
                    Image("swiftui")
                        .resizable()
                        .frame(width: 90, height: 90)
                    Text("Hello World 2")
                        .foregroundColor(Color.black)
                }
            }
        }
    }
}

struct stackView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            stackView()
            .navigationTitle("Stack Views")
        }
    }
}
