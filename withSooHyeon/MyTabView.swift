//
//  MyTabVuew.swift
//  withSooHyeon
//
//  Created by 이자민 on 2023/10/23.
//

import SwiftUI

struct MyTabView: View {
    init() {
      UITabBar.appearance().backgroundColor = .white
    }
    var body: some View {
        // 탭뷰
        TabView{
            Group{
                HomeView()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("홈")
                    }
                    .tag(0)
                SooHyeonView()
                    .tabItem {
                        Image(systemName: "person.fill.viewfinder")
                        Text("수현이 찾기")
                    }
                    .tag(1)
                ChatView()
                    .tabItem {
                        Image(systemName: "bubble.fill")
                        Text("채팅")
                    }
                    .tag(2)
                CommunityView()
                    .tabItem {
                        Image(systemName: "headphones")
                        Text("상담소")
                    }
                    .tag(3)
                
                ProfileView()
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("내 정보")
                    }
                    .tag(4)
            }
                 
        }
        .accentColor(.primaryColor) // 아이콘 클릭했을때 아이콘과 텍스트 색깔 민트로 설정
       
        
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}
