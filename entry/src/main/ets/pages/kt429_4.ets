@Entry
@Component
struct Kt429_4 {
  @State message: string = 'Hello World';

  controller:TabsController = new TabsController()

  build() {
    Column(){
      Tabs({barPosition:BarPosition.End,controller:this.controller}){
        TabContent(){
          Text('首页').width('100%').height('100%').backgroundColor(Color.Pink)
        }.tabBar('首页')
        TabContent(){
          Text('探索').width('100%').height('100%').backgroundColor(Color.Gray)
        }.tabBar('探索')
      }.vertical(false)
        .barMode(BarMode.Scrollable)
      .scrollable(true)
    }
    .height('100%')
    .width('100%')
  }
}