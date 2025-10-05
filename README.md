# ipa.nvim

**ipa.nvim** is a keyboard plugin aimed at making it easier to write using the International Phonetic Alphabet (IPA, /aɪpiˈeɪ/) in Neovim. Instead of having to type in Unicode code points or copy-paste characters from the internet, you can use a series of relatively straightforward keybinds to put IPA characters directly into your document. Its keybindings modeled after the [IPA (SIL) keyboard](https://help.keyman.com/keyboard/sil_ipa/2.0.2/sil_ipa).

If you're dying to know more, consider consulting the [helpful help document](https://github.com/Icni/ipa.nvim/blob/main/doc/ipa.txt).

## Requirements

- Neovim 0.7+
- A terminal or GUI font that supports IPA characters

## Installation

Use your favorite package manager!

For example, Lazy:

```lua
return {
    'Icni/ipa.nvim',
    opts = {},
    keys = {
        { '<leader>i', '<cmd>ToggleIPA<cr>', { desc = 'Toggle IPA input mode' } }
    }
}
```
