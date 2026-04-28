@Entry  //页面装饰器
@Component  //图片装饰器
struct HomePage {
  @State message:string = 'hello, harmoneyos'


  build() {
    Column({ space: 10 }){
      Text(this.message).fontSize(20).fontColor('#ff756a6a').fontWeight(FontWeight.Bold).textAlign(TextAlign.Center)
        .width('80%').height(50).backgroundColor('#ff8efc8e').textAlign(TextAlign.Center).textOverflow({overflow:TextOverflow.Ellipsis}).maxLines(2)
      //.textOverflow({overflow:TextOverflow.MARQUEE}) 跑马灯
      Button('按钮1').onClick(()=>{
        this.message = '这是一段很长的文本，需要处理这段文本需要处理溢出,需要处理这段文本需要处理溢出，需要处理这段文本需要处理溢出'
      })
      Button('按钮2').type(ButtonType.Circle).width(80)
      Button('按钮3').type(ButtonType.Normal).width(80).borderRadius(10)
      Button('按钮4').type(ButtonType.ROUNDED_RECTANGLE).width(80)
      Button(){
        Row(){
        Image($r('app.media.startIcon')).width(40)
        Text('点击')
        }
      }.type(ButtonType.Normal).width(120.).borderRadius(10)

      Image($rawfile('u=3013666962,1125211374&fm=253&fmt=auto&app=120&f=JPEG.webp')).height('10%')
      Image('http://trustcdn.baidu.com/officialcard/0dd2f60b7f179aa1a89c196e3958142e_originalsize.jpeg').width(120)
    }.backgroundColor('#ffffff')
    .width('100%')
    .height('100%')
    //调整交叉轴
    //.alignItems(VerticalAlign.Center)
    //主轴方向
    //.justifyContent(FlexAlign.SpaceEvenly)
  }
}