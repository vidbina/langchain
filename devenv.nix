{ pkgs, ... }:

{
  # https://devenv.sh/basics/
  env.GREET = "🦜🔗";

  # https://devenv.sh/packages/
  packages = with pkgs; [
    git
    # FIXME: Poetry breaks on incompat xattr, see err at end
    # python311Packages.poetry
  ];

  # https://devenv.sh/languages/
  languages.python = {
    enable = true;
    version = "3.11";
    # FIXME: Poetry breaks on incompat xattr, see err at end
    # ```
    # poetry = {
    #   enable = true;
    #   install.enable = true;
    # };
    venv.enable = true;
  };
  # ```
  # > Checking runtime dependencies for poetry-1.7.1-py3-none-any.whl
  #   >   - xattr<0.11.0,>=0.10.0 not satisfied by version 1.0.0
}
