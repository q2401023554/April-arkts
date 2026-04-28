# 项目结构规范

本项目是 HarmonyOS/OpenHarmony ArkTS 学习项目，采用单主模块 `entry` 结构。新增代码、资源和测试时必须遵循以下目录职责，避免随意新增平级目录。

## 根目录职责

```text
GUOJIHUA418/
├─ AppScope/              # 应用级配置和全局资源
├─ entry/                 # 主业务模块
├─ hvigor/                # Hvigor 构建配置
├─ oh_modules/            # 依赖目录，禁止手动修改
├─ build-profile.json5    # 工程构建配置
├─ code-linter.json5      # ETS 代码检查配置
├─ hvigorfile.ts          # 根构建脚本
├─ oh-package.json5       # 工程依赖配置
└─ README.md              # 项目说明
```

根目录只放工程级配置、文档和构建入口。业务代码不得直接放在根目录。

## entry 模块结构

```text
entry/src/
├─ main/
│  ├─ ets/
│  │  ├─ pages/                 # 页面组件
│  │  ├─ models/                # 数据模型、实体类
│  │  ├─ entryability/          # 主 Ability
│  │  └─ entrybackupability/    # 备份 Ability
│  ├─ resources/                # 模块资源
│  └─ module.json5              # 模块配置
├─ test/                        # 本地单元测试
├─ ohosTest/                    # 设备/模拟器测试
└─ mock/                        # Mock 配置
```

`entry` 是当前唯一业务模块。新增页面、模型、资源和测试应优先放入该模块，除非确实需要拆分新模块。

## ArkTS 文件放置规则

- 页面组件放在 `entry/src/main/ets/pages/`，例如 `Index.ets`、`LoginPage.ets`、`zy425_u4.ets`。
- 数据结构、实体类和可复用模型放在 `entry/src/main/ets/models/`，例如 `Student.ets`。
- Ability 相关入口代码只放在对应 Ability 目录，不与页面代码混放。
- 新增可复用工具时，可在 `entry/src/main/ets/` 下按职责新增目录，如 `utils/`、`services/`，不要把工具函数塞进页面文件。

## 资源目录规则

- 图片、图标等媒体资源放在 `entry/src/main/resources/base/media/` 或 `AppScope/resources/base/media/`。
- 字符串、颜色、尺寸等资源放在对应 `element/` 文件中，如 `string.json`、`color.json`、`float.json`。
- 涉及多语言时，同一个资源 key 需要同步维护 `base/`、`zh_CN/`、`en_US/`、`ja_JP/` 等已有语言目录。
- 页面中优先使用 `$r()` 引用资源，避免直接硬编码用户可见文本、颜色和尺寸。

## 测试目录规则

- 本地单元测试放在 `entry/src/test/`，文件命名使用 `*.test.ets`。
- 设备或模拟器测试放在 `entry/src/ohosTest/ets/test/`。
- 修改模型、公共逻辑、页面跳转或 Ability 行为时，应同步新增或更新测试。

## 禁止修改目录

以下目录通常由工具生成或维护，不应手动修改：

- `oh_modules/`
- `.hvigor/`
- `.preview/`
- `entry/build/`
- 其他 `build/` 输出目录

如需调整依赖，请修改 `oh-package.json5` 或 `entry/oh-package.json5`，再通过 DevEco Studio 或 Hvigor 重新同步。
