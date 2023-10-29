//
//  CommunityView.swift
//  withSooHyeon
//
//  Created by 이자민 on 2023/10/23.
//

import SwiftUI

struct CommunityView: View {
    @State private var searchText: String = ""
    @State private var isSearching: Bool = false
    var body: some View {
        VStack {
            HStack{
                Rectangle()
                    .frame(height: 40)
                    .cornerRadius(40)
                    .background(Color(hex: 0xF6FBFF))
                    .border(Color(hex: 0xCCE1FF),width: 1)
                    .overlay(
                                            HStack {
                                                Image(systemName: "magnifyingglass")
                                                TextField("검색", text: $searchText)
                                                if isSearching {
                                                    Button(action: {
                                                        searchText = ""
                                                        isSearching = false
                                                        // 여기에서 검색 기능 실행
                                                    }) {
                                                        Image(systemName: "xmark.circle.fill")
                                                    }
                                                }
                                            }
                                            )
                    .onTapGesture {
                                            isSearching = true
                                        }
                Image(systemName: "bell.fill")
                    .font(.system(size: 40))
            }
            if isSearching {
                            Text("검색 결과: \(searchText)")
                        }
            //두번째 Stack
            HStack{
                VStack(alignment: .leading){
                    Text("전국의")
                        .font(.system(size: 22))
                        .fontWeight(.black)
                        .padding(.bottom,0.1)
                    Text("수현이와 나누는")
                        .font(.system(size: 22))
                        .fontWeight(.black)
                        .padding(.bottom,0.1)
                    Text("고민상담소")
                        .font(.system(size: 22))
                        .fontWeight(.black)
                        .padding(.bottom,0.1)
                    Text("수현이에게 고민을 이야기 해봐요!")
                        .font(.system(size: 12))
                }
                Rectangle().frame(width: 130, height: 130)
            }
            //세번째 Stack
            VStack{
                HStack{
                    Text("수현이들 고민거리")
                        .font(.system(size: 16))
                        .fontWeight(.black)
                    Spacer()
                    Text("최신순")
                        .font(.system(size: 10))
                        .foregroundColor(Color(hex: 0x90ADC7))
                }
                ScrollView{
                    CoummityCardView()
                    CoummityCardView()
                    CoummityCardView()
                    CoummityCardView()
                }
            }
            .padding(.leading,27)
            .padding(.trailing,27)
            .padding(.top,23)
            .background(Color(hex: 0xECF5FE))
            
        }
        
    }
    
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}
