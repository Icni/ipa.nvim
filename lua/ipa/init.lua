local M = {}

local mappings = {
    ['=a']   = 'ɑ',
    ['<a']   = 'æ',
    ['>a']   = 'ɐ',
    ['=b']   = 'β',
    ['>b']   = 'ɓ',
    ['=B']   = 'ʙ',
    ['=c']   = 'ç',
    ['<c']   = 'ɕ',
    ['=d']   = 'ð',
    ['<d']   = 'ɖ',
    ['>d']   = 'ɗ',
    ['=e']   = 'ə',
    ['<e']   = 'ɛ',
    ['>e']   = 'ɜ',
    ['^=e']  = 'ᵊ',
    ['|e']   = 'ʚ',
    ['=E']   = 'ɘ',
    ['<E']   = 'ɶ',
    ['=f']   = 'ɸ',
    ['=g']   = 'ɣ',
    ['<g']   = 'ɡ',
    ['>g']   = 'ɠ',
    ['^=g']  = 'ˠ',
    ['=G']   = 'ɢ',
    ['>G']   = 'ʛ',
    ['=h']   = 'ɥ',
    ['<h']   = 'ɦ',
    ['>h']   = 'ħ',
    ['^h']   = 'ʰ',
    ['>H']   = 'ɧ',
    ['=i']   = 'ɪ',
    ['|i']   = 'ɩ',
    ['=I']   = 'ɨ',
    ['=j']   = 'ɟ',
    ['<j']   = 'ʝ',
    ['>j']   = 'ʄ',
    ['^j']   = 'ʲ',
    ['=l']   = 'ɬ',
    ['<l']   = 'ɭ',
    ['>l']   = 'ɮ',
    ['~l']   = 'ɫ',
    ['^l']   = 'ˡ',
    ['=L']   = 'ʟ',
    ['<L']   = 'ʎ',
    ['>L']   = 'ɺ',
    ['>m']   = 'ɱ',
    ['=n']   = 'ɲ',
    ['<n']   = 'ɳ',
    ['>n']   = 'ŋ',
    ['^n']   = 'ⁿ',
    ['=N']   = 'ɴ',
    ['=o']   = 'ɒ',
    ['<o']   = 'ɔ',
    ['>o']   = 'ø',
    ['=O']   = 'ɵ',
    ['<O']   = 'ɞ',
    ['>O']   = 'ɤ',
    ['=p']   = 'ʘ',
    ['=Q']   = 'ʡ',
    ['<Q']   = 'ʢ',
    ['=r']   = 'ɹ',
    ['<r']   = 'ɽ',
    ['>r']   = 'ɾ',
    ['=R']   = 'ʀ',
    ['<R']   = 'ɻ',
    ['>R']   = 'ʁ',
    ['^>R']  = 'ʶ',
    ['=s']   = 'ʃ',
    ['<s']   = 'ʂ',
    ['=t']   = 'θ',
    ['=u']   = 'ɯ',
    ['<u']   = 'ʊ',
    ['>u']   = 'ʌ',
    ['|u']   = 'ɷ',
    ['=U']   = 'ʉ',
    ['=v']   = 'ʋ',
    ['<v']   = 'ⱱ',
    ['^=v']  = 'ᶹ',
    ['=w']   = 'ʍ',
    ['>w']   = 'ɰ',
    ['^w']   = 'ʷ',
    ['=x']   = 'χ',
    ['^x']   = 'ˣ',
    ['=y']   = 'ʏ',
    ['<y']   = 'ɥ',
    ['^y']   = 'ʸ',
    ['=Y']   = 'ʏ',
    ['=z']   = 'ʒ',
    ['<z']   = 'ʐ',
    ['>z']   = 'ʑ',
    ['=?']   = 'ʔ',
    ['<?']   = 'ʕ',
    ['^<?']  = 'ˤ',
    ['!']    = 'ǃ',
    ['=!']   = 'ǂ',
    ['<!']   = 'ǀ',
    ['>!']   = 'ǁ',
    ['~']    = '\u{0303}', -- ◌̃ (superscript tilde)
    ['@']    = '\u{030A}', -- ◌̊ (over-ring)
    ['$']    = '\u{0329}', -- ◌̩ (syllabicity mark)
    ['$$']   = '\u{032F}', -- ◌ (subscript arch)
    ['$$$']  = '\u{0330}', -- ◌̰ (subscript tilde)
    ['%']    = '\u{0325}', -- ◌̥ (under-ring)
    ['%%']   = '\u{032C}', -- ◌̬ (subscript wedge)
    ['%%%']  = '\u{0324}', -- ◌̤ (subscript umlaut)
    ['&@']   = '\u{035C}', --  ͜ (bottom tie bar)
    ['@0']   = '\u{030F}', -- ◌̏ (double frave accent)
    ['@1']   = '\u{0300}', -- ◌̀ (grave accent)
    ['@2']   = '\u{0304}', -- ◌̄ (macron)
    ['@3']   = '\u{0301}', -- ◌́ (acute accent)
    ['@4']   = '\u{030B}', -- ◌̋ (double acute accent)
    ['@13']  = '\u{030C}', -- ◌̌ (wedge)
    ['@31']  = '\u{0302}', -- ◌̂ (circumflex)
    ['@23']  = '\u{1DC4}', -- ◌᷄ (macron plus acute accent)
    ['@12']  = '\u{1DC5}', -- ◌᷅ (macron plus grave accent)
    ['@131'] = '\u{1DC8}', -- ◌᷈ (grave plus acute plus grave accent)
    ['=#']   = '‿',
    ['&#']   = '\u{0361}', --  ͡ (top tie bar)
    ['#>']   = 'ꜛ',
    ['#>>']  = '↗',
    ['#<']   = 'ꜜ',
    ['#<<']  = '↘',
    ['#0']   = '˩',
    ['#1']   = '˨',
    ['#2']   = '˧',
    ['#3']   = '˦',
    ['#4']   = '˥',
    ['#04']  = '˩˥',
    ['#40']  = '˥˩',
    ['#24']  = '˧˥',
    ['#12']  = '˩˧',
    ['#141'] = '˨˥˨',
    ['*']    = '\u{0308}', -- ◌ (umlaut)
    ['**']   = '\u{033D}', -- ◌̽ (over-cross)
    ['***']  = '\u{0306}', -- ◌̆ (breve)
    ['+']    = '\u{031F}', -- ◌̟ (subscript plus)
    ['++']   = '\u{031D}', -- ◌̝ (raising sign)
    ['+++']  = '\u{0318}', -- ◌̘ (advancing sign)
    ['++++'] = '\u{0339}', -- ◌̹ (subscript right-half ring)
    ['_']    = '\u{0320}', -- ◌̠ (under-bar)
    ['__']   = '\u{031E}', -- ◌̞ (lowering sign)
    ['___']  = '\u{0319}', -- ◌̙ (retracting sign)
    ['____'] = '\u{031C}', -- ◌̜ (subscript left-half ring)
    ['[[[']  = '˞',
    [']]']   = 'ʼ',
    [']]]']  = '\u{031A}', -- ◌̚ (corner)
    [']]]]'] = 'ʻ',
    ['{']    = '\u{032A}', -- ◌̪ (subscript bridge)
    ['{{']   = '\u{033A}', -- ◌̺ (inverted subscript bridge)
    ['{{{']  = '\u{033B}', -- ◌̻ (subscript square)
    ['{{{{'] = '\u{033C}', -- ◌̼ (subscript seagull)
    ['}']    = 'ˈ',
    ['}}']   = 'ˌ',
    [':']    = 'ː',
    ['::']   = 'ˑ',
    ['=.']   = '‖',
    ['<.']   = '|',
}

