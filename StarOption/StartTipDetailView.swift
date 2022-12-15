//
//  StartTipDetailView.swift
//  StarOption
//
//  Created by 홍태희 on 2022/12/15.
//

import SwiftUI

struct StartTipDetailView: View {
    
    //@State var selectedPage = 0
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            TabView {
                ForEach(0..<8) { _ in
                    Comments()
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 150)
            .tabViewStyle(.page(indexDisplayMode: .always))
            .navigationTitle("탐색하기")
            .toolbar(content: {
                Button(action: {
                    
                }, label: {
                    Label("", systemImage: "bookmark")
                }).foregroundColor(.blue)
            })
        }
    }
    
    @ViewBuilder
    private func Comments() -> some View {
        VStack {
            Image("sample")
                .resizable()
                .scaledToFit()
                .frame(height: 550)
            
            VStack(alignment: .leading) {
                Text("홈으로 바로 이동하기")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.black)
                    .padding(.bottom, 5)
                Text("홈 화면으로 이동하려면 화면 하단 가장자리를 쓸어올리세요.")
                    .font(.system(size: 15, weight: .medium))
                    .foregroundColor(.black)
            }.padding()
        }
    }
}

//struct PageControls : View {
//
//    var numberOfPages : Int
//
//    @Binding var currentPage : Int
//
//    var body: some View {
//        HStack {
//            ForEach(0..<numberOfPages) { index in
//                Circle()
//                    .frame(width: 12, height: 12)
//                    .foregroundColor(index == self.currentPage ? .black : .gray)
//                    .onTapGesture {
//                        print("Clicked \(index) page.")
//                        self.currentPage = index
//                    }
//            }
//        }
//    }
//}

struct StartTipDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StartTipDetailView()
    }
}
