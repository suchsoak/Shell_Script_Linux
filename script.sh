#!/usr/bin/env bash
set -Euo pipefail

RED=$'\033[31m'
GREEN=$'\033[32m'
YELLOW=$'\033[33m'
BLUE=$'\033[34m'
CYAN=$'\033[36m'
MAGENTA=$'\033[35m'
NC=$'\033[0m'

log() {
    printf '%b\n' "$*"
}

info() {
    log "${BLUE}[*] $*${NC}"
}

warn() {
    log "${YELLOW}[!] $*${NC}"
}

fail() {
    log "${RED}[ERROR] $*${NC}" >&2
    exit 1
}

show_recovery_animation() {
    local frames=("[  *  ]" "[ * * ]" "[*   *]" "[ * * ]" "[  *  ]")
    local i

    printf '\n'
    for i in "${!frames[@]}"; do
        printf '\r%s%s Recovering...%s' "$YELLOW" "${frames[$i]}" "$NC"
        sleep 0.12
    done
    printf '\r%s[OK] Recovery complete.%s\n' "$GREEN" "$NC"
}

handle_error() {
    local status=$?
    local failed_command="${BASH_COMMAND:-unknown command}"
    trap - ERR
    printf '\n'
    show_recovery_animation
    warn "Command failed with status ${status}: ${failed_command}"
    warn "Waiting 3 seconds before continuing..."
    sleep 3
    warn "Continuing the script..."
    trap 'handle_error' ERR
    return 0
}

animate_loading() {
    local message="$1"
    local frames=("⠋" "⠙" "⠹" "⠸" "⠼" "⠴" "⠦" "⠧" "⠇" "⠏")
    local i

    printf '\r%s' "${CYAN}${message}${NC}"
    for i in "${!frames[@]}"; do
        printf '\r%s %s' "${CYAN}${message}${NC}" "${frames[$i]}"
        sleep 0.08
    done
    printf '\r%s Done!   \n' "${GREEN}${message}${NC}"
}

show_intro_animation() {
    local frames=(
        "     ____  ____  _  _   ____  _   _  ____   ___  ____  _   _  ____  "
        "    |  _ \|  _ \\| |/ / |  _ \\| | | ||  _ \\ / _ \\|  _ \\| | | ||  _ \\ "
        "    | |_) | |_) | ' /  | |_) | |_| || |_) | | | | |_) | |_| || | | |"
        "    |  __/|  __/| . \  |  __/|  _  ||  __/| |_| |  _ <|  _  || |_| |"
        "    |_|   |_|   |_|\\_\\ |_|   |_| |_|_|_|    \\___/|_| \\_\\_| |_|_|____/ "
        "                                                              "
        "                             ʕ•ᴥ•ʔ                            "
        "                    WELCOME TO PACKSCRIPT!                     "
    )
    local frame

    clear
    for frame in "${frames[@]}"; do
        printf '\033[2J\033[H'
        printf '%b\n' "${MAGENTA}${frame}${NC}"
        sleep 0.12
    done
    printf '\033[2J\033[H'
}

show_success_banner() {
    local banner_color="$GREEN"
    local result_message="All package and runtime checks passed."
    if ((AUDIT_MISSING_COUNT > 0)); then
        banner_color="$YELLOW"
        result_message="Review the items marked NOT INSTALLED above."
    fi

    printf '%b\n' "$banner_color"
    cat <<'EOF'
   ___  ___   ___  _  __ ___   ___  ___  ___  ___  _____
  | _ \/   \ / __|| |/ // __| / __|| _ \|_ _|| _ \|_   _|
  |  _/| - || (__ |   < \__ \| (__ |   / | | |  _/  | |
    |_|  |_|_| \___||_|\_\|___/ \___||_|_\|___||_|    |_|

EOF
    printf '             %s\n' "$result_message"
    printf '%b\n' "${NC}"
}

show_menu_header() {
    clear
    printf '%b\n' "${CYAN}"
    cat <<'EOF'
     ____  ____  _  _   ____  _   _  ____   ___  ____  _   _  ____
    |  _ \|  _ \| |/ / |  _ \| | | ||  _ \ / _ \|  _ \| | | ||  _ \
    | |_) | |_) | ' /  | |_) | |_| || |_) | | | | |_) | |_| || | | |
    |  __/|  __/| . \  |  __/|  _  ||  __/| |_| |  _ <|  _  || |_| |
    |_|   |_|   |_|\_\ |_|   |_| |_|_|_|    \___/|_| \_\_| |_|_|____/
EOF
    printf '%b\n' "${NC}"
    printf '%b\n' "${MAGENTA}══════════════════════════════════════════════════════════════════════${NC}"
    printf '%b\n' "${GREEN}   Select your setup mode and let the magic begin... ${NC}"
    printf '%b\n' "${MAGENTA}══════════════════════════════════════════════════════════════════════${NC}"
    sleep 0.3
}

