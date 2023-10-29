#!/bin/bash

sudo route del -net default gw 10.10.16.1 netmask 0.0.0.0 dev tun0
