if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/jinto8301/Auto-Filter /TheFileBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /TheFileBot
fi
cd /DQTheFileDonorBot
pip3 install -U -r requirements.txt
echo "Starting bot...."
python3 bot.py
