# Reliable Coding Agent

[中文](README.md) | English

This project is an extension prompt that enhances the original capabilities of AI coding agents, currently optimized and tested primarily for `Claude Code` and `Codex Cli`.

Integrates the mindset and workflows of excellent human engineers into AI coding agents without compromising their original capabilities, achieving more stable and reliable coding performance.

## Usage
Note: Due to potential conflicts with other existing configurations, it's recommended to directly replace the file.

### Claude Code
Simply copy the content from the corresponding language directory (e.g., `zh-CN/CLAUDE.md`) to Codex's global `CLAUDE.md` file.

On Mac, the typical path is:
```
~/.claude/CLAUDE.md
```

On Windows, the typical path is:
```
C:\users\{your username}\.claude\CLAUDE.md
```

### Codex
Simply copy the content from the corresponding language directory (e.g., `zh-CN/AGENTS.md`) to Codex's global `AGENTS.md` file.

On Mac, the typical path is:
```
~/.codex/AGENTS.md
```

On Windows, the typical path is:
```
C:\users\{your username}\.codex\AGENTS.md
```


## Key Benefits

### Non-Intrusive Enhancement
Does not interfere with the original logic of system prompt, only provides supplementary enhancements to maximize the capabilities of both the model and the agent itself.

### Efficiency Boost for Complex Projects
By automatically maintaining necessary documentation and memory, it saves time and tokens from repetitive code architecture analysis and repeated modifications, enabling Coding Agents to work more effectively and purposefully based on their understanding of the documentation.

### Reliable Programming Results
Achieves more reliable programming results through a three-stage enhancement approach:
- Basic code quality requirements
- Optimized handling approach and phase decomposition for complex tasks
- Coding stability closed-loop based on **Testing**, **Memory**, and **Documentation** (TMD)
