#!/bin/bash


echo "      ____    ____   ____   ____         _____            ____ "
echo "     |    |  |    | |    | |    |   ____|\    \          |    | "
echo "     |    |  |    | |    | |    |  /     /\    \         |    | "
echo "     |    | /    // |    |_|    | /     /  \    \        |    | "
echo "     |    |/ _ _//  |    .-.    ||     |    |    | ____  |    | "
echo "     |    |\    \'  |    | |    ||     |    |    ||    | |    | "
echo "     |    | \    \  |    | |    ||\     \  /    /||    | |    | "
echo "     |____|  \____\ |____| |____|| \_____\/____/ ||\____\|____| "
echo "     |    |   |    ||    | |    | \ |    ||    | /| |    |    | "
echo "     |____|   |____||____| |____|  \|____||____|/  \|____|____|       V-1.0 Created By Shaurya Sharma "
echo " "
echo " "
echo " Please Wait.."
echo " "

INFILE=$1

if [ -n "$NETCAT" ] ; then
 alias NETCAT="$NETCAT"
elif which netcat &> /dev/null ; then
 alias NETCAT='netcat'
else
 echo 'You need netcat to run this!'
fi

sed -e '1ibegin' -e '1icountrycode' $INFILE > $INFILE.f
echo 'end' >> $INFILE.f

`netcat whois.cymru.com 43 < $INFILE.f > $INFILE.researched.csv`

rm $INFILE.f
echo " Done"
echo ""
echo ""
