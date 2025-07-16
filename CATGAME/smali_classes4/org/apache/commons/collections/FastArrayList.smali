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

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2

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
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 189
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 190
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

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

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2

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
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 162
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 163
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 164
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 167
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    .line 168
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2

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
    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    .line 241
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 242
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 243
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 245
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 246
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    .line 247
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2

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
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    .line 213
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 214
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 215
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 217
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 218
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    .line 219
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
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
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 266
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 267
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

    .line 284
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 285
    new-instance v0, Lorg/apache/commons/collections/FastArrayList;

    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/FastArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 287
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 288
    :try_start_0
    new-instance v1, Lorg/apache/commons/collections/FastArrayList;

    iget-object v2, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Lorg/apache/commons/collections/FastArrayList;-><init>(Ljava/util/Collection;)V

    .line 289
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 291
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/FastArrayList;->getFast()Z

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/FastArrayList;->setFast(Z)V

    return-object v0

    :catchall_0
    move-exception v1

    .line 289
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2

    .line 304
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 307
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 308
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 309
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2

    .line 323
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 326
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 327
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 328
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ensureCapacity(I)V
    .locals 2

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
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 347
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 348
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

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

    :goto_0
    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 371
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 373
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 376
    iget-boolean v1, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v1, :cond_7

    .line 377
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 378
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 379
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 380
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 381
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_3

    if-nez v4, :cond_4

    goto :goto_0

    .line 382
    :cond_3
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_4
    return v2

    .line 385
    :cond_5
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move v0, v2

    :goto_1
    return v0

    .line 387
    :cond_7
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v1

    .line 388
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 389
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 390
    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 391
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 392
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-nez v4, :cond_9

    if-nez v5, :cond_a

    goto :goto_2

    .line 393
    :cond_9
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 394
    :cond_a
    monitor-exit v1

    return v2

    .line 396
    :cond_b
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_3

    :cond_c
    move v0, v2

    :goto_3
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    .line 397
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2

    .line 412
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 415
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 416
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 417
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getFast()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 430
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 432
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 433
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 434
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    mul-int/lit8 v2, v2, 0x1f

    if-nez v3, :cond_0

    move v3, v1

    goto :goto_1

    .line 435
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    return v2

    .line 439
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 441
    :try_start_0
    iget-object v3, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 442
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 443
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    mul-int/lit8 v2, v2, 0x1f

    if-nez v4, :cond_3

    move v4, v1

    goto :goto_3

    .line 444
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_3
    add-int/2addr v2, v4

    goto :goto_2

    .line 446
    :cond_4
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 447
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2

    .line 462
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 465
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 466
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 467
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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

    :catchall_0
    move-exception v1

    .line 483
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

    .line 524
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 527
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 528
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 529
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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

    move-result-object p1

    return-object p1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2

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
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 604
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 605
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 606
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 608
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 609
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_1
    move-exception p1

    .line 610
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

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
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 628
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 629
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 630
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 632
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 633
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    .line 634
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2

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
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    .line 655
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 656
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 657
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 659
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 660
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    .line 661
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2

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
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    .line 682
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 683
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 684
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 686
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 687
    :try_start_1
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    .line 688
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 709
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 712
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 713
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 714
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFast(Z)V
    .locals 0

    .line 144
    iput-boolean p1, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

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

    :catchall_0
    move-exception v1

    .line 730
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public subList(II)Ljava/util/List;
    .locals 1

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

    move-result-object p1

    return-object p1
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

    :catchall_0
    move-exception v1

    .line 768
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 788
    iget-boolean v0, p0, Lorg/apache/commons/collections/FastArrayList;->fast:Z

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 791
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    monitor-enter v0

    .line 792
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 793
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 804
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "FastArrayList["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 805
    iget-object v1, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]"

    .line 806
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 807
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 823
    iput-object v0, p0, Lorg/apache/commons/collections/FastArrayList;->list:Ljava/util/ArrayList;

    .line 824
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

    :goto_0
    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method
