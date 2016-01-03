{% from "git-config/map.jinja" import config with context %}

user.name:
  git.config:
    - value: {{ config.user.name }}
    - user: {{ config.whom }}
    - is_global: true
user.email:
  git.config:
    - value: {{ config.user.email }}
    - user: {{ config.whom }}
    - is_global: true
core.editor:
  git.config:
    - value: {{ config.core.editor }}
    - user: {{ config.whom }}
    - is_global: true
merge.tool:
  git.config:
    - value: {{ config.merge.tool }}
    - user: {{ config.whom }}
    - is_global: true
