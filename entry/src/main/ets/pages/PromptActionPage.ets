import { promptAction } from '@kit.ArkUI'

@Entry
@Component
struct PromptActionPage {
  @State message: string = '请选择一个 PromptAction 功能'

  private showToast(): void {
    try {
      this.getUIContext().getPromptAction().showToast({
        message: '这是一个 Toast 提示',
        duration: 2000,
        bottom: 80
      })
      this.message = '已显示 Toast'
    } catch (error) {
      this.message = 'Toast：显示失败'
    }
  }

  private showDialog(): void {
    let options: promptAction.ShowDialogOptions = {
      title: '确认操作',
      message: '是否执行当前操作？',
      buttons: [
        {
          text: '取消',
          color: '#666666'
        },
        {
          text: '确定',
          color: '#007DFF',
          primary: true
        }
      ]
    }

    try {
      this.getUIContext().getPromptAction().showDialog(options)
        .then((result: promptAction.ShowDialogSuccessResponse) => {
          if (result.index === 0) {
            this.message = 'Dialog：点击了取消'
          } else if (result.index === 1) {
            this.message = 'Dialog：点击了确定'
            this.showToastAfterConfirm()
          } else {
            this.message = 'Dialog：已关闭'
          }
        })
        .catch(() => {
          this.message = 'Dialog：显示失败'
        })
    } catch (error) {
      this.message = 'Dialog：显示失败'
    }
  }

  private showToastAfterConfirm(): void {
    try {
      this.getUIContext().getPromptAction().showToast({
        message: '操作已确认',
        duration: 1500
      })
    } catch (error) {
      this.message = 'Toast：显示失败'
    }
  }

  private showActionMenu(): void {
    let options: promptAction.ActionMenuOptions = {
      title: '请选择操作',
      buttons: [
        {
          text: '编辑',
          color: '#007DFF'
        },
        {
          text: '分享',
          color: '#007DFF'
        },
        {
          text: '删除',
          color: '#E84026'
        }
      ]
    }

    try {
      this.getUIContext().getPromptAction().showActionMenu(options)
        .then((result: promptAction.ActionMenuSuccessResponse) => {
          if (result.index === 0) {
            this.message = 'ActionMenu：选择了编辑'
          } else if (result.index === 1) {
            this.message = 'ActionMenu：选择了分享'
          } else if (result.index === 2) {
            this.message = 'ActionMenu：选择了删除'
          } else {
            this.message = 'ActionMenu：已关闭'
          }
        })
        .catch(() => {
          this.message = 'ActionMenu：显示失败'
        })
    } catch (error) {
      this.message = 'ActionMenu：显示失败'
    }
  }

  build() {
    Column({ space: 20 }) {
      Text('PromptAction 示例')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 40 })

      Text(this.message)
        .fontSize(16)
        .fontColor('#666666')
        .textAlign(TextAlign.Center)
        .width('80%')
        .margin({ bottom: 20 })

      Button('显示 Toast')
        .width('80%')
        .height(48)
        .onClick(() => {
          this.showToast()
        })

      Button('显示 Dialog')
        .width('80%')
        .height(48)
        .onClick(() => {
          this.showDialog()
        })

      Button('显示 ActionMenu')
        .width('80%')
        .height(48)
        .onClick(() => {
          this.showActionMenu()
        })
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)
  }
}
