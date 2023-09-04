# Minimum Deployments = 14.0
    ## 가장 자주 사용하는 SNS 인증 방법 중 하나인 Kakao Talk의 호환성이 14.0
    
# Draw
    ## - Xib 사용 
    ### 내부 Scene 구성 (공통 구성)
        ### View
            - Safe Area
            - ContentView (T:0, B:0, L:0, Tr:0)
                - HeadView (T:0, B:0, L:20, Tr:20)
                    - BackButton (T:-, B:-, L:HeadLable.20, Tr:-, Center Y) 
                    - HeadLabel (T:0, B:0, L:-, Tr:-, Center X, BackButton.Center Y)
                - BodyView (T:HeadView.10, B:0, L:20, Tr:20)
                    - {실제 데이터 구성 부분}
                - FootView (T:BodyView.10, B:0, L:20, Tr:20)
                    - CreatorLabel (T:40, B:20, L:-, Tr:-, Center X)
    ### 약어 설명
    - 문장: (T:BodyView.10, B:-, L:20, Tr:20, xxxx)
    - 해석: AutoLayout 설정 부분
        1. T = Top, B = Bottom, L = Leading, Tr = Trailing, xxxx = 기타 제약사항(Optional)
        2. 일반 상수 = 해당 Component의 superView랑 연결하는 제약조건
        3. A.상수 = A라는 Component와 해당 Component 사이에 존재하는 제약 조건
        4. - = 해당 부분 제약 조건 선언 안함 

    
# UseLibrary   
    ### pod 쓰는걸 진짜 싫어하지만 어쩔 수 없는 경우가 생겨서 pod을 생성할 예정
    ## 1. SunBase (개인 개발) - SPM: https://github.com/SEAN-59/SunBase
    ## 2. FireBase - SPM: https://console.firebase.google.com/u/0/?hl=ko
    ## 3. KakaoSDK - SPM: https://developers.kakao.com/docs/latest/ko/kakaologin/ios
    ## 4. NaverSDK - cocoaPod: https://developers.naver.com/docs/login/ios/ios.md
        ### PodFile: pod 'naveridlogin-sdk-ios'
    ## 5. SnapKit - SPM: https://github.com/SnapKit/SnapKit
    
# Plan
    ## 1. 계정 관리 기능
        ### - 종류
        #### 1. APPLE
        #### 2. KAKAO
        #### 3. GOOGLE
        #### 4. NAVER
        
        ### - 기능
        #### 1. Create Account
        #### 2. Sign-In
        #### 3. Sign-Out
        #### 4. Auto
        #### 5. DeConnect
        #### 6. Delete
        
        ### - 데이터
        #### 1. SNSID
        #### 2. SNSEmail
        #### 3. Token
        #### 4. Type
        #### 5. Name (opt)
        #### 6. Number (opt)
        
    ##
    
    
45MYH7ZHUQ (Team ID)
