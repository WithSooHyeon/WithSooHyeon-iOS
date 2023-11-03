

import SwiftUI
import UIKit

struct ChatRoomView: View {
    var body: some View {
        VStack(){
            SendCardView(message: "하이루")
            RecieveCardView(message: "ㅇㅇㅇㅇ방가방가")
        }
        
    }
    
}

struct ChatRoomView_Previews: PreviewProvider {
    static var previews: some View {
        ChatRoomView()
    }
}

