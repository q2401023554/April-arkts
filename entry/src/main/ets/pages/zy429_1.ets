@Entry
@Component
struct Zy429_1 {
  // 好友列表数据。使用 class 创建对象，写法更符合 ArkTS 的静态类型要求。
  @State friends: Friend[] = [
    new Friend('张小雨', '在线', '今天也要认真学习 HarmonyOS', '#4CAF50'),
    new Friend('李明', '离线', '周末一起打篮球', '#9E9E9E'),
    new Friend('王佳佳', '在线', '正在整理课堂笔记', '#4CAF50'),
    new Friend('陈晨', '忙碌', '项目开发中，请稍后联系', '#FF9800'),
    new Friend('刘洋', '在线', '有问题可以一起讨论', '#4CAF50'),
    new Friend('赵可', '离线', '明天见', '#9E9E9E'),
    new Friend('孙浩', '在线', '保持热爱，继续进步', '#4CAF50')
  ]

  build() {
    Column() {
      this.TitleArea()

      List({ space: 10 }) {
        ForEach(this.friends, (item: Friend) => {
          ListItem() {
            this.FriendItem(item)
          }
        })
      }
      .width('100%')
      .layoutWeight(1)
      .padding({ left: 16, right: 16, bottom: 16 })
      .scrollBar(BarState.Off)
    }
    .height('100%')
    .width('100%')
    .backgroundColor('#F5F7FA')
  }

  @Builder
  TitleArea() {
    Column() {
      Text('好友列表')
        .fontSize(28)
        .fontWeight(FontWeight.Bold)
        .fontColor('#202124')
        .width('100%')

      Text('共 ' + this.friends.length.toString() + ' 位好友')
        .fontSize(14)
        .fontColor('#666666')
        .margin({ top: 6 })
        .width('100%')
    }
    .width('100%')
    .padding({ left: 20, right: 20, top: 28, bottom: 18 })
  }

  @Builder
  FriendItem(friend: Friend) {
    Row({ space: 12 }) {
      // 使用姓名第一个字做头像，避免额外准备图片资源。
      Text(friend.name.substring(0, 1))
        .width(48)
        .height(48)
        .borderRadius(24)
        .backgroundColor('#4E8DF5')
        .fontColor(Color.White)
        .fontSize(22)
        .fontWeight(FontWeight.Bold)
        .textAlign(TextAlign.Center)

      Column() {
        Row() {
          Text(friend.name)
            .fontSize(18)
            .fontWeight(FontWeight.Medium)
            .fontColor('#222222')
            .layoutWeight(1)

          Text(friend.status)
            .fontSize(12)
            .fontColor(friend.statusColor)
            .padding({ left: 8, right: 8, top: 3, bottom: 3 })
            .backgroundColor('#EEF3FF')
            .borderRadius(10)
        }
        .width('100%')

        Text(friend.desc)
          .fontSize(14)
          .fontColor('#777777')
          .margin({ top: 6 })
          .maxLines(1)
          .textOverflow({ overflow: TextOverflow.Ellipsis })
          .width('100%')
      }
      .layoutWeight(1)
    }
    .width('100%')
    .padding(14)
    .borderRadius(12)
    .backgroundColor(Color.White)
  }
}

class Friend {
  name: string = ''
  status: string = ''
  desc: string = ''
  statusColor: string = ''

  constructor(name: string, status: string, desc: string, statusColor: string) {
    this.name = name
    this.status = status
    this.desc = desc
    this.statusColor = statusColor
  }
}
