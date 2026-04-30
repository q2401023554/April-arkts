@Entry
@Component
struct Zy429_5 {
  // 通讯录分组数据：每组有一个首字母和多个联系人。
  @State groups: ContactGroup[] = [
    new ContactGroup('C', [
      new Contact('李三', '138 0000 1001', '同学'),
      new Contact('李四', '138 0000 1002', '朋友')
    ]),
    new ContactGroup('L', [
      new Contact('李明', '138 0000 2001', '室友'),
    ]),
    new ContactGroup('W', [
      new Contact('王五', '138 0000 3001', '同学'),
    ]),
    new ContactGroup('Z', [
      new Contact('张三', '138 0000 4001', '朋友'),
    ])
  ]

  build() {
    Column() {
      this.TitleArea()

      List() {
        ForEach(this.groups, (group: ContactGroup) => {
          ListItemGroup({ header: this.GroupHeader(group.letter) }) {
            ForEach(group.members, (contact: Contact) => {
              ListItem() {
                this.ContactItem(contact)
              }
            })
          }
        })
      }
      .width('100%')
      .layoutWeight(1)
      .padding({ left: 16, right: 16, bottom: 16 })
      .scrollBar(BarState.Off)
    }
    .width('100%')
    .height('100%')
    .backgroundColor('#F5F7FA')
  }

  @Builder
  TitleArea() {
    Column() {
      Text('任务5：分组通讯录')
        .fontSize(28)
        .fontWeight(FontWeight.Bold)
        .fontColor('#202124')
        .width('100%')
    }
    .width('100%')
    .padding({ left: 20, right: 20, top: 28, bottom: 18 })
  }

  @Builder
  GroupHeader(letter: string) {
    Text(letter)
      .width('100%')
      .height(34)
      .padding({ left: 12 })
      .fontSize(16)
      .fontWeight(FontWeight.Bold)
      .fontColor('#007DFF')
      .backgroundColor('#EAF1FF')
  }

  @Builder
  ContactItem(contact: Contact) {
    Row({ space: 12 }) {
      Text(contact.name.substring(0, 1))
        .width(46)
        .height(46)
        .borderRadius(23)
        .backgroundColor('#4E8DF5')
        .fontColor(Color.White)
        .fontSize(22)
        .fontWeight(FontWeight.Bold)
        .textAlign(TextAlign.Center)

      Column({ space: 6 }) {
        Row() {
          Text(contact.name)
            .fontSize(18)
            .fontWeight(FontWeight.Medium)
            .fontColor('#222222')
            .layoutWeight(1)

          Text(contact.tag)
            .fontSize(12)
            .fontColor('#007DFF')
            .padding({ left: 8, right: 8, top: 3, bottom: 3 })
            .backgroundColor('#EEF3FF')
            .borderRadius(10)
        }
        .width('100%')

        Text(contact.phone)
          .fontSize(14)
          .fontColor('#777777')
          .width('100%')
      }
      .layoutWeight(1)
    }
    .width('100%')
    .padding(14)
    .backgroundColor(Color.White)
  }
}

class Contact {
  name: string = ''
  phone: string = ''
  tag: string = ''

  constructor(name: string, phone: string, tag: string) {
    this.name = name
    this.phone = phone
    this.tag = tag
  }
}

class ContactGroup {
  letter: string = ''
  members: Contact[] = []

  constructor(letter: string, members: Contact[]) {
    this.letter = letter
    this.members = members
  }
}
