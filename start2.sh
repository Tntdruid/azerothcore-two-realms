#START OF SCRIPT
cd ~/azerothcore-realm2/env/dist/bin
worldserver="./worldserver"

worldserver_session="world2-session"

if tmux new-session -d -s $worldserver_session -c ~/azerothcore-realm2/env/dist/bin; then
    echo "Created worldserver session: $worldserver_session"
else
    echo "Error when trying to create worldserver session: $worldserver_session"
fi

if tmux send-keys -t $worldserver_session "$worldserver" C-m; then
    echo "Executed \"$worldserver\" inside $worldserver_session"
    echo "You can attach to $worldserver_session and check the result using \"tmux attach -t $worldserver_session\""
else
    echo "Error when executing \"$worldserver\" inside $worldserver_session"
fi
#END OF SCRIPT.
