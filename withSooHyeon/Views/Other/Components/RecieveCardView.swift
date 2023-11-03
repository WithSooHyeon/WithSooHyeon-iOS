

import SwiftUI

struct RecieveCardView : View{
    var message : String
    var body: some View{
        Text(message)
            .fontWeight(.regular)
            .foregroundColor(Color.black)
            .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
            .background(Color.NeutralColor)
            .cornerRadius(8)
    }

    
}

struct RecieveCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecieveCardView(message: "안녕하세요!")
    }
}



