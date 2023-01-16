#!/bin/sh
cut -d: -f1 /etc/group | sort
echo "--------"
echo "Total: "
cut -d: -f1 /etc/group | sort | wc -w
