# Reliable Coding Agent

[中文](README.md) | English

This project is an enhancement system that augments AI coding agents' capabilities, currently targeting `Codex CLI` + `GPT-5-Codex` models.

Without affecting the original capabilities of AI coding agents, it integrates the thinking patterns and workflows of excellent human engineers to achieve more stable and reliable coding performance.

**Usage**: Simply copy the content from the `AGENTS.md` file in the corresponding language directory to Codex's global `AGENTS.md` file. On Mac systems, the typical path is:
```
~/.codex/AGENTS.md
```
Due to potential conflicts with other existing configurations, it's recommended to directly replace the file.

## Key Benefits

### Non-Intrusive Enhancement
Does not interfere with the original logic of Codex system prompts, only provides supplementary enhancements to maximize the capabilities of both the model and the agent itself.

### Efficiency Boost for Complex Projects
By automatically maintaining necessary documentation and memory, it saves time and tokens from repetitive code architecture analysis and repeated modifications, enabling Coding Agents to work more effectively and purposefully based on their understanding of the documentation.

### Reliable Programming Results
Achieves more reliable programming results through a three-stage enhancement approach:
- Basic code quality requirements
- Optimized handling approach and phase decomposition for complex tasks
- Coding stability closed-loop based on **Testing**, **Memory**, and **Documentation** (TMD)