show_menu_animation() {
    local i
    local frames=("[====>     ]" "[ =====>   ]" "[  =====>  ]" "[   =====> ]" "[    =====>]" "[     ====]" "[      ==]" "[       >]")

    for i in "${!frames[@]}"; do
        printf '\r%s %s' "${CYAN}Loading menu${NC}" "${frames[$i]}"
        sleep 0.09
    done
    printf '\r%s %s\n' "${CYAN}Loading menu${NC}" "[READY]"
}

trap 'handle_error' ERR

show_linux_only_notice() {
    printf '%b\n' "${YELLOW}"
    cat <<'EOF'
  _      _ _   _     _       _     _        _ _ _
 | |    (_) | | |   | |     (_)   | |      | | | |
 | |     _| |_| |__ | | ___  _  __| | ___  | | | |
 | |    | | __| '_ \| |/ _ \| |/ _` |/ _ \ | | | |
 | |____| | |_| | | | | (_) | | (_| |  __/ |_|_|_|
 |______|_|\__|_| |_|_|\___/|_|\__,_|\___| (_|_|_)

    Linux-only installer - unsupported systems are skipped safely.
EOF
    printf '%b\n' "${NC}"
}

ensure_linux_environment() {
    local os_name
    os_name="$(uname -s 2>/dev/null || true)"

    if [[ "${os_name}" != "Linux" ]]; then
        printf '%b\n' "${RED}[ERROR] This installer supports Linux distributions only.${NC}" >&2
        printf '%b\n' "${YELLOW}[INFO] Detected OS: ${os_name:-unknown}. The script will exit gracefully.${NC}" >&2
        return 1
    fi

    if [[ -f /etc/os-release ]]; then
        . /etc/os-release
        case "${ID:-}" in
            ubuntu|debian|linuxmint|kali|raspbian|fedora|rhel|centos|rocky|almalinux|arch|manjaro|opensuse|opensuse-leap|opensuse-tumbleweed|sles)
                return 0
                ;;
            *)
                warn "Unhandled Linux distribution: ${PRETTY_NAME:-${ID:-unknown}}. The script will continue only with supported checks."
                return 0
                ;;
        esac
    fi

    return 0
}

require_root_or_sudo() {
    if [[ "${EUID:-$(id -u)}" -eq 0 ]]; then
        return 0
    fi
    if command -v sudo >/dev/null 2>&1; then
        return 0
    fi
    fail "This script requires administrator privileges or the sudo command."
}

check_distro() {
    if [[ "$(uname -s 2>/dev/null || true)" != "Linux" ]]; then
        echo "unsupported"
        return 0
    fi

    if [[ -f /etc/os-release ]]; then
        . /etc/os-release
        case "${ID:-}" in
            ubuntu|debian|linuxmint|kali|raspbian) echo "debian" ;;
            fedora|rhel|centos|rocky|almalinux) echo "fedora" ;;
            arch|manjaro) echo "arch" ;;
            opensuse|opensuse-leap|opensuse-tumbleweed|sles) echo "opensuse" ;;
            *) echo "unsupported" ;;
        esac
    elif [[ "$(uname -o 2>/dev/null || true)" == "Android" ]]; then
        echo "android"
    else
        echo "unsupported"
    fi
}

safe_apt_update() {
    if ! apt-get update; then
        warn "APT repository update failed. Continuing without stopping the script..."
        return 1
    fi
    return 0
}

safe_apt_install() {
    if ! DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends "$@"; then
        warn "APT package installation failed. Continuing without stopping the script..."
        return 1
    fi
    return 0
}

declare -a AUDIT_PACKAGES=()
declare -a AUDIT_STATES=()
AUDIT_MISSING_COUNT=0
AUDIT_MISSING_RUNTIMES=0

