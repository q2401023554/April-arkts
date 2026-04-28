import { text } from '@kit.ArkGraphics2D';

@Entry
@Component
struct ShowPage {
  @State arr: string[] = ['湖北', '湖南', '江西', '广东'];
  @State selectedProvince: string = ''

  @State arr1: string[][] = [
    ['桔子', '香蕉', '苹果'],
    ['桔子', '香蕉', '苹果'],
    ['桔子', '香蕉', '苹果'],
    ['桔子', '香蕉', '苹果']
  ];
  @State selectedFruit: string[] = []

  @State arr2: TextCascadePickerRangeContent[] = [
    {
      text: '湖北省',
      children: [
        { text: '武汉市' },
        { text: '襄阳市' },
        { text: '黄石市' },
        { text: '宜昌市'}
      ]
    },
    {
      text: '湖南省',
      children: [
        { text: '长沙市' },
        { text: '岳阳市' },
        { text: '湘潭市' }
      ]
    },
    {
      text: '江西省',
      children: [
        { text: '南昌市' },
        { text: '九江市' }
      ]
    },
    {
      text: '广东省',
      children: [
        { text: '广州市' },
        { text: '深圳市' },
        { text: '珠海市' }
      ]
    }
  ]
  @State selectedCity: string[] = []

  build() {
    Column() {
      Text(`选中了：${this.selectedProvince}`)
        .margin({ top: 20, bottom: 10 })
      TextPicker({
        range: this.arr,
        selected: 2
      }).onChange((value: string | string[], index: number | number[]) => {
        this.selectedProvince = value as string
      })

      Text(`选中了：${this.selectedFruit.join('-')}`)
        .margin({ top: 20, bottom: 10 })
      TextPicker({
        range: this.arr1
      }).onChange((value: string | string[], index: number | number[]) => {
        this.selectedFruit = value as string[]
      })

      Text(`选中了：${this.selectedCity.join('-')}`)
        .margin({ top: 20, bottom: 10 })
      TextPicker({
        range: this.arr2
      }).onChange((value: string | string[], index: number | number[]) => {
        this.selectedCity = value as string[]
      })
    }
    .height('100%')
    .width('100%')
  }
}