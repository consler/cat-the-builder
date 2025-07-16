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

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections4/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V

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

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x0

    .line 76
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections4/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V

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

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 88
    invoke-direct {p0, v0, p3}, Lorg/apache/commons/collections4/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V

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

    const/4 v0, 0x0

    .line 99
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V

    return-void
.end method

.method public constructor <init>([Ljava/util/Map;Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;)V
    .locals 1
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
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractIterableMap;-><init>()V

    .line 111
    iput-object p2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/util/Map;

    .line 112
    iput-object p2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    .line 113
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_0

    .line 114
    aget-object v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/CompositeMap;->addComposited(Ljava/util/Map;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addComposited(Ljava/util/Map;)V
    .locals 5
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

    monitor-enter p0

    if-eqz p1, :cond_3

    .line 138
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

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
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    if-eqz v2, :cond_0

    .line 144
    iget-object v3, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v3, v3, v0

    invoke-interface {v2, p0, v3, p1, v1}, Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;->resolveCollision(Lorg/apache/commons/collections4/map/CompositeMap;Ljava/util/Map;Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_1

    .line 142
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Key collision adding Map to CompositeMap"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 147
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [Ljava/util/Map;

    .line 148
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, -0x1

    .line 149
    aput-object p1, v2, v1

    .line 150
    iput-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 152
    :cond_3
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public clear()V
    .locals 2

    .line 183
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 184
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    .line 206
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 207
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3

    .line 232
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 233
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
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
    new-instance v0, Lorg/apache/commons/collections4/set/CompositeSet;

    invoke-direct {v0}, Lorg/apache/commons/collections4/set/CompositeSet;-><init>()V

    .line 260
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 261
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/set/CompositeSet;->addComposited(Ljava/util/Set;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 483
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 484
    check-cast p1, Ljava/util/Map;

    .line 485
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/CompositeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

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

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public hashCode()I
    .locals 3

    .line 497
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/CompositeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 498
    invoke-interface {v2}, Ljava/util/Map$Entry;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 3

    .line 307
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 308
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

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
    new-instance v0, Lorg/apache/commons/collections4/set/CompositeSet;

    invoke-direct {v0}, Lorg/apache/commons/collections4/set/CompositeSet;-><init>()V

    .line 333
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 334
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/set/CompositeSet;->addComposited(Ljava/util/Set;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

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
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    if-eqz v0, :cond_0

    .line 369
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    invoke-interface {v0, p0, v1, p1, p2}, Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;->put(Lorg/apache/commons/collections4/map/CompositeMap;[Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 367
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "No mutator specified"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
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
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    if-eqz v0, :cond_0

    .line 399
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;->putAll(Lorg/apache/commons/collections4/map/CompositeMap;[Ljava/util/Map;Ljava/util/Map;)V

    return-void

    .line 397
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No mutator specified"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

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

    aget-object v0, v1, v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized removeComposited(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 164
    iget-object v3, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v3, v3, v2

    invoke-interface {v3, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v0, -0x1

    .line 165
    new-array v3, v3, [Ljava/util/Map;

    .line 166
    iget-object v4, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    add-int/lit8 v4, v2, 0x1

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v4, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    iput-object v3, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_1
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

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
    iput-object p1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->mutator:Lorg/apache/commons/collections4/map/CompositeMap$MapMutator;

    return-void
.end method

.method public size()I
    .locals 3

    .line 447
    iget-object v0, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_0

    .line 448
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
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
    new-instance v0, Lorg/apache/commons/collections4/collection/CompositeCollection;

    invoke-direct {v0}, Lorg/apache/commons/collections4/collection/CompositeCollection;-><init>()V

    .line 469
    iget-object v1, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 470
    iget-object v2, p0, Lorg/apache/commons/collections4/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/collection/CompositeCollection;->addComposited(Ljava/util/Collection;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
