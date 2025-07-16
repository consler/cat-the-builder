.class public final Lorg/apache/commons/collections/BinaryHeap;
.super Ljava/util/AbstractCollection;
.source "BinaryHeap.java"

# interfaces
.implements Lorg/apache/commons/collections/PriorityQueue;
.implements Lorg/apache/commons/collections/Buffer;


# static fields
.field private static final DEFAULT_CAPACITY:I = 0xd


# instance fields
.field m_comparator:Ljava/util/Comparator;

.field m_elements:[Ljava/lang/Object;

.field m_isMinHeap:Z

.field m_size:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xd

    const/4 v1, 0x1

    .line 93
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/BinaryHeap;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 117
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/BinaryHeap;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/BinaryHeap;-><init>(I)V

    .line 131
    iput-object p2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_comparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    if-lez p1, :cond_0

    .line 172
    iput-boolean p2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_isMinHeap:Z

    add-int/lit8 p1, p1, 0x1

    .line 175
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    return-void

    .line 170
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid capacity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(IZLjava/util/Comparator;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/BinaryHeap;-><init>(IZ)V

    .line 191
    iput-object p3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_comparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lorg/apache/commons/collections/BinaryHeap;-><init>()V

    .line 105
    iput-object p1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_comparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/16 v0, 0xd

    .line 141
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections/BinaryHeap;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(ZLjava/util/Comparator;)V
    .locals 0

    .line 153
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/BinaryHeap;-><init>(Z)V

    .line 154
    iput-object p2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_comparator:Ljava/util/Comparator;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/BinaryHeap;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/BinaryHeap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 420
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    .line 421
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    return p1

    .line 423
    :cond_0
    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 0

    .line 524
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BinaryHeap;->insert(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 200
    iput v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .line 536
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/BinaryHeap;->peek()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 538
    :catch_0
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    invoke-direct {v0}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method protected grow()V
    .locals 4

    .line 431
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 432
    array-length v3, v0

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    iput-object v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    return-void
.end method

.method public insert(Ljava/lang/Object;)V
    .locals 1

    .line 230
    invoke-virtual {p0}, Lorg/apache/commons/collections/BinaryHeap;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lorg/apache/commons/collections/BinaryHeap;->grow()V

    .line 234
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_isMinHeap:Z

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BinaryHeap;->percolateUpMinHeap(Ljava/lang/Object;)V

    goto :goto_0

    .line 237
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BinaryHeap;->percolateUpMaxHeap(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 210
    iget v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFull()Z
    .locals 3

    .line 221
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

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

    .line 466
    new-instance v0, Lorg/apache/commons/collections/BinaryHeap$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/BinaryHeap$1;-><init>(Lorg/apache/commons/collections/BinaryHeap;)V

    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Lorg/apache/commons/collections/BinaryHeap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    .line 249
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method protected percolateDownMaxHeap(I)V
    .locals 5

    .line 321
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :goto_0
    mul-int/lit8 v1, p1, 0x2

    .line 324
    iget v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    if-gt v1, v2, :cond_2

    if-eq v1, v2, :cond_0

    .line 329
    iget-object v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    aget-object v4, v2, v3

    aget-object v2, v2, v1

    invoke-direct {p0, v4, v2}, Lorg/apache/commons/collections/BinaryHeap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    move v1, v3

    .line 334
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-direct {p0, v2, v0}, Lorg/apache/commons/collections/BinaryHeap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_1

    .line 338
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v3, v2, v1

    aput-object v3, v2, p1

    move p1, v1

    goto :goto_0

    .line 342
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-void
.end method

.method protected percolateDownMinHeap(I)V
    .locals 5

    .line 289
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :goto_0
    mul-int/lit8 v1, p1, 0x2

    .line 292
    iget v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    if-gt v1, v2, :cond_2

    if-eq v1, v2, :cond_0

    .line 297
    iget-object v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    add-int/lit8 v3, v1, 0x1

    aget-object v4, v2, v3

    aget-object v2, v2, v1

    invoke-direct {p0, v4, v2}, Lorg/apache/commons/collections/BinaryHeap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    move v1, v3

    .line 302
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-direct {p0, v2, v0}, Lorg/apache/commons/collections/BinaryHeap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1

    goto :goto_1

    .line 306
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v3, v2, v1

    aput-object v3, v2, p1

    move p1, v1

    goto :goto_0

    .line 310
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-void
.end method

.method protected percolateUpMaxHeap(I)V
    .locals 4

    .line 386
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :goto_0
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 388
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    div-int/lit8 v2, p1, 0x2

    aget-object v1, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/BinaryHeap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    .line 392
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v3, v1, v2

    aput-object v3, v1, p1

    move p1, v2

    goto :goto_0

    .line 396
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-void
.end method

.method protected percolateUpMaxHeap(Ljava/lang/Object;)V
    .locals 2

    .line 407
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    aput-object p1, v0, v1

    .line 408
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/BinaryHeap;->percolateUpMaxHeap(I)V

    return-void
.end method

.method protected percolateUpMinHeap(I)V
    .locals 4

    .line 354
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    :goto_0
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    .line 355
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    div-int/lit8 v2, p1, 0x2

    aget-object v1, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/BinaryHeap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    .line 359
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v3, v1, v2

    aput-object v3, v1, p1

    move p1, v2

    goto :goto_0

    .line 362
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aput-object v0, v1, p1

    return-void
.end method

.method protected percolateUpMinHeap(Ljava/lang/Object;)V
    .locals 2

    .line 373
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    aput-object p1, v0, v1

    .line 374
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/BinaryHeap;->percolateUpMinHeap(I)V

    return-void
.end method

.method public pop()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lorg/apache/commons/collections/BinaryHeap;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    aget-object v2, v1, v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    add-int/lit8 v2, v3, 0x1

    const/4 v5, 0x0

    .line 267
    aput-object v5, v1, v2

    if-eqz v3, :cond_1

    .line 271
    iget-boolean v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_isMinHeap:Z

    if-eqz v1, :cond_0

    .line 272
    invoke-virtual {p0, v4}, Lorg/apache/commons/collections/BinaryHeap;->percolateDownMinHeap(I)V

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {p0, v4}, Lorg/apache/commons/collections/BinaryHeap;->percolateDownMaxHeap(I)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1

    .line 550
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/BinaryHeap;->pop()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 552
    :catch_0
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    invoke-direct {v0}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 562
    iget v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 443
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    move v2, v1

    .line 447
    :goto_0
    iget v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    if-eq v2, v1, :cond_0

    const-string v3, ", "

    .line 449
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, " ]"

    .line 454
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
