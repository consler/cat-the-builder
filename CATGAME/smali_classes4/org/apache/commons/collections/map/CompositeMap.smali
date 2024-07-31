.class public Lorg/apache/commons/collections/map/CompositeMap;
.super Ljava/lang/Object;
.source "CompositeMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/CompositeMap$MapMutator;
    }
.end annotation


# instance fields
.field private composite:[Ljava/util/Map;

.field private mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .param p1, "one"    # Ljava/util/Map;
    .param p2, "two"    # Ljava/util/Map;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V
    .locals 2
    .param p1, "one"    # Ljava/util/Map;
    .param p2, "two"    # Ljava/util/Map;
    .param p3, "mutator"    # Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-direct {p0, v0, p3}, Lorg/apache/commons/collections/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V

    .line 81
    return-void
.end method

.method public constructor <init>([Ljava/util/Map;)V
    .locals 1
    .param p1, "composite"    # [Ljava/util/Map;

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/map/CompositeMap;-><init>([Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V

    .line 92
    return-void
.end method

.method public constructor <init>([Ljava/util/Map;Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V
    .locals 2
    .param p1, "composite"    # [Ljava/util/Map;
    .param p2, "mutator"    # Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    .line 103
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    .line 104
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 105
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/map/CompositeMap;->addComposited(Ljava/util/Map;)V

    .line 104
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 107
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addComposited(Ljava/util/Map;)V
    .locals 4
    .param p1, "map"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 127
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 128
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/collections/CollectionUtils;->intersection(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    .line 129
    .local v1, "intersect":Ljava/util/Collection;
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    iget-object v3, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v3, v3, v0

    invoke-interface {v2, p0, v3, p1, v1}, Lorg/apache/commons/collections/map/CompositeMap$MapMutator;->resolveCollision(Lorg/apache/commons/collections/map/CompositeMap;Ljava/util/Map;Ljava/util/Map;Ljava/util/Collection;)V

    goto :goto_1

    .line 131
    .end local p0    # "this":Lorg/apache/commons/collections/map/CompositeMap;
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Key collision adding Map to CompositeMap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 127
    .end local v1    # "intersect":Ljava/util/Collection;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 138
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/util/Map;

    .line 139
    .local v0, "temp":[Ljava/util/Map;
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    .line 141
    iput-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 126
    .end local v0    # "temp":[Ljava/util/Map;
    .end local p1    # "map":Ljava/util/Map;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clear()V
    .locals 2

    .line 171
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 172
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 171
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 174
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 194
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 195
    return v1

    .line 193
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 198
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 218
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 219
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    return v1

    .line 218
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 223
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 3

    .line 244
    new-instance v0, Lorg/apache/commons/collections/set/CompositeSet;

    invoke-direct {v0}, Lorg/apache/commons/collections/set/CompositeSet;-><init>()V

    .line 245
    .local v0, "entries":Lorg/apache/commons/collections/set/CompositeSet;
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 246
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/set/CompositeSet;->addComposited(Ljava/util/Collection;)V

    .line 245
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 248
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 459
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 460
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    .line 461
    .local v0, "map":Ljava/util/Map;
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/CompositeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 463
    .end local v0    # "map":Ljava/util/Map;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 277
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 276
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 281
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 470
    const/4 v0, 0x0

    .line 471
    .local v0, "code":I
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/CompositeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 474
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .line 290
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 291
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 292
    const/4 v1, 0x0

    return v1

    .line 290
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 295
    .end local v0    # "i":I
    :cond_1
    return v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 3

    .line 314
    new-instance v0, Lorg/apache/commons/collections/set/CompositeSet;

    invoke-direct {v0}, Lorg/apache/commons/collections/set/CompositeSet;-><init>()V

    .line 315
    .local v0, "keys":Lorg/apache/commons/collections/set/CompositeSet;
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 316
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/set/CompositeSet;->addComposited(Ljava/util/Collection;)V

    .line 315
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 318
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 347
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    if-eqz v0, :cond_0

    .line 350
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    invoke-interface {v0, p0, v1, p1, p2}, Lorg/apache/commons/collections/map/CompositeMap$MapMutator;->put(Lorg/apache/commons/collections/map/CompositeMap;[Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 348
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No mutator specified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .param p1, "map"    # Ljava/util/Map;

    .line 376
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    if-eqz v0, :cond_0

    .line 379
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    invoke-interface {v0, p0, v1, p1}, Lorg/apache/commons/collections/map/CompositeMap$MapMutator;->putAll(Lorg/apache/commons/collections/map/CompositeMap;[Ljava/util/Map;Ljava/util/Map;)V

    .line 380
    return-void

    .line 377
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No mutator specified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 408
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 409
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 410
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 408
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 413
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized removeComposited(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .param p1, "map"    # Ljava/util/Map;

    monitor-enter p0

    .line 151
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v0, v0

    .line 152
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 153
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    add-int/lit8 v2, v0, -0x1

    new-array v2, v2, [Ljava/util/Map;

    .line 155
    .local v2, "temp":[Ljava/util/Map;
    iget-object v3, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    iget-object v3, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    add-int/lit8 v4, v1, 0x1

    sub-int v5, v0, v1

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 157
    iput-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    monitor-exit p0

    return-object p1

    .line 152
    .end local v2    # "temp":[Ljava/util/Map;
    .end local p0    # "this":Lorg/apache/commons/collections/map/CompositeMap;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 150
    .end local v0    # "size":I
    .end local p1    # "map":Ljava/util/Map;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMutator(Lorg/apache/commons/collections/map/CompositeMap$MapMutator;)V
    .locals 0
    .param p1, "mutator"    # Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    .line 116
    iput-object p1, p0, Lorg/apache/commons/collections/map/CompositeMap;->mutator:Lorg/apache/commons/collections/map/CompositeMap$MapMutator;

    .line 117
    return-void
.end method

.method public size()I
    .locals 3

    .line 424
    const/4 v0, 0x0

    .line 425
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 426
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 425
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 428
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 3

    .line 445
    new-instance v0, Lorg/apache/commons/collections/collection/CompositeCollection;

    invoke-direct {v0}, Lorg/apache/commons/collections/collection/CompositeCollection;-><init>()V

    .line 446
    .local v0, "keys":Lorg/apache/commons/collections/collection/CompositeCollection;
    iget-object v1, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 447
    iget-object v2, p0, Lorg/apache/commons/collections/map/CompositeMap;->composite:[Ljava/util/Map;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/collection/CompositeCollection;->addComposited(Ljava/util/Collection;)V

    .line 446
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 449
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
