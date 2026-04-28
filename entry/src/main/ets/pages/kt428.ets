@Entry
@Component
struct Kt428 {
  @State message: string = 'Hello World';
  @State date: Date = new Date();

  imgArr: ImageFrameInfo[] = [
    { src: $r('app.media.lh1'), width: 210, height: 125, duration: 100 },
    { src: $r('app.media.lh2'), width: 210, height: 125, duration: 100 },
    { src: $r('app.media.lh3'), width: 210, height: 125, duration: 100 },
    { src: $r('app.media.lh4'), width: 210, height: 125, duration: 100 },
    { src: $r('app.media.lh5'), width: 210, height: 125, duration: 100 },
    { src: $r('app.media.lh6'), width: 210, height: 125, duration: 100 }
  ]
  @State tigerState: AnimationStatus = AnimationStatus.Initial

  build() {
    Column() {
      DatePicker({
        start: new Date(2021, 1, 1),
        end: new Date(2099, 12, 31),
        selected: new Date(),
        mode: DatePickerMode.YEAR_AND_MONTH
      }).onDateChange((date) => {
        this.date = date  // 日期改变时，把选中值存到 this.date
      }).lunar(true)      // 显示农历
        .canLoop(true)    // 日期滚轮可以无限循环滚动

      TimePicker({
        selected: this.date,
        format: TimePickerFormat.HOUR_MINUTE_SECOND
      }).useMilitaryTime(true)

      ImageAnimator()
        .images(this.imgArr)
        .state(this.tigerState)
        .iterations(-1)

      Row() {
        Button('Start').onClick(() => {
          this.tigerState = AnimationStatus.Running
        })
        Button('Pause').onClick(() => {
          this.tigerState = AnimationStatus.Paused
        })
        Button('Stop').onClick(() => {
          this.tigerState = AnimationStatus.Stopped
        })
      }

      Row() {
        Button('按钮1').onClick((event: ClickEvent) => {
          console.log('你点击了按钮1');
        })
        Button('按钮2')
        Blank()
        Button('按钮3')
      }.height(100).width('100%').backgroundColor(Color.Orange).justifyContent(FlexAlign.SpaceAround)//spacebetween分散对齐
      .alignItems(VerticalAlign.Top)
    }
    .height('100%')
    .width('100%')
  }
}