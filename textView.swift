import SwiftUI

struct textView: View {
    var body: some View {
        ScrollView {
            Text("You can use Text like this:")
                .font(.title)
            Spacer()
                .frame(height: 50)
            HStack {
                textViewcodepre()
                textViewpre()
            }
            Spacer()
                .frame(height: 50)
            Button("go to apple documentation") {
                guard let url = URL(string: "https://developer.apple.com/documentation/swiftui/text") else { return }
                UIApplication.shared.open(url)
            }
            
            
            
        }
        .navigationTitle("Text")
    }
}

struct textViewcodepre: View {
    var body: some View {
        VStack {
            Text("Code:")
            ZStack {
                codespace_view()
                Image("photo 11")
                    .resizable()
                    .padding()
                    .scaledToFit()
            }
            
        }
    }
}

struct textViewpre: View {
    var body: some View {
        VStack {
            Text("Result:")
            ZStack {
                codespace_view()
                Text("Swiftui")
                    .foregroundColor(Color.black)
                    .font(.largeTitle)
                    .padding()
            }
            
        }
    }
}
struct textView_Previews: PreviewProvider {
    static var previews: some View {
        textView()
    }
}

