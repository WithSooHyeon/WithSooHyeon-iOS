

import SwiftUI

struct SendCardView : View{
    var message : String
    var body: some View{
        Text(message)
            .fontWeight(.regular)
            .foregroundColor(Color.white)
            .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
            .background(Color.primaryColor)
            .cornerRadius(8)
    }

    
}

struct SendCardView_Previews: PreviewProvider {
    static var previews: some View {
        SendCardView(message: "오 공항에서 3일 2시정도에 가능하신가요?")
    }
}



