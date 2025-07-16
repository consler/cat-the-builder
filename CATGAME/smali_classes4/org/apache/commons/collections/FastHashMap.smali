.class public Lorg/apache/commons/collections/FastHashMap;
.super Ljava/util/HashMap;
.source "FastHashMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/FastHashMap$EntrySet;,
        Lorg/apache/commons/collections/FastHashMap$Values;,
        Lorg/apache/commons/collections/FastHashMap$KeySet;,
        Lorg/apache/commons/collections/FastHashMap$CollectionView;
    }
.end annotation


# instance fields
.field protected fast:Z

.field protected map:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 307
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 308
    monitor-enter p0

    .line 309
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 310
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 312
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 313
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 314
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

    .line 421
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 422
    new-instance v0, Lorg/apache/commons/collections/FastHashMap;

    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/FastHashMap;-><init>(Ljava/util/Map;)V

    goto :goto_0

    .line 424
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 425
    :try_start_0
    new-instance v1, Lorg/apache/commons/collections/FastHashMap;

    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Lorg/apache/commons/collections/FastHashMap;-><init>(Ljava/util/Map;)V

    .line 426
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 428
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastHashMap;->getFast()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/FastHashMap;->setFast(Z)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 426
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2

    .line 205
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 208
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2

    .line 222
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 225
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 226
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 227
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2

    .line 440
    new-instance v0, Lorg/apache/commons/collections/FastHashMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastHashMap$EntrySet;-><init>(Lorg/apache/commons/collections/FastHashMap;Lorg/apache/commons/collections/FastHashMap$1;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 334
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 337
    :cond_1
    check-cast p1, Ljava/util/Map;

    .line 340
    iget-boolean v1, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v1, :cond_7

    .line 341
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v3, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 344
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 345
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 346
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 347
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 348
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    .line 350
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_4
    return v2

    .line 354
    :cond_5
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_6
    return v0

    .line 362
    :cond_7
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v1

    .line 363
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eq v3, v4, :cond_8

    .line 364
    monitor-exit v1

    return v2

    .line 366
    :cond_8
    iget-object v3, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 367
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 368
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 369
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 370
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_b

    .line 372
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_a

    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 373
    :cond_a
    monitor-exit v1

    return v2

    .line 376
    :cond_b
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 377
    monitor-exit v1

    return v2

    .line 381
    :cond_c
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    .line 382
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 158
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 163
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getFast()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 394
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 397
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 398
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1

    .line 402
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 404
    :try_start_0
    iget-object v2, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 405
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 406
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    .line 408
    :cond_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 409
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 188
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 193
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public keySet()Ljava/util/Set;
    .locals 2

    .line 447
    new-instance v0, Lorg/apache/commons/collections/FastHashMap$KeySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastHashMap$KeySet;-><init>(Lorg/apache/commons/collections/FastHashMap;Lorg/apache/commons/collections/FastHashMap$1;)V

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 247
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 248
    monitor-enter p0

    .line 249
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 250
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 251
    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 252
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 253
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 256
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p1

    .line 257
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2

    .line 268
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 269
    monitor-enter p0

    .line 270
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 271
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 272
    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 273
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 275
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 276
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 277
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

    .line 289
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 290
    monitor-enter p0

    .line 291
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 292
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 293
    iput-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    .line 294
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 295
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 297
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 298
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p1

    .line 299
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public setFast(Z)V
    .locals 0

    .line 139
    iput-boolean p1, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    return-void
.end method

.method public size()I
    .locals 2

    .line 173
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastHashMap;->fast:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastHashMap;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 178
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public values()Ljava/util/Collection;
    .locals 2

    .line 454
    new-instance v0, Lorg/apache/commons/collections/FastHashMap$Values;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastHashMap$Values;-><init>(Lorg/apache/commons/collections/FastHashMap;Lorg/apache/commons/collections/FastHashMap$1;)V

    return-object v0
.end method
