#!/usr/bin/env bash
PRODUCT_TEMPLATE=`cat <<EOF
---
layout: post
title: "Product {ID}"
image: "product{ID}.jpg"
categories: "category1"
---
Product {ID}
EOF`

for (( i=1; i<=1000; ((i+=1)) ));
 do echo "$PRODUCT_TEMPLATE" | sed "s/{ID}/$i/g" > "./_posts/2020-10-16-product$i.markdown";
done;