import router from '@ohos.router'

@Entry
@Component
struct Sk424 {
  @State sex: string = '女'
  @State job: string = '战士'
  @State skills: string[] = []

  build() {
    Column({ space: 10 }) {
      // 显示结果
      Row() {
        Text(`您选择的结果：性别${this.sex}，职业${this.job}，初始技能为${this.skills.join(',')}`)
      }
      .width('90%')
      .borderWidth(1)
      .height(80)

      // 性别选择
      Row() {
        Text('性别：')
        Radio({ group: 'sex', value: '男' })
          .onChange((isChecked: boolean) => {
            if (isChecked) {
              this.sex = '男'
            }
          })
        Text('男')
        Radio({ group: 'sex', value: '女' })
          .checked(true)
          .onChange((isChecked: boolean) => {
            if (isChecked) {
              this.sex = '女'
            }
          })
        Text('女')
      }
      .width('90%')
      .borderWidth(1)
      .height(50)

      // 职业选择
      Row() {
        Text('职业：')
        Radio({ group: 'job', value: '战士' })
          .checked(true)
          .onChange((isChecked: boolean) => {
            if (isChecked) {
              this.job = '战士'
            }
          })
        Text('战士')
        Radio({ group: 'job', value: '法师' })
          .onChange((isChecked: boolean) => {
            if (isChecked) {
              this.job = '法师'
            }
          })
        Text('法师')
        Radio({ group: 'job', value: '刺客' })
          .onChange((isChecked: boolean) => {
            if (isChecked) {
              this.job = '刺客'
            }
          })
        Text('刺客')
      }
      .width('90%')
      .borderWidth(1)
      .height(50)

      // 技能选择
      Column() {
        Row() {
          Checkbox({ group: 'skills' })
            .shape(CheckBoxShape.ROUNDED_SQUARE)
            .onChange((isChecked: boolean) => {
              if (isChecked) {
                this.skills = ['火球术', '疾风剑法', '潜行']
              } else {
                this.skills = []
              }
            })
          Text('全选')
        }
        .width('90%')

        Row() {
          Text('初始技能：')
          Checkbox()
            .onChange((isChecked: boolean) => {
              if (isChecked) {
                this.skills.push('火球术')
              } else {
                let index = this.skills.indexOf('火球术')
                if (index >= 0) {
                  this.skills.splice(index, 1)
                }
              }
            })
          Text('火球术')
          Checkbox()
            .onChange((isChecked: boolean) => {
              if (isChecked) {
                this.skills.push('疾风剑法')
              } else {
                let index = this.skills.indexOf('疾风剑法')
                if (index >= 0) {
                  this.skills.splice(index, 1)
                }
              }
            })
          Text('疾风剑法')
          Checkbox()
            .onChange((isChecked: boolean) => {
              if (isChecked) {
                this.skills.push('潜行')
              } else {
                let index = this.skills.indexOf('潜行')
                if (index >= 0) {
                  this.skills.splice(index, 1)
                }
              }
            })
          Text('潜行')
        }
        .width('90%')
      }
      .width('90%')
      .borderWidth(1)
      .height(80)

      // 跳转按钮
      Button('点击跳转到登录界面')
        .width('80%')
        .height(50)
        .backgroundColor('#007DFF')
        .margin({ top: 20 })
        .onClick(() => {
          router.pushUrl({ url: 'pages/LoginPage' })
        })
    }
    .width('100%')
    .height('100%')
  }
}
