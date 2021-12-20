#!/bin/bash -x

index=0

fruits[((index++))]="Apple"
fruits[((index++))]="Banana"
fruits[((index++))]="Orrange"
fruits[((index++))]="Mango"
fruits[((index++))]="Pineapple"

echo ${fruits[4]}


