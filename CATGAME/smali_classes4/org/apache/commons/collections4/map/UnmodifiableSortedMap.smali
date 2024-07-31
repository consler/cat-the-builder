.class public final Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;
.super Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;
.source "UnmodifiableSortedMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/Unmodifiable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5090b9d3fdc558e8L


# direct methods
.method private constructor <init>(Ljava/util/SortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableSortedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;-><init>(Ljava/util/SortedMap;)V

    .line 82
    return-void
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

    .line 107
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableSortedMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 108
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;->map:Ljava/util/Map;

    .line 109
    return-void
.end method

.method public static unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 64
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    .line 66
    move-object v0, p0

    .line 67
    .local v0, "tmpMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    return-object v0

    .line 69
    .end local v0    # "tmpMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableSortedMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 94
    iget-object v0, p0, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 95
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 114
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableSortedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 160
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;->decorated()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableSortedMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;->decorated()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 170
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;->decorated()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableSortedMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;->decorated()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableSortedMap<TK;TV;>;"
    .local p1, "mapToCopy":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableSortedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;->decorated()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    new-instance v0, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;->decorated()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableSortedMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractSortedMapDecorator;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/collections4/collection/UnmodifiableCollection;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
