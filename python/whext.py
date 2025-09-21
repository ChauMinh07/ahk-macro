import discord
from discord import Webhook
import aiohttp
import asyncio
import os
from configparser import ConfigParser

application_path = os.path.dirname(os.path.abspath(__file__))
script_path_replace_backslash = application_path.replace("\\", "/")
script_path = script_path_replace_backslash.replace("/ext", "")

print(script_path_replace_backslash)
config = ConfigParser()
with open(script_path + '/config.ini') as configfile:
    config.read_file(configfile)

async def foo():
    async with aiohttp.ClientSession() as session:
        webhook = Webhook.from_url(config['Config']["webhook"], session=session)
        webhook_message = config.get("Config", "webhookmessage").replace("\\n", "\n")
        with open(script_path + "/ext/latest_win.png", 'rb') as image_file:
            discord_file = discord.File(image_file, filename="latest_win.png")
            await webhook.send(webhook_message, file=discord_file)

asyncio.run(foo())
