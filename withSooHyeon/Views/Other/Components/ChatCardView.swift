

import SwiftUI

struct ChatCardView : View{
    var chatProfileImg : String
    var nickName : String
    var chatText : String
    var chatNum : String
    var chatTime : String
    var bgColor : Color
    
    var body: some View{
        HStack(alignment: .top,spacing: 16){
            Image(chatProfileImg)
                .resizable()
                .frame(width:54, height: 54)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 4){
                
                Text(nickName)
                    .font(.system(size: 16))
                    .lineLimit(1) // 2줄로 제한
                    
                
                Text(chatText)
                    .font(.system(size: 12))
                    .foregroundColor(Color.black)
                    .fontWeight(.light)
                    .lineLimit(2) // 2줄로 제한
                
            }
            
            Spacer()
            
            
            VStack(alignment: .trailing, spacing: 6){
                
                Text(chatTime)
                    .font(.system(size: 10))
                Text(chatNum)
                    .font(.system(size: 10))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .padding(EdgeInsets(top: 3, leading: 6, bottom: 3, trailing: 6))
                    .background(Color.primaryColor)
                    .cornerRadius(50)
            }

            
        }
        .frame(maxWidth: .infinity, alignment: .topLeading)
        .padding(EdgeInsets(top: 10, leading: 24, bottom: 10, trailing: 24))
        .background(bgColor)
        
    }
    
}

struct ChatCardView_Previews: PreviewProvider {
    static var previews: some View {
        ChatCardView(chatProfileImg: "image5", nickName: "닉네임", chatText: "저도 제주 공항에서 사진 필요해서 연락드렸어요!",chatNum:"222",chatTime:"2분전", bgColor: Color.gray)
    }
}

