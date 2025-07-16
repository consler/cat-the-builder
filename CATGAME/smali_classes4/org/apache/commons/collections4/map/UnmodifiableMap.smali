.class public final Lorg/apache/commons/collections4/map/UnmodifiableMap;
.super Lorg/apache/commons/collections4/map/AbstractMapDecorator;
.source "UnmodifiableMap.java"

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
        "Lorg/apache/commons/collections4/map/AbstractMapDecorator<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/Unmodifiable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x25fbdc4e444af805L


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 109
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 110
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lorg/apache/commons/collections4/map/UnmodifiableMap;->map:Ljava/util/Map;

    return-void
.end method

.method public static unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 66
    instance-of v0, p0, Lorg/apache/commons/collections4/Unmodifiable;

    if-eqz v0, :cond_0

    return-object p0

    .line 71
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/map/UnmodifiableMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/UnmodifiableMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 96
    iget-object v0, p0, Lorg/apache/commons/collections4/map/UnmodifiableMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 116
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

    .line 146
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 147
    invoke-static {v0}, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;->unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

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

    .line 152
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 153
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
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

    .line 136
    iget-object v0, p0, Lorg/apache/commons/collections4/map/UnmodifiableMap;->map:Ljava/util/Map;

    instance-of v0, v0, Lorg/apache/commons/collections4/IterableMap;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/apache/commons/collections4/map/UnmodifiableMap;->map:Ljava/util/Map;

    check-cast v0, Lorg/apache/commons/collections4/IterableMap;

    invoke-interface {v0}, Lorg/apache/commons/collections4/IterableMap;->mapIterator()Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    .line 138
    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableMapIterator;->unmodifiableMapIterator(Lorg/apache/commons/collections4/MapIterator;)Lorg/apache/commons/collections4/MapIterator;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/UnmodifiableMap;->map:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections4/iterators/EntrySetMapIterator;-><init>(Ljava/util/Map;)V

    .line 141
    invoke-static {v0}, Lorg/apache/commons/collections4/iterators/UnmodifiableMapIterator;->unmodifiableMapIterator(Lorg/apache/commons/collections4/MapIterator;)Lorg/apache/commons/collections4/MapIterator;

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

    .line 121
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

    .line 126
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

    .line 131
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
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

    .line 158
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;->values()Ljava/util/Collection;

    move-result-object v0

    .line 159
    invoke-static {v0}, Lorg/apache/commons/collections4/collection/UnmodifiableCollection;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