package_is_installed() {
    local manager="$1"
    local package="$2"

    case "$manager" in
        apt|pkg)
            command -v dpkg-query >/dev/null 2>&1 &&
                [[ "$(dpkg-query -W -f='${db:Status-Status}' "$package" 2>/dev/null || true)" == "installed" ]]
            ;;
        dnf|zypper)
            command -v rpm >/dev/null 2>&1 && rpm -q "$package" >/dev/null 2>&1
            ;;
        pacman)
            command -v pacman >/dev/null 2>&1 && pacman -Q "$package" >/dev/null 2>&1
            ;;
        snap)
            command -v snap >/dev/null 2>&1 && snap list "$package" >/dev/null 2>&1
            ;;
        gem)
            command -v gem >/dev/null 2>&1 && gem list -i --exact "$package" >/dev/null 2>&1
            ;;
        *)
            return 1
            ;;
    esac
}

record_package_audit() {
    local manager="$1"
    shift
    local package

    for package in "$@"; do
        AUDIT_PACKAGES+=("$package")
        if package_is_installed "$manager" "$package"; then
            AUDIT_STATES+=("installed")
        else
            AUDIT_STATES+=("missing")
        fi
    done
}

report_package_result() {
    local manager="$1"
    local package="$2"
    local label="$3"

    record_package_audit "$manager" "$package"
    if package_is_installed "$manager" "$package"; then
        log "${GREEN}[INSTALLED] ${label} verified successfully.${NC}"
    else
        warn "${label} was not found in the package database after installation."
    fi
}

report_runtime() {
    local language="$1"
    local version_flag="$2"
    shift 2
    local binary
    local version

    for binary in "$@"; do
        if command -v "$binary" >/dev/null 2>&1; then
            version="$("$binary" "$version_flag" 2>&1 | sed -n '1p' || true)"
            printf '%b\n' "${GREEN}[AVAILABLE]${NC} ${language}: ${binary}${version:+ - ${version}}"
            return 0
        fi
    done

    ((AUDIT_MISSING_RUNTIMES += 1))
    printf '%b\n' "${RED}[NOT INSTALLED]${NC} ${language}: no executable found"
}

show_language_audit() {
    printf '\n%b\n' "${CYAN}Programming language runtimes:${NC}"
    report_runtime "C compiler" --version gcc
    report_runtime "C++ compiler" --version g++
    report_runtime "Java" -version java
    report_runtime "Lua" -v lua lua5.4 lua5.3 lua5.2 lua5.1 lua53
    report_runtime "Node.js" --version node nodejs
    report_runtime "Python" --version python3 python
    report_runtime "Ruby" --version ruby
}

show_installation_audit() {
    local index
    local installed_count=0
    local missing_count=0
    AUDIT_MISSING_RUNTIMES=0

    printf '\n%b\n' "${CYAN}================ INSTALLATION AUDIT ================${NC}"
    if ((${#AUDIT_PACKAGES[@]} == 0)); then
        warn "No package installation requests were recorded."
    else
        for index in "${!AUDIT_PACKAGES[@]}"; do
            if [[ "${AUDIT_STATES[$index]}" == "installed" ]]; then
                printf '%b\n' "${GREEN}[INSTALLED]${NC} ${AUDIT_PACKAGES[$index]}"
                ((installed_count += 1))
            else
                printf '%b\n' "${RED}[NOT INSTALLED]${NC} ${AUDIT_PACKAGES[$index]}"
                ((missing_count += 1))
            fi
        done
    fi
    AUDIT_MISSING_COUNT=$missing_count
    printf '%b\n' "${CYAN}Package totals: ${GREEN}${installed_count} installed${NC} / ${RED}${missing_count} not installed${NC}"
    show_language_audit
    AUDIT_MISSING_COUNT=$((AUDIT_MISSING_COUNT + AUDIT_MISSING_RUNTIMES))
    printf '%b\n' "${CYAN}Total missing package/runtime checks: ${RED}${AUDIT_MISSING_COUNT}${NC}"
}

install_packages() {
    local manager="$1"
    shift

    if [[ -z "${manager}" ]]; then
        warn "No package manager was selected. Skipping installation."
        record_package_audit "unsupported" "$@"
        return 0
    fi

    if ! command -v "$manager" >/dev/null 2>&1; then
        warn "The package manager '$manager' is not available on this Linux system. Skipping package installation."
        record_package_audit "$manager" "$@"
        return 0
    fi

    animate_loading "Preparing $manager packages"

    case "$manager" in
        apt)
            safe_apt_update || true
            safe_apt_install "$@" || true
            ;;
        dnf)
            dnf install -y "$@"
            ;;
        pacman)
            pacman -Sy --noconfirm --needed "$@"
            ;;
        zypper)
            zypper --non-interactive install -y "$@"
            ;;
        pkg)
            pkg install -y "$@"
            ;;
        *)
            warn "Unsupported package manager: $manager. This system does not support this installer path."
            record_package_audit "$manager" "$@"
            return 0
            ;;
    esac

    record_package_audit "$manager" "$@"
}

