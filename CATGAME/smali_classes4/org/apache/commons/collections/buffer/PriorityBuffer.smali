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

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0xd

    .line 101
    invoke-direct {p0, v2, v0, v1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 146
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 1

    const/4 v0, 0x1

    .line 159
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 172
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(IZLjava/util/Comparator;)V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    if-lez p1, :cond_0

    .line 191
    iput-boolean p2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->ascendingOrder:Z

    add-int/lit8 p1, p1, 0x1

    .line 194
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    .line 195
    iput-object p3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->comparator:Ljava/util/Comparator;

    return-void

    .line 189
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid capacity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2

    const/16 v0, 0xd

    const/4 v1, 0x1

    .line 112
    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/16 v0, 0xd

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/Comparator;)V
    .locals 1

    const/16 v0, 0xd

    .line 135
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;-><init>(IZLjava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1

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

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 231
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 232
    iput v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

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

    .line 447
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    .line 448
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 450
    :cond_0
    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
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

    const/4 v2, 0x0

    .line 459
    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 460
    iput-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

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

    .line 348
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :goto_0
    mul-int/lit8 v1, p1, 0x2

    .line 351
    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    if-gt v1, v2, :cond_2

    if-eq v1, v2, :cond_0

    .line 356
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    aget-object v4, v2, v3

    aget-object v2, v2, v1

    invoke-virtual {p0, v4, v2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    move v1, v3

    .line 361
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_1

    .line 365
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v3, v2, v1

    aput-object v3, v2, p1

    move p1, v1

    goto :goto_0

    .line 369
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-void
.end method

.method protected percolateDownMinHeap(I)V
    .locals 5

    .line 316
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :goto_0
    mul-int/lit8 v1, p1, 0x2

    .line 319
    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    if-gt v1, v2, :cond_2

    if-eq v1, v2, :cond_0

    .line 324
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    aget-object v4, v2, v3

    aget-object v2, v2, v1

    invoke-virtual {p0, v4, v2}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    move v1, v3

    .line 329
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2, v0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    goto :goto_1

    .line 333
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v3, v2, v1

    aput-object v3, v2, p1

    move p1, v1

    goto :goto_0

    .line 337
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-void
.end method

.method protected percolateUpMaxHeap(I)V
    .locals 4

    .line 413
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :goto_0
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 415
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    div-int/lit8 v2, p1, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    .line 419
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v3, v1, v2

    aput-object v3, v1, p1

    move p1, v2

    goto :goto_0

    .line 423
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-void
.end method

.method protected percolateUpMaxHeap(Ljava/lang/Object;)V
    .locals 2

    .line 434
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    aput-object p1, v0, v1

    .line 435
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateUpMaxHeap(I)V

    return-void
.end method

.method protected percolateUpMinHeap(I)V
    .locals 4

    .line 381
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :goto_0
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 382
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    div-int/lit8 v2, p1, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 386
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v3, v1, v2

    aput-object v3, v1, p1

    move p1, v2

    goto :goto_0

    .line 389
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-void
.end method

.method protected percolateUpMinHeap(Ljava/lang/Object;)V
    .locals 2

    .line 400
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    aput-object p1, v0, v1

    .line 401
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->percolateUpMinHeap(I)V

    return-void
.end method

.method public remove()Ljava/lang/Object;
    .locals 6

    .line 277
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/PriorityBuffer;->get()Ljava/lang/Object;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    aget-object v2, v1, v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    add-int/lit8 v2, v3, 0x1

    const/4 v5, 0x0

    .line 282
    aput-object v5, v1, v2

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

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    move v2, v1

    .line 533
    :goto_0
    iget v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->size:I

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    if-eq v2, v1, :cond_0

    const-string v3, ", "

    .line 535
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/PriorityBuffer;->elements:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, " ]"

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
