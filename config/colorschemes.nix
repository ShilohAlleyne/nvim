{pkgs, ...}:{
    # colorschemes = {
    #     oxocarbon = {
    #         enable   = true;
    #         autoLoad = true;
    #     };
    # };
    colorschemes.techbase = {
        enable = true;
        package = pkgs.vimPlugins.techbase-nvim;
    };

    # Optional: Set as default colorscheme explicitly
    # extraConfigLua = ''
    #     vim.cmd.colorscheme("techbase")
    # '';
}
