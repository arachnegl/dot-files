{{- if eq .chezmoi.os "darwin" }}
brew install pyenv
{{ end }}
{{- if eq .chezmoi.os "linux" }}
{{ end }}

