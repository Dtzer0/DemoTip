//
//  StartTipView.swift
//  StarOption
//
//  Created by 홍태희 on 2022/12/09.
//

import SwiftUI

struct StartTipView: View {
    var body: some View {
        List {
            TopImage()
            BottomNav()
        }
        .listStyle(PlainListStyle())
        .navigationBarTitleDisplayMode(.inline)
    }
    
    @ViewBuilder
    private func TopImage() -> some View {
        VStack {
            Image(systemName: "hand.draw.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 60)
                .foregroundColor(.white)
            Text("iPhone 탐색하기")
                .offset(x: 5, y: 5)
                .font(.system(size: 22, weight: .bold))
                .foregroundColor(.white)
                .padding(.bottom, 5)
            Text("제스처 및 버튼을 찾아보고 iPhone을 손쉽게 탐색해보세요.")
                .font(.system(size: 12, weight: .medium))
                .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, minHeight: 230)
        .listRowBackground(LinearGradient(colors: [.blue, .gray], startPoint: .leading, endPoint: .trailing).mask({
            LinearGradient(gradient: Gradient(stops: [
                .init(color: .black, location: 0.5),
                .init(color: .clear, location: 1)
            ]), startPoint: .top, endPoint: .bottom)
        }))
    }
    
    @ViewBuilder
    private func BottomNav() -> some View {
        ForEach(0..<5) { tip in
            NavigationLink {
                StartTipDetailView()
            } label: {
                VStack {
                    HStack {
                        Image("sample")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 150)
                        VStack(alignment: .leading) {
                            Text(titleTip[tip])
                                .font(.system(size: 18, weight: .bold))
                                .foregroundColor(.black)
                            Text(commentTip[tip])
                                .font(.system(size: 15, weight: .medium))
                                .foregroundColor(.black)
                        }.padding(.leading, 10)
                    }
                }.padding(.all, 5)
            }
        }
    }
}

struct StartTipView_Previews: PreviewProvider {
    static var previews: some View {
        StartTipView()
    }
}
