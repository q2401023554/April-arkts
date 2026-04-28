// 标准的Student类
export class Student {
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
export class Teacher {
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

export class Animal {
  protected name: string = ''

  eat() {
    console.log('动物在吃东西')
  }
}

export class Dog extends Animal {
  name: string = '123'

  eat() {
    super.eat()
    console.log(this.name + '小狗在吃东西')
  }

  m1(): void
  m1(name: string): void
  m1(age: number): void
  m1(name?: string | number, age?: number) {

  }
}
