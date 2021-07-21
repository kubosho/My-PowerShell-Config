Import-Module posh-git
Import-Module oh-my-posh

##############################
# alias
##############################

Set-Alias -Name c -Value code
Set-Alias -Name g -Value git
Set-Alias -Name open -Value Invoke-Item
Set-Alias -Name o -Value Invoke-Item
Set-Alias -Name v -Value nvim

##############################
# oh-my-posh
##############################

Set-PoshPrompt -Theme cert

##############################
# PSReadLine
##############################

Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -PredictionSource History

##############################
# utility functions
##############################

function gh {
  cd "$(ghq root)\$(ghq list | fzf)"
}
