function ostype() {
    case $(uname) in
        "Darwin")
            echo "osx"
            ;;
        "Linux")
            echo "linux"
            ;;
    esac
}

for i in "$DOTPATH"/etc/$(ostype)/*.sh; do
    if [ -f "$i" ]; then
        bash "$i"
    else
        continue
    fi
done

for i in "$DOTPATH"/etc/default/*.sh; do
    if [ -f "$i" ]; then
        bash "$i"
    else
        continue
    fi
done
