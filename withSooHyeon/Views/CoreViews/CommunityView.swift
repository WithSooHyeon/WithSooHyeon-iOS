//
//  CommunityView.swift
//  withSooHyeon
//
//  Created by 이자민 on 2023/10/23.
//

import SwiftUI
import PopupView

struct CommunityView: View {
    @State private var searchText: String = ""
    @State private var isSearching: Bool = false
    @State private var showingPopup = false
    @State private var selectedOption: String = "최신순"
    
    func toastView() -> some View{
        VStack(alignment: .leading){
            HStack{
                Spacer()
                Text("정렬")
                    .font(.system(size: 16))
                    .fontWeight(.black)
                Spacer()
                Button(action: {
                                   self.showingPopup = false
                }){
                    Image(systemName: "xmark")
                        .font(.system(size: 12))
                }
            }
            OptionView(option: "최신순", selectedOption: $selectedOption)
                .padding(.bottom,16)
                .padding(.top,30)
            OptionView(option: "조회순", selectedOption: $selectedOption)
                .padding(.bottom,16)
            OptionView(option: "댓글순", selectedOption: $selectedOption)
        }
        .padding(.leading,27)
        .padding(.trailing,27)
        .frame(maxWidth: .infinity, maxHeight: 250) // 화면 1/3 차지
        .background(Color.white)
        .cornerRadius(16)
        
    }
    
    var body: some View {
        ZStack(){
            VStack (spacing: 0){
                //첫번째 Stack
                HStack{
                    Rectangle()
                        .frame(height: 40)
                        .cornerRadius(40)
                        .foregroundColor(Color(hex: 0xF6FBFF))
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
                        .font(.system(size: 28))
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
                    Spacer()
                    Rectangle()
                        .frame(width: 130, height: 130)
                        .foregroundColor(Color(hex: 0xECF5FE))
                }
                .padding(.leading,27)
                .padding(.trailing,27)
                .padding(.top,23)
                .padding(.bottom,23)
                
                //세번째 Stack
                VStack{
                    HStack{
                        Text("수현이들 고민거리")
                            .font(.system(size: 16))
                            .fontWeight(.black)
                        Spacer()
                        Button(action: {
                            self.showingPopup = true
                                }) {
                                    HStack {
                                        Text("\(selectedOption)")
                                            .font(.system(size: 10))
                                            .foregroundColor(Color(hex: 0x90ADC7))
                                        Image(systemName: "chevron.down")
                                            .font(.system(size: 10))
                                            .foregroundColor(Color(hex: 0x90ADC7))
                                    }
                                }
                    }
                    ScrollView{
                        CommunityCardView()
                        CommunityCardView()
                        CommunityCardView()
                        CommunityCardView()
                    }
                }
                .padding(.leading,27)
                .padding(.trailing,27)
                .padding(.top,23)
                .background(Color(hex: 0xECF5FE))
                
            }//VStack
            
        }//ZStack
        .popup(isPresented: $showingPopup){
            toastView()
        } customize: {
            $0
                    .type(.default)
                    .position(.bottom)
                    .animation(.spring())
                    .closeOnTapOutside(true)
                    .closeOnTap(false)
                    .backgroundColor(.black.opacity(0.5))
        }
    }
}

struct OptionView: View {
    let option: String
    @Binding var selectedOption: String

    var body: some View {
        HStack {
            Text(option)
                .font(.system(size: 12))
                .foregroundColor(option == selectedOption ? .blue : Color(hex: 0x90ADC7))
                .onTapGesture {
                    selectedOption = option
                }
            if option == selectedOption {
                Spacer()
                Image(systemName: "checkmark")
                    .foregroundColor(.blue)
            }
        }
    }
}

struct CommunityView_Previews: PreviewProvider {
    static var previews: some View {
        CommunityView()
    }
}
