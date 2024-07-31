.class public Lorg/apache/commons/collections4/map/CompositeMap;
.super Lorg/apache/commons/collections4/map/AbstractIterableMap;
.source "CompositeMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractIterableMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x549ca6b25f2a5542L


# instance fields
.field private composite:[Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 64
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    .local p1, "one":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "two":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    .local p1, "one":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "two":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p3, "mutator":Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;, "Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<TK;TV;>;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/collections4/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V

    .line 89
    return-void
.end method

.method public varargs constructor <init>([Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    .local p1, "composite":[Ljava/util/Map;, "[Ljava/util/Map<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V

    .line 100
    return-void
.end method

.method public constructor <init>([Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 110
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    .local p1, "composite":[Ljava/util/Map;, "[Ljava/util/Map<TK;TV;>;"
    .local p2, "mutator":Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;, "Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractIterableMap;-><init>()V

    .line 111
    iput-object p2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    .line 112
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    .line 113
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 114
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/map/CompositeMap;->addComposited(Ljava/util/Map;)V

    .line 113
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 116
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addComposited(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    monitor-enter p0

    .line 137
    if-eqz p1, :cond_3

    .line 138
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 139
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/collections4/CollectionUtils;->intersection(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    .line 140
    .local v1, "intersect":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    if-eqz v2, :cond_0

    .line 144
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    iget-object v3, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v3, v3, v0

    invoke-interface {v2, p0, v3, p1, v1}, Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;->resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap;Ljava/util/Map;Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_1

    .line 142
    .end local p0    # "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Key collision adding Map to CompositeMap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    .end local v1    # "intersect":Ljava/util/Collection;, "Ljava/util/Collection<TK;>;"
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 147
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/util/Map;

    .line 148
    .local v0, "temp":[Ljava/util/Map;, "[Ljava/util/Map<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 150
    iput-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 136
    .end local v0    # "temp":[Ljava/util/Map;, "[Ljava/util/Map<TK;TV;>;"
    .end local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 152
    .restart local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_3
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public clear()V
    .locals 2

    .line 183
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 184
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 183
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 186
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 206
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 207
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    return v1

    .line 206
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 211
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 232
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 233
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    return v1

    .line 232
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 237
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 259
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/set/CompositeSet;

    invoke-direct {v0}, Lorg/apache/commons/collections4/set/CompositeSet;-><init>()V

    .line 260
    .local v0, "entries":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 261
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/set/CompositeSet;->addComposited(Ljava/util/Set;)V

    .line 260
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 263
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 483
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 484
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 485
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/CompositeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 487
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 292
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 293
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 292
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 297
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 496
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 497
    .local v0, "code":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/CompositeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 498
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 499
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 500
    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 307
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 308
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 309
    const/4 v1, 0x0

    return v1

    .line 307
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 312
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 332
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/set/CompositeSet;

    invoke-direct {v0}, Lorg/apache/commons/collections4/set/CompositeSet;-><init>()V

    .line 333
    .local v0, "keys":Lorg/apache/commons/collections4/set/CompositeSet;, "Lorg/apache/commons/collections4/set/CompositeSet<TK;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 334
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/set/CompositeSet;->addComposited(Ljava/util/Set;)V

    .line 333
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 336
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 366
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    if-eqz v0, :cond_0

    .line 369
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    invoke-interface {v0, p0, v1, p1, p2}, Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;->put(Lorg/apache/commons/collections4/map/CompositeMap;[Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 367
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No mutator specified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 396
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    if-eqz v0, :cond_0

    .line 399
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;->putAll(Lorg/apache/commons/collections4/map/CompositeMap;[Ljava/util/Map;Ljava/util/Map;)V

    .line 400
    return-void

    .line 397
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No mutator specified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 429
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 430
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 429
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 434
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized removeComposited(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    .line 163
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 164
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [Ljava/util/Map;

    .line 166
    .local v2, "temp":[Ljava/util/Map;, "[Ljava/util/Map<TK;TV;>;"
    iget-object v3, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    iget-object v3, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    add-int/lit8 v4, v1, 0x1

    sub-int v5, v0, v1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iput-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-object p1

    .line 163
    .end local v2    # "temp":[Ljava/util/Map;, "[Ljava/util/Map<TK;TV;>;"
    .end local p0    # "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 161
    .end local v0    # "size":I
    .end local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMutator(Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    .local p1, "mutator":Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;, "Lorg/apache/commons/collections4/map/CompositeMap$MapMutator<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    .line 126
    return-void
.end method

.method public size()I
    .locals 3

    .line 446
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 447
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 448
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 447
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 450
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 468
    .local p0, "this":Lorg/apache/commons/collections4/map/CompositeMap;, "Lorg/apache/commons/collections4/map/CompositeMap<TK;TV;>;"
    new-instance v0, Lorg/apache/commons/collections4/collection/CompositeCollection;

    invoke-direct {v0}, Lorg/apache/commons/collections4/collection/CompositeCollection;-><init>()V

    .line 469
    .local v0, "values":Lorg/apache/commons/collections4/collection/CompositeCollection;, "Lorg/apache/commons/collections4/collection/CompositeCollection<TV;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 470
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/collection/CompositeCollection;->addComposited(Ljava/util/Collection;)V

    .line 469
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 472
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
