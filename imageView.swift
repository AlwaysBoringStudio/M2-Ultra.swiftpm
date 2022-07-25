import SwiftUI

struct imageView: View {
    var body: some View {
        ScrollView {
            Text("This is how to use Image in SwiftUI")
                .font(.title)
            Spacer()
                .frame(height: 50)
            Text("First, you need to add a image to Assets")
                .font(.title)
            Spacer()
                .frame(height: 50)
            Text("and you can coding like this:")
                .font(.title)
            HStack {
                imageViewcodepre()
                imageViewpre()
            }
            Spacer()
                .frame(height: 50)
            Button("go to apple documentation") {
                guard let url = URL(string: "https://developer.apple.com/documentation/swiftui/image") else { return }
                UIApplication.shared.open(url)
            }
            
            
            
        }
        .navigationTitle("Text")
    }
}

struct imageViewcodepre: View {
    var body: some View {
        VStack {
            Text("Code:")
            ZStack {
                codespace_view()
                Image("photo 14")
                    .resizable()
                    .padding()
                    .scaledToFit()
            }
            
        }
    }
}

struct imageViewpre: View {
    var body: some View {
        VStack {
            Text("Result:")
            ZStack {
                codespace_view()
                Image("swiftui")
                    .resizable()
                    .padding(70)
                    .scaledToFit()
            }
            
        }
    }
}
struct imageView_Previews: PreviewProvider {
    static var previews: some View {
        imageView()
    }
}


