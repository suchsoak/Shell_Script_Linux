#!/usr/bin/env bash
set -Eeuo pipefail

RED='\033[31m'
GREEN='\033[32m'
YELLOW='\033[33m'
BLUE='\033[34m'
NC='\033[0m'

log(){ printf '%b\n' "$*"; }
info(){ log "${BLUE}[*] $*${NC}"; }
warn(){ log "${YELLOW}[!] $*${NC}"; }
fail(){ log "${RED}[ERROR] $*${NC}" >&2; exit 1; }

trap 'fail "The previous command failed"' ERR

check_distro() {
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

install_packages() {
    local manager="$1"; shift
    case "$manager" in
        apt)
            apt-get update
            DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends "$@"
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
        *) fail "Unsupported package manager: $manager" ;;
    esac
}

info "Installing hacking toolset"

distro="$(check_distro)"
case "$distro" in
    debian)
        install_packages apt nmap aircrack-ng hydra tcpdump sqlmap john hashcat proxychains4 tor host dnsrecon wireshark nikto netcat-openbsd curl wget git vim htop neofetch inxi tar smartmontools python3 python3-pip ruby default-jdk default-jre mysql-server postgresql
        ;;
    arch)
        install_packages pacman nmap aircrack-ng hydra tcpdump sqlmap john hashcat proxychains-ng tor dnsrecon wireshark nikto netcat curl wget git vim htop neofetch inxi smartmontools python python-pip ruby jre-openjdk mysql postgresql
        ;;
    fedora)
        install_packages dnf nmap aircrack-ng hydra tcpdump sqlmap john hashcat proxychains-ng tor dnsrecon wireshark nikto netcat curl wget git vim htop neofetch inxi smartmontools python3 python3-pip ruby java-latest-openjdk mysql postgresql
        ;;
    opensuse)
        install_packages zypper nmap aircrack-ng hydra tcpdump sqlmap john hashcat proxychains tor dnsrecon wireshark nikto netcat-openbsd curl wget git vim htop neofetch inxi smartmontools python3 python3-pip ruby mysql postgresql
        ;;
    android)
        pkg update -y
        install_packages pkg nmap aircrack-ng hydra tcpdump sqlmap john hashcat tor dnsrecon netcat-openbsd curl wget git vim htop neofetch inxi python python-pip ruby openjdk-17 postgresql
        ;;
    *)
        fail "Unsupported distribution: $distro"
        ;;
esac

log "${GREEN}Hacking tools installed successfully.${NC}"
