import { SymbolGlyphModifier } from '@kit.ArkUI'

@Entry
@Component
struct SearchPage {
  @State keywords: string = ''
  // 原始数据
  private songs: Music[] = [
    new Music('1', '七里香', '周杰伦', 0),
    new Music('2', '黄昏', '周传雄', 0),
    new Music('3', '夜曲', '周杰伦', 0),
    new Music('4', '记事本', '周传雄', 0),
    new Music('5', '欧若拉', '张韶涵', 0),
    new Music('6', '江南', '林俊杰', 0)
  ]
  // 搜索结果
  @State searchResults: Music[] = []

  // 组件加载时执行
  aboutToAppear(): void {
    // 将原始数据作为搜索结果
    this.searchResults = this.songs
  }

  build() {
    Column() {
      Search({ placeholder: '请输入歌手名', value: this.keywords })
        .searchButton('搜索', { fontSize: 16, fontColor: Color.Red })
        .onSubmit(() => {
          // 点击搜索
          console.log('搜索按钮被点击，搜索内容为:' + this.keywords)
          // 根据输入关键词在原始列表中过滤，将歌手名称与关键词比较，包含关键词则列出
          this.searchResults = this.songs.filter(e => e.artist.includes(this.keywords))
        })
        .onChange((r) => {
          this.keywords = r
          // 当内容改变时，如果内容为空，则显示原始列表
          if (r == '') {
            this.searchResults = this.songs
          }
        })
        // .searchIcon(new SymbolGlyphModifier($r('sys.symbol.camera')))
        // .cancelButton({
        //   icon:{
        //     src:$r('app.media.startIcon')
        //   }
        // })

      List({ space: 10 }) {
        ForEach(this.searchResults, (m: Music, index: number) => {
          ListItem() {
            Row() {
              Column() {
                Text(m.name).fontSize(20)
                Text(m.artist).fontSize(16).fontColor('#55000000')
              }

              SymbolGlyph($r('sys.symbol.play_fill')).fontSize(20)
            }
            .height(50)
            .width('90%')
            .borderRadius(10)
            .backgroundColor(Color.Pink)
            .justifyContent(FlexAlign.SpaceBetween)
            .padding({ left: 20, right: 20 })
          }
          .width('100%')
        })
      }
      .margin({ top: 20 })
    }
    .height('100%')
    .width('100%')
  }
}

class Music {
  id: string = ''
  name: string = ''
  artist: string = ''
  status: number = 0

  constructor(id: string, name: string, artist: string, status: number) {
    this.id = id
    this.name = name
    this.artist = artist
    this.status = status
  }
}
