.class public final Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap;
.super Lorg/apache/commons/collections4/map/AbstractOrderedMapDecorator;
.source "UnmodifiableOrderedMap.java"

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
        "Lorg/apache/commons/collections4/map/AbstractOrderedMapDecorator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x70ea664defd625baL


# direct methods
.method private constructor <init>(Lorg/apache/commons/collections4/OrderedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/OrderedMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap<TK;TV;>;"
    .local p1, "map":Lorg/apache/commons/collections4/OrderedMap;, "Lorg/apache/commons/collections4/OrderedMap<+TK;+TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractOrderedMapDecorator;-><init>(Lorg/apache/commons/collections4/OrderedMap;)V

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
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 108
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap;->map:Ljava/util/Map;

    .line 109
    return-void
.end method

.method public static unmodifiableOrderedMap(Lorg/apache/commons/collections4/OrderedMap;)Lorg/apache/commons/collections4/OrderedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/collections4/OrderedMap<",
            "+TK;+TV;>;)",
            "Lorg/apache/commons/collections4/OrderedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 64
    .local p0, "map":Lorg/apache/commons/collections4/OrderedMap;, "Lorg/apache/commons/collections4/OrderedMap<+TK;+TV;>;"
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    .line 66
    move-object v0, p0

    .line 67
    .local v0, "tmpMap":Lorg/apache/commons/collections4/OrderedMap;, "Lorg/apache/commons/collections4/OrderedMap<TK;TV;>;"
    return-object v0

    .line 69
    .end local v0    # "tmpMap":Lorg/apache/commons/collections4/OrderedMap;, "Lorg/apache/commons/collections4/OrderedMap<TK;TV;>;"
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap;-><init>(Lorg/apache/commons/collections4/OrderedMap;)V

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
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 94
    iget-object v0, p0, Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 95
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 120
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap<TK;TV;>;"
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

    .line 140
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractOrderedMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 141
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
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

    .line 146
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractOrderedMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 147
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic mapIterator()Lorg/apache/commons/collections4/MapIterator;
    .locals 1

    .line 47
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

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

    .line 114
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap;->decorated()Lorg/apache/commons/collections4/OrderedMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections4/OrderedMap;->mapIterator()Lorg/apache/commons/collections4/OrderedMapIterator;

    move-result-object v0

    .line 115
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

    .line 125
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap<TK;TV;>;"
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

    .line 130
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap<TK;TV;>;"
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

    .line 135
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 152
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap;, "Lorg/apache/commons/collections4/map/UnmodifiableOrderedMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractOrderedMapDecorator;->values()Ljava/util/Collection;

    move-result-object v0

    .line 153
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/collection/UnmodifiableCollection;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method
