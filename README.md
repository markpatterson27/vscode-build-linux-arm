Offical ARM builds are now provided by Microsoft on the [VS Code download page](https://code.visualstudio.com/#alt-downloads). VS Code is even available in the [Raspberry Pi APT packages](https://code.visualstudio.com/docs/setup/raspberry-pi).

# VS Code Build Linux ARM

![ARM builds](https://github.com/markpatterson27/vscode-build-linux-arm/workflows/ARM%20builds/badge.svg)

Build VS Code for Linux ARM targets.

A GitHub action clones the vscode repository and builds VS Code for both 32-bit and 64-bit Linux ARM targets. The packaged .deb files are uploaded as releases. The packages can be found on the [releases](../../releases/) page.

The .deb files can be installed using dpkg.

#### 32-bit

```bash
sudo dpkg -i ~/Downloads/code-oss_1.??.?-*_armhf.deb
```

Tested on Raspberry Pi 4 running Raspberry OS.

#### 64-bit

```bash
sudo dpkg -i ~/Downloads/code-oss_1.??.?-*_arm64.deb
```

Tested on Jetson Nano running Ubuntu 18.04.

## References

- <https://github.com/Microsoft/vscode/wiki/Cross-Compiling-for-Debian-Based-Linux>
- <https://www.stereolabs.com/docs/docker/building-arm-container-on-x86/>
