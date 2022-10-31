ip=$(curl icanhazip.com)
slackHook=

if [ "$MY_PUBLIC_IP" != "$ip" ]
then
        echo "sending slack message"
        echo $(curl -X POST -H 'Content-type: application/json' --data '{"text":"New public IP: '$ip'"}' $slackHook)
        export MY_PUBLIC_IP="$ip"
fi