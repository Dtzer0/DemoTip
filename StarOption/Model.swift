//
//  Model.swift
//  StarOption
//
//  Created by 홍태희 on 2022/12/07.
//

import SwiftUI

//MEMO : 데이터모델링 사안 : ContentView텍스트, StartTipView텍스트, 상세뷰 그라데이션(색), 상세의상세뷰 설명(텍스트)
// => 현재 데이터를 여기에 배열로 다 만들면 Model.swift가 너무 더러워짐.. 방법이 없을까?

//ContentView.swift
let startArr = ["iPhone 탐색하기","사용자 정보 보호하기", "대비하기", "필수 항목 설정하기", "iPhone 개인 맞춤화 하기"]
let photoArr = ["사진", "카메라"]

let startIcon = ["hand.draw", "lock.shield", "heart.text.square", "star", "heart"]
let cameraIcon = ["photo.on.rectangle.angled", "camera"]

let allArr = ["iPhone 탐색하기", "사용자 정보 보호하기", "대비하기", "필수 항목 설정하기", "iPhone 개인 맞춤화 하기", "새로운 기능", "사진", "카메라"]

//StartTipView.swift
let titleTip = ["홈으로 바로 이동하기", "앱 전환하기", "제어 센터 열기", "더 많은 제어 항목 보기", "Siri야.."]
let commentTip = ["홈 화면으로 이동하려면 화면 하단 가장자리를 쓸어올리세요.",
                  "최근에 사용한 앱으로 돌아가려면 화면을 쓸어올리고 잠시 멈춘 다음, 앱을 탭하여 여세요.",
                  "화면 오른쪽 상단을 쓸어내려 화면 밝기를 변경하고, 오디오를 제어하는 등의 동작을 빠르게 수행해보세요.",
                  "제어 센터에서 제어 항목을 길게 눌러 더 많은 작업을 수행해 보세요. 예를 들어, 타이머 버튼을 길게 눌러 빠르게 타이머를 설정해 보세요.",
                  "Siri야 라고 부른다음 원하는 작업을 말해주세요."]
