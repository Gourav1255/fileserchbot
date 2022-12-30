if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Gourav1255/fileserchbot /fileserchbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /fileserchbot
fi
cd /fileserchbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
