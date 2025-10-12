# Reliable Coding Agent

中文 | [English](README.en.md)


本项目是一套增强 AI 编程代理原有能力的扩展提示词，目前主要针对 `Claude Code` 和 `Codex Cli` 进行了优化和测试。

在不影响 AI 编程代理原有能力的前提下，为其融入优秀人类工程师的思维方式和工作流程，以实现更稳定、可靠的编码水平。

## 使用方法
注意：由于可能与其他原有设定冲突，建议直接替换文件。
### ClaudeCode
将对应语言目录下（如 `zh-CN/CLAUDE.md` ）的内容复制到 ClaudeCode 的全局 `CLAUDE.md` 中即可。

在 Mac 系统上，典型路径为：
```
~/.claude/CLAUDE.md
```

在 Windows 系统上，典型路径为：
```
C:\users\你的用户名\.claude\CLAUDE.md
```

### Codex
将对应语言目录下（如 `zh-CN/AGENTS.md` ）的内容复制到 Codex 的全局 `AGENTS.md` 中即可。

在 Mac 系统上，典型路径为：
```
~/.codex/AGENTS.md
```

在Windows 系统上，典型路径为：
```
C:\users\你的用户名\.codex\AGENTS.md
```

## 核心优势

### 非侵入式的增强
不影响 Codex 系统提示词的原有逻辑，仅进行补充增强，最大程度发挥模型和代理本身的能力。

### 复杂项目的提效
通过自动维护必要的文档和记忆，来节省重复分析代码架构、反复修改的时间和 Token ，让 Coding Agent 基于对文档的理解去更有效、更有针对性的进行编码工作。

### 可靠的编程结果
通过三段式增强来达成更可靠的编程结果：
- 基础的代码质量要求；
- 优化对于复杂任务的处理思路和阶段拆分；
- 基于**测试**、**记忆**、**文档**（TMD）的编码稳定性闭环。
