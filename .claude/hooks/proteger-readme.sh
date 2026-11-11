#!/usr/bin/env bash
# Bloquea en solo lectura el README.md de la raíz del repositorio.
# Orden del responsable de Oroessential: no se modifica, mueve ni borra sin su
# consentimiento explícito. Para desbloquear, el responsable debe quitar este
# hook y la regla "deny" de .claude/settings.json.
input=$(cat)
tool=$(jq -r '.tool_name // ""' <<<"$input")
root="${CLAUDE_PROJECT_DIR:-$(pwd)}"
msg="README.md está BLOQUEADO en solo lectura por orden del responsable. No se puede modificar, mover ni borrar sin su consentimiento explícito. Puedes leerlo."

deny() {
  jq -n --arg r "$msg" '{hookSpecificOutput:{hookEventName:"PreToolUse",permissionDecision:"deny",permissionDecisionReason:$r}}'
  exit 0
}

case "$tool" in
  Edit|Write|MultiEdit|NotebookEdit)
    f=$(jq -r '.tool_input.file_path // .tool_input.notebook_path // ""' <<<"$input")
    [ -z "$f" ] && exit 0
    case "$f" in /*) abs="$f" ;; *) abs="$root/$f" ;; esac
    [ "$(realpath -m "$abs")" = "$(realpath -m "$root/README.md")" ] && deny
    ;;
  Bash)
    cmd=$(jq -r '.tool_input.command // ""' <<<"$input")
    repo=$(basename "$root")
    # ¿Menciona el README.md de la raíz? (README.md, ./README.md o .../<repo>/README.md)
    if grep -Eq "(^|[[:space:]\"'=])(\./)?README\.md([[:space:]\"';|&)]|\$)|${repo}/README\.md" <<<"$cmd"; then
      # Quita redirecciones inocuas antes de buscar escrituras
      clean=$(sed -E 's/[0-9]*>&[0-9]+//g; s/[0-9]*>[[:space:]]*\/dev\/null//g' <<<"$cmd")
      if grep -Eq '>|sed[[:space:]]+(-[a-zA-Z]*[[:space:]]+)*-[a-zA-Z]*i|perl[[:space:]]+-[a-zA-Z]*i|(^|[^a-zA-Z_-])(tee|mv|cp|rm|truncate|dd|chmod|chown|patch|install|ln|touch)([[:space:]]|$)|git[[:space:]]+(mv|rm|checkout|restore|apply|am|reset|stash)' <<<"$clean"; then
        deny
      fi
    fi
    ;;
esac
exit 0