local function ipa_map(lhs, rhs)
    vim.keymap.set('i', lhs, function()
        return vim.b.ipa_input and rhs or lhs
    end, { expr = true, silent = true, buffer = true })
end

local function set_mappings()
    for key, value in pairs(mappings) do
        ipa_map(key, value)
    end
end

local function setup_ipa()
    set_mappings()
    vim.b.ipa_setup = true
end

local function enter_ipa()
    if not vim.b.ipa_setup then
        setup_ipa()
    end

    if not vim.b.ipa_input then
        vim.notify("Entering IPA mode (current buffer)", vim.log.levels.INFO)
        vim.b.ipa_input = true
    end
end

local function exit_ipa()
    if vim.b.ipa_input then
        vim.notify("Exiting IPA mode (current buffer)", vim.log.levels.INFO)
        vim.b.ipa_input = false
    end
end

local function toggle_ipa()
    if vim.b.ipa_input then
        exit_ipa()
    else
        enter_ipa()
    end
end

local _config = {}

function M.setup(config)
    config = vim.tbl_deep_extend('force', _config, config)

    vim.api.nvim_create_user_command('EnterIPA', enter_ipa, {})
    vim.api.nvim_create_user_command('ExitIPA', exit_ipa, {})
    vim.api.nvim_create_user_command('ToggleIPA', toggle_ipa, {})

    vim.b.ipa_input = false
end

return M
