# Windsurf Rules

记忆，可以由 Cascade 自动生成，以及规则，用户可以在本地和全局级别手动定义。

## 记忆

- 创建和使用自动生成的记忆不会消耗积分。

## 规则

.windsurf/global/global_rules.md 文件中定义了全局规则，适用于所有工作区的规则。通常存在位置为 `/Users/nesnilnehc/.codeium/windsurf/memories/global_rules.md`。

### 规则限制

- 规则文件每个最多 6000 个字符。超过 6000 个字符的内容将被截断，Cascade 将不会识别它们。
- 如果你的全局规则和本地规则总数超过 12,000 个字符，将优先使用全局规则，其次是工作区规则。超过 12,000 个字符的规则将被截断。

### 规则激活模式

- Manual
  此规则可通过 Cascade 输入框中的 @mention 手动激活
- Always On
  此规则将始终被应用
- Model Decision
  根据用户定义的规则的自然语言描述，模型决定是否应用该规则。
- Glob
  基于用户定义的匹配模式（例如 .js, src/**/.ts），该规则将应用于所有匹配该模式的文件。

## 最佳实践

- 保持规则简洁、精炼和具体。过于冗长或模糊的规则可能会让 Cascade 感到困惑。
- 无需添加通用规则（例如“编写良好的代码”），因为这些内容已经包含在 Cascade 的训练数据中。
- 使用项目符号、编号列表和 markdown 格式来编写规则。与长段落相比，这些格式更容易被 Cascade 理解和遵循。
- XML 标签可以是一种有效的方式来沟通和将相似的规则组合在一起。

## 参考

- [Memories & Rules](https://docs.windsurf.com/windsurf/cascade/memories)