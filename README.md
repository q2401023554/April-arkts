# GUOJIHUA418 HarmonyOS 学习项目

这是一个用于学习 HarmonyOS / ArkTS / ArkUI 的练习项目。项目以 `entry` 模块为主，包含基础语法、页面布局、表单输入、列表、网格、轮播、弹窗提示、路由跳转、进度组件等练习页面。

## 项目信息

| 项目 | 内容 |
| --- | --- |
| 应用包名 | `com.example.GUOJIHUA418` |
| 模块 | `entry` |
| 项目类型 | HarmonyOS Stage 模型 Entry Ability |
| 开发语言 | ArkTS |
| UI 框架 | ArkUI 声明式 UI |
| 目标 SDK | `6.0.2(22)` |
| 兼容 SDK | `6.0.2(22)` |

## 目录结构

```text
GUOJIHUA418/
├── AppScope/
│   └── app.json5
├── entry/
│   ├── build-profile.json5
│   ├── oh-package.json5
│   └── src/main/
│       ├── ets/
│       │   ├── entryability/
│       │   ├── entrybackupability/
│       │   ├── models/
│       │   └── pages/
│       ├── module.json5
│       └── resources/
├── build-profile.json5
├── hvigorfile.ts
└── README.md
```

## 页面说明

页面配置位于 `entry/src/main/resources/base/profile/main_pages.json`。

| 页面文件 | 主要内容 |
| --- | --- |
| `Index.ets` | 项目早期入口练习，包含输入框、按钮、枚举、数组和网络图片加载示例 |
| `HomePage.ets` | 文本、按钮样式、本地图片、网络图片和基础布局练习 |
| `LoginPage.ets` | 登录表单、用户名/手机号模式切换、路由跳转和 Toast 提示 |
| `SearchPage.ets` | 搜索框、列表过滤、歌曲数据展示和图标按钮 |
| `SettingPage.ets` | 设置页样式，包含亮度滑块、开关、列表项和底部弹出选择 |
| `ShowPage.ets` | 展示类页面练习 |
| `ProgressPage.ets` | Slider、Badge、LoadingProgress 等进度与状态组件 |
| `PromptActionPage.ets` | PromptAction 练习，包含 Toast、Dialog、ActionMenu |
| `kt428.ets` | DatePicker、TimePicker、ImageAnimator 和 Row 对齐练习 |
| `kt429.ets` | List、ForEach、Class/Student 数据结构练习 |
| `kt429_2.ets` | Grid 和 GridItem 网格布局练习 |
| `kt429_3.ets` | Swiper 轮播组件练习 |
| `zy421.ets` | ArkTS 基础语法练习 |
| `zy422.ets` | 类、对象、构造函数、Getter/Setter 等面向对象练习 |
| `zy423_UI.ets` | ArkUI 页面组件练习 |
| `zy423_u3.ets` | UI 组件练习页面 |
| `zy423_u5.ets` | UI 组件练习页面 |
| `zy423_u6.ets` | UI 组件练习页面 |
| `zy424_u2.ets` | 课程练习页面 |
| `sk424.ets` | 路由或页面跳转相关练习 |
| `zy425_u2.ets` | 表单或注册相关练习 |
| `zy425_u4.ets` | 课程练习页面 |

## 已练习知识点

- ArkTS 基础类型、数组、枚举、函数、类和构造函数
- `@Entry`、`@Component`、`@State` 等声明式开发基础
- `Column`、`Row`、`Stack`、`Blank` 等常用布局
- `Text`、`Button`、`TextInput`、`TextArea`、`Image` 等基础组件
- `List`、`ListItem`、`ForEach` 列表渲染
- `Grid`、`GridItem` 网格布局
- `Swiper` 轮播组件
- `Slider`、`Badge`、`LoadingProgress` 等交互组件
- `DatePicker`、`TimePicker` 日期时间选择器
- `ImageAnimator` 帧动画
- `router.pushUrl()` 页面跳转
- `this.getUIContext().getPromptAction()` 提示弹窗能力

## PromptAction 示例

`PromptActionPage.ets` 演示了三类常用提示能力：

- `showToast()`：显示轻量提示信息
- `showDialog()`：显示确认弹窗，并根据按钮下标处理结果
- `showActionMenu()`：显示操作菜单，并根据用户选择更新页面状态

该页面适合学习 HarmonyOS 中“点击按钮触发系统提示组件”的完整流程。

## kt429 学习重点

`kt429.ets` 使用两个类描述数据：

```typescript
class Student {
  id: string
  name: string
  tel: string
}

class Class {
  id: string
  name: string
  student: Student[]
}
```

页面通过 `@State arr: Class[]` 保存班级数组，再使用 `List + ForEach` 遍历数据并生成列表项。这个页面适合学习“数据结构如何驱动 UI 渲染”。

## 构建方式

推荐使用 DevEco Studio 打开项目并运行。

也可以在项目根目录使用 Hvigor 构建：

```powershell
& "E:\Huawei\DevEco Studio\tools\hvigor\bin\hvigorw.bat" assembleHap --no-daemon --no-incremental
```

当前项目可以成功执行 `assembleHap`。构建时可能会看到以下已有 warning：

- `username`、`password`、`signin` 等资源名在 AppScope 和 entry 中重复声明
- 部分页面使用的 `router.pushUrl` API 已被提示废弃
- 项目未配置签名，因此会跳过签名

这些 warning 不影响学习页面的基础编译运行，但后续可以逐步优化。

## 开发注意事项

- ArkTS 中应尽量显式声明类型，避免使用 `any`、`unknown`。
- import 语句应放在文件顶部。
- 页面状态建议使用 `@State` 驱动 UI 更新。
- 新增页面后，需要在 `main_pages.json` 中注册。
- 新增资源字符串、颜色、图片时，应放入 `resources` 目录并通过 `$r()` 或 `$rawfile()` 引用。
- 使用 HarmonyOS API 前，应优先确认官方 API 签名、权限要求和支持版本。

## 后续可优化方向

- 修复 README 之外页面中的中文乱码字符串
- 整理 AppScope 与 entry 中重复的字符串资源
- 将登录、搜索、设置等页面中的文本统一抽取到 `resources`
- 将部分练习页面中的数据模型移动到 `models` 目录
- 替换废弃的路由 API
- 为关键页面补充更系统的学习注释
