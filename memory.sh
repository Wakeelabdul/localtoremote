#!/bin/bash

memory_total=$( cat /proc/meminfo | grep MemTotal )

memory_free=$( cat /proc/meminfo | grep MemFree )

memory_available=$( cat /proc/meminfo | grep MemAvailable )

echo "$memory_free"
echo "$memory_available"
echo "$memory_total"
