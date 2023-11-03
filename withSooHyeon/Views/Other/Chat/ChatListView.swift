

import SwiftUI
import UIKit

struct ChatListView: View {
    var body: some View {
        
        NavigationView{
            NavigationLink(destination:ChatRoomView()){
                List {
                    ForEach(1..<7, id: \.self) { index in
                        ChatCardView(chatProfileImg: "image5", nickName: "닉네임", chatText: "저도 제주 공항에서 사진 필요해서 연락드렸어요!",chatNum:"\(index+7)",chatTime:"2분전", bgColor: .white)
                            .swipeActions(edge: .trailing, allowsFullSwipe: true)
                        {
                            HStack{
                                Button(action: {
                                    // 쓰레기통 버튼 동작 추가
                                    print("Delete button tapped for Group \(index)")
                                }) {
                                    //Image(systemName: "trash")
                                    Text("신고하기")
                                        .foregroundColor(Color.white) // 쓰레기통 이미지의 색상 -> 왜 안먹지?
                                        .font(.title) // 이미지 크기 조절
                                }
                                .tint(.red)
                                
                                Button(action: {
                                    // 쓰레기통 버튼 동작 추가
                                    print("Delete button tapped for Group \(index)")
                                }) {
                                    //Image(systemName: "trash")
                                    Text("나가기")
                                        .foregroundColor(Color.white) // 쓰레기통 이미지의 색상 -> 왜 안먹지?
                                        .font(.title) // 이미지 크기 조절
                                }
                                .tint(.green)
                            }
                            
                        }
                    }
                    .listRowSeparator(.hidden)
                    .listRowInsets(EdgeInsets())
                    .onTapGesture {
                        // GroupCard를 탭하면 원하는 동작 수행
                        print("tap")
                    }
                    
                }
            }
            .listStyle(.plain)
            .navigationTitle("채팅")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(trailing: Image(systemName: "bell.badge.fill"))
        }
    }
    
}

struct ChatListView_Previews: PreviewProvider {
    static var previews: some View {
        ChatListView()
    }
}

