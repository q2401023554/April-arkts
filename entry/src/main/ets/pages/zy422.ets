@Entry
@Component
struct Zy422 {
  build() {
    Column({ space: 20 }) {
      // 标题
      Text('2026年4月22日作业')
        .fontSize(24)
        .fontWeight(FontWeight.Bold)
        .margin({ top: 40, bottom: 20 })

      // 按钮一：变量与数据类型练习
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
          let tea: Teacher = new Teacher('李老师', 30)
          console.log('Teacher实例:', tea.name, tea.age)
        })

    }
    .width('100%')
    .height('100%')
  }
}

// 标准的Student类
class Student {
  private _age: number = 18
  private _name: string = '默认姓名'

  // 构造函数
  constructor(name: string, age: number) {
    this._name = name
    this._age = age
  }

  // getter和setter方法
  public get name(): string {
    return this._name
  }

  public set name(value: string) {
    this._name = value
  }

  public get age(): number {
    return this._age
  }

  public set age(value: number) {
    if (value >= 0 && value < 150) {
      this._age = value
    } else {
      console.log('年龄设置无效，使用默认值18')
      this._age = 18
    }
  }
}

// 标准的Teacher类
class Teacher {
  private _age: number = 25
  private _name: string = '默认教师'

  // 构造函数
  constructor(name: string, age: number) {
    this._name = name
    this._age = age
  }

  // getter和setter方法
  public get name(): string {
    return this._name
  }

  public set name(value: string) {
    this._name = value
  }

  public set age(age: number) {
    if (age >= 0 && age < 150) {
      this._age = age
    } else {
      this._age = 18
    }
  }

  public get age(): number {
    return this._age
  }
}

class Animal{
  protected name:string = ''
  eat(){
    console.log('动物在吃东西');
  }
}

class Dog extends Animal{
  name:string = '123'
  eat(){
    super.eat()
    console.log(this.name + '小狗在吃东西')
  }

  m1():void;
  m1(name:string):void;
  m1(age:number):void;

  m1(name?:string | number, age?:number){

}
}