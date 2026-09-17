# echo with strong visual delineation
echo_command() {
    printf "\033[7m%s\033[0m\n" ">>> $*"
}
