# GUOJIHUA418 HarmonyOS 学习项目

更新日期：2026年4月29日

这是一个 HarmonyOS / ArkTS / ArkUI 学习项目，主要用于练习 ArkTS 基础语法、声明式 UI、常用组件、页面跳转、列表渲染、表单输入、弹窗提示、轮播、标签页等内容。

## 项目信息

| 项目 | 内容 |
| --- | --- |
| 应用包名 | `com.example.GUOJIHUA418` |
| 主模块 | `entry` |
| 项目类型 | HarmonyOS Stage 模型 Entry Ability |
| 开发语言 | ArkTS |
| UI 框架 | ArkUI 声明式 UI |
| 目标 SDK | `6.0.2(22)` |
| 兼容 SDK | `6.0.2(22)` |

## 目录结构

```text
GUOJIHUA418/
├── AppScope/                         应用级配置和资源
├── entry/                            主业务模块
│   ├── src/main/ets/entryability/    应用入口 Ability
│   ├── src/main/ets/models/          数据模型
│   ├── src/main/ets/pages/           页面练习代码
│   ├── src/main/module.json5         模块配置
│   └── src/main/resources/           字符串、颜色、图片、页面路由等资源
├── build-profile.json5               工程构建配置
├── hvigorfile.ts                     Hvigor 构建入口
└── README.md                         项目说明文档
```

## 页面注册

页面路由配置文件：

```text
entry/src/main/resources/base/profile/main_pages.json
```

应用启动页目前在：

```text
entry/src/main/ets/entryability/EntryAbility.ets
```

通过 `windowStage.loadContent('pages/xxx')` 指定。

## Pages 页面说明

下面按照 `entry/src/main/ets/pages` 中页面文件的时间顺序整理。日期用于学习记录，同一天只在第一条记录中显示。

