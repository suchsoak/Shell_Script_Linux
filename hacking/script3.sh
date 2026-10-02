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

info "Installing essential security tools"

distro="$(check_distro)"
case "$distro" in
    debian)
        install_packages apt nmap sqlmap tcpdump hydra john hashcat wireshark nikto dnsrecon proxychains4 tor curl wget git
        ;;
    arch)
        install_packages pacman nmap sqlmap tcpdump hydra john hashcat wireshark nikto dnsrecon proxychains-ng tor curl wget git
        ;;
    fedora)
        install_packages dnf nmap sqlmap tcpdump hydra john hashcat wireshark nikto dnsrecon proxychains-ng tor curl wget git
        ;;
    opensuse)
        install_packages zypper nmap sqlmap tcpdump hydra john hashcat wireshark nikto dnsrecon proxychains tor curl wget git
        ;;
    android)
        pkg update -y
        install_packages pkg nmap sqlmap tcpdump hydra john hashcat wireshark nikto dnsrecon proxychains-ng tor curl wget git
        ;;
    *)
        fail "Unsupported distribution: $distro"
        ;;
esac

log "${GREEN}Essential tools installed successfully.${NC}"
