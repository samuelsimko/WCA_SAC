#!/bin/bash

country_id=$1
country_name=$2

event_list="222 333 333bf 333fm 333ft 333mbf 333mbo 333oh 444 444bf 555 555bf 666 777 clock magic minx mmagic pyram skewb sq1" 

for event in $event_list; do
		echo "Running $event"
		(python create_top100.py ${event} ${country_id} && python create_graph.py ${event} ${country_name}) &
		(python create_top100.py ${event}_a ${country_id} && python create_graph.py ${event}_a ${country_name}) &
done

echo "Wait for the script to finish"
wait
