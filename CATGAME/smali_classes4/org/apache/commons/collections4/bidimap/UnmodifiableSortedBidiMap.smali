.class public final Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;
.super Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;
.source "UnmodifiableSortedBidiMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/Unmodifiable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# instance fields
.field private inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/SortedBidiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/SortedBidiMap<",
            "TK;+TV;>;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap<TK;TV;>;"
    .local p1, "map":Lorg/apache/commons/collections4/SortedBidiMap;, "Lorg/apache/commons/collections4/SortedBidiMap<TK;+TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;-><init>(Lorg/apache/commons/collections4/SortedBidiMap;)V

    .line 78
    return-void
.end method

.method public static unmodifiableSortedBidiMap(Lorg/apache/commons/collections4/SortedBidiMap;)Lorg/apache/commons/collections4/SortedBidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/SortedBidiMap<",
            "TK;+TV;>;)",
            "Lorg/apache/commons/collections4/SortedBidiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 60
    .local p0, "map":Lorg/apache/commons/collections4/SortedBidiMap;, "Lorg/apache/commons/collections4/SortedBidiMap<TK;+TV;>;"
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    .line 62
    move-object v0, p0

    .line 63
    .local v0, "tmpMap":Lorg/apache/commons/collections4/SortedBidiMap;, "Lorg/apache/commons/collections4/SortedBidiMap<TK;TV;>;"
    return-object v0

    .line 65
    .end local v0    # "tmpMap":Lorg/apache/commons/collections4/SortedBidiMap;, "Lorg/apache/commons/collections4/SortedBidiMap<TK;TV;>;"
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;-><init>(Lorg/apache/commons/collections4/SortedBidiMap;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 83
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 104
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
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

    .line 150
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/SortedBidiMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 151
    .local v0, "sm":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic inverseBidiMap()Lorg/apache/commons/collections4/BidiMap;
    .locals 1

    .line 41
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;
    .locals 1

    .line 41
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/SortedBidiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections4/SortedBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;-><init>(Lorg/apache/commons/collections4/SortedBidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;

    .line 137
    iput-object p0, v0, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 110
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1

    .line 41
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/SortedBidiMap;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    .line 129
    .local v0, "it":Lorg/apache/commons/collections4/OrderedMapIterator;, "Lorg/apache/commons/collections4/OrderedMapIterator<TK;TV;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;->unmodifiableOrderedMapIterator(Lorg/apache/commons/collections4/OrderedMapIterator;)Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v1

    return-object v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap<TK;TV;>;"
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

    .line 93
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap<TK;TV;>;"
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

    .line 98
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap<TK;TV;>;"
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

    .line 144
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/SortedBidiMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 145
    .local v0, "sm":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v1

    return-object v1
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

    .line 156
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/SortedBidiMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    .line 157
    .local v0, "sm":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 41
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->values()Ljava/util/Set;

    move-result-object v0

    .line 116
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method
