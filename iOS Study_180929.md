# iOS Study

## 180929

### Understanding Event handling, Responders, Responder Chain

* 앱은 리스폰더 객체를 사용해서 이벤트를 받고 처리한다. 리스폰더 객체*responder object*s는 UIResponder 클래스의 인스턴스이다.
* 리스폰더는 이벤트 데이터를 받고 이벤트를 처리하거나 다른 리스폰더 객체에 이벤트를 넘긴다.
* 앱이 이벤트를 받으면, UIKit는 이벤트를 받기에 가장 적절한 리스폰터 객체에 이벤트를 넘기는데, 그것이 first responder이다.
* 처리되지 않은 이벤트들은 리스폰더에서 리스폰더로 넘어가는데, 그 순서는 액티브한 responder chain을 따른다. 

### Managing Your App's Life Cycle

* 유저가 앱을 실행하면, 앱은 inactive state를 거쳐 active state로 간다.

  * Not Running / Background / Inactive / Active / Suspend

    

  didFinishLaunchingWithOptions - 초기화에 필요, 앱 실행시 처음 한 번만 호출

  applicationDidBecomeActive - 활성화 될때마다 호출

  applicationDidEnterBackground - 사용자 데이터를 저장하고, 리소스를 release함

  viewDidLoad - 컨트롤러의 뷰가 메모리에 로드되고 나서 호출된다. 초기화 할 때 쓴다. 뷰가 처음 메모리에 올라갈 때 한 번만 호출됨.

  viewWillAppear - UI 변환이 있을 때 쓴다. 뷰가 바뀔 때마다 호출됨. 앱 사용 중간에 환경설정이 바뀌어서 뷰가 바뀔 경우에도 업데이트를 위해 쓴다.

  cf) loadView - 뷰를 수동으로 만들 때 쓴다. custom implementation을 할 때는 super를 쓰지 않는다.



* 앱 실행시 함수 호출 순서

  ​    WillFinishLaunchingWithOptions

  -> didFinishLaunchingWithOptions

  -> viewDidLoad

  -> viewWillAppear

  -> viewDidAppear

  -> applicationDidBecomeActive

  -> viewWillDisappear

  -> viewDidDisappear

  -> applicationWillResignActive

  -> applicationDidEnterBackground

  -> applicationWillEnterForeground

  -> applicationDidBecomeActive

  -> applicationWillTerminate

  

#### View Life Cycle

* viewDidLoad
* viewWillAppear
* viewDidAppear
* viewWillDisappear
* viewDidDisappear