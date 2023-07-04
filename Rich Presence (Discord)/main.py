from pypresence import Presence #pip install pypresence
import psutil
import time
import datetime
import pytz

# Timezone
belem_timezone = pytz.timezone('America/Belem')

client_id = "1123945793989120030" #ID of bot (https://discord.com/developers/applications)
RPC = Presence(client_id)
RPC.connect()

def update_presence():
    start = time.time()  # time - now
    
    # timezone
    current_time = datetime.datetime.now(belem_timezone)
    formatted_time = current_time.strftime('%I:%M %p')

    buttons = [
        {"label": "Sketchub", "url": "https://sketchub.in"},
    ]

    while True:
        # loop - your CPU and RAM
        cpu_usage = psutil.cpu_percent()
        ram_usage = psutil.virtual_memory().percent

        RPC.update(
            state=f"Horário de Belém: {formatted_time}",
            details="Admin of Sketchub",
            #img of bot (https://discord.com/developers/applications) in Rich Presence
            large_image="sketchub",
            small_image="transparente",
            start=start,  # time - now
            buttons=buttons,
            #img of bot (https://discord.com/developers/applications) in Rich Presence
            large_text=f"CPU Usage: {cpu_usage}%",
            small_text=f"RAM Usage: {ram_usage}%"
        )

        # loop
        time.sleep(1)

        # Atualize a hora atual em Belém para cada iteração
        current_time = datetime.datetime.now(belem_timezone)
        formatted_time = current_time.strftime('%I:%M %p')

        # 86400 s - 24 h (a day)
        if time.time() - start >= 86400:
            break

update_presence()
