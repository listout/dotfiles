from i3pystatus import Status

status = Status()

status.register("pulseaudio",
                format="{volume}%",)

status.register("clock",
                format="%a %-d %b %X KW%V",
                on_leftclick="gsimplecal")

status.register("load",
                interval=2,)

status.register("temp",
                format="{temp: .0f}°C",
                interval=2,)

status.register(
    "battery",
    format="{status}/{consumption:.2f}W {percentage:.2f}% [{percentage_design:.2f}%] {remaining:%E%hh:%Mm}",
    alert=True,
    alert_percentage=5,
    status={
        "DIS": "↓",
        "CHR": "↑",
        "FULL": "=",
    },
)

status.register("backlight",
                format="{percentage}",
                interval=1,)

status.register("network",
                interface="enp2s0",
                format_up="{v4cidr}",)

status.register("network",
                interface="wlp3s0",
                format_up="{essid} {quality:03.0f}%",)

status.register("disk",
                path="/",
                format="{used}/{total}G [{avail}G]",)

status.run()
