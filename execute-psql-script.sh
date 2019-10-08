
if [ "$1" = "" ]; then
    echo "EndpointDB should be specified"
    exit
fi
psql -h $1 -p 5432 -U postgres -a -f sql-script.sql -W