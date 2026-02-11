#!/bin/#!/usr/bin/env bash

wkhtmltoimage --quality 100 http://cv.gparrello.com - | convert - "$1".pdf

exit 0
