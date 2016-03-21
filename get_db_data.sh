#!/bin/bash

# fetching the sql-dump for the mediaserver , populated with data.
SRC=/media/buffalo/dina-data/naturalist/integrated/mediaserver_for_nf-20160203.sql
cp $SRC mysql_media-autoload
