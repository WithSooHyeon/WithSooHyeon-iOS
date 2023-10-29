//
//  CoummityCardView.swift
//  withSoo
//
//  Created by 이서연 on 2023/10/29.
//

import SwiftUI

struct CommunityCardView: View {
    var body: some View {
        VStack(alignment: .leading){
            Rectangle().frame(height: 0)
            HStack{
                Text("제목")
                    .font(.system(size: 14))
                    .fontWeight(.black)
                Spacer()
                Text("시간")
                    .font(.system(size: 10))
                    .foregroundColor(.secondary)
                
            }
            Spacer().frame(height: 8)
            Text("작성자 아이디")
                .font(.system(size: 10))
                .foregroundColor(.secondary)
            Spacer().frame(height: 12)
            Text("남친이랑 몰래 여행가려고 했는데 집이 너무 엄격해서 뭐라해야할지 고민이에요. 수현이님들 좋은 방법있다면 알려주세요ㅜㅜ")
                .font(.system(size: 10))
            Spacer().frame(height: 12)
            HStack(spacing: 16.0){
                Text("조회 21")
                    .font(.system(size: 10))
                    .foregroundColor(.secondary)
                Text("댓글 21")
                    .font(.system(size: 10))
                    .foregroundColor(.secondary)
                Text("공감 21")
                    .font(.system(size: 10))
                    .foregroundColor(.secondary)
                Text("스크랩 21")
                    .font(.system(size: 10))
                    .foregroundColor(.secondary)
            }
        }
        .padding(10)
        .background(Color.white)
        .cornerRadius(8)
        .shadow(color: Color(red: 194/255, green: 215/255, blue: 235/255, opacity: 0.50), radius: 4, x: 2, y: 2)
    }
}

struct CommunityCardView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityCardView()
    }
}
