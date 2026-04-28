import { Student, Teacher, Animal, Dog } from '../models/Student'

@Entry
@Component
struct Zy422 {
  build() {
    Column({ space: 20 }) {
      // 标题
      Text('2026年4月22日课堂')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 40, bottom: 20 })

      Button('任务一')
        .width('80%')
        .height(50)
        .onClick(() => {
          console.log('===== 任务1：变量与数据类型练习 =====')
          // number类型
          let num1: number = 42
          let num2: number = 3.14
          console.log('number类型:', num1, num2)

          // 创建Student实例
          let stu: Student = new Student('张三', 20)
          console.log('Student实例:', stu.name, stu.age)

          // 创建Teacher实例
          let t: Teacher = new Teacher('李老师', 30)
          console.log('Teacher实例:', t.name, t.age)
          t.age = -600
          console.log(t.age + '')
        })

    }
    .width('100%')
    .height('100%')
  }
}
