# Don't Remove Credit @VJ_Botz
# Subscribe YouTube Channel For Amazing Bot @Tech_VJ
# Ask Doubt on telegram @KingVJ01

FROM python:3.10-slim-bullseye   # ✅ use newer supported Debian

# Install system updates & git
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git

# Copy and install Python dependencies
COPY requirements.txt /requirements.txt
RUN pip3 install --no-cache-dir -U pip && pip3 install --no-cache-dir -r /requirements.txt

# Setup working directory
WORKDIR /VJ-FILTER-BOT
COPY . /VJ-FILTER-BOT

# Start the bot
CMD ["python", "bot.py"]
