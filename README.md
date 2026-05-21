# Homebrew Tap for Krust

Install Krust, a native macOS Kubernetes dashboard built with Swift and Rust.

Krust reads your existing kubeconfig and gives you a local desktop workspace for Kubernetes resources, logs, YAML, Helm, topology, port forwarding, security checks, and AI-assisted diagnostics.

## Install

```sh
brew install --cask vanchonlee/tap/krust
```

Then open **Krust** from Applications.

## Update

```sh
brew update
brew upgrade --cask krust
```

## Uninstall

```sh
brew uninstall --cask krust
```

To remove app preferences and caches as well:

```sh
brew uninstall --zap --cask krust
```

## Requirements

- macOS 14 Sonoma or newer
- A working Kubernetes kubeconfig if you want to connect to clusters

If `kubectl` can see your contexts, Krust should be able to use the same configuration.

## Links

- Website: https://krust.io/
- Download latest release: https://github.com/vanchonlee/homebrew-tap/releases/latest
- Documentation: https://krust.io/docs/
- Changelog: https://krust.io/docs/changelog/

## Cask

This tap currently provides:

```text
Casks/krust.rb
```

Formulae or additional casks may be added later as the Krust command-line and terminal tooling evolves.
