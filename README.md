# dart_oo 课程成绩册

用 Dart 类建模"课程成绩册"，基于面向对象与集合函数式链式方法完成成绩统计功能的命令行练习项目。

## 技术栈与环境

- Dart SDK 3.13.3（stable）

- 纯 Dart 命令行项目，无 Flutter 依赖

- 测试框架：`test` 包

- 运行环境：Windows + PowerShell

## 项目结构

```
dart_oo/
├── bin/
│   └── dart_oo.dart        # 程序入口 main()，构造示例数据并打印统计结果
├── lib/
│   ├── student.dart        # Student 学生类
│   └── gradebook.dart      # Logger mixin + GradeBook 成绩册类
└── test/
    └── dart_oo_test.dart   # 单元测试
```  
## AI使用说明

本项目在开发过程中使用了 AI 辅助工具（Trae IDE 内置模型）

## AI协助范围

- 提供方案设计思路（如 mixin Logger 的实现模式、链式方法的组合方式）
- 生成代码参考片段（Student 类骨架、GradeBook 统计方法、测试用例模板）
- 解释报错原因（如 `Undefined name 'main'`、Map 插入顺序等）

## 本人完成的工作

- 全部代码手动录入到 IDE
- 项目结构搭建（dart create dart_oo）
- 运行 `dart run`、`dart test`、`dart analyze` 验证代码正确性
- 调试和修复问题
- 上传代码仓库github

## 验证方式
- `dart run` 主程序输出正确：平均分 82.20、最高分钱七、及格人数 4
- `dart test` 2 个用例全部通过：`All tests passed!`
- `dart analyze` 零警告零错误
