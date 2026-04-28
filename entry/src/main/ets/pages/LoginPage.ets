import router from '@ohos.router'

@Entry
@Component
struct LoginPage {
  @State username: string = 'abc'
  @State password: string = '123'
  @State usernamePlaceHolder:string = '请输入用户名'
  @State isOn:boolean =false
  @State usernameType:InputType = InputType.USER_NAME

  build() {
    Stack() {
      Column() {
        Text('用户登录')
          .fontSize(28)
          .fontWeight(FontWeight.Bold)
          .margin({ top: 40, bottom: 40 })

        Column({ space: 5 }) {
          TextInput({ placeholder: this.usernamePlaceHolder, text: this.username })
            .type(this.usernameType).maxLength(16)
            .onChange((r) => {
              this.username = r
            })
        }

        // 密码输入框
        Column({ space: 5 }) {
          TextInput({ placeholder: '请输入密码', text: this.password })
            .type(InputType.Password)
            .maxLength(16)
            .onChange((r) => {
              this.password = r
            })
        }

        TextArea({placeholder:'请输入简介'}).maxLines(3).maxLines(10)
          .showCounter(true)

        Text(`当前输入：用户名${this.username},密码${this.password}`)
        Row(){
          Text('使用手机号登录')
          Toggle({type:ToggleType.Switch,isOn:this.isOn})
            .onChange((isOn:boolean)=>{
              this.isOn = isOn
              if (isOn) {
                this.usernamePlaceHolder = '请输入手机号'
                this.username = ''
                this.usernameType = InputType.PhoneNumber
              }else{
                this.usernamePlaceHolder = '请输入用户名'
                this.username = ''
                this.usernameType = InputType.USER_NAME
              }
            })
        }.width('80%').justifyContent(FlexAlign.SpaceBetween).margin({ top: 40, bottom: 40 })


        // 登录按钮
        Button('登录')
          .width('80%')
          .backgroundColor('#007DFF')
          .onClick((event: ClickEvent) => {
            if (this.isOn) {
              if (this.username == '123' && this.password == '123') {
                router.pushUrl({ url: 'pages/SearchPage' })
                this.getUIContext().getPromptAction().showToast({ message: '登陆成功' })
              } else {
                this.getUIContext().getPromptAction().showToast({ message: '手机号或密码错误' })
              }
            } else {
              if (this.username == 'abc' && this.password == '123') {
                router.pushUrl({ url: 'pages/SearchPage' })
                this.getUIContext().getPromptAction().showToast({ message: '登陆成功' })
              } else {
                this.getUIContext().getPromptAction().showToast({ message: '用户名或密码错误' })
              }
            }
          })
      }
      .width('100%')
      .height('100%')
      .backgroundColor('#F5F5F5')

      // 返回按钮
      SymbolGlyph($r('sys.symbol.backward_end_fill'))
        .fontSize(30)
        .fontColor([Color.Black])
        .position({ x: 20, y: 20 })
        .onClick(() => {
          this.getUIContext().getRouter().back()
        })
    }
    .width('100%')
    .height('100%')
  }
}