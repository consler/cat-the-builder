.class public final Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;
.super Lorg/apache/commons/collections4/bidimap/AbstractBidiMapDecorator;
.source "UnmodifiableBidiMap.java"

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
        "Lorg/apache/commons/collections4/bidimap/AbstractBidiMapDecorator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;"
    }
.end annotation


# instance fields
.field private inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap<",
            "TV;TK;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/BidiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/BidiMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap<TK;TV;>;"
    .local p1, "map":Lorg/apache/commons/collections4/BidiMap;, "Lorg/apache/commons/collections4/BidiMap<+TK;+TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/bidimap/AbstractBidiMapDecorator;-><init>(Lorg/apache/commons/collections4/BidiMap;)V

    .line 76
    return-void
.end method

.method public static unmodifiableBidiMap(Lorg/apache/commons/collections4/BidiMap;)Lorg/apache/commons/collections4/BidiMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/BidiMap<",
            "+TK;+TV;>;)",
            "Lorg/apache/commons/collections4/BidiMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 58
    .local p0, "map":Lorg/apache/commons/collections4/BidiMap;, "Lorg/apache/commons/collections4/BidiMap<+TK;+TV;>;"
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    .line 60
    move-object v0, p0

    .line 61
    .local v0, "tmpMap":Lorg/apache/commons/collections4/BidiMap;, "Lorg/apache/commons/collections4/BidiMap<TK;TV;>;"
    return-object v0

    .line 63
    .end local v0    # "tmpMap":Lorg/apache/commons/collections4/BidiMap;, "Lorg/apache/commons/collections4/BidiMap<TK;TV;>;"
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;-><init>(Lorg/apache/commons/collections4/BidiMap;)V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 81
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap<TK;TV;>;"
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

    .line 101
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractBidiMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 102
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public declared-synchronized inverseBidiMap()Lorg/apache/commons/collections4/BidiMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/BidiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap<TK;TV;>;"
    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;->decorated()Lorg/apache/commons/collections4/BidiMap;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections4/BidiMap;->inverseBidiMap()Lorg/apache/commons/collections4/BidiMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;-><init>(Lorg/apache/commons/collections4/BidiMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;

    .line 133
    iput-object p0, v0, Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;

    .line 135
    .end local p0    # "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap<TK;TV;>;"
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;->inverse:Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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

    .line 107
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractBidiMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 108
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/MapIterator<",
            "TK;TV;>;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;->decorated()Lorg/apache/commons/collections4/BidiMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/BidiMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    .line 126
    .local v0, "it":Lorg/apache/commons/collections4/MapIterator;, "Lorg/apache/commons/collections4/MapIterator<TK;TV;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableMapIterator;->unmodifiableMapIterator(Lorg/apache/commons/collections4/MapIterator;)Lorg/apache/commons/collections4/MapIterator;

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

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap<TK;TV;>;"
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

    .line 91
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap<TK;TV;>;"
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

    .line 96
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap<TK;TV;>;"
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

    .line 120
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 39
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;->values()Ljava/util/Set;

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

    .line 113
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap;, "Lorg/apache/commons/collections4/bidimap/UnmodifiableBidiMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/bidimap/AbstractBidiMapDecorator;->values()Ljava/util/Set;

    move-result-object v0

    .line 114
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TV;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method
