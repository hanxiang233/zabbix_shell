#!/bin/bash
free |grep Mem |awk '{print $6}'
