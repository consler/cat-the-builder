.class public Lorg/apache/commons/collections/map/FixedSizeSortedMap;
.super Lorg/apache/commons/collections/map/AbstractSortedMapDecorator;
.source "FixedSizeSortedMap.java"

# interfaces
.implements Ljava/util/SortedMap;
.implements Lorg/apache/commons/collections/BoundedMap;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2b61da493feb3c45L


# direct methods
.method protected constructor <init>(Ljava/util/SortedMap;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractSortedMapDecorator;-><init>(Ljava/util/SortedMap;)V

    return-void
.end method

.method public static decorate(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 1

    .line 74
    new-instance v0, Lorg/apache/commons/collections/map/FixedSizeSortedMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/FixedSizeSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 110
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 111
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/commons/collections/map/FixedSizeSortedMap;->map:Ljava/util/Map;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 103
    iget-object v0, p0, Lorg/apache/commons/collections/map/FixedSizeSortedMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 132
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Map is fixed size"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/apache/commons/collections/map/FixedSizeSortedMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 141
    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected getSortedMap()Ljava/util/SortedMap;
    .locals 1

    .line 94
    iget-object v0, p0, Lorg/apache/commons/collections/map/FixedSizeSortedMap;->map:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .line 161
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/FixedSizeSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 162
    new-instance v0, Lorg/apache/commons/collections/map/FixedSizeSortedMap;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/map/FixedSizeSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public isFull()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/apache/commons/collections/map/FixedSizeSortedMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 146
    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public maxSize()I
    .locals 1

    .line 175
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/FixedSizeSortedMap;->size()I

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/commons/collections/map/FixedSizeSortedMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/apache/commons/collections/map/FixedSizeSortedMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot put new key/value pair - Map is fixed size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2

    .line 123
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot put new key/value pair - Map is fixed size"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 128
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/map/FixedSizeSortedMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 136
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Map is fixed size"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .line 156
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/FixedSizeSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 157
    new-instance p2, Lorg/apache/commons/collections/map/FixedSizeSortedMap;

    invoke-direct {p2, p1}, Lorg/apache/commons/collections/map/FixedSizeSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object p2
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1

    .line 166
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/FixedSizeSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 167
    new-instance v0, Lorg/apache/commons/collections/map/FixedSizeSortedMap;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/map/FixedSizeSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/apache/commons/collections/map/FixedSizeSortedMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 151
    invoke-static {v0}, Lorg/apache/commons/collections/collection/UnmodifiableCollection;->decorate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
