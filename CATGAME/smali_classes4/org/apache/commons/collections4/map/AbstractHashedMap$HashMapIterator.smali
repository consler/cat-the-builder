.class public Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator;
.super Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;
.source "AbstractHashedMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/MapIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractHashedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "HashMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/MapIterator<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 770
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator<TK;TV;>;"
    .local p1, "parent":Lorg/apache/commons/collections4/map/AbstractHashedMap;, "Lorg/apache/commons/collections4/map/AbstractHashedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;-><init>(Lorg/apache/commons/collections4/map/AbstractHashedMap;)V

    .line 771
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 780
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator;->currentEntry()Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 781
    .local v0, "current":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 782
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getKey() can only be called after next() and before remove()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 789
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator;->currentEntry()Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 790
    .local v0, "current":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 793
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 791
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "getValue() can only be called after next() and before remove()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 775
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashIterator;->nextEntry()Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 798
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashMapIterator;->currentEntry()Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 799
    .local v0, "current":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 802
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 800
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "setValue() can only be called after next() and before remove()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
