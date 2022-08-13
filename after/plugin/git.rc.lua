local status, git = pcall(require, "git")

git.setup {
  keymaps = {
    blame = "gbb",
    browse = "oo"
  }
}
