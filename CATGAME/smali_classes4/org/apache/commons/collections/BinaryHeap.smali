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

    .line 93
    const/16 v0, 0xd

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/BinaryHeap;-><init>(IZ)V

    .line 94
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .line 117
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/BinaryHeap;-><init>(IZ)V

    .line 118
    return-void
.end method

.method public constructor <init>(ILjava/util/Comparator;)V
    .locals 0
    .param p1, "capacity"    # I
    .param p2, "comparator"    # Ljava/util/Comparator;

    .line 130
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/BinaryHeap;-><init>(I)V

    .line 131
    iput-object p2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_comparator:Ljava/util/Comparator;

    .line 132
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "isMinHeap"    # Z

    .line 168
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 169
    if-lez p1, :cond_0

    .line 172
    iput-boolean p2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_isMinHeap:Z

    .line 175
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    .line 176
    return-void

    .line 170
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid capacity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IZLjava/util/Comparator;)V
    .locals 0
    .param p1, "capacity"    # I
    .param p2, "isMinHeap"    # Z
    .param p3, "comparator"    # Ljava/util/Comparator;

    .line 190
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/BinaryHeap;-><init>(IZ)V

    .line 191
    iput-object p3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_comparator:Ljava/util/Comparator;

    .line 192
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .param p1, "comparator"    # Ljava/util/Comparator;

    .line 104
    invoke-direct {p0}, Lorg/apache/commons/collections/BinaryHeap;-><init>()V

    .line 105
    iput-object p1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_comparator:Ljava/util/Comparator;

    .line 106
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "isMinHeap"    # Z

    .line 141
    const/16 v0, 0xd

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/collections/BinaryHeap;-><init>(IZ)V

    .line 142
    return-void
.end method

.method public constructor <init>(ZLjava/util/Comparator;)V
    .locals 0
    .param p1, "isMinHeap"    # Z
    .param p2, "comparator"    # Ljava/util/Comparator;

    .line 153
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/BinaryHeap;-><init>(Z)V

    .line 154
    iput-object p2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_comparator:Ljava/util/Comparator;

    .line 155
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/BinaryHeap;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/BinaryHeap;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 63
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/BinaryHeap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .line 420
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    .line 421
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 423
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {v0, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 524
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BinaryHeap;->insert(Ljava/lang/Object;)V

    .line 525
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    .line 199
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    .line 201
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .line 536
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/BinaryHeap;->peek()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    .local v0, "e":Ljava/util/NoSuchElementException;
    new-instance v1, Lorg/apache/commons/collections/BufferUnderflowException;

    invoke-direct {v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>()V

    throw v1
.end method

.method protected grow()V
    .locals 4

    .line 431
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 432
    .local v1, "elements":[Ljava/lang/Object;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    iput-object v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    .line 434
    return-void
.end method

.method public insert(Ljava/lang/Object;)V
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

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

    .line 239
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
    .param p1, "index"    # I

    .line 321
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 322
    .local v0, "element":Ljava/lang/Object;
    move v1, p1

    .line 324
    .local v1, "hole":I
    :goto_0
    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    if-gt v2, v3, :cond_2

    .line 325
    mul-int/lit8 v2, v1, 0x2

    .line 329
    .local v2, "child":I
    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    aget-object v4, v3, v4

    aget-object v3, v3, v2

    invoke-direct {p0, v4, v3}, Lorg/apache/commons/collections/BinaryHeap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    .line 330
    add-int/lit8 v2, v2, 0x1

    .line 334
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-direct {p0, v3, v0}, Lorg/apache/commons/collections/BinaryHeap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_1

    .line 335
    goto :goto_1

    .line 338
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v4, v3, v2

    aput-object v4, v3, v1

    .line 339
    move v1, v2

    .line 340
    .end local v2    # "child":I
    goto :goto_0

    .line 342
    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 343
    return-void
.end method

.method protected percolateDownMinHeap(I)V
    .locals 5
    .param p1, "index"    # I

    .line 289
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 290
    .local v0, "element":Ljava/lang/Object;
    move v1, p1

    .line 292
    .local v1, "hole":I
    :goto_0
    mul-int/lit8 v2, v1, 0x2

    iget v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    if-gt v2, v3, :cond_2

    .line 293
    mul-int/lit8 v2, v1, 0x2

    .line 297
    .local v2, "child":I
    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    aget-object v4, v3, v4

    aget-object v3, v3, v2

    invoke-direct {p0, v4, v3}, Lorg/apache/commons/collections/BinaryHeap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_0

    .line 298
    add-int/lit8 v2, v2, 0x1

    .line 302
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-direct {p0, v3, v0}, Lorg/apache/commons/collections/BinaryHeap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 303
    goto :goto_1

    .line 306
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v4, v3, v2

    aput-object v4, v3, v1

    .line 307
    move v1, v2

    .line 308
    .end local v2    # "child":I
    goto :goto_0

    .line 310
    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 311
    return-void
.end method

.method protected percolateUpMaxHeap(I)V
    .locals 5
    .param p1, "index"    # I

    .line 385
    move v0, p1

    .line 386
    .local v0, "hole":I
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 388
    .local v1, "element":Ljava/lang/Object;
    :goto_0
    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    div-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/collections/BinaryHeap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_0

    .line 391
    div-int/lit8 v2, v0, 0x2

    .line 392
    .local v2, "next":I
    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v4, v3, v2

    aput-object v4, v3, v0

    .line 393
    move v0, v2

    .line 394
    .end local v2    # "next":I
    goto :goto_0

    .line 396
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 397
    return-void
.end method

.method protected percolateUpMaxHeap(Ljava/lang/Object;)V
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    .line 407
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    aput-object p1, v0, v1

    .line 408
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/BinaryHeap;->percolateUpMaxHeap(I)V

    .line 409
    return-void
.end method

.method protected percolateUpMinHeap(I)V
    .locals 5
    .param p1, "index"    # I

    .line 353
    move v0, p1

    .line 354
    .local v0, "hole":I
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 355
    .local v1, "element":Ljava/lang/Object;
    :goto_0
    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    div-int/lit8 v3, v0, 0x2

    aget-object v2, v2, v3

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/collections/BinaryHeap;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    .line 358
    div-int/lit8 v2, v0, 0x2

    .line 359
    .local v2, "next":I
    iget-object v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v4, v3, v2

    aput-object v4, v3, v0

    .line 360
    move v0, v2

    .line 361
    .end local v2    # "next":I
    goto :goto_0

    .line 362
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aput-object v1, v2, v0

    .line 363
    return-void
.end method

.method protected percolateUpMinHeap(Ljava/lang/Object;)V
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    .line 373
    iget-object v0, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    aput-object p1, v0, v1

    .line 374
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/BinaryHeap;->percolateUpMinHeap(I)V

    .line 375
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
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    aget-object v2, v1, v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 267
    add-int/lit8 v2, v3, 0x1

    const/4 v5, 0x0

    aput-object v5, v1, v2

    .line 269
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

    .line 278
    :cond_1
    :goto_0
    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 2

    .line 550
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/BinaryHeap;->pop()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    .local v0, "e":Ljava/util/NoSuchElementException;
    new-instance v1, Lorg/apache/commons/collections/BufferUnderflowException;

    invoke-direct {v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>()V

    throw v1
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

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 445
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_size:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 448
    if-eq v1, v3, :cond_0

    .line 449
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 451
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/collections/BinaryHeap;->m_elements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 447
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 454
    .end local v1    # "i":I
    :cond_1
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 456
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