install_chrome_debian() {
    if ! command -v apt-get >/dev/null 2>&1; then
        warn "Google Chrome installation skipped: Debian/Ubuntu package manager is unavailable on this Linux system."
        return 0
    fi

    animate_loading "Installing Google Chrome"
    info "Installing Google Chrome..."
    curl -fsSL https://dl.google.com/linux/linux_signing_key.pub | gpg --dearmor -o /usr/share/keyrings/google-chrome.gpg
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/google-chrome.gpg] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list
    apt-get update
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends google-chrome-stable
    report_package_result apt google-chrome-stable "Google Chrome"
}

install_chrome_arch() {
    if ! command -v pacman >/dev/null 2>&1; then
        warn "Google Chrome installation skipped: Arch package manager is unavailable on this Linux system."
        return 0
    fi

    animate_loading "Installing Google Chrome"
    info "Installing Google Chrome..."
    if ! command -v yay >/dev/null 2>&1; then
        if ! git clone https://aur.archlinux.org/yay.git /tmp/yay || ! (cd /tmp/yay && makepkg -si --noconfirm); then
            warn "Could not prepare the Arch AUR helper. Skipping Google Chrome."
            record_package_audit pacman google-chrome
            return 0
        fi
    fi
    yay -S --noconfirm google-chrome || warn "Google Chrome installation command failed."
    report_package_result pacman google-chrome "Google Chrome"
}

install_chrome_fedora() {
    if ! command -v dnf >/dev/null 2>&1; then
        warn "Google Chrome installation skipped: Fedora package manager is unavailable on this Linux system."
        return 0
    fi

    animate_loading "Installing Google Chrome"
    info "Installing Google Chrome..."
    dnf install -y https://dl.google.com/linux/chrome/rpm/stable/x86_64/google-chrome-stable-*.rpm || warn "Google Chrome installation command failed."
    report_package_result dnf google-chrome-stable "Google Chrome"
}

install_chrome_opensuse() {
    if ! command -v zypper >/dev/null 2>&1; then
        warn "Google Chrome installation skipped: openSUSE package manager is unavailable on this Linux system."
        return 0
    fi

    animate_loading "Installing Google Chrome"
    info "Installing Google Chrome..."
    zypper --non-interactive addrepo --refresh https://dl.google.com/linux/chrome/rpm/stable/x86_64/ google-chrome
    zypper --non-interactive install -y google-chrome-stable
    report_package_result zypper google-chrome-stable "Google Chrome"
}

install_spotify_debian() {
    if ! command -v apt-get >/dev/null 2>&1; then
        warn "Spotify installation skipped: Debian/Ubuntu package manager is unavailable on this Linux system."
        return 0
    fi

    animate_loading "Installing Spotify"
    info "Installing Spotify..."
    curl -fsSL https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | gpg --dearmor -o /usr/share/keyrings/spotify.gpg
    echo "deb [signed-by=/usr/share/keyrings/spotify.gpg] http://repository.spotify.com stable non-free" > /etc/apt/sources.list.d/spotify.list
    if ! apt-get update; then
        warn "Spotify repository could not be updated. The repository may be unavailable or the key is outdated. Continuing without stopping the script..."
        record_package_audit apt spotify-client
        return 0
    fi
    if ! DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends spotify-client; then
        warn "Spotify could not be installed. Continuing without stopping the script..."
        record_package_audit apt spotify-client
        return 0
    fi
    report_package_result apt spotify-client "Spotify"
}

