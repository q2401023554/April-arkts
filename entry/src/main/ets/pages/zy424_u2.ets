@Entry
@Component
struct Zy424_u2 {
  @State message: string = 'Hello World';
  @State isblueteethOn:boolean = false;

  build() {
    Column(){
      Toggle({type:ToggleType.Checkbox})
      Row(){
        Text(`蓝牙:${this.isblueteethOn?'开':'关'}`)
        SymbolGlyph($r('sys.media.AI_circle_viewfinder')).fontSize(20).fontColor([Color.Blue])
        Toggle({type:ToggleType.Switch,isOn:this.isblueteethOn})
          .switchPointColor(Color.Red).selectedColor(Color.Gray)
          .onChange((isOn:boolean)=>{
            this.isblueteethOn = isOn
          })
      }.width('90%').backgroundColor('#7490f395').borderRadius(10).height(50)
      .justifyContent(FlexAlign.SpaceBetween).padding({left:20,right:20})

      Toggle({type:ToggleType.Button}){
        Text('按钮')
      }
      Checkbox()
      SymbolGlyph($r('sys.symbol.flashlight_on_fill')).fontSize(50).fontColor(['#00ff00','#ff0000'])
        .renderingStrategy(SymbolRenderingStrategy.MULTIPLE_COLOR)

      //Image($rawfile('hourse.png'))

      Checkbox().shape(CheckBoxShape.ROUNDED_SQUARE).selectedColor(Color.Red)
      Radio({
        group: 'group1',
        value: '111'
      })


    }
    .height('100%')
    .width('100%')
  }
}

