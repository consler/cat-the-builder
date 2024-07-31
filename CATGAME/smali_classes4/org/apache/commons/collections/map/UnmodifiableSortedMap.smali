.class public final Lorg/apache/commons/collections/map/UnmodifiableSortedMap;
.super Lorg/apache/commons/collections/map/AbstractSortedMapDecorator;
.source "UnmodifiableSortedMap.java"

# interfaces
.implements Lorg/apache/commons/collections/Unmodifiable;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x5090b9d3fdc558e8L


# direct methods
.method private constructor <init>(Ljava/util/SortedMap;)V
    .locals 0
    .param p1, "map"    # Ljava/util/SortedMap;

    .line 71
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/map/AbstractSortedMapDecorator;-><init>(Ljava/util/SortedMap;)V

    .line 72
    return-void
.end method

.method public static decorate(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 1
    .param p0, "map"    # Ljava/util/SortedMap;

    .line 57
    instance-of v0, p0, Lorg/apache/commons/collections/Unmodifiable;

    if-eqz v0, :cond_0

    .line 58
    return-object p0

    .line 60
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 96
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 97
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;->map:Ljava/util/Map;

    .line 98
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 84
    iget-object v0, p0, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 85
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 102
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .line 142
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .line 118
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractSortedMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 119
    .local v0, "set":Ljava/util/Set;
    invoke-static {v0}, Lorg/apache/commons/collections/map/UnmodifiableEntrySet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1

    .line 134
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .param p1, "toKey"    # Ljava/lang/Object;

    .line 151
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 152
    .local v0, "map":Ljava/util/SortedMap;
    new-instance v1, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .line 123
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractSortedMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 124
    .local v0, "set":Ljava/util/Set;
    invoke-static {v0}, Lorg/apache/commons/collections/set/UnmodifiableSet;->decorate(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1

    .line 138
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 106
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .param p1, "mapToCopy"    # Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "toKey"    # Ljava/lang/Object;

    .line 146
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 147
    .local v0, "map":Ljava/util/SortedMap;
    new-instance v1, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .param p1, "fromKey"    # Ljava/lang/Object;

    .line 156
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;->getSortedMap()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 157
    .local v0, "map":Ljava/util/SortedMap;
    new-instance v1, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;

    invoke-direct {v1, v0}, Lorg/apache/commons/collections/map/UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v1
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .line 128
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractSortedMapDecorator;->values()Ljava/util/Collection;

    move-result-object v0

    .line 129
    .local v0, "coll":Ljava/util/Collection;
    invoke-static {v0}, Lorg/apache/commons/collections/collection/UnmodifiableCollection;->decorate(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method