install_spotify_arch() {
    if ! command -v pacman >/dev/null 2>&1; then
        warn "Spotify installation skipped: Arch package manager is unavailable on this Linux system."
        return 0
    fi

    animate_loading "Installing Spotify"
    info "Installing Spotify..."
    if ! command -v yay >/dev/null 2>&1; then
        if ! git clone https://aur.archlinux.org/yay.git /tmp/yay || ! (cd /tmp/yay && makepkg -si --noconfirm); then
            warn "Could not prepare the Arch AUR helper. Skipping Spotify."
            record_package_audit pacman spotify
            return 0
        fi
    fi
    yay -S --noconfirm spotify || warn "Spotify installation command failed."
    report_package_result pacman spotify "Spotify"
}

install_spotify_fedora() {
    animate_loading "Installing Spotify"
    info "Installing Spotify..."
    dnf install -y snapd
    report_package_result dnf snapd "Snap support"
    systemctl enable --now snapd
    snap install spotify
    report_package_result snap spotify "Spotify"
}

install_spotify_opensuse() {
    animate_loading "Installing Spotify"
    info "Installing Spotify..."
    zypper --non-interactive install -y snapd
    report_package_result zypper snapd "Snap support"
    systemctl enable --now snapd
    snap install spotify
    report_package_result snap spotify "Spotify"
}

upgrade_python_pip() {
    local py_cmd="$1"
    "$py_cmd" -m pip install --upgrade --break-system-packages --ignore-installed pip || \
    "$py_cmd" -m ensurepip --upgrade || true
}

install_base_debian() {
    info "Setting up Debian/Ubuntu environment..."
    install_packages apt build-essential curl wget git vim htop net-tools openssh-client neofetch inxi tar smartmontools docker.io python3 python3-pip ruby default-jdk default-jre mysql-server postgresql
    upgrade_python_pip python3
    safe_apt_update || true
    safe_apt_install code || true
    record_package_audit apt code
    info "Base package installation attempts completed; see the final audit."
}

install_base_arch() {
    info "Setting up Arch Linux environment..."
    pacman -Sy --noconfirm
    install_packages pacman curl wget git vim htop net-tools openssh neofetch inxi smartmontools docker gcc nodejs lua python python-pip ruby jre-openjdk mysql code
    upgrade_python_pip python || true
    info "Base package installation attempts completed; see the final audit."
}

install_base_fedora() {
    info "Setting up Fedora environment..."
    install_packages dnf git neofetch curl wget htop vim net-tools openssh inxi smartmontools docker gcc gcc-c++ nodejs lua python3 python3-pip ruby java-latest-openjdk mysql
    upgrade_python_pip python3
    info "Base package installation attempts completed; see the final audit."
}

install_base_opensuse() {
    info "Setting up openSUSE environment..."
    install_packages zypper make curl wget git vim net-tools openssh neofetch inxi smartmontools docker gcc nodejs python3 python3-pip ruby mysql postgresql
    upgrade_python_pip python3
    info "Base package installation attempts completed; see the final audit."
}

install_base_android() {
    info "Setting up Android (Termux) environment..."
    pkg update -y
    pkg upgrade -y
    install_packages pkg make yara curl wget git vim net-tools openssh neofetch inxi libcap-ng lvm2 mailutils nmh tsduck-tools build-essential nodejs lua53 python python-pip ruby openjdk-17 postgresql
    upgrade_python_pip python || true
    info "Base package installation attempts completed; see the final audit."
}

install_hacking_debian() {
    info "Installing hacking tools..."
    install_packages apt nmap aircrack-ng wifite hydra tcpdump sqlmap mcrypt john hashcat proxychains4 tor host nikto dnsrecon wireshark wpscan netcat-openbsd
    gem install wpscan --no-document || true
    record_package_audit gem wpscan
    info "Hacking tool installation attempts completed; see the final audit."
}

install_hacking_arch() {
    info "Installing hacking tools..."
    install_packages pacman nmap aircrack-ng hydra tcpdump sqlmap hashcat proxychains-ng tor john wireshark dnsrecon nikto netcat
    info "Hacking tool installation attempts completed; see the final audit."
}

install_hacking_fedora() {
    info "Installing hacking tools..."
    install_packages dnf nmap aircrack-ng hydra tcpdump sqlmap hashcat john proxychains-ng tor nikto dnsrecon wireshark netcat
    info "Hacking tool installation attempts completed; see the final audit."
}

install_hacking_opensuse() {
    info "Installing hacking tools..."
    install_packages zypper nmap aircrack-ng hydra tcpdump sqlmap hashcat john proxychains tor nikto dnsrecon wireshark netcat-openbsd
    info "Hacking tool installation attempts completed; see the final audit."
}

