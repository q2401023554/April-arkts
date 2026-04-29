@Entry
@Component
struct Kt429 {
  // @State 是响应式状态：变量变化后，页面中使用它的位置会自动刷新。
  @State message: string = 'Hello World';
  // arr 是班级数据数组。每一项都是一个 Class 对象，Class 里面还保存学生数组。
  @State arr: Class[] = [
    new Class('1', '计科2301班', [
      new Student('1', '张杰', '18271213552'),
      new Student('2', '李华', '13800138000'),
      new Student('3', '王芳', '13912345678')
    ]),
    new Class('2', '软工2302班', [
      new Student('1', '赵阳', '15098765432'),
      new Student('2', '陈雨', '13711112222')
    ]),
    new Class('3', '大数据2303班', [
      new Student('1', '刘浩', '18866667777'),
      new Student('2', '周琳', '13655558888'),
      new Student('3', '吴磊', '15933334444'),
      new Student('4', '郑琪', '13522221111')
    ]),
    new Class('4', '人工智能2304班', [
      new Student('1', '孙佳', '17700009999')
    ])
  ];


  build() {
    // build 方法用于描述页面 UI，ArkUI 会根据这里的组件结构绘制界面。
    Column(){
      // 顶部灰色区域，占页面高度 20%，当前主要作为占位展示。
      Text().width('90%').height('20%').backgroundColor(Color.Gray)
      // List 是可滚动列表容器，适合展示多条班级或学生数据。
      List(){
        // ForEach 遍历 this.arr，e 表示当前遍历到的班级对象。
        ForEach(this.arr,(e:Class)=>{

          // ListItem 表示列表中的一行。这里每个班级会生成一个列表项。
          ListItem(){
            // Row 是横向布局容器，内部组件按从左到右排列。
            Row(){
              // 当前只显示班级 id；如果要显示班级名，可以改成 Text(e.name)。
              Text(e.id).width('100%').textAlign(TextAlign.Center)
            }.width('90%').height(50).backgroundColor(Color.Pink).borderRadius(5)
          }.height(50).width('100%')
        })
      }
      // 关闭滚动条，并设置列表高度为页面的 80%，方向为竖直滚动。
      .scrollBar(BarState.Off).height('80%').listDirection(Axis.Vertical)
      // lanes(1) 表示单列列表；divider 设置列表项之间的分割线。
      .lanes(1).divider({
        strokeWidth:5,
        startMargin:'100vp',
        color:Color.Red,
        endMargin:50
      })
    }
    .height('100%')
    .width('100%')
  }


}

// Student 类用于描述一个学生对象。
// constructor 是构造函数，执行 new Student(...) 时会自动调用它完成初始化。
class Student{
  constructor(id: string, name: string, tel: string) {
    this.id = id;
    this.name = name;
    this.tel = tel;
  }
  // 下面三个字段分别保存学生编号、姓名和手机号。
  id:string
  name:string
  tel:string
}

// Class 类用于描述一个班级对象。
// 一个班级包含班级编号、班级名称，以及本班学生列表。
class Class{
  id:string

  constructor(id: string, name: string, student: Student[]) {
    this.id = id;
    this.name = name;
    this.student = student;
  }
  name:string
  // student 使用 Student[] 类型，表示这里保存的是多个 Student 对象。
  student:Student[]=[]

}
