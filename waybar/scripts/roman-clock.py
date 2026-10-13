#!/usr/bin/env python3

import json
from datetime import datetime

now = datetime.now()

months = (
    "I", "II", "III", "IV", "V", "VI",
    "VII", "VIII", "IX", "X", "XI", "XII"
)

date = f"{now.day}/{months[now.month - 1]}/{now.year}"
time = f"{now:%H:%M}"

print(json.dumps({
    "text": f"{date} - {time}"
}))