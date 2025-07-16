.class public Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;
.super Ljava/lang/Object;
.source "AbstractDualBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections/MapIterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BidiMapIterator"
.end annotation


# instance fields
.field protected canRemove:Z

.field protected iterator:Ljava/util/Iterator;

.field protected last:Ljava/util/Map$Entry;

.field protected final parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V
    .locals 1

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 650
    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    const/4 v0, 0x0

    .line 652
    iput-boolean v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->canRemove:Z

    .line 660
    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    .line 661
    iget-object p1, p1, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object p1, p1, v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 2

    .line 687
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 690
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 688
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getKey() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 694
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 697
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 695
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator getValue() can only be called after next() and before remove()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 665
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 669
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    const/4 v1, 0x1

    .line 670
    iput-boolean v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->canRemove:Z

    .line 671
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 675
    iget-boolean v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->canRemove:Z

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 680
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 681
    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v1, v1, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 682
    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    const/4 v0, 0x0

    .line 683
    iput-boolean v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->canRemove:Z

    return-void

    .line 676
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 2

    .line 712
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->iterator:Ljava/util/Iterator;

    const/4 v0, 0x0

    .line 713
    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    .line 714
    iput-boolean v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->canRemove:Z

    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 701
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    .line 704
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v0, v0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 706
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot use setValue() when the object being set is already in the map"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 708
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 702
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Iterator setValue() can only be called after next() and before remove()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 718
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->last:Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 719
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "MapIterator["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$BidiMapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "MapIterator[]"

    return-object v0
.end method