| 日期 | 页面文件 | 页面功能 | 使用控件类型及作用 |
| --- | --- | --- | --- |
| 2026-04-22 | `Index.ets` | 项目早期入口练习，包含登录输入、按钮点击、枚举方法调用、图片展示。 | `Column`：纵向排列页面内容；`TextInput`：输入用户名和密码；`Button`：触发登录、枚举操作等点击事件；`Blank`：占据剩余空间，把图片推到底部；`Image`：加载网络图片；`Text`：用于按钮或基础文本展示。 |
|  | `zy421.ets` | ArkTS 基础语法练习，按钮触发变量、数组、循环、函数等任务。 | `Column`：纵向放置标题和任务按钮；`Text`：显示作业标题；`Button`：点击后在日志中执行不同任务；`console.log`：输出学习结果。 |
| 2026-04-23 | `zy422.ets` | 面向对象练习，学习类、构造函数、Getter/Setter 等内容。 | `Column`：组织页面结构；`Text`：显示课堂标题；`Button`：触发对象创建和类方法测试；`class`：定义学生、教师等对象模型。 |
|  | `HomePage.ets` | 基础 UI 组件练习，展示文本、按钮样式、本地图片和网络图片。 | `Column`：纵向布局；`Text`：显示状态文本并练习字号、颜色、省略；`Button`：练习普通、圆形、圆角等按钮样式；`Row`：组合图片和文字按钮内容；`Image`：展示资源图片、rawfile 图片和网络图片。 |
| 2026-04-24 | `zy423_UI.ets` | 个人资料卡片页面练习。 | `Column`：搭建卡片纵向布局；`Image`：显示头像并用 `borderRadius` 做圆形效果；`Text`：展示姓名、职位、简介；`padding/backgroundColor/borderRadius`：实现卡片样式。 |
|  | `zy423_u3.ets` | 按钮样式练习页面。 | `Column`：纵向排列按钮；`Button`：练习主按钮、次要按钮、危险按钮；`backgroundColor/fontColor/borderRadius`：控制按钮颜色、文字颜色和圆角。 |
|  | `zy423_u6.ets` | 个人中心页面练习。 | `Column`：分区组织头像区和设置列表；`Image`：展示头像；`Text`：展示用户名、手机号、菜单文字；`Row`：实现每一行设置项；`Blank`：把箭头推到右侧；`Button`：退出登录按钮。 |
| 2026-04-25 | `zy424_u2.ets` | 开关、复选框、单选框、系统图标练习。 | `Toggle`：练习 `Checkbox`、`Switch`、`Button` 三种开关样式；`Row`：横向放置蓝牙文字、图标和开关；`Text`：显示开关状态；`SymbolGlyph`：显示系统图标；`Checkbox`：复选框；`Radio`：单选按钮。 |
|  | `sk424.ets` | 表单选择练习，包含性别、职业、技能选择和页面跳转。 | `Column/Row`：组织表单布局；`Text`：显示当前选择结果；`Radio`：单选性别和职业；`Checkbox`：多选技能和全选；`Button`：跳转到登录页；`router.pushUrl`：执行页面跳转。 |
|  | `LoginPage.ets` | 登录页面，支持用户名/手机号模式切换、密码输入、简介输入和登录跳转。 | `Stack`：叠放主内容和返回按钮；`Column`：纵向布局表单；`Text`：标题和当前输入展示；`TextInput`：输入用户名、手机号、密码；`TextArea`：输入简介；`Toggle`：切换用户名登录和手机号登录；`Button`：登录；`SymbolGlyph`：返回图标；`router.pushUrl`：登录成功后跳转；`PromptAction.showToast`：显示成功或错误提示。 |
|  | `SearchPage.ets` | 音乐搜索页面，根据歌手名过滤歌曲列表。 | `Search`：输入搜索关键字并显示搜索按钮；`List/ListItem`：展示歌曲列表；`ForEach`：遍历搜索结果数组；`Row/Column`：组织歌曲名、歌手名和播放图标；`Text`：显示歌曲信息；`SymbolGlyph`：显示播放图标；`filter/includes`：根据关键字过滤数据。 |
|  | `zy425_u2.ets` | 用户注册表单练习。 | `Column`：纵向排列表单项；`Text`：显示字段标题；`TextInput`：输入用户名、密码、确认密码；`Row`：放置协议复选框和文字；`Checkbox`：勾选用户协议；`Button`：提交注册；`PromptAction.showToast`：提示注册结果或错误信息。 |
|  | `zy425_u4.ets` | 设置开关页面练习。 | `Column`：页面整体布局；`Row`：每一项设置横向排列；`Text`：显示设置名称；`Blank`：把开关推到右边；`Toggle`：控制深色模式、消息通知、隐私保护等状态。 |
|  | `zy423_u5.ets` | 商品卡片页面练习。 | `Column`：商品内容纵向排列；`Image`：展示商品图；`Text`：显示商品名、价格等；`Row`：横向排列价格和收藏按钮；`Button`：收藏/取消收藏；`@State`：记录收藏状态并刷新按钮文字。 |
|  | `ProgressPage.ets` | 进度和状态组件练习。 | `Slider`：拖动调整进度，包含 InSet、OutSet、NONE 等样式；`Text`：显示当前进度；`Badge`：给按钮、图片、文字添加角标；`Image`：作为角标包裹内容；`LoadingProgress`：显示加载动画；`Row`：放置增加/减少按钮；`Button`：修改进度值。 |
|  | `SettingPage.ets` | 仿系统“显示与亮度”设置页面。 | `Column/Row`：组织标题栏和设置列表；`SymbolGlyph`：返回、太阳、箭头、选中图标；`Slider`：调节亮度；`Toggle`：自动调节开关；`Divider`：分隔设置项；`Blank`：右对齐辅助内容；`bindSheet`：弹出休眠时间选择面板；`@Builder`：封装底部弹窗和选项行。 |
|  | `ShowPage.ets` | 文本选择器练习，包含单列、多列和级联选择。 | `Column`：纵向布局三个选择器；`Text`：显示当前选择结果；`TextPicker`：单列、多列、级联选择；`TextCascadePickerRangeContent`：描述省市级联数据；`onChange`：选择变化后更新状态。 |
| 2026-04-28 | `kt428.ets` | 日期、时间、图片帧动画和 Row 对齐练习。 | `DatePicker`：选择年月并支持农历显示；`TimePicker`：选择时分秒；`ImageAnimator`：播放多帧图片动画；`Button`：控制动画开始、暂停、停止；`Row`：练习横向对齐；`Blank`：分隔按钮；`@State`：保存日期和动画状态。 |
| 2026-04-29 | `PromptActionPage.ets` | PromptAction 示例页面，包含 Toast、Dialog、ActionMenu。 | `Column`：纵向排列标题、状态文本和按钮；`Text`：显示当前操作结果；`Button`：触发 Toast、Dialog、ActionMenu；`getUIContext().getPromptAction()`：获取提示能力；`showToast`：轻提示；`showDialog`：确认弹窗；`showActionMenu`：操作菜单；`Promise.then/catch`：处理用户选择结果和异常。 |
|  | `kt429.ets` | 班级列表页面，练习数据类和 List 渲染。 | `class Student/Class`：描述学生和班级数据；`@State arr`：保存班级数组；`Column`：页面布局；`Text`：显示顶部占位和班级编号；`List/ListItem`：展示班级列表；`ForEach`：遍历班级数组；`Row`：列表项内部横向布局；`divider/lanes`：设置列表分割线和列数。 |
|  | `kt429_2.ets` | Grid 网格布局示例。 | `Column`：页面容器；`Grid`：创建网格；`ForEach`：遍历字符串数组；`GridItem`：单个网格项；`Text`：显示数字；`columnsTemplate/rowsTemplate`：设置网格行列；`columnsGap/rowsGap`：设置网格间距。 |
|  | `kt429_3.ets` | Swiper 轮播示例页面。 | `Swiper`：创建轮播容器；`SwiperController`：控制上一页、下一页；`Text`：显示当前页和轮播内容；`Button`：控制上一页、下一页、自动播放开关；`Row`：横向排列控制按钮；`@Builder`：封装单个轮播页；`autoPlay/interval/loop/indicator/duration`：设置自动轮播、间隔、循环、指示器和动画时间。 |
|  | `kt429_4.ets` | Tabs 标签页示例，底部 Tab 带小图标。 | `Tabs`：创建标签页容器；`TabContent`：每个标签对应的页面内容；`TabsController`：通过按钮切换指定页面；`tabBar`：自定义底部标签；`Image`：显示 Tab 小图标；`Text`：显示标签文字和页面内容；`Button`：演示代码切换 Tab；`@Builder`：封装 TabBar 和页面内容；`@State currentIndex`：记录当前标签页下标并改变选中样式。 |

