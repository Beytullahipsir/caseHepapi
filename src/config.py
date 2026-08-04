import json
import os

config = json.load(open('db_config.json'))  # load db in json format

config["db"]["url"] = os.getenv("MONGO_URL", config["db"]["url"])
config["db"]["name"] = os.getenv("MONGO_DB", config["db"]["name"])