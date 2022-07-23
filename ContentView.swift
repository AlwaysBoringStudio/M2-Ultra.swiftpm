//
//  ContentView.swift
//  M2 Ultra
//  
//  Created by Hing Tat Tsang on 19/7/2022.
//

import SwiftUI

struct ContentView: View {
    @State var welcomescreen: Bool
    @State var debug = false
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Introduction")) {
                    NavigationLink(destination: whatisswiftuiView()) {
                        VStack {
                            Text("What is SwiftUI")
                        }
                    }
                    NavigationLink(destination: helpView(time: "24-07-2022 02:08")) {
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
                    NavigationLink(destination: helpView(time: "24-07-2022 02:11")) {
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
                    NavigationLink(destination: helpView(time: "24-07-2022 02:10")) {
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
                //debug
                if debug == true {
                    Section(header: Text("Debug and note")) {
                        NavigationLink(destination: note()) {
                            VStack {
                                Text("Note")
                            }
                        }
                        Button("Open project website") {
                            guard let url = URL(string: "http://link.alwaysboringstudio.site/J3H9") else { return }
                            UIApplication.shared.open(url)
                        }
                        NavigationLink(destination: vstackViewcodepre().navigationTitle("debug")) {
                            VStack {
                                Text("CodeSpace")
                            }
                        }                    }
                } else {
                    
                }
                //debug end
                
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
                }
                Button("Debug") {
                    welcomescreen = false
                    debug = true
                }
                .padding()
            }
        }
    }
}



struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(welcomescreen: true)
    }
}
