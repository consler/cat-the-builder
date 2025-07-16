.class Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;
.super Ljava/util/AbstractSet;
.source "ListOrderedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/ListOrderedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EntrySetView"
.end annotation


# instance fields
.field private entrySet:Ljava/util/Set;

.field private final insertOrder:Ljava/util/List;

.field private final parent:Lorg/apache/commons/collections/map/ListOrderedMap;


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections/map/ListOrderedMap;Ljava/util/List;)V
    .locals 0

    .line 531
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 532
    iput-object p1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    .line 533
    iput-object p2, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->insertOrder:Ljava/util/List;

    return-void
.end method

.method private getEntrySet()Ljava/util/Set;
    .locals 1

    .line 537
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ListOrderedMap;->getMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->entrySet:Ljava/util/Set;

    .line 540
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->entrySet:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 571
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ListOrderedMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 551
    invoke-direct {p0}, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    .line 555
    invoke-direct {p0}, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 578
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 582
    invoke-direct {p0}, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 547
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ListOrderedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .line 590
    new-instance v0, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    iget-object v2, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->insertOrder:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/map/ListOrderedMap$ListOrderedIterator;-><init>(Lorg/apache/commons/collections/map/ListOrderedMap;Ljava/util/List;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 559
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 562
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 563
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    .line 564
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/ListOrderedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    .line 544
    iget-object v0, p0, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->parent:Lorg/apache/commons/collections/map/ListOrderedMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/map/ListOrderedMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 586
    invoke-direct {p0}, Lorg/apache/commons/collections/map/ListOrderedMap$EntrySetView;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
