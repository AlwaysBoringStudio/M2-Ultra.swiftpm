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
            WelcomeScreen(showWelcomeScreen: $welcomescreen)
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
                        Button("View source code") {
                            guard let url = URL(string: "https://github.com/AlwaysBoringStudio/M2-Ultra.swiftpm/find/main") else { return }
                            UIApplication.shared.open(url)
                        }
                        
                    }
                    Section(header: Text("Views")) {
                        NavigationLink(destination: vstackViewcodepre().navigationTitle("debug")) {
                            VStack {
                                Text("CodeSpace")
                            }
                        }  
                        Button("Bring up Welcome Screen") {
                            welcomescreen = true
                        }
                        
                    }
                    HStack {
                        Spacer()
                        Button("Exit developer options") {
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
