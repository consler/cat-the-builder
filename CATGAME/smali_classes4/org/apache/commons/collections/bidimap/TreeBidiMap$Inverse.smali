.class Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;
.super Ljava/lang/Object;
.source "TreeBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedBidiMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/bidimap/TreeBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Inverse"
.end annotation


# instance fields
.field private entrySet:Ljava/util/Set;

.field private keySet:Ljava/util/Set;

.field private final main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

.field private valuesSet:Ljava/util/Set;


# direct methods
.method constructor <init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)V
    .locals 0
    .param p1, "main"    # Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    .line 1951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1952
    iput-object p1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    .line 1953
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 2026
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->clear()V

    .line 2027
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 1972
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 1976
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 4

    .line 2044
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2045
    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$EntryView;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$EntryView;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;II)V

    return-object v0

    .line 2047
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2073
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2700(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2

    .line 1980
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2400(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1983
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1700(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1800(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1981
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 1964
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 1968
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 2077
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2800(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)I

    move-result v0

    return v0
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections/BidiMap;
    .locals 1

    .line 2065
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    return-object v0
.end method

.method public inverseOrderedBidiMap()Lorg/apache/commons/collections/OrderedBidiMap;
    .locals 1

    .line 2069
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1960
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 3

    .line 2030
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2031
    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;II)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->keySet:Ljava/util/Set;

    .line 2033
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2

    .line 1987
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2400(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1990
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-static {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1700(Lorg/apache/commons/collections/bidimap/TreeBidiMap;)[Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2200(Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1988
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Map is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 3

    .line 2051
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2052
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyOrderedMapIterator;->INSTANCE:Lorg/apache/commons/collections/OrderedMapIterator;

    return-object v0

    .line 2054
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)V

    return-object v0
.end method

.method public nextKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 1994
    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2500(Ljava/lang/Object;)V

    .line 1995
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    move-object v1, p1

    check-cast v1, Ljava/lang/Comparable;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1400(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1900(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 1996
    .local v0, "node":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public orderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .locals 3

    .line 2058
    invoke-virtual {p0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2059
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyOrderedMapIterator;->INSTANCE:Lorg/apache/commons/collections/OrderedMapIterator;

    return-object v0

    .line 2061
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$ViewMapIterator;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)V

    return-object v0
.end method

.method public previousKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 2000
    invoke-static {p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2500(Ljava/lang/Object;)V

    .line 2001
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    move-object v1, p1

    check-cast v1, Ljava/lang/Comparable;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$1400(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Comparable;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2000(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;I)Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;

    move-result-object v0

    .line 2002
    .local v0, "node":Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 2006
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    move-object v1, p2

    check-cast v1, Ljava/lang/Comparable;

    move-object v2, p1

    check-cast v2, Ljava/lang/Comparable;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2600(Lorg/apache/commons/collections/bidimap/TreeBidiMap;Ljava/lang/Comparable;Ljava/lang/Comparable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .param p1, "map"    # Ljava/util/Map;

    .line 2010
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2011
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2012
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2013
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2014
    .end local v1    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 2015
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 2018
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->removeValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 2022
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1956
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2081
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/collections/bidimap/TreeBidiMap;->access$2900(Lorg/apache/commons/collections/bidimap/TreeBidiMap;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 4

    .line 2037
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->valuesSet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2038
    new-instance v0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;

    iget-object v1, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->main:Lorg/apache/commons/collections/bidimap/TreeBidiMap;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/collections/bidimap/TreeBidiMap$View;-><init>(Lorg/apache/commons/collections/bidimap/TreeBidiMap;II)V

    iput-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->valuesSet:Ljava/util/Set;

    .line 2040
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/bidimap/TreeBidiMap$Inverse;->valuesSet:Ljava/util/Set;

    return-object v0
.end method
