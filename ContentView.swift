//
//  ContentView.swift
//  M2 Ultra
//  
//  Created by Hing Tat Tsang on 19/7/2022.
//

import SwiftUI

struct ContentView: View {
    @State var welcomescreen: Bool
    @State var debugview = false
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Introduction")) {
                    NavigationLink(destination: whatisswiftuiView()) {
                        VStack {
                            Text("What is SwiftUI")
                        }
                    }
                    NavigationLink(destination: whyswiftuiView()) {
                        VStack {
                            Text("Why use SwiftUI")
                        }
                    }
                    
                }
                Section(header: Text("Layout")) {
                    NavigationLink(destination: stackView()) {
                        VStack {
                            Text("Stack Views")
                        }
                    }
                    NavigationLink(destination: navigationcodeView()) {
                        VStack {
                            Text("NavigationView")
                        }
                    }
                    NavigationLink(destination: tabnView()) {
                        VStack {
                            Text("TabView")
                        }
                    }
                    
                }
                
                Section(header: Text("Controls")) {
                    NavigationLink(destination: textView()) {
                        VStack {
                            Text("Text")
                        }
                    }
                    NavigationLink(destination: buttonView()) {
                        VStack {
                            Text("Button")
                        }
                    }
                    NavigationLink(destination: toggleView()) {
                        VStack {
                            Text("Toggle")
                        }
                    }
                }
                Section(header: Text("Other")) {
                    NavigationLink(destination: imageView()) {
                        VStack {
                            Text("Image")
                        }
                    }
                }
                Section(header: Text("Quiz")) {
                    NavigationLink(destination: SwiftUIView()) {
                        VStack {
                            Text("Quiz")
                        }
                    }
                }
                
            }
            .navigationTitle("SwiftUI")
            
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .fullScreenCover(isPresented: $welcomescreen) {
            VStack {
                Text("Welcome, you can learn SwiftUI in this App.")
                    .font(.title)
                    .padding()
                Button("Start") {
                welcomescreen = false
                }                .padding()
            }
        }
        .fullScreenCover(isPresented: $debugview) {
            NavigationView {
                List {
                    Section(header: Text("TOOLS")) {
                        note()
                        Button("Open project website") {
                            guard let url = URL(string: "http://link.alwaysboringstudio.site/J3H9") else { return }
                            UIApplication.shared.open(url)
                        }
                        
                    }
                    Section(header: Text("Views")) {
                        NavigationLink(destination: vstackViewcodepre().navigationTitle("debug")) {
                            VStack {
                                Text("CodeSpace")
                            }
                        }  
                        
                    }
                    HStack {
                        Spacer()
                        Button("離開開發人員選項") {
                            debugview = false
                        }
                        .foregroundColor(.red)
                        Spacer()
                    }
                    
                }
                .navigationTitle("Developer options")
            }
        }
        .refreshable {
            debugview = true
        }
    }
}



struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(welcomescreen: true)
    }
}
