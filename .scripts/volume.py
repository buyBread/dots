import subprocess

alsa_master_stdout = subprocess.run(
    ["amixer", "get", "Master"], stdout=subprocess.PIPE
).stdout

# stdout is of class "bytes"
alsa_master_stdout = alsa_master_stdout.decode("utf-8")

def get_volume(side: str = None) -> str:
    if side is None:
        side = "Left"

    volume_index = (
        # 'Front', 'Left:', 'Playback', '36557', '[56%]', '[on]',
        alsa_master_stdout.split().index(side + ":") + 3
    )
    
    # return with the square brackets removed
    return (
        (alsa_master_stdout.split()[volume_index])[1:-1]
    )

if get_volume("Left") != get_volume("Right"):
    print("Fix the volume.")
else:
    print(f"Volume: {get_volume()}")