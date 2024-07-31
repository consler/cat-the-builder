.class public Lorg/apache/commons/collections/FastTreeMap;
.super Ljava/util/TreeMap;
.source "FastTreeMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/FastTreeMap$EntrySet;,
        Lorg/apache/commons/collections/FastTreeMap$Values;,
        Lorg/apache/commons/collections/FastTreeMap$KeySet;,
        Lorg/apache/commons/collections/FastTreeMap$CollectionView;
    }
.end annotation


# instance fields
.field protected fast:Z

.field protected map:Ljava/util/TreeMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    .line 89
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .param p1, "comparator"    # Ljava/util/Comparator;

    .line 98
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    .line 99
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1, "map"    # Ljava/util/Map;

    .line 109
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    .line 110
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 111
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedMap;)V
    .locals 1
    .param p1, "map"    # Ljava/util/SortedMap;

    .line 120
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    .line 121
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 122
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 358
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 359
    monitor-enter p0

    .line 360
    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 361
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 363
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 364
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    .line 365
    monitor-exit v0

    .line 367
    :goto_0
    return-void

    .line 365
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "results":Lorg/apache/commons/collections/FastTreeMap;
    iget-boolean v1, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v1, :cond_0

    .line 473
    new-instance v1, Lorg/apache/commons/collections/FastTreeMap;

    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-direct {v1, v2}, Lorg/apache/commons/collections/FastTreeMap;-><init>(Ljava/util/SortedMap;)V

    move-object v0, v1

    goto :goto_0

    .line 475
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 476
    :try_start_0
    new-instance v2, Lorg/apache/commons/collections/FastTreeMap;

    iget-object v3, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-direct {v2, v3}, Lorg/apache/commons/collections/FastTreeMap;-><init>(Ljava/util/SortedMap;)V

    move-object v0, v2

    .line 477
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastTreeMap;->getFast()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/FastTreeMap;->setFast(Z)V

    .line 480
    return-object v0

    .line 477
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 2

    .line 242
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 246
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 247
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 209
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 212
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 214
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 226
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 231
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .line 548
    new-instance v0, Lorg/apache/commons/collections/FastTreeMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastTreeMap$EntrySet;-><init>(Lorg/apache/commons/collections/FastTreeMap;Lorg/apache/commons/collections/FastTreeMap$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 384
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 385
    return v0

    .line 386
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 387
    return v2

    .line 389
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Map;

    .line 392
    .local v1, "mo":Ljava/util/Map;
    iget-boolean v3, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v3, :cond_7

    .line 393
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 394
    return v2

    .line 396
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 397
    .local v3, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 398
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 399
    .local v4, "e":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 400
    .local v5, "key":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 401
    .local v6, "value":Ljava/lang/Object;
    if-nez v6, :cond_4

    .line 402
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 403
    :cond_3
    return v2

    .line 406
    :cond_4
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 407
    return v2

    .line 410
    .end local v4    # "e":Ljava/util/Map$Entry;
    .end local v5    # "key":Ljava/lang/Object;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_5
    goto :goto_0

    .line 411
    :cond_6
    return v0

    .line 413
    .end local v3    # "i":Ljava/util/Iterator;
    :cond_7
    iget-object v3, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v3

    .line 414
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v5}, Ljava/util/TreeMap;->size()I

    move-result v5

    if-eq v4, v5, :cond_8

    .line 415
    monitor-exit v3

    return v2

    .line 417
    :cond_8
    iget-object v4, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 418
    .local v4, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 419
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 420
    .local v5, "e":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 421
    .local v6, "key":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 422
    .local v7, "value":Ljava/lang/Object;
    if-nez v7, :cond_a

    .line 423
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_9

    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 424
    :cond_9
    monitor-exit v3

    return v2

    .line 427
    :cond_a
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 428
    monitor-exit v3

    return v2

    .line 431
    .end local v5    # "e":Ljava/util/Map$Entry;
    .end local v6    # "key":Ljava/lang/Object;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_b
    goto :goto_1

    .line 432
    :cond_c
    monitor-exit v3

    return v0

    .line 433
    .end local v4    # "i":Ljava/util/Iterator;
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 2

    .line 257
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 260
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 261
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 262
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 162
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 167
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFast()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 445
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_1

    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, "h":I
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 448
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    .line 451
    :cond_0
    return v0

    .line 453
    .end local v0    # "h":I
    .end local v1    # "i":Ljava/util/Iterator;
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 454
    const/4 v1, 0x0

    .line 455
    .local v1, "h":I
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 456
    .local v2, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 457
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    .line 459
    :cond_2
    monitor-exit v0

    return v1

    .line 460
    .end local v1    # "h":I
    .end local v2    # "i":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 495
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0

    .line 498
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 499
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 500
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 192
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    return v0

    .line 195
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .line 555
    new-instance v0, Lorg/apache/commons/collections/FastTreeMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastTreeMap$KeySet;-><init>(Lorg/apache/commons/collections/FastTreeMap;Lorg/apache/commons/collections/FastTreeMap$1;)V

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 2

    .line 272
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 275
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 276
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 277
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 298
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 299
    monitor-enter p0

    .line 300
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    .line 301
    .local v0, "temp":Ljava/util/TreeMap;
    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 302
    .local v1, "result":Ljava/lang/Object;
    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 303
    monitor-exit p0

    return-object v1

    .line 304
    .end local v0    # "temp":Ljava/util/TreeMap;
    .end local v1    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 306
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 307
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 308
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .param p1, "in"    # Ljava/util/Map;

    .line 319
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 320
    monitor-enter p0

    .line 321
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    .line 322
    .local v0, "temp":Ljava/util/TreeMap;
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 323
    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 324
    .end local v0    # "temp":Ljava/util/TreeMap;
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 326
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 327
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 328
    monitor-exit v0

    .line 330
    :goto_0
    return-void

    .line 328
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 340
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 341
    monitor-enter p0

    .line 342
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeMap;

    .line 343
    .local v0, "temp":Ljava/util/TreeMap;
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 344
    .local v1, "result":Ljava/lang/Object;
    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 345
    monitor-exit p0

    return-object v1

    .line 346
    .end local v0    # "temp":Ljava/util/TreeMap;
    .end local v1    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 349
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 350
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public setFast(Z)V
    .locals 0
    .param p1, "fast"    # Z

    .line 143
    iput-boolean p1, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    .line 144
    return-void
.end method

.method public size()I
    .locals 2

    .line 177
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v0

    return v0

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 181
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .param p1, "fromKey"    # Ljava/lang/Object;
    .param p2, "toKey"    # Ljava/lang/Object;

    .line 513
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0

    .line 516
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 517
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 518
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 530
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0

    .line 533
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 534
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 535
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .line 562
    new-instance v0, Lorg/apache/commons/collections/FastTreeMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastTreeMap$Values;-><init>(Lorg/apache/commons/collections/FastTreeMap;Lorg/apache/commons/collections/FastTreeMap$1;)V

    return-object v0
.end method
