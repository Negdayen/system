src_dir="${1}"

if [ -d "${src_dir}" ]; then
    for sh in "${src_dir}"/*.sh; do
        [ -r "$sh" ] && . "$sh"
    done
    unset sh
fi
