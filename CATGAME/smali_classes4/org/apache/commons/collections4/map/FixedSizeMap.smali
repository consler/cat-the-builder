.class public Lorg/apache/commons/collections4/map/FixedSizeMap;
.super Lorg/apache/commons/collections4/map/AbstractMapDecorator;
.source "FixedSizeMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/BoundedMap;
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
        "Lorg/apache/commons/collections4/BoundedMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x676702d1af0ed174L


# direct methods
.method protected constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lorg/apache/commons/collections4/map/FixedSizeMap;, "Lorg/apache/commons/collections4/map/FixedSizeMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/map/AbstractMapDecorator;-><init>(Ljava/util/Map;)V

    .line 90
    return-void
.end method

.method public static fixedSizeMap(Ljava/util/Map;)Lorg/apache/commons/collections4/map/FixedSizeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lorg/apache/commons/collections4/map/FixedSizeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 78
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/map/FixedSizeMap;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/map/FixedSizeMap;-><init>(Ljava/util/Map;)V

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

    .line 115
    .local p0, "this":Lorg/apache/commons/collections4/map/FixedSizeMap;, "Lorg/apache/commons/collections4/map/FixedSizeMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 116
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/FixedSizeMap;->map:Ljava/util/Map;

    .line 117
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

    .line 101
    .local p0, "this":Lorg/apache/commons/collections4/map/FixedSizeMap;, "Lorg/apache/commons/collections4/map/FixedSizeMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 102
    iget-object v0, p0, Lorg/apache/commons/collections4/map/FixedSizeMap;->map:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 103
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 140
    .local p0, "this":Lorg/apache/commons/collections4/map/FixedSizeMap;, "Lorg/apache/commons/collections4/map/FixedSizeMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Map is fixed size"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

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

    .line 150
    .local p0, "this":Lorg/apache/commons/collections4/map/FixedSizeMap;, "Lorg/apache/commons/collections4/map/FixedSizeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/FixedSizeMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 152
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public isFull()Z
    .locals 1

    .line 169
    .local p0, "this":Lorg/apache/commons/collections4/map/FixedSizeMap;, "Lorg/apache/commons/collections4/map/FixedSizeMap<TK;TV;>;"
    const/4 v0, 0x1

    return v0
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

    .line 157
    .local p0, "this":Lorg/apache/commons/collections4/map/FixedSizeMap;, "Lorg/apache/commons/collections4/map/FixedSizeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/FixedSizeMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 158
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public maxSize()I
    .locals 1

    .line 174
    .local p0, "this":Lorg/apache/commons/collections4/map/FixedSizeMap;, "Lorg/apache/commons/collections4/map/FixedSizeMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/FixedSizeMap;->size()I

    move-result v0

    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lorg/apache/commons/collections4/map/FixedSizeMap;, "Lorg/apache/commons/collections4/map/FixedSizeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/FixedSizeMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lorg/apache/commons/collections4/map/FixedSizeMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot put new key/value pair - Map is fixed size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 130
    .local p0, "this":Lorg/apache/commons/collections4/map/FixedSizeMap;, "Lorg/apache/commons/collections4/map/FixedSizeMap<TK;TV;>;"
    .local p1, "mapToCopy":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 131
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/map/FixedSizeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_0

    .line 132
    .restart local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot put new key/value pair - Map is fixed size"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/FixedSizeMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 136
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lorg/apache/commons/collections4/map/FixedSizeMap;, "Lorg/apache/commons/collections4/map/FixedSizeMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Map is fixed size"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

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

    .line 163
    .local p0, "this":Lorg/apache/commons/collections4/map/FixedSizeMap;, "Lorg/apache/commons/collections4/map/FixedSizeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/FixedSizeMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 164
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    invoke-static {v0}, Lorg/apache/commons/collections4/collection/UnmodifiableCollection;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method
