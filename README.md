ff2mpv-dbus
======
This is fork of ff2mpv-dbus that uses xdg-open to play the video. This allows the extension to work on Wayland and within sandboxes like firejail.

## Limitations
Options are currently not passed

## Usage
```
cp ff2mpv.desktop ~/.local/share/applications

# Replace $FF2MPV_PATH with the path to the ff2mpv-dbus directory (could also be path to wherever ff2mpv.sh is)
sed -i 's|$FF2MPV_PATH|'"$(pwd)"'|' ~/.local/share/applications/ff2mpv.desktop

xdg-mime default ff2mpv.desktop x-scheme-handler/mpv
```

Lastly, edit your ~/.mozilla/native-messaging-hosts/ff2mpv.json to point to the python script in this repository.

## License

The source code in this repository is licensed under a *modified* MIT License.

The icons in this repository are licensed by the MPV team under GNU LGPL, version 2.1.
