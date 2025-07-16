.class Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceMapIterator;
.super Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;
.source "AbstractReferenceMap.java"

# interfaces
.implements Lorg/apache/commons/collections/MapIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReferenceMapIterator"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;)V
    .locals 0

    .line 840
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;-><init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2

    .line 848
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceMapIterator;->currentEntry()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 852
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 850
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 856
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceMapIterator;->currentEntry()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 858
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 844
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceMapIterator;->nextEntry()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 864
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceMapIterator;->currentEntry()Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 866
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "setValue() can only be called after next() and before remove()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
