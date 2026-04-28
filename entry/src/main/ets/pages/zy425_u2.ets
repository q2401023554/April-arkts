@Entry
@Component
struct Zy425_u2 {
  @State username: string = ''
  @State password: string = ''
  @State confirmPassword: string = ''
  @State agreeProtocol: boolean = false

  build() {
    Column({ space: 20 }) {
      Text('用户注册')
        .fontSize(28)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 60, bottom: 40 })

      // 用户名输入框
      Column({ space: 5 }) {
        Text('用户名')
          .fontSize(16)
          .width('80%')
        TextInput({ placeholder: '请输入用户名' })
          .width('80%')
          .height(50)
          .onChange((value: string) => {
            this.username = value
          })
      }

      // 密码输入框
      Column({ space: 5 }) {
        Text('密码')
          .fontSize(16)
          .width('80%')
        TextInput({ placeholder: '请输入密码' })
          .width('80%')
          .height(50)
          .type(InputType.Password)
          .onChange((value: string) => {
            this.password = value
          })
      }

      // 确认密码输入框
      Column({ space: 5 }) {
        Text('确认密码')
          .fontSize(16)
          .width('80%')
        TextInput({ placeholder: '请再次输入密码' })
          .width('80%')
          .height(50)
          .type(InputType.Password)
          .onChange((value: string) => {
            this.confirmPassword = value
          })
      }

      // 同意协议
      Row() {
        Checkbox()
          .onChange((isChecked: boolean) => {
            this.agreeProtocol = isChecked
          })
        Text('我已阅读并同意用户协议')
          .fontSize(14)
      }
      .width('80%')
      .margin({ top: 10 })

      // 注册按钮
      Button('注册')
        .width('80%')
        .height(50)
        .fontSize(18)
        .backgroundColor('#007DFF')
        .margin({ top: 20 })
        .onClick(() => {
          if (!this.agreeProtocol) {
            console.log('请先同意用户协议')
            return
          }
          if (this.password !== this.confirmPassword) {
            this.getUIContext().getPromptAction().showToast({ message: '两次密码输入不一致' })
            return
          }
          this.getUIContext().getPromptAction().showToast({ message: '注册成功：用户名${this.username' })
        })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F5F5')
  }
}