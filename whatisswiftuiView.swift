import SwiftUI

struct whatisswiftuiView: View {
    let text = """
Unlike UIKit, which is usually used with storyboards, SwiftUI is built entirely on code. However, the syntax of SwiftUI is quite easy to understand, and we can quickly preview the interface we designed through Automatic Preview.
"""
    var body: some View {
        ScrollView {
            Image("swiftui")
                .cornerRadius(65)
            Text(text)
                .font(.title)
                .padding()
        }
        .navigationTitle("Whats is SwiftUI")
        
    }
}
struct whyswiftuiView: View {
    let text = """
Because SwiftUI is built with Swift, you can use less code to complete complex apps. More importantly, using SwiftUI allows your app to automatically support advanced features such as Dynamic Type, Dark Mode, Localization, and Accessibility. Additionally, SwiftUI supports all platforms, including macOS, iOS, iPadOS, watchOS, and tvOS. So now, your UI code is synced across all platforms, so you can focus on platform-specific code.
"""
    var body: some View {
        ScrollView {
            Image("swiftui")
                .cornerRadius(65)
            Text(text)
                .font(.title)
                .padding()
        }
        .navigationTitle("Why use SwiftUI")
        
    }
}





struct whatisswiftuiView_Previews: PreviewProvider {
    static var previews: some View {
        whatisswiftuiView()
    }
}
