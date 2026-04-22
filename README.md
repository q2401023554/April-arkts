 HarmonyOS 学习项目文档

 📁 项目结构

```
GUOJIHUA418/
├── entry/
│   └── src/main/ets/
│       └── pages/
│           ├── Index.ets       主页面（登录界面）
│           ├── zy421.ets       2026年4月21日作业
│           └── zy422.ets       2026年4月22日作业
└── README.md
```

---

 📄 文档说明

 1. Index.ets - 主页面
创建日期： 2026年4月18日  
功能描述： 项目主入口页面

主要功能：
- ✅ 用户登录界面（用户名、密码输入）
- ✅ 枚举类型操作演示（MyColor枚举）
- ✅ 数组操作示例（增删改查）
- ✅ 元组类型演示
- ✅ 网络图片加载

代码特点：
- 使用 `@Entry` 和 `@Component` 装饰器
- 包含 `MyClass` 类定义
- 自定义枚举 `MyColor` (RED, GREEN, PINK, BLUE, ORANGE)
- 函数 `fun1()` 实现枚举判断逻辑

---

 2. zy421.ets - 2026年4月21日作业
创建日期： 2026年4月21日  
功能描述： ArkTS基础语法综合练习

 📋 任务清单

| 任务 | 内容 | 知识点 |
|------|------|--------|
| 任务一 | 变量与数据类型练习 | number, string, boolean, Array, Enum |
| 任务二 | 运算符练习 | 算术运算符 (+, -, , /) |
| 任务三 | 循环语句练习 | for, while, for...of |
| 任务四 | 函数封装练习 | 素数判断、斐波那契数列 |
| 任务五 | 数组高阶函数练习 | filter(), 成绩等级判断 |

 🔧 核心函数

```typescript
// 1. 判断素数
function isPrime(n: number): boolean

// 2. 斐波那契数列（支持步长参数）
function fibonacci(count: number, step: number = 1): number[]

// 3. 成绩等级判断
function getGrade(score: number): string
```

学习要点：
- ✅ TypeScript类型系统
- ✅ 循环控制语句
- ✅ 函数参数默认值
- ✅ 数组高阶函数（filter）
- ✅ Switch语句应用

---

 3. zy422.ets - 2026年4月22日作业
创建日期： 2026年4月22日  
功能描述： 面向对象编程 - 类与对象

 🎯 核心内容

Student 类（学生类）
```typescript
class Student {
  private _age: number = 18
  private _name: string = '默认姓名'
  
  constructor(name: string, age: number)
  
  // Getter/Setter
  public get name(): string
  public set name(value: string)
  public get age(): number
  public set age(value: number)  // 包含年龄验证逻辑
}
```

Teacher 类（教师类）
```typescript
class Teacher {
  private _age: number = 25
  private _name: string = '默认教师'
  
  constructor(name: string, age: number)
  
  // Getter/Setter（含数据验证）
  public get name(): string
  public set name(value: string)
  public set age(age: number)  // 年龄范围验证 (0-150)
  public get age(): number
}
```

学习要点：
- ✅ 类的定义与构造函数
- ✅ 私有属性命名规范（`_`前缀）
- ✅ Getter/Setter访问器
- ✅ 数据验证逻辑
- ✅ 对象实例化与使用

---

 📅 每日更新记录

 2026年4月18日
- ✅ 创建项目基础结构
- ✅ 实现主页面（Index.ets）
- ✅ 登录界面开发
- ✅ 枚举类型与数组操作演示

 2026年4月21日
- ✅ 创建 zy421.ets 作业文件
- ✅ 完成5个编程任务：
  - 变量与数据类型
  - 运算符应用
  - 循环语句（累加和、九九乘法表）
  - 函数封装（素数判断、斐波那契）
  - 数组高阶函数（成绩筛选）

 2026年4月22日
- ✅ 创建 zy422.ets 作业文件
- ✅ 实现标准类结构：
  - Student类（完整封装）
  - Teacher类（数据验证）
- ✅ 修复语法错误：
  - 构造函数位置错误
  - build()方法中的非法变量声明
  - 缺失的属性定义

---

 🎓 学习进度总结

| 日期 | 文件 | 主要内容 | 完成度 |
|------|------|----------|--------|
| 04-18 | Index.ets | 项目初始化、基础UI | ✅ 100% |
| 04-21 | zy421.ets | 基础语法、函数、数组 | ✅ 100% |
| 04-22 | zy422.ets | 面向对象、类与对象 | ✅ 100% |

---

 🚀 后续计划

- [ ] 接口（Interface）定义与实现
- [ ] 继承与多态
- [ ] 泛型编程
- [ ] 装饰器高级应用
- [ ] 状态管理（@State, @Prop, @Link）

---

 📝 开发环境

- 开发工具： DevEco Studio
- 开发语言： ArkTS (TypeScript扩展)
- 目标平台： HarmonyOS
- 项目类型： Empty Ability

---

 👨‍💻 作者

HarmonyOS 学习项目 - 2026年4月

---

> 💡 提示： 每个作业文件都包含详细的console.log输出，可通过DevEco Studio的日志窗口查看运行结果。
