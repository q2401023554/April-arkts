@Entry
@Component
struct Zy421 {
  build() {
    Column({ space: 20 }) {
      // 标题
      Text('2026年4月21日作业')
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

          // string类型
          let str: string = 'Hello HarmonyOS'
          console.log('string类型:', str)

          // boolean类型
          let flag: boolean = true
          console.log('boolean类型:', flag)

          // Array类型
          let arr: number[] = [1, 2, 3, 4, 5]
          console.log('Array类型:', arr)

          // Enum类型（用常量对象模拟）
          let myColor: string = '红色'
          console.log('Enum类型:', myColor)
        })

      Button('任务二')
        .width('80%')
        .height(50)
        .onClick(() => {
          console.log('===== 任务2：运算符练习 =====')
          let a: number = 10
          let b: number = 3

          console.log('a =', a, ', b =', b)
          console.log('加法 a + b =', a + b)
          console.log('减法 a - b =', a - b)
          console.log('乘法 a * b =', a * b)
          console.log('除法 a / b =', a / b)
        })

      Button('任务三')
        .width('80%')
        .height(50)
        .onClick(() => {
          console.log('===== 任务3：循环语句练习 =====')

          // for循环计算1~100累加和
          let sum: number = 0
          for (let i = 1; i <= 100; i++) {
            sum += i
          }
          console.log('1~100累加和 =', sum)

          // while循环打印九九乘法表
          console.log('九九乘法表:')
          let i = 1
          while (i <= 9) {
            let line = ''
            let j = 1
            while (j <= i) {
              line += j + 'x' + i + '=' + (j * i) + ' '
              j++
            }
            console.log(line)
            i++
          }

          // for...of遍历数组筛选偶数
          let arr: number[] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
          console.log('数组中的偶数:')
          for (let num of arr) {
            if (num % 2 === 0) {
              console.log('偶数:', num)
            }
          }
        })

      Button('任务四')
        .width('80%')
        .height(50)
        .onClick(() => {
          console.log('===== 任务4：函数封装练习 =====')

          // 测试isPrime函数
          console.log('判断素数:')
          console.log('7是素数:', isPrime(7))
          console.log('10是素数:', isPrime(10))

          // 测试fibonacci函数
          console.log('斐波那契数列(前10项):', fibonacci(10))
          console.log('斐波那契数列(前5项,步长2):', fibonacci(5, 2))
          console.log('错误处理测试:', fibonacci(0))
        })

      Button('任务五')
        .width('80%')
        .height(50)
        .onClick(() => {
          console.log('===== 任务5：数组高阶函数练习 =====')

          // 学生成绩数组
          let scores: number[] = [95, 82, 58, 76, 63, 88, 45, 91, 55, 70]

          // 计算每个学生的等级
          console.log('成绩等级:')
          for (let score of scores) {
            console.log('分数:', score, '等级:', getGrade(score))
          }

          // 筛选不及格学生(小于60分)
          let failed = scores.filter((s: number) => s < 60)
          console.log('不及格学生成绩:', failed)
        })
    }
    .width('100%')
    .height('100%')
  }
}



// 判断素数函数
function isPrime(n: number): boolean {
  if (n < 2) return false
  for (let i = 2; i < n; i++) {
    if (n % i === 0) return false
  }
  return true
}

// 斐波那契数列函数，step为可选步长参数
function fibonacci(count: number, step: number = 1): number[] {
  if (count <= 0) {
    console.log('错误：count必须大于0')
    return []
  }
  let result: number[] = []
  let a = 0, b = 1
  for (let i = 0; i < count; i++) {
    result.push(a)
    let temp = a
    a = b
    b = temp + b * step
  }
  return result
}

// 根据分数获取等级
function getGrade(score: number): string {
  let level = Math.floor(score / 10)
  switch (level) {
    case 10:
    case 9:
      return 'A'
    case 8:
      return 'B'
    case 7:
      return 'C'
    case 6:
      return 'D'
    default:
      return 'E(不及格)'
  }
}