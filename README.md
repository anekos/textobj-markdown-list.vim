# vim-textobj-markdown-list

A Vim plugin that defines a custom text object for easily selecting and operating on the top-level Markdown lists.

## Usage

This plugin provides a custom text object `il` for selecting the entire top-level Markdown lists in a file. The `il` text object can be used with various Vim commands to manipulate or operate on the entire top-level lists.

To use the `il` text object, place the cursor anywhere inside a Markdown list item that is at the highest level (e.g., `- item`) and execute a command that supports text objects.

Example commands that can be used with the `il` text object:

- `vil`: Visually select the entire top-level Markdown list.
- `cil`: Change the entire top-level Markdown list.
- `yil`: Yank (copy) the entire top-level Markdown list.
- `dil`: Delete the entire top-level Markdown list.

## Example

Suppose you have the following Markdown file:

```markdown
- foo
  - hoge 1
  - hoge 2
  - hoge 3
- bar
  - cat
  - nyan
- oneline
```

To visually select the entire "foo" top-level Markdown list, you can use the `vil` command.

To change the entire "bar" top-level Markdown list, you can use the `cil` command.

## Troubleshooting

If the plugin or the `il` text object does not work as expected, make sure that your Markdown lists are properly formatted with "-" and indentation.

If you encounter any issues or have any suggestions, please create an issue on the [GitHub repository](https://github.com/username/markdown_list.vim/issues).
