@Entry
@Component
struct PromptActionPage {
  @State message: string = 'Hello World';

  build() {
    Column(){
      Button('测试').onClick(() => {
        let options:PromptAction.showToastOptions = {

        }

        this.promptAction.showToast()
      })
    }
    .height('100%')
    .width('100%')
  }
}
