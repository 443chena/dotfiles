# dotfiles
install:

sudo apt-get update && sudo apt-get install -y \
bash \
zsh \
tmux \
fzf \
bat \
ripgrep \
neovim \
git \
git-lfs \
curl \
httpie \
wget \
jq \
sed \
awk \
grep \
less \
tree \
htop \
iotop \
sysstat \
strace \
ltrace \
build-essential \
make \
gcc \
g++ \
pkg-config \
python3 \
python3-pip \
python3-venv \
pipx \
docker.io \
docker-compose \
podman \
kubectl \
helm \
ansible \
terraform \
vagrant \
qemu-kvm \
virt-manager \
libvirt-daemon-system \
libvirt-clients \
bridge-utils \
ufw \
unattended-upgrades \
openssh-client \
openssh-server \
gnupg \
age \
sops \
openssl \
tcpdump \
tshark \
wireshark \
mtr-tiny \
traceroute \
fping \
iperf3 \
nmap \
netcat-openbsd \
dnsutils \
iputils-ping \
iproute2 \
ethtool \
bridge-utils \
conntrack \
mitmproxy \
zeek \
suricata \
sqlite3 \
postgresql-client \
mysql-client \
redis-tools \
pandoc \
graphviz \
d2 \
ca-certificates

---

~/.config/Code/User/keybindings.json 
// Place your key bindings in this file to override the defaults
[
    {
    "key": "Alt+Shift+t",
    "command": "editor.action.insertSnippet",
    "args": {
      "snippet": "[[time-log-$CURRENT_YEAR-$CURRENT_MONTH-$CURRENT_DATE]] $CURRENT_HOUR:$CURRENT_MINUTE\n"
    },
    "when": "editorTextFocus"
  }

  // Remove default Alt+Arrow passthrough (fixes ;5C / ;5D issue)
  {
    "key": "alt+right",
    "command": "-",
    "when": "terminalFocus"
  },
  {
    "key": "alt+left",
    "command": "-",
    "when": "terminalFocus"
  },P



//  {
//  "key": "alt+right",
//  "command": "workbench.action.terminal.focusNextPane",
//  "when": "terminalFocus"
//  },
//  {
//    "key": "alt+left",
//    "command": "workbench.action.terminal.focusPreviousPane",
//    "when": "terminalFocus"
//  }

    // ============== Disable defaults: ============== //

  { "key": "ctrl+r", "command": "-inlineChat.regenerate" },
  { "key": "ctrl+r", "command": "-workbench.action.quickOpenNavigateNextInRecentFilesPicker" },
  { "key": "ctrl+r", "command": "-workbench.action.terminal.chat.rerunRequest" },
  { "key": "ctrl+r", "command": "-workbench.action.files.revealActiveFileInWindows" },
  { "key": "ctrl+r", "command": "-workbench.action.quickOpenNavigatePreviousInRecentFilesPicker" }


  { "key": "ctrl+r",
    "command": "workbench.action.terminal.sendSequence",
    "when": "terminalFocus",
    "args": { "text": "\u0012" }  // sends raw Ctrl+R to the shell
  }
]





]
