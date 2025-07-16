.class public Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySet;
.super Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;
.source "AbstractDualBidiMap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "EntrySet"
.end annotation


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V
    .locals 2

    .line 544
    iget-object v0, p1, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;)V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 548
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySet;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    invoke-super {p0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$View;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->createEntrySetIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3

    .line 552
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 555
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 556
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 557
    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySet;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    invoke-virtual {v2, v0}, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 558
    iget-object v2, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySet;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object v2, v2, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 559
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-nez v2, :cond_1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 560
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySet;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object p1, p1, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    aget-object p1, p1, v1

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    iget-object p1, p0, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap$EntrySet;->parent:Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;

    iget-object p1, p1, Lorg/apache/commons/collections/bidimap/AbstractDualBidiMap;->maps:[Ljava/util/Map;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-interface {p1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_2
    return v1
.end method
