@Entry  // 页面装饰器 2026年4月18日
@Component  // 组件装饰器
struct Index {

  build() {
    Column({space:10}){
      TextInput({placeholder:$r('app.string.username')})
      TextInput({placeholder:$r('app.string.password')})
      Button($r('app.string.signin')).onClick((enent: ClickEvent)=>{
        // let t:[string,number]  = ['张三',24]
        // let t1:string[] = ['张三','李四','王五']
        // t.push('六')
        // console.log('元组元素为：',t)

        // //定义一个数组，初始化6个数字，求所有的奇数之和，判断是否包含数字3，如果包含则删除，不包含则添加
        // let  arr:Array<number> = [7,8,9,3,4,5,3]
        // if (arr.includes(3)) {
        //   console.log('包含3')
        //   //找到位置
        //   let  index = arr.indexOf(3)
        //   arr.splice(index,0,8,9)//用来添加删除数组元素
        // }else{
        //   console.log('不包含3')
        //   arr.push(3)
        // }
        // console.log('数组为：',arr)

        // let arr:Array<number> = [3,4,5]
        // let arr1:string[] = ['hello','world']
        // arr.push(6)
        // arr1.pop()
        // console.log('长度为',arr.length)
        // console.log('长度为',arr1.length)

        // let num:number = 0o1237
        // console.log('0418',`${num}`)
        // num = 3
        // console.log('0418',`${num}`)
        //
        // let  str1:string|undefined = undefined
        // let  str2:string = 123 + `adadadadadad
        // adaadadada`
        // console.log('0418',`${str2}`)
      })
      Button('枚举操作').width('80%').onClick((event:ClickEvent)=>{
        fun1(MyColor.GREEN)
      })

      Button('')

      // 占据剩余空间，将图片推到底部
      Blank()
      
      // 网络图片
      Image('https://img1.baidu.com/it/u=1162174205,3106264265&fm=253&fmt=auto&app=138&f=JPEG?w=750&h=500')
        .width(200)
        .height(200)
        .objectFit(ImageFit.Contain)
        .margin({bottom: 20})
    }
    .width('100%')
    .height('100%')
    .alignItems(HorizontalAlign.End)
  }
}

class MyClass{
  name:string| undefined
  age :number=0
}

function fun1(c:MyColor){
  if(c==MyColor.RED){
    console.log('红色')
  } else if(c==MyColor.GREEN) {
    console.log('绿色')
  }
  if(c==MyColor.PINK){
    console.log('粉色')
  } else if(c==MyColor.BLUE) {
    console.log('蓝色')
  }
}

enum MyColor{
  RED,GREEN,PINK,BLUE,ORANGE
}
