import SwiftUI

struct tabnView: View {
    @State var view = "0"
    @State var pop = false
    var body: some View {
        ScrollView {
            Text("You can use TabBar like this:")
                .font(.title)
            Spacer()
                .frame(height: 50)
            VStack {
                tabViewcodepre()
                tabViewpre()
            }
            Spacer()
                .frame(height: 50)
            Button("go to apple documentation") {
                guard let url = URL(string: "https://developer.apple.com/documentation/swiftui/toolbarplacement/tabbar/") else { return }
                UIApplication.shared.open(url)
            }
            
            
            
        }
        .fullScreenCover(isPresented: $pop) {
            
        }   
        .navigationTitle("TabBar")
    }
}

struct tabViewcodepre: View {
    var body: some View {
        VStack {
            Text("Code:")
            ZStack {
                codespace_view()
                Image("photo 12")
                    .resizable()
                    .padding()
                    .scaledToFit()
            }
            
        }
    }
}

struct tabViewpre: View {
    var body: some View {
        VStack {
            Text("Result:")
            ZStack {
                Image("photo 13")
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
        }
    }
}
struct tabnView_Previews: PreviewProvider {
    static var previews: some View {
        tabnView()
    }
}