## 已练习知识点

- ArkTS 基础类型、数组、函数、类、构造函数、状态变量。
- ArkUI 声明式页面结构：`@Entry`、`@Component`、`@State`、`@Builder`。
- 基础布局：`Column`、`Row`、`Stack`、`Blank`。
- 基础控件：`Text`、`Button`、`TextInput`、`TextArea`、`Image`。
- 表单控件：`Toggle`、`Checkbox`、`Radio`、`Search`。
- 列表和网格：`List`、`ListItem`、`ForEach`、`Grid`、`GridItem`。
- 高级展示：`Swiper`、`Tabs`、`TextPicker`、`DatePicker`、`TimePicker`、`ImageAnimator`。
- 状态与反馈：`Slider`、`Badge`、`LoadingProgress`、`PromptAction.showToast`、`showDialog`、`showActionMenu`。
- 页面跳转：`router.pushUrl`、`getUIContext().getRouter().back()`。

## 构建方式

推荐使用 DevEco Studio 打开项目运行。也可以在项目根目录执行：

```powershell
& "E:\Huawei\DevEco Studio\tools\hvigor\bin\hvigorw.bat" assembleHap --no-daemon --no-incremental
```

当前项目可以成功构建。构建时可能看到以下已有 warning：

- `username`、`password`、`signin` 等资源名在 AppScope 和 entry 中重复声明。
- 部分页面中的 `router.pushUrl` 被提示废弃。
- 项目未配置签名，因此会跳过签名。

## 开发注意事项

- ArkTS 中尽量显式声明类型，避免使用 `any`、`unknown`。
- `import` 语句应放在文件顶部。
- 页面状态推荐使用 `@State` 驱动 UI 更新。
- 新增页面后，需要在 `main_pages.json` 中注册。
- 新增图片、字符串、颜色等资源时，优先放到 `resources` 目录，通过 `$r()` 或 `$rawfile()` 引用。
- 使用 HarmonyOS API 前，应确认 API 签名、权限要求和支持版本。

## 后续优化方向

- 修复部分页面中的历史中文乱码字符串。
- 整理 AppScope 与 entry 中重复的字符串资源。
- 将登录、搜索、设置等页面中的文本逐步抽取到 `resources`。
- 将班级、学生、音乐等数据模型移动到 `models` 目录。
- 替换废弃的路由 API。
- 给关键练习页面继续补充适合学习的注释。
