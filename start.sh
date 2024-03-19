

if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/ankitkhandal74/Ultra-Forward-Bot /Ultra-Forward-Bot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Ultra-Forward-Bot
fi
cd /Ultra-Forward-Bot
pip3 install -U -r requirements.txt
echo "Starting bot...."
python3 bot.py