install_hacking_android() {
    info "Installing hacking tools..."
    install_packages pkg nmap aircrack-ng hydra tcpdump sqlmap hashcat john proxychains-ng tor dnsrecon netcat-openbsd wifite
    info "Hacking tool installation attempts completed; see the final audit."
}

run_nethunter_setup() {
    if [[ "$(uname -o 2>/dev/null || true)" != "Android" ]]; then
        return 0
    fi

    cat <<'EOF'

      ...
   ...~:+o+
    ......++::::
         ~o    :+
          +:::::.
              ~:~
                 .
 _ __ ____  __    ___
| |/ //   \| |   |_ _|
|   < | - || |__ |   |
|_|\_\|_|_||____||___|

    [1] Install Nethunter
    [2] Skip installation
EOF

    read -r -p "Choose an option [1-2]: " opt
    case "$opt" in
        1)
            termux-setup-storage
            curl -L -o "$HOME/install-nethunter-termux" https://offs.ec/2MceZWr
            chmod +x "$HOME/install-nethunter-termux"
            "$HOME/install-nethunter-termux"
            if command -v neofetch >/dev/null 2>&1; then neofetch; fi
            ;;
        *)
            warn "Skipping Nethunter installation."
            ;;
    esac
}

show_linux_only_notice
ensure_linux_environment || exit 1

require_root_or_sudo
show_intro_animation
show_menu_animation
show_menu_header
run_nethunter_setup

cat <<'EOF'

 ___  ___   ___  _  __ ___   ___  ___  ___  ___  _____
| _ \/   \ / __|| |/ // __| / __|| _ \|_ _|| _ \|_   _|
|  _/| - || (__ |   < \__ \| (__ |   / | | |  _/  | |
|_|  |_|_| \___||_|\_\|___/ \___||_|_\|___||_|    |_|

[1] Normal packages
[2] Normal packages + hacking tools
[3] Only hacking tools
[4] Update repository

GitHub: github.com/suchsoak
BY: suchsoak
V:1.0.4
EOF

read -r -p "Select an option [1-4]: " op
while [[ "$op" != "1" && "$op" != "2" && "$op" != "3" && "$op" != "4" ]]; do
    read -r -p "Select a valid option [1-4]: " op
done

case "$op" in
    1)
        distro="$(check_distro)"
        case "$distro" in
            debian) install_base_debian ;;
            arch) install_base_arch ;;
            fedora) install_base_fedora ;;
            opensuse) install_base_opensuse ;;
            android) install_base_android ;;
            *) fail "Distribution not supported for this installation type." ;;
        esac

        case "$distro" in
            debian) install_chrome_debian ;;
            arch) install_chrome_arch ;;
            fedora) install_chrome_fedora ;;
            opensuse) install_chrome_opensuse ;;
        esac

        case "$distro" in
            debian) install_spotify_debian ;;
            arch) install_spotify_arch ;;
            fedora) install_spotify_fedora ;;
            opensuse) install_spotify_opensuse ;;
        esac
        ;;

    2)
        distro="$(check_distro)"
        case "$distro" in
            debian) install_base_debian; install_hacking_debian ;;
            arch) install_base_arch; install_hacking_arch ;;
            fedora) install_base_fedora; install_hacking_fedora ;;
            opensuse) install_base_opensuse; install_hacking_opensuse ;;
            android) install_base_android; install_hacking_android ;;
            *) fail "Distribution not supported for this installation type." ;;
        esac
        ;;

    3)
        distro="$(check_distro)"
        case "$distro" in
            debian) install_hacking_debian ;;
            arch) install_hacking_arch ;;
            fedora) install_hacking_fedora ;;
            opensuse) install_hacking_opensuse ;;
            android) install_hacking_android ;;
            *) fail "Distribution not supported for this installation type." ;;
        esac
        ;;

    4)
        if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
            git pull --ff-only || warn "Could not update this repository automatically."
        else
            warn "Git directory not found; skipping update."
        fi
        ;;

    *)
        fail "Invalid option."
        ;;
esac

show_installation_audit
show_success_banner
if ((AUDIT_MISSING_COUNT == 0)); then
    log "${GREEN}Operation completed with all checks passing.${NC}"
else
    warn "Operation finished with ${AUDIT_MISSING_COUNT} missing package/runtime check(s). Review the audit above."
fi
