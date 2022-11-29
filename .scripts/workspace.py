import subprocess
import json

def get_workspaces():
    stdout = subprocess.run(
        "i3-msg -t get_workspaces".split(), stdout=subprocess.PIPE
    ).stdout.decode("utf-8")

    return json.loads(stdout)

for workspace in get_workspaces():
    if workspace["focused"] == True:
        print(workspace["name"])
        break
