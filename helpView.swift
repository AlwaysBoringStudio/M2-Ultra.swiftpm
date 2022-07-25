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
        Text("為了方便開發, 向下滑動可拉出開發人員選項")
    }
}

struct note_Previews: PreviewProvider {
    static var previews: some View {
        note()
    }
}
