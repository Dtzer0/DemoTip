//
//  ContentView.swift
//  StarOption
//
//  Created by 홍태희 on 2022/12/06.
//

import SwiftUI

struct ContentView: View {
    
    @State private var searchStick = ""
    
    var body: some View {
        NavigationView {
            VStack {
                if searchStick.count > 0 {
                    List {
                        //MARK : StartTipDetailView.swift에 있는 리스트 중 검색에 맞는 리스트 출력
                        ForEach(allArr.filter{ $0.lowercased().contains(searchStick) }, id: \.self) { item in
                            NavigationLink {
                                Text("sklajmmnn")
                            } label: {
                                Text(item)
                            }
                        }
                    }
                } else {
                    TipView()
                        .listStyle(InsetGroupedListStyle())

                }
            }
            .navigationBarTitle("모음")
            .searchable(text: $searchStick, prompt: "검색")

        }
    }
    
    @ViewBuilder
    private func TipView() -> some View {
        List {
            //새로운기능
            ZStack {
                Button(action: {
                    
                }, label: {
                    Image("ground")
                        .frame(width: 200, height: 200)
                        .scaledToFit()
                })
                Text("새로운 기능")
                    .bold()
                    .offset(x: -50, y: -75)
                    .font(.system(size: 23))
                    .foregroundColor(.white)
            }
            
            //시작하기
            Section {
                ForEach(startIcon.indices, id: \.self) { index in
                    NavigationLink {
                        StartTipView()
                    } label: {
                        Label(startArr[index], systemImage: startIcon[index])
                    }
                }
            } header: {
                Text("시작하기")
                    .font(.system(size: 15, weight: .bold))
                    .offset(x: -10, y: -5)
            }
            
            //사진 및 카메라
            Section {
                ForEach(cameraIcon.indices, id: \.self) { index in
                    NavigationLink {
                        Text("아직 구현 안함")
                    } label: {
                        Label(photoArr[index], systemImage: cameraIcon[index])
                    }
                }
            } header: {
                Text("사진 및 카메라")
                    .font(.system(size: 15, weight: .bold))
                    .offset(x: -10, y: -5)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
