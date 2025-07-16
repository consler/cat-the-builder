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

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    .line 89
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    .line 99
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    .line 110
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/SortedMap;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/util/TreeMap;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    .line 121
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

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

    :goto_0
    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .line 472
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 473
    new-instance v0, Lorg/apache/commons/collections/FastTreeMap;

    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/FastTreeMap;-><init>(Ljava/util/SortedMap;)V

    goto :goto_0

    .line 475
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 476
    :try_start_0
    new-instance v1, Lorg/apache/commons/collections/FastTreeMap;

    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-direct {v1, v2}, Lorg/apache/commons/collections/FastTreeMap;-><init>(Ljava/util/SortedMap;)V

    .line 477
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 479
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastTreeMap;->getFast()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/FastTreeMap;->setFast(Z)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 477
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
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

    :catchall_0
    move-exception v1

    .line 247
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .line 209
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 212
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 214
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    .line 226
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 229
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 231
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 386
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 389
    :cond_1
    check-cast p1, Ljava/util/Map;

    .line 392
    iget-boolean v1, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v1, :cond_7

    .line 393
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v3, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 396
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 397
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 398
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 399
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 400
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    .line 402
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_4
    return v2

    .line 406
    :cond_5
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_6
    return v0

    .line 413
    :cond_7
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v1

    .line 414
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    move-result v4

    if-eq v3, v4, :cond_8

    .line 415
    monitor-exit v1

    return v2

    .line 417
    :cond_8
    iget-object v3, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v3}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 418
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 419
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 420
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 421
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_b

    .line 423
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 424
    :cond_a
    monitor-exit v1

    return v2

    .line 427
    :cond_b
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 428
    monitor-exit v1

    return v2

    .line 432
    :cond_c
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    .line 433
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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

    :catchall_0
    move-exception v1

    .line 262
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 162
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 166
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 167
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 448
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1

    .line 453
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 455
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v2}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 456
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

    :catchall_0
    move-exception v1

    .line 460
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    .line 495
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1

    .line 498
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 499
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 500
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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

    :catchall_0
    move-exception v1

    .line 197
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

    :catchall_0
    move-exception v1

    .line 277
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

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
    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 302
    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 303
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 304
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 306
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 307
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p1

    .line 308
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2

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
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 323
    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 324
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

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

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

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
    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 344
    iput-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    .line 345
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 346
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 349
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p1

    .line 350
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public setFast(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

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

    :catchall_0
    move-exception v1

    .line 182
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    .line 513
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1

    .line 516
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 517
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 518
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2

    .line 530
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastTreeMap;->fast:Z

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1

    .line 533
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    monitor-enter v0

    .line 534
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastTreeMap;->map:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 535
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .line 562
    new-instance v0, Lorg/apache/commons/collections/FastTreeMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastTreeMap$Values;-><init>(Lorg/apache/commons/collections/FastTreeMap;Lorg/apache/commons/collections/FastTreeMap$1;)V

    return-object v0
.end method
