{pkgs, ...}:
{
    # extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
    #     name = "techbase";
    #     src  = pkgs.fetchFromGitHub {
    #         owner = "mcauley-penney";
    #         repo  = "techbase.nvim";
    #         rev   = "master";
    #         hash  = "sha256-59h1szBkKteKQdpPu0394pEDEORvLXLS6SsvIk6HM+o=";
    #     };
    # })];

    extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
        name = "paramount";
        src  = pkgs.fetchFromGitHub {
            owner = "owickstrom";
            repo  = "vim-colors-paramount";
            rev   = "master";
            hash  = "sha256-j9nMjKYK7bqrGHprYp0ddLEWs1CNMudxXD13sOROVmY=";
        };
    })];

    extraConfigLua = ''
        vim.cmd.colorscheme("paramount")
        -- Clear the highlight groups
        vim.api.nvim_set_hl(0, "ExtraWhitespace", { link = "Normal" })
        vim.api.nvim_set_hl(0, "TrailingWhitespace", { link = "Normal" })
    '';
}
