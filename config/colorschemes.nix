{pkgs, ...}:
{
    extraPlugins = [(pkgs.vimUtils.buildVimPlugin {
        name = "techbase";
        src  = pkgs.fetchFromGitHub {
            owner = "mcauley-penney";
            repo  = "techbase.nvim";
            rev   = "master";
            hash  = "sha256-59h1szBkKteKQdpPu0394pEDEORvLXLS6SsvIk6HM+o=";
        };
    })];

    extraConfigLua = ''
        vim.cmd.colorscheme("techbase")
    '';
}
