{ config, lib, ... }:
{
  plugins.trouble = {
    enable = true;
    settings = { };
  };
  keymaps = lib.mkIf config.plugins.trouble.enable [
    {
      mode = "n";
      key = "<leader>td";
      action = "<cmd>Trouble diagnostics toggle<cr>";
    }
  ];
}
