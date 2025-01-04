> [!WARNING]
> This README is still under development!

# 󱛟 Terraform Repo To Pull And Update ISOs
> [!IMPORTANT]
> This repo is built for my own environment so please review all configurations to verify compatibility!

This repo provides the automation for pulling all the latest images and storing them in Proxmox. My packer repo will try to pull from the internet first and if that falls will then use the local iso built off this repo.

> [!TIP]
> This repo is part of my IaC automation series. If you are building this in mind please follow my repo's in the order below.

1.  *you are here* [terraform-iso-get](https://github.com/dylanbegin/terraform-iso-get)
1.  [packer](https://github.com/dylanbegin/packer)
1.  [terraform-core](https://github.com/dylanbegin/terraform-core)
1.  [ansible](https://github.com/dylanbegin/ansible)
1.  [terraform-talos](https://github.com/dylanbegin/terraform-talos)
1.  [k8s-apps](https://github.com/dylanbegin/k8s-apps)

# Build Your Secrets File
Keeping in best practice, this repo does not contain any sensitive information. You will need to create a directory outside of this git repo on a properly encrypted disk/usb to save the secrets file. Below is the template needed for the file which needs to be named `tf-secrets.tfvars`.
```hcl
# This is a sensitive file. Do not share!
# All variables for all Terraform files.

pve_host      = "pve1.example.com:8006"
pve_api_token = "username@pam!build"
pve_ssh_user  = "username"
pve_ssh_pass  = "MY-PASSWORD"
```

# Build the Repo
To run the terraform build, follow the steps below.
1. Go into Terraform directory: `cd ~/path-to/terraform-iso-get`
1. Initiate the workspace: `terraform init`
1. Validate the build: `terraform plan -var-file={path/to/secrets/}tf-secrets.tfvars`
1. Run the build: `terraform apply -var-file={path/to/secrets/}tf-secrets.tfvars`

# Current Images Supported
> [!IMPORTANT]
> Distro flavor choice is based off the latest, stable, slim version availible.

I try to keep these up to date but if you get any failures, the first thing to check would be if the image link is out of date.

| OS                                                    | Version    | VMID | Status |
| ----------------------------------------------------- | ---------- | ---- | ------ |
|  [Alma](https://almalinux.org/)                      | 9.4        | 1000 | Completed |
|  [Alpine](https://www.alpinelinux.org/)              | 3.20       | 1001 | Completed |
|  [Antix](https://antixlinux.com/)                    | 22         | 1002 | |
| 󰣇 [Arch](https://archlinux.org/)                      | rolling    | 1003 | |
|  [Artix](https://artixlinux.org/index.php)           | rolling    | 1004 | |
|  [Centos](https://www.centos.org/centos-stream/)     | Streams 9  | 1005 | Completed |
|  [ClearOS](https://www.clearlinux.org/index.html)    | rolling    | 1006 | |
|  [Core](http://www.tinycorelinux.net/)               | 15         | 1007 | |
| 󰣚 [Debian](https://www.debian.org/)                   | 12.7       | 1008 | Commpleted |
|  [Elementary](https://elementary.io/)                | 7.1        | 1009 | |
|  [Endeavour](https://endeavouros.com/)               | Gemini     | 1010 | |
| 󰣛 [Fedora](https://fedoraproject.org/)                | 40         | 1011 | Completed |
| 󰣠 [FreeBSD](https://www.freebsd.org/)                 | 13.3       | 1012 | |
| 󰣨 [Gentoo](https://www.gentoo.org/)                   | rolling    | 1013 | |
|  [Kali](https://www.kali.org/)                       | rolling    | 1014 | Completed |
|  [Kali Purple](https://www.kali.org/)                | rolling    | 1015 | |
| 󱘊 [Manjaro](https://manjaro.org/)                     | 23.1       | 1016 | |
| 󰣭 [Mint](https://linuxmint.com/)                      | 22         | 1017 | Completed |
| 󱄅 [Nix](https://nixos.org/)                           | 23.11      | 1018 | |
|  [OpenBSD](https://www.openbsd.org/)                 | 7.5        | 1019 | |
|  [OpenSUSE](https://www.opensuse.org/)               | Tumbleweed | 1020 | |
|  [Parrot](https://parrotlinux.org/)                  | 6          | 1021 | |
|  [Peppermint](https://peppermintos.com/)             | rolling    | 1022 | |
|  [Pop!](https://pop.system76.com/)                   | 22.04      | 1023 | |
|  [QubesOS](https://www.qubes-os.org/)                | 4.2        | 1024 | |
|  [Rocky](https://rockylinux.org/)                    | 9.4        | 1025 | Completed |
| 󰕈 [Ubuntu](https://ubuntu.com/)                       | 24.04      | 1027 | Completed |
|  [Vanilla](https://vanillaos.org/)                   | 22.10      | 1028 | |
|  [Void](https://voidlinux.org/)                      | glibc      | 1029 | |
|  [Windows](https://www.microsoft.com/en-us/windows/) | 11         | 1030 | |
|  [Zorin](https://zorin.com/os/)                      | 17.1       | 1031 | |
