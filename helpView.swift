//for debug only

import SwiftUI

struct helpView: View {
    var time: String
    var body: some View {
        VStack {
            HStack {
                Text("develop in progress")
                    .padding()
                    .font(.largeTitle)
                Spacer()
            }
            Spacer()
            Text("develop in progress !")
                .font(.largeTitle)
                .padding()
            Spacer()
            HStack {
                Spacer()
                VStack {
                    Text("tsanghingtat")
                    Text(time)
                }
                .padding()
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct note: View {
    var body: some View {
        List {
            Text("""
1. Make "What is SwiftUI" First
""")
            Text("2. Make how to use Text in SwiftUI")
        }
        .navigationTitle("note")
    }
}

struct note_Previews: PreviewProvider {
    static var previews: some View {
        note()
    }
}
