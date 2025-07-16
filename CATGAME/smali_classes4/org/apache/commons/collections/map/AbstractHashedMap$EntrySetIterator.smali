.class public Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySetIterator;
.super Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;
.source "AbstractHashedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EntrySetIterator"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V
    .locals 0

    .line 857
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 1

    .line 861
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashIterator;->nextEntry()Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    return-object v0
.end method
