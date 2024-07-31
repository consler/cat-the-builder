.class public Lorg/apache/commons/collections/FastArrayList;
.super Ljava/util/ArrayList;
.source "FastArrayList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/FastArrayList$ListIter;,
        Lorg/apache/commons/collections/FastArrayList$SubList;
    }
.end annotation


# instance fields
.field protected fast:Z

.field protected list:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 80
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 90
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1, "collection"    # Ljava/util/Collection;

    .line 105
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 108
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .line 185
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 188
    .local v0, "temp":Ljava/util/ArrayList;
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 189
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 190
    .end local v0    # "temp":Ljava/util/ArrayList;
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 192
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 193
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 194
    monitor-exit v0

    .line 197
    :goto_0
    return-void

    .line 194
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    .line 158
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 159
    monitor-enter p0

    .line 160
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 161
    .local v0, "temp":Ljava/util/ArrayList;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 162
    .local v1, "result":Z
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 163
    monitor-exit p0

    return v1

    .line 164
    .end local v0    # "temp":Ljava/util/ArrayList;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 167
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 168
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .param p1, "index"    # I
    .param p2, "collection"    # Ljava/util/Collection;

    .line 237
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 238
    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 240
    .local v0, "temp":Ljava/util/ArrayList;
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v1

    .line 241
    .local v1, "result":Z
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 242
    monitor-exit p0

    return v1

    .line 243
    .end local v0    # "temp":Ljava/util/ArrayList;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 246
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 247
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .param p1, "collection"    # Ljava/util/Collection;

    .line 209
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 210
    monitor-enter p0

    .line 211
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 212
    .local v0, "temp":Ljava/util/ArrayList;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v1

    .line 213
    .local v1, "result":Z
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 214
    monitor-exit p0

    return v1

    .line 215
    .end local v0    # "temp":Ljava/util/ArrayList;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 218
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 219
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public clear()V
    .locals 2

    .line 262
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 263
    monitor-enter p0

    .line 264
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 265
    .local v0, "temp":Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 266
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 267
    .end local v0    # "temp":Ljava/util/ArrayList;
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 269
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 270
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 271
    monitor-exit v0

    .line 274
    :goto_0
    return-void

    .line 271
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public clone()Ljava/lang/Object;
    .locals 4

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, "results":Lorg/apache/commons/collections/FastArrayList;
    iget-boolean v1, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v1, :cond_0

    .line 285
    new-instance v1, Lorg/apache/commons/collections/FastArrayList;

    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lorg/apache/commons/collections/FastArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    goto :goto_0

    .line 287
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 288
    :try_start_0
    new-instance v2, Lorg/apache/commons/collections/FastArrayList;

    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Lorg/apache/commons/collections/FastArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    .line 289
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList;->getFast()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/FastArrayList;->setFast(Z)V

    .line 292
    return-object v0

    .line 289
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    .line 304
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 307
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 308
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 309
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .param p1, "collection"    # Ljava/util/Collection;

    .line 323
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 326
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 328
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public ensureCapacity(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 343
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 344
    monitor-enter p0

    .line 345
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 346
    .local v0, "temp":Ljava/util/ArrayList;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 347
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 348
    .end local v0    # "temp":Ljava/util/ArrayList;
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 350
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 351
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 352
    monitor-exit v0

    .line 355
    :goto_0
    return-void

    .line 352
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 369
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 370
    return v0

    .line 371
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 372
    return v2

    .line 373
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 376
    .local v1, "lo":Ljava/util/List;
    iget-boolean v3, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v3, :cond_7

    .line 377
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 378
    .local v3, "li1":Ljava/util/ListIterator;
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 379
    .local v4, "li2":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 380
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 381
    .local v5, "o1":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 382
    .local v6, "o2":Ljava/lang/Object;
    if-nez v5, :cond_2

    if-nez v6, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 383
    :cond_3
    return v2

    .line 384
    .end local v5    # "o1":Ljava/lang/Object;
    .end local v6    # "o2":Ljava/lang/Object;
    :cond_4
    :goto_1
    goto :goto_0

    .line 385
    :cond_5
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    move v0, v2

    :goto_2
    return v0

    .line 387
    .end local v3    # "li1":Ljava/util/ListIterator;
    .end local v4    # "li2":Ljava/util/ListIterator;
    :cond_7
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v3

    .line 388
    :try_start_0
    iget-object v4, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 389
    .local v4, "li1":Ljava/util/ListIterator;
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v5

    .line 390
    .local v5, "li2":Ljava/util/ListIterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 391
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 392
    .local v6, "o1":Ljava/lang/Object;
    invoke-interface {v5}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 393
    .local v7, "o2":Ljava/lang/Object;
    if-nez v6, :cond_8

    if-nez v7, :cond_9

    goto :goto_4

    :cond_8
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 394
    :cond_9
    monitor-exit v3

    return v2

    .line 395
    .end local v6    # "o1":Ljava/lang/Object;
    .end local v7    # "o2":Ljava/lang/Object;
    :cond_a
    :goto_4
    goto :goto_3

    .line 396
    :cond_b
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_c

    invoke-interface {v5}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_c

    goto :goto_5

    :cond_c
    move v0, v2

    :goto_5
    monitor-exit v3

    return v0

    .line 397
    .end local v4    # "li1":Ljava/util/ListIterator;
    .end local v5    # "li2":Ljava/util/ListIterator;
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .line 412
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 415
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 416
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 417
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFast()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 430
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 431
    const/4 v0, 0x1

    .line 432
    .local v0, "hashCode":I
    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 433
    .local v2, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 434
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 435
    .local v3, "o":Ljava/lang/Object;
    mul-int/lit8 v4, v0, 0x1f

    if-nez v3, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v5

    :goto_1
    add-int v0, v4, v5

    .line 436
    .end local v3    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 437
    :cond_1
    return v0

    .line 439
    .end local v0    # "hashCode":I
    .end local v2    # "i":Ljava/util/Iterator;
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 440
    const/4 v2, 0x1

    .line 441
    .local v2, "hashCode":I
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 442
    .local v3, "i":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 443
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 444
    .local v4, "o":Ljava/lang/Object;
    mul-int/lit8 v5, v2, 0x1f

    if-nez v4, :cond_3

    move v6, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :goto_3
    add-int v2, v5, v6

    .line 445
    .end local v4    # "o":Ljava/lang/Object;
    goto :goto_2

    .line 446
    :cond_4
    monitor-exit v0

    return v2

    .line 447
    .end local v2    # "hashCode":I
    .end local v3    # "i":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    .line 462
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 465
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 466
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 467
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 478
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0

    .line 481
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 482
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 483
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 507
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 508
    new-instance v0, Lorg/apache/commons/collections/FastArrayList$ListIter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastArrayList$ListIter;-><init>(Lorg/apache/commons/collections/FastArrayList;I)V

    return-object v0

    .line 510
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    .line 524
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 527
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 528
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 529
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2

    .line 553
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 554
    new-instance v0, Lorg/apache/commons/collections/FastArrayList$ListIter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/FastArrayList$ListIter;-><init>(Lorg/apache/commons/collections/FastArrayList;I)V

    return-object v0

    .line 556
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I

    .line 582
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 583
    new-instance v0, Lorg/apache/commons/collections/FastArrayList$ListIter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/FastArrayList$ListIter;-><init>(Lorg/apache/commons/collections/FastArrayList;I)V

    return-object v0

    .line 585
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .line 600
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 601
    monitor-enter p0

    .line 602
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 603
    .local v0, "temp":Ljava/util/ArrayList;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 604
    .local v1, "result":Ljava/lang/Object;
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 605
    monitor-exit p0

    return-object v1

    .line 606
    .end local v0    # "temp":Ljava/util/ArrayList;
    .end local v1    # "result":Ljava/lang/Object;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 608
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 609
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 610
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    .line 624
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 625
    monitor-enter p0

    .line 626
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 627
    .local v0, "temp":Ljava/util/ArrayList;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 628
    .local v1, "result":Z
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 629
    monitor-exit p0

    return v1

    .line 630
    .end local v0    # "temp":Ljava/util/ArrayList;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 632
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 633
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 634
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .param p1, "collection"    # Ljava/util/Collection;

    .line 651
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 652
    monitor-enter p0

    .line 653
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 654
    .local v0, "temp":Ljava/util/ArrayList;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    .line 655
    .local v1, "result":Z
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 656
    monitor-exit p0

    return v1

    .line 657
    .end local v0    # "temp":Ljava/util/ArrayList;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 659
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 660
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 661
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .param p1, "collection"    # Ljava/util/Collection;

    .line 678
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 679
    monitor-enter p0

    .line 680
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 681
    .local v0, "temp":Ljava/util/ArrayList;
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    .line 682
    .local v1, "result":Z
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 683
    monitor-exit p0

    return v1

    .line 684
    .end local v0    # "temp":Ljava/util/ArrayList;
    .end local v1    # "result":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 686
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 687
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 688
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .line 709
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 712
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 713
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 714
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFast(Z)V
    .locals 0
    .param p1, "fast"    # Z

    .line 144
    iput-boolean p1, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    .line 145
    return-void
.end method

.method public size()I
    .locals 2

    .line 725
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 728
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 729
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 730
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 749
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 750
    new-instance v0, Lorg/apache/commons/collections/FastArrayList$SubList;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/FastArrayList$SubList;-><init>(Lorg/apache/commons/collections/FastArrayList;II)V

    return-object v0

    .line 752
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 763
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 766
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 767
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 768
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .param p1, "array"    # [Ljava/lang/Object;

    .line 788
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 791
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 792
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 793
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 804
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "FastArrayList["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 805
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 806
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 807
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public trimToSize()V
    .locals 2

    .line 819
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 820
    monitor-enter p0

    .line 821
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 822
    .local v0, "temp":Ljava/util/ArrayList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 823
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 824
    .end local v0    # "temp":Ljava/util/ArrayList;
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 826
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 827
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 828
    monitor-exit v0

    .line 831
    :goto_0
    return-void

    .line 828
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
