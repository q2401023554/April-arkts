@Entry
@Component
struct Zy423_u6 {
  @State username: string = '薄荷'
  @State phone: string = '18271213552'

  build() {
    Column() {
      // 头部区域
      Column({ space: 10 }) {
        Image('http://trustcdn.baidu.com/officialcard/0dd2f60b7f179aa1a89c196e3958142e_originalsize.jpeg')
          .width(80)
          .height(80)
          .borderRadius(40)
          .margin({ top: 40 })

        Text(this.username)
          .fontSize(22)
          .fontWeight(FontWeight.Bold)

        Text(this.phone)
          .fontSize(14)
          .fontColor('#999999')
      }
      .width('100%')
      .padding(20)
      .backgroundColor('#F5F5F5')

      // 功能列表
      Column({ space: 1 }) {
        // 编辑资料
        Row() {
          Text('编辑资料')
            .fontSize(16)
          Blank()
          Text('>')
            .fontSize(16)
            .fontColor('#999999')
        }
        .width('100%')
        .height(50)
        .padding({ left: 20, right: 20 })
        .backgroundColor(Color.White)
        .onClick(() => {
          console.log('点击编辑资料')
        })

        // 账号设置
        Row() {
          Text('账号设置')
            .fontSize(16)
          Blank()
          Text('>')
            .fontSize(16)
            .fontColor('#999999')
        }
        .width('100%')
        .height(50)
        .padding({ left: 20, right: 20 })
        .backgroundColor(Color.White)
        .onClick(() => {
          console.log('点击账号设置')
        })

        // 隐私设置
        Row() {
          Text('隐私设置')
            .fontSize(16)
          Blank()
          Text('>')
            .fontSize(16)
            .fontColor('#999999')
        }
        .width('100%')
        .height(50)
        .padding({ left: 20, right: 20 })
        .backgroundColor(Color.White)
        .onClick(() => {
          console.log('点击隐私设置')
        })

        // 关于我们
        Row() {
          Text('关于我们')
            .fontSize(16)
          Blank()
          Text('>')
            .fontSize(16)
            .fontColor('#999999')
        }
        .width('100%')
        .height(50)
        .padding({ left: 20, right: 20 })
        .backgroundColor(Color.White)
        .onClick(() => {
          console.log('点击关于我们')
        })
      }
      .margin({ top: 20 })

      // 退出登录按钮
      Button('退出登录')
        .width('90%')
        .height(50)
        .backgroundColor('#FF0000')
        .margin({ top: 40 })
        .onClick(() => {
          console.log('退出登录')
        })
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F0F0F0')
  }
}