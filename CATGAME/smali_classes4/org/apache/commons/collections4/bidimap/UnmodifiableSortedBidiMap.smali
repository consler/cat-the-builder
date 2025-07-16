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
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;-><init>(Lorg/apache/commons/collections4/SortedBidiMap;)V

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
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    return-object p0

    .line 65
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;-><init>(Lorg/apache/commons/collections4/SortedBidiMap;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 103
    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/SortedBidiMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 151
    invoke-static {p1}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic inverseBidiMap()Lorg/apache/commons/collections4/BidiMap;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic inverseBidiMap()Lorg/apache/commons/collections4/OrderedBidiMap;
    .locals 1

    .line 41
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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 109
    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 110
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/OrderedMapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 128
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/SortedBidiMap;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableOrderedMapIterator;->unmodifiableOrderedMapIterator(Lorg/apache/commons/collections4/OrderedMapIterator;)Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 88
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 93
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 98
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public removeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TK;"
        }
    .end annotation

    .line 122
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/collections4/SortedBidiMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 145
    invoke-static {p1}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 156
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->decorated()Lorg/apache/commons/collections4/SortedBidiMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/collections4/SortedBidiMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    .line 157
    invoke-static {p1}, Lorg/apache/commons/collections4/map/UnmodifiableSortedMap;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableSortedBidiMap;->values()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 115
    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractSortedBidiMapDecorator;->values()Ljava/util/Set;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
