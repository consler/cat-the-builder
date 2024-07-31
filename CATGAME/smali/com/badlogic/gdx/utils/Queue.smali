.class public Lcom/badlogic/gdx/utils/Queue;
.super Ljava/lang/Object;
.source "Queue.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/Queue$QueueIterable;,
        Lcom/badlogic/gdx/utils/Queue$QueueIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected head:I

.field private iterable:Lcom/badlogic/gdx/utils/Queue$QueueIterable;

.field public size:I

.field protected tail:I

.field protected values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/Queue;-><init>(I)V

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialSize"    # I

    .line 49
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 36
    iput v0, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 39
    iput v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 51
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public constructor <init>(ILjava/lang/Class;)V
    .locals 1
    .param p1, "initialSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 56
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 36
    iput v0, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 39
    iput v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 58
    invoke-static {p2, p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 59
    return-void
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 84
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    .line 85
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Queue;->resize(I)V

    .line 86
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 89
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 90
    .local v1, "head":I
    const/4 v2, -0x1

    add-int/2addr v1, v2

    .line 91
    if-ne v1, v2, :cond_1

    .line 92
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .line 94
    :cond_1
    aput-object p1, v0, v1

    .line 96
    iput v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 97
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 98
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 66
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    array-length v2, v0

    if-ne v1, v2, :cond_0

    .line 67
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/Queue;->resize(I)V

    .line 68
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 71
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    aput-object p1, v0, v1

    .line 72
    array-length v1, v0

    if-ne v2, v1, :cond_1

    .line 73
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 75
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 76
    return-void
.end method

.method public clear()V
    .locals 6

    .line 307
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-nez v0, :cond_0

    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 309
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 310
    .local v1, "head":I
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 312
    .local v2, "tail":I
    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 314
    move v4, v1

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 315
    aput-object v3, v0, v4

    .line 314
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_1
    goto :goto_3

    .line 319
    :cond_2
    move v4, v1

    .restart local v4    # "i":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 320
    aput-object v3, v0, v4

    .line 319
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 322
    .end local v4    # "i":I
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v2, :cond_4

    .line 323
    aput-object v3, v0, v4

    .line 322
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 326
    .end local v4    # "i":I
    :cond_4
    :goto_3
    const/4 v3, 0x0

    iput v3, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 327
    iput v3, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 328
    iput v3, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 329
    return-void
.end method

.method public ensureCapacity(I)V
    .locals 2
    .param p1, "additional"    # I

    .line 103
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    add-int/2addr v0, p1

    .line 104
    .local v0, "needed":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v1, v0, :cond_0

    .line 105
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Queue;->resize(I)V

    .line 107
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 14
    .param p1, "o"    # Ljava/lang/Object;

    .line 380
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 381
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    instance-of v2, p1, Lcom/badlogic/gdx/utils/Queue;

    if-nez v2, :cond_1

    goto :goto_2

    .line 383
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/badlogic/gdx/utils/Queue;

    .line 384
    .local v2, "q":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<*>;"
    iget v3, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 386
    .local v3, "size":I
    iget v4, v2, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-eq v4, v3, :cond_2

    return v1

    .line 388
    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 389
    .local v4, "myValues":[Ljava/lang/Object;, "[TT;"
    array-length v5, v4

    .line 390
    .local v5, "myBackingLength":I
    iget-object v6, v2, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 391
    .local v6, "itsValues":[Ljava/lang/Object;
    array-length v7, v6

    .line 393
    .local v7, "itsBackingLength":I
    iget v8, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 394
    .local v8, "myIndex":I
    iget v9, v2, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 395
    .local v9, "itsIndex":I
    const/4 v10, 0x0

    .local v10, "s":I
    :goto_0
    if-ge v10, v3, :cond_8

    .line 396
    aget-object v11, v4, v8

    .line 397
    .local v11, "myValue":Ljava/lang/Object;, "TT;"
    aget-object v12, v6, v9

    .line 399
    .local v12, "itsValue":Ljava/lang/Object;
    if-nez v11, :cond_3

    if-nez v12, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    :cond_4
    return v1

    .line 400
    :cond_5
    :goto_1
    add-int/lit8 v8, v8, 0x1

    .line 401
    add-int/lit8 v9, v9, 0x1

    .line 402
    if-ne v8, v5, :cond_6

    const/4 v8, 0x0

    .line 403
    :cond_6
    if-ne v9, v7, :cond_7

    const/4 v9, 0x0

    .line 395
    .end local v11    # "myValue":Ljava/lang/Object;, "TT;"
    .end local v12    # "itsValue":Ljava/lang/Object;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 405
    .end local v10    # "s":I
    :cond_8
    return v0

    .line 381
    .end local v2    # "q":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<*>;"
    .end local v3    # "size":I
    .end local v4    # "myValues":[Ljava/lang/Object;, "[TT;"
    .end local v5    # "myBackingLength":I
    .end local v6    # "itsValues":[Ljava/lang/Object;
    .end local v7    # "itsBackingLength":I
    .end local v8    # "myIndex":I
    .end local v9    # "itsIndex":I
    :cond_9
    :goto_2
    return v1
.end method

.method public equalsIdentity(Ljava/lang/Object;)Z
    .locals 13
    .param p1, "o"    # Ljava/lang/Object;

    .line 410
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 411
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    instance-of v2, p1, Lcom/badlogic/gdx/utils/Queue;

    if-nez v2, :cond_1

    goto :goto_1

    .line 413
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/badlogic/gdx/utils/Queue;

    .line 414
    .local v2, "q":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<*>;"
    iget v3, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 416
    .local v3, "size":I
    iget v4, v2, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-eq v4, v3, :cond_2

    return v1

    .line 418
    :cond_2
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 419
    .local v4, "myValues":[Ljava/lang/Object;, "[TT;"
    array-length v5, v4

    .line 420
    .local v5, "myBackingLength":I
    iget-object v6, v2, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 421
    .local v6, "itsValues":[Ljava/lang/Object;
    array-length v7, v6

    .line 423
    .local v7, "itsBackingLength":I
    iget v8, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 424
    .local v8, "myIndex":I
    iget v9, v2, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 425
    .local v9, "itsIndex":I
    const/4 v10, 0x0

    .local v10, "s":I
    :goto_0
    if-ge v10, v3, :cond_6

    .line 426
    aget-object v11, v4, v8

    aget-object v12, v6, v9

    if-eq v11, v12, :cond_3

    return v1

    .line 427
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 428
    add-int/lit8 v9, v9, 0x1

    .line 429
    if-ne v8, v5, :cond_4

    const/4 v8, 0x0

    .line 430
    :cond_4
    if-ne v9, v7, :cond_5

    const/4 v9, 0x0

    .line 425
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 432
    .end local v10    # "s":I
    :cond_6
    return v0

    .line 411
    .end local v2    # "q":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<*>;"
    .end local v3    # "size":I
    .end local v4    # "myValues":[Ljava/lang/Object;, "[TT;"
    .end local v5    # "myBackingLength":I
    .end local v6    # "itsValues":[Ljava/lang/Object;
    .end local v7    # "itsBackingLength":I
    .end local v8    # "myIndex":I
    .end local v9    # "itsIndex":I
    :cond_7
    :goto_1
    return v1
.end method

.method public first()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 264
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    aget-object v0, v0, v1

    return-object v0

    .line 266
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 293
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    if-ltz p1, :cond_2

    .line 294
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-ge p1, v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 297
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    add-int/2addr v1, p1

    .line 298
    .local v1, "i":I
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 299
    array-length v2, v0

    sub-int/2addr v1, v2

    .line 301
    :cond_0
    aget-object v2, v0, v1

    return-object v2

    .line 294
    .end local v0    # "values":[Ljava/lang/Object;, "[TT;"
    .end local v1    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 8

    .line 360
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 361
    .local v0, "size":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 362
    .local v1, "values":[Ljava/lang/Object;, "[TT;"
    array-length v2, v1

    .line 363
    .local v2, "backingLength":I
    iget v3, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 365
    .local v3, "index":I
    add-int/lit8 v4, v0, 0x1

    .line 366
    .local v4, "hash":I
    const/4 v5, 0x0

    .local v5, "s":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 367
    aget-object v6, v1, v3

    .line 369
    .local v6, "value":Ljava/lang/Object;, "TT;"
    mul-int/lit8 v4, v4, 0x1f

    .line 370
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    add-int/2addr v4, v7

    .line 372
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 373
    if-ne v3, v2, :cond_1

    const/4 v3, 0x0

    .line 366
    .end local v6    # "value":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 376
    .end local v5    # "s":I
    :cond_2
    return v4
.end method

.method public indexOf(Ljava/lang/Object;Z)I
    .locals 7
    .param p2, "identity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)I"
        }
    .end annotation

    .line 180
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 182
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .local v2, "head":I
    iget v3, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 183
    .local v3, "tail":I
    if-nez p2, :cond_8

    if-nez p1, :cond_1

    goto :goto_3

    .line 194
    :cond_1
    if-ge v2, v3, :cond_4

    .line 195
    move v4, v2

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 196
    aget-object v5, v0, v4

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sub-int v1, v4, v2

    return v1

    .line 195
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_3
    goto :goto_7

    .line 198
    :cond_4
    move v4, v2

    .restart local v4    # "i":I
    array-length v5, v0

    .local v5, "n":I
    :goto_1
    if-ge v4, v5, :cond_6

    .line 199
    aget-object v6, v0, v4

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    sub-int v1, v4, v2

    return v1

    .line 198
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 200
    .end local v4    # "i":I
    .end local v5    # "n":I
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v3, :cond_f

    .line 201
    aget-object v5, v0, v4

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    array-length v1, v0

    add-int/2addr v1, v4

    sub-int/2addr v1, v2

    return v1

    .line 200
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 184
    .end local v4    # "i":I
    :cond_8
    :goto_3
    if-ge v2, v3, :cond_b

    .line 185
    move v4, v2

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v3, :cond_a

    .line 186
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_9

    sub-int v1, v4, v2

    return v1

    .line 185
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .end local v4    # "i":I
    :cond_a
    goto :goto_7

    .line 188
    :cond_b
    move v4, v2

    .restart local v4    # "i":I
    array-length v5, v0

    .restart local v5    # "n":I
    :goto_5
    if-ge v4, v5, :cond_d

    .line 189
    aget-object v6, v0, v4

    if-ne v6, p1, :cond_c

    sub-int v1, v4, v2

    return v1

    .line 188
    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 190
    .end local v4    # "i":I
    .end local v5    # "n":I
    :cond_d
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    if-ge v4, v3, :cond_f

    .line 191
    aget-object v5, v0, v4

    if-ne v5, p1, :cond_e

    array-length v1, v0

    add-int/2addr v1, v4

    sub-int/2addr v1, v2

    return v1

    .line 190
    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 204
    .end local v4    # "i":I
    :cond_f
    :goto_7
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 256
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 336
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/Queue$QueueIterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/utils/Queue$QueueIterator;-><init>(Lcom/badlogic/gdx/utils/Queue;Z)V

    return-object v0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->iterable:Lcom/badlogic/gdx/utils/Queue$QueueIterable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/badlogic/gdx/utils/Queue$QueueIterable;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/Queue$QueueIterable;-><init>(Lcom/badlogic/gdx/utils/Queue;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->iterable:Lcom/badlogic/gdx/utils/Queue$QueueIterable;

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->iterable:Lcom/badlogic/gdx/utils/Queue$QueueIterable;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Queue$QueueIterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 276
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 281
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 282
    .local v1, "tail":I
    const/4 v2, -0x1

    add-int/2addr v1, v2

    .line 283
    if-ne v1, v2, :cond_0

    .line 284
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .line 286
    :cond_0
    aget-object v2, v0, v1

    return-object v2

    .line 278
    .end local v0    # "values":[Ljava/lang/Object;, "[TT;"
    .end local v1    # "tail":I
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 251
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 142
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    aget-object v2, v0, v1

    .line 143
    .local v2, "result":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 144
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 145
    array-length v3, v0

    if-ne v1, v3, :cond_0

    .line 146
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 148
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 150
    return-object v2

    .line 137
    .end local v0    # "values":[Ljava/lang/Object;, "[TT;"
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeIndex(I)Ljava/lang/Object;
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 219
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    if-ltz p1, :cond_4

    .line 220
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-ge p1, v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 223
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .local v1, "head":I
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 224
    .local v2, "tail":I
    add-int/2addr p1, v1

    .line 226
    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 227
    aget-object v4, v0, p1

    .line 228
    .local v4, "value":Ljava/lang/Object;, "TT;"
    add-int/lit8 v5, p1, 0x1

    sub-int v6, v2, p1

    invoke-static {v0, v5, v0, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 229
    aput-object v3, v0, v2

    .line 230
    iget v3, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    goto :goto_0

    .line 231
    .end local v4    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    array-length v4, v0

    if-lt p1, v4, :cond_1

    .line 232
    array-length v3, v0

    sub-int/2addr p1, v3

    .line 233
    aget-object v4, v0, p1

    .line 234
    .restart local v4    # "value":Ljava/lang/Object;, "TT;"
    add-int/lit8 v3, p1, 0x1

    sub-int v5, v2, p1

    invoke-static {v0, v3, v0, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    iget v3, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    goto :goto_0

    .line 237
    .end local v4    # "value":Ljava/lang/Object;, "TT;"
    :cond_1
    aget-object v4, v0, p1

    .line 238
    .restart local v4    # "value":Ljava/lang/Object;, "TT;"
    add-int/lit8 v5, v1, 0x1

    sub-int v6, p1, v1

    invoke-static {v0, v1, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 239
    aput-object v3, v0, v1

    .line 240
    iget v3, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 241
    array-length v5, v0

    if-ne v3, v5, :cond_2

    .line 242
    const/4 v3, 0x0

    iput v3, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 245
    :cond_2
    :goto_0
    iget v3, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 246
    return-object v4

    .line 220
    .end local v0    # "values":[Ljava/lang/Object;, "[TT;"
    .end local v1    # "head":I
    .end local v2    # "tail":I
    .end local v4    # "value":Ljava/lang/Object;, "TT;"
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be >= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index can\'t be < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 158
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 163
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 164
    .local v1, "tail":I
    const/4 v2, -0x1

    add-int/2addr v1, v2

    .line 165
    if-ne v1, v2, :cond_0

    .line 166
    array-length v2, v0

    add-int/lit8 v1, v2, -0x1

    .line 168
    :cond_0
    aget-object v2, v0, v1

    .line 169
    .local v2, "result":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 170
    iput v1, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 171
    iget v3, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    .line 173
    return-object v2

    .line 159
    .end local v0    # "values":[Ljava/lang/Object;, "[TT;"
    .end local v1    # "tail":I
    .end local v2    # "result":Ljava/lang/Object;, "TT;"
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Queue is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeValue(Ljava/lang/Object;Z)Z
    .locals 2
    .param p2, "identity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)Z"
        }
    .end annotation

    .line 211
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/Queue;->indexOf(Ljava/lang/Object;Z)I

    move-result v0

    .line 212
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 213
    :cond_0
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/Queue;->removeIndex(I)Ljava/lang/Object;

    .line 214
    const/4 v1, 0x1

    return v1
.end method

.method protected resize(I)V
    .locals 6
    .param p1, "newSize"    # I

    .line 111
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 112
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 113
    .local v1, "head":I
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 116
    .local v2, "tail":I
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/badlogic/gdx/utils/reflect/ArrayReflection;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 117
    .local v3, "newArray":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    .line 119
    sub-int v5, v2, v1

    invoke-static {v0, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 120
    :cond_0
    iget v5, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-lez v5, :cond_1

    .line 122
    array-length v5, v0

    sub-int/2addr v5, v1

    .line 123
    .local v5, "rest":I
    invoke-static {v0, v1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 124
    invoke-static {v0, v4, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    .end local v5    # "rest":I
    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 127
    iput v4, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 128
    iget v4, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    iput v4, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 129
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 342
    .local p0, "this":Lcom/badlogic/gdx/utils/Queue;, "Lcom/badlogic/gdx/utils/Queue<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/Queue;->size:I

    if-nez v0, :cond_0

    .line 343
    const-string v0, "[]"

    return-object v0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Queue;->values:[Ljava/lang/Object;

    .line 346
    .local v0, "values":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/Queue;->head:I

    .line 347
    .local v1, "head":I
    iget v2, p0, Lcom/badlogic/gdx/utils/Queue;->tail:I

    .line 349
    .local v2, "tail":I
    new-instance v3, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 350
    .local v3, "sb":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 351
    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 352
    add-int/lit8 v4, v1, 0x1

    array-length v5, v0

    rem-int/2addr v4, v5

    .local v4, "i":I
    :goto_0
    if-eq v4, v2, :cond_1

    .line 353
    const-string v5, ", "

    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v4

    invoke-virtual {v5, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 352
    add-int/lit8 v5, v4, 0x1

    array-length v6, v0

    rem-int v4, v5, v6

    goto :goto_0

    .line 355
    .end local v4    # "i":I
    :cond_1
    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 356
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
