---
layout: "default"
title: "Map"
---

p 'map!'

#Get all docments that can be accessed from navigation menu and sort by "position" attirbute
docs = @getCollection('documents').findAllLive({inMenu: true},[position: 1]).toJSON()

ul ->
  for doc in docs
    li ->
      a href: doc.url, doc.title
    