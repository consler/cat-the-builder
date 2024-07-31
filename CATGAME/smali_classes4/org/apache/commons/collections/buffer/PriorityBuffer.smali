.class public Lorg/apache/commons/collections/buffer/PriorityBuffer;
.super Ljava/util/AbstractCollection;
.source "PriorityBuffer.java"

# interfaces
.implements Lorg/apache/commons/collections/Buffer;
.implements Ljava/io/Serializable;


# static fields
.field private static final DEFAULT_CAPACITY:I = 0xd

.field private static final serialVersionUID:J = 0x5fa2699a1d6fd278L


# instance fields
.field protected ascendingOrder:Z

.field protected comparator:Ljava/util/Comparator;

.field protected elements:[Ljava/lang/Object;

.field protected size:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 101
    const/16 v0, 0xd

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    .line 102
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .line 146
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    .line 147
    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "comparator"    # Ljava/util/Comparator;

    .line 159
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    .line 160
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "capacity"    # I
    .param p2, "ascendingOrder"    # Z

    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    .line 173
    return-void
.end method

.method public constructor <init>(IZLjava/util/Comparator;)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "ascendingOrder"    # Z
    .param p3, "comparator"    # Ljava/util/Comparator;

    .line 187
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 188
    if-lez p1, :cond_0

    .line 191
    iput-boolean p2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->ascendingOrder:Z

    .line 194
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    .line 195
    iput-object p3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->comparator:Ljava/util/Comparator;

    .line 196
    return-void

    .line 189
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid capacity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .param p1, "comparator"    # Ljava/util/Comparator;

    .line 112
    const/16 v0, 0xd

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "ascendingOrder"    # Z

    .line 123
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    .line 124
    return-void
.end method

.method public constructor <init>(ZLjava/util/Comparator;)V
    .locals 1
    .param p1, "ascendingOrder"    # Z
    .param p2, "comparator"    # Ljava/util/Comparator;

    .line 135
    const/16 v0, 0xd

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    .line 136
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 244
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->isAtCapacity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->grow()V

    .line 248
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->ascendingOrder:Z

    if-eqz v0, :cond_1

    .line 249
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateUpMinHeap(Ljava/lang/Object;)V

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateUpMaxHeap(Ljava/lang/Object;)V

    .line 253
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    .line 233
    return-void
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1

    .line 214
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method protected compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .line 447
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    .line 448
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 450
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .line 263
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    .line 264
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    invoke-direct {v0}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method protected grow()V
    .locals 4

    .line 458
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 459
    .local v1, "array":[Ljava/lang/Object;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    iput-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    .line 461
    return-void
.end method

.method public isAscendingOrder()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->ascendingOrder:Z

    return v0
.end method

.method protected isAtCapacity()Z
    .locals 3

    .line 304
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 470
    new-instance v0, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/buffer/PriorityBuffer$1;-><init>(Lorg/apache/commons/collections/buffer/PriorityBuffer;)V

    return-object v0
.end method

.method protected percolateDownMaxHeap(I)V
    .locals 5
    .param p1, "index"    # I

    .line 348
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 349
    .local v0, "element":Ljava/lang/Object;
    move v1, p1

    .line 351
    .local v1, "hole":I
    :goto_0
    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    if-gt v2, v3, :cond_2

    .line 352
    mul-int/lit8 v2, v1, 0x2

    .line 356
    .local v2, "child":I
    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    aget-object v4, v3, v4

    aget-object v3, v3, v2

    invoke-virtual {p0, v4, v3}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    .line 357
    add-int/lit8 v2, v2, 0x1

    .line 361
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3, v0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_1

    .line 362
    goto :goto_1

    .line 365
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v4, v3, v2

    aput-object v4, v3, v1

    .line 366
    move v1, v2

    .line 367
    .end local v2    # "child":I
    goto :goto_0

    .line 369
    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 370
    return-void
.end method

.method protected percolateDownMinHeap(I)V
    .locals 5
    .param p1, "index"    # I

    .line 316
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 317
    .local v0, "element":Ljava/lang/Object;
    move v1, p1

    .line 319
    .local v1, "hole":I
    :goto_0
    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    if-gt v2, v3, :cond_2

    .line 320
    mul-int/lit8 v2, v1, 0x2

    .line 324
    .local v2, "child":I
    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    aget-object v4, v3, v4

    aget-object v3, v3, v2

    invoke-virtual {p0, v4, v3}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    .line 325
    add-int/lit8 v2, v2, 0x1

    .line 329
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3, v0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 330
    goto :goto_1

    .line 333
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v4, v3, v2

    aput-object v4, v3, v1

    .line 334
    move v1, v2

    .line 335
    .end local v2    # "child":I
    goto :goto_0

    .line 337
    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 338
    return-void
.end method

.method protected percolateUpMaxHeap(I)V
    .locals 5
    .param p1, "index"    # I

    .line 412
    move v0, p1

    .line 413
    .local v0, "hole":I
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 415
    .local v1, "element":Ljava/lang/Object;
    :goto_0
    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    div-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    .line 418
    div-int/lit8 v2, v0, 0x2

    .line 419
    .local v2, "next":I
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v4, v3, v2

    aput-object v4, v3, v0

    .line 420
    move v0, v2

    .line 421
    .end local v2    # "next":I
    goto :goto_0

    .line 423
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 424
    return-void
.end method

.method protected percolateUpMaxHeap(Ljava/lang/Object;)V
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    .line 434
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    aput-object p1, v0, v1

    .line 435
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateUpMaxHeap(I)V

    .line 436
    return-void
.end method

.method protected percolateUpMinHeap(I)V
    .locals 5
    .param p1, "index"    # I

    .line 380
    move v0, p1

    .line 381
    .local v0, "hole":I
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 382
    .local v1, "element":Ljava/lang/Object;
    :goto_0
    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    div-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    .line 385
    div-int/lit8 v2, v0, 0x2

    .line 386
    .local v2, "next":I
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v4, v3, v2

    aput-object v4, v3, v0

    .line 387
    move v0, v2

    .line 388
    .end local v2    # "next":I
    goto :goto_0

    .line 389
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 390
    return-void
.end method

.method protected percolateUpMinHeap(Ljava/lang/Object;)V
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    .line 400
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    aput-object p1, v0, v1

    .line 401
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateUpMinHeap(I)V

    .line 402
    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 6

    .line 277
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    .line 278
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    aget-object v2, v1, v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 282
    add-int/lit8 v2, v3, 0x1

    const/4 v5, 0x0

    aput-object v5, v1, v2

    .line 284
    if-eqz v3, :cond_1

    .line 286
    iget-boolean v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->ascendingOrder:Z

    if-eqz v1, :cond_0

    .line 287
    invoke-virtual {p0, v4}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateDownMinHeap(I)V

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p0, v4}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateDownMaxHeap(I)V

    .line 293
    :cond_1
    :goto_0
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 224
    iget v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 529
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 531
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 533
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 534
    if-eq v1, v3, :cond_0

    .line 535
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 533
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 540
    .end local v1    # "i":I
    :cond_1
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
