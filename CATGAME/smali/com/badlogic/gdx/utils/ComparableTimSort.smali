.class Lcom/badlogic/gdx/utils/ComparableTimSort;
.super Ljava/lang/Object;
.source "ComparableTimSort.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private a:[Ljava/lang/Object;

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;

.field private tmpCount:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x7

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    .line 71
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 72
    const/16 v0, 0x28

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    .line 73
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    .line 74
    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;)V
    .locals 4
    .param p1, "a"    # [Ljava/lang/Object;

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x7

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    .line 130
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 133
    array-length v0, p1

    .line 134
    .local v0, "len":I
    const/16 v1, 0x200

    if-ge v0, v1, :cond_0

    ushr-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x100

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    .line 135
    .local v1, "newArray":[Ljava/lang/Object;
    iput-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 144
    const/16 v2, 0x78

    if-ge v0, v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :cond_1
    const/16 v2, 0x606

    if-ge v0, v2, :cond_2

    const/16 v2, 0xa

    goto :goto_1

    :cond_2
    const v2, 0x1d16f

    if-ge v0, v2, :cond_3

    const/16 v2, 0x13

    goto :goto_1

    :cond_3
    const/16 v2, 0x28

    .line 145
    .local v2, "stackLen":I
    :goto_1
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    .line 146
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    .line 147
    return-void
.end method

.method private static binarySort([Ljava/lang/Object;III)V
    .locals 6
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "start"    # I

    .line 213
    if-ne p3, p1, :cond_0

    add-int/lit8 p3, p3, 0x1

    .line 214
    :cond_0
    :goto_0
    if-ge p3, p2, :cond_5

    .line 216
    aget-object v0, p0, p3

    check-cast v0, Ljava/lang/Comparable;

    .line 219
    .local v0, "pivot":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    move v1, p1

    .line 220
    .local v1, "left":I
    move v2, p3

    .line 225
    .local v2, "right":I
    :goto_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 226
    add-int v4, v1, v2

    ushr-int/lit8 v3, v4, 0x1

    .line 227
    .local v3, "mid":I
    aget-object v4, p0, v3

    invoke-interface {v0, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    .line 228
    move v2, v3

    goto :goto_2

    .line 230
    :cond_1
    add-int/lit8 v1, v3, 0x1

    .line 231
    .end local v3    # "mid":I
    :goto_2
    goto :goto_1

    .line 239
    :cond_2
    sub-int v4, p3, v1

    .line 241
    .local v4, "n":I
    if-eq v4, v3, :cond_4

    const/4 v3, 0x2

    if-eq v4, v3, :cond_3

    .line 248
    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, v1, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 243
    :cond_3
    add-int/lit8 v3, v1, 0x2

    add-int/lit8 v5, v1, 0x1

    aget-object v5, p0, v5

    aput-object v5, p0, v3

    .line 245
    :cond_4
    add-int/lit8 v3, v1, 0x1

    aget-object v5, p0, v1

    aput-object v5, p0, v3

    .line 246
    nop

    .line 250
    :goto_3
    aput-object v0, p0, v1

    .line 214
    .end local v0    # "pivot":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v4    # "n":I
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 252
    :cond_5
    return-void
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;II)I
    .locals 3
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .line 275
    add-int/lit8 v0, p1, 0x1

    .line 276
    .local v0, "runHi":I
    if-ne v0, p2, :cond_0

    const/4 v1, 0x1

    return v1

    .line 279
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "runHi":I
    .local v1, "runHi":I
    aget-object v0, p0, v0

    check-cast v0, Ljava/lang/Comparable;

    aget-object v2, p0, p1

    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    .line 280
    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v0, p0, v1

    check-cast v0, Ljava/lang/Comparable;

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    :cond_1
    invoke-static {p0, p1, v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->reverseRange([Ljava/lang/Object;II)V

    goto :goto_2

    .line 284
    :cond_2
    :goto_1
    if-ge v1, p2, :cond_3

    aget-object v0, p0, v1

    check-cast v0, Ljava/lang/Comparable;

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    invoke-interface {v0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 285
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 288
    :cond_3
    :goto_2
    sub-int v0, v1, p1

    return v0
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .locals 2
    .param p1, "minCapacity"    # I

    .line 771
    iget v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmpCount:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmpCount:I

    .line 772
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 774
    move v0, p1

    .line 775
    .local v0, "newSize":I
    shr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 776
    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 777
    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 778
    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 779
    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 780
    add-int/lit8 v0, v0, 0x1

    .line 782
    if-gez v0, :cond_0

    .line 783
    move v0, p1

    goto :goto_0

    .line 785
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    array-length v1, v1

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 787
    :goto_0
    new-array v1, v0, [Ljava/lang/Object;

    .line 788
    .local v1, "newArray":[Ljava/lang/Object;
    iput-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 790
    .end local v0    # "newSize":I
    .end local v1    # "newArray":[Ljava/lang/Object;
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    return-object v0
.end method

.method private static gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .locals 4
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    .line 435
    .local p0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 436
    .local v0, "lastOfs":I
    const/4 v1, 0x1

    .line 437
    .local v1, "ofs":I
    add-int v2, p2, p4

    aget-object v2, p1, v2

    invoke-interface {p0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_3

    .line 439
    sub-int v2, p3, p4

    .line 440
    .local v2, "maxOfs":I
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_1

    add-int v3, p2, p4

    add-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_1

    .line 441
    move v0, v1

    .line 442
    shl-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v3, 0x1

    .line 443
    if-gtz v1, :cond_0

    .line 444
    move v1, v2

    goto :goto_0

    .line 446
    :cond_1
    if-le v1, v2, :cond_2

    move v1, v2

    .line 449
    :cond_2
    add-int/2addr v0, p4

    .line 450
    add-int/2addr v1, p4

    .line 451
    .end local v2    # "maxOfs":I
    goto :goto_2

    .line 453
    :cond_3
    add-int/lit8 v2, p4, 0x1

    .line 454
    .restart local v2    # "maxOfs":I
    :cond_4
    :goto_1
    if-ge v1, v2, :cond_5

    add-int v3, p2, p4

    sub-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_5

    .line 455
    move v0, v1

    .line 456
    shl-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v3, 0x1

    .line 457
    if-gtz v1, :cond_4

    .line 458
    move v1, v2

    goto :goto_1

    .line 460
    :cond_5
    if-le v1, v2, :cond_6

    move v1, v2

    .line 463
    :cond_6
    move v3, v0

    .line 464
    .local v3, "tmp":I
    sub-int v0, p4, v1

    .line 465
    sub-int v1, p4, v3

    .line 473
    .end local v2    # "maxOfs":I
    .end local v3    # "tmp":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 474
    :goto_3
    if-ge v0, v1, :cond_8

    .line 475
    sub-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    .line 477
    .local v2, "m":I
    add-int v3, p2, v2

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_7

    .line 478
    add-int/lit8 v0, v2, 0x1

    goto :goto_4

    .line 480
    :cond_7
    move v1, v2

    .line 481
    .end local v2    # "m":I
    :goto_4
    goto :goto_3

    .line 483
    :cond_8
    return v1
.end method

.method private static gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I
    .locals 4
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "Ljava/lang/Object;",
            ">;[",
            "Ljava/lang/Object;",
            "III)I"
        }
    .end annotation

    .line 499
    .local p0, "key":Ljava/lang/Comparable;, "Ljava/lang/Comparable<Ljava/lang/Object;>;"
    const/4 v0, 0x1

    .line 500
    .local v0, "ofs":I
    const/4 v1, 0x0

    .line 501
    .local v1, "lastOfs":I
    add-int v2, p2, p4

    aget-object v2, p1, v2

    invoke-interface {p0, v2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    .line 503
    add-int/lit8 v2, p4, 0x1

    .line 504
    .local v2, "maxOfs":I
    :cond_0
    :goto_0
    if-ge v0, v2, :cond_1

    add-int v3, p2, p4

    sub-int/2addr v3, v0

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    .line 505
    move v1, v0

    .line 506
    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v3, 0x1

    .line 507
    if-gtz v0, :cond_0

    .line 508
    move v0, v2

    goto :goto_0

    .line 510
    :cond_1
    if-le v0, v2, :cond_2

    move v0, v2

    .line 513
    :cond_2
    move v3, v1

    .line 514
    .local v3, "tmp":I
    sub-int v1, p4, v0

    .line 515
    sub-int v0, p4, v3

    .line 516
    .end local v2    # "maxOfs":I
    .end local v3    # "tmp":I
    goto :goto_2

    .line 518
    :cond_3
    sub-int v2, p3, p4

    .line 519
    .restart local v2    # "maxOfs":I
    :cond_4
    :goto_1
    if-ge v0, v2, :cond_5

    add-int v3, p2, p4

    add-int/2addr v3, v0

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_5

    .line 520
    move v1, v0

    .line 521
    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v3, 0x1

    .line 522
    if-gtz v0, :cond_4

    .line 523
    move v0, v2

    goto :goto_1

    .line 525
    :cond_5
    if-le v0, v2, :cond_6

    move v0, v2

    .line 528
    :cond_6
    add-int/2addr v1, p4

    .line 529
    add-int/2addr v0, p4

    .line 537
    .end local v2    # "maxOfs":I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 538
    :goto_3
    if-ge v1, v0, :cond_8

    .line 539
    sub-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v1

    .line 541
    .local v2, "m":I
    add-int v3, p2, v2

    aget-object v3, p1, v3

    invoke-interface {p0, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_7

    .line 542
    move v0, v2

    goto :goto_4

    .line 544
    :cond_7
    add-int/lit8 v1, v2, 0x1

    .line 545
    .end local v2    # "m":I
    :goto_4
    goto :goto_3

    .line 547
    :cond_8
    return v0
.end method

.method private mergeAt(I)V
    .locals 8
    .param p1, "i"    # I

    .line 377
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    aget v1, v0, p1

    .line 378
    .local v1, "base1":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    aget v3, v2, p1

    .line 379
    .local v3, "len1":I
    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    .line 380
    .local v4, "base2":I
    add-int/lit8 v5, p1, 0x1

    aget v5, v2, v5

    .line 388
    .local v5, "len2":I
    add-int v6, v3, v5

    aput v6, v2, p1

    .line 389
    iget v6, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    add-int/lit8 v6, v6, -0x3

    if-ne p1, v6, :cond_0

    .line 390
    add-int/lit8 v6, p1, 0x1

    add-int/lit8 v7, p1, 0x2

    aget v7, v0, v7

    aput v7, v0, v6

    .line 391
    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v6, p1, 0x2

    aget v6, v2, v6

    aput v6, v2, v0

    .line 393
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    .line 399
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    aget-object v2, v0, v4

    check-cast v2, Ljava/lang/Comparable;

    const/4 v6, 0x0

    invoke-static {v2, v0, v1, v3, v6}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v0

    .line 401
    .local v0, "k":I
    add-int/2addr v1, v0

    .line 402
    sub-int/2addr v3, v0

    .line 403
    if-nez v3, :cond_1

    return-void

    .line 409
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    add-int v6, v1, v3

    add-int/lit8 v6, v6, -0x1

    aget-object v6, v2, v6

    check-cast v6, Ljava/lang/Comparable;

    add-int/lit8 v7, v5, -0x1

    invoke-static {v6, v2, v4, v5, v7}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v2

    .line 411
    .end local v5    # "len2":I
    .local v2, "len2":I
    if-nez v2, :cond_2

    return-void

    .line 414
    :cond_2
    if-gt v3, v2, :cond_3

    .line 415
    invoke-direct {p0, v1, v3, v4, v2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeLo(IIII)V

    goto :goto_0

    .line 417
    :cond_3
    invoke-direct {p0, v1, v3, v4, v2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeHi(IIII)V

    .line 418
    :goto_0
    return-void
.end method

.method private mergeCollapse()V
    .locals 5

    .line 345
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 346
    add-int/lit8 v0, v0, -0x2

    .line 347
    .local v0, "n":I
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    aget v3, v1, v0

    add-int/lit8 v4, v0, 0x1

    aget v4, v1, v4

    add-int/2addr v3, v4

    if-gt v2, v3, :cond_1

    .line 348
    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 349
    :cond_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeAt(I)V

    goto :goto_1

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    aget v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-gt v2, v1, :cond_2

    .line 351
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeAt(I)V

    .line 355
    .end local v0    # "n":I
    :goto_1
    goto :goto_0

    .line 356
    :cond_2
    return-void
.end method

.method private mergeForceCollapse()V
    .locals 4

    .line 360
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 361
    add-int/lit8 v0, v0, -0x2

    .line 362
    .local v0, "n":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 363
    :cond_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeAt(I)V

    .line 364
    .end local v0    # "n":I
    goto :goto_0

    .line 365
    :cond_1
    return-void
.end method

.method private mergeHi(IIII)V
    .locals 17
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .line 670
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    iget-object v4, v0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 671
    .local v4, "a":[Ljava/lang/Object;
    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v5

    .line 672
    .local v5, "tmp":[Ljava/lang/Object;
    const/4 v6, 0x0

    invoke-static {v4, v2, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 674
    add-int v7, v1, p2

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .line 675
    .local v7, "cursor1":I
    add-int/lit8 v9, v3, -0x1

    .line 676
    .local v9, "cursor2":I
    add-int v10, v2, v3

    sub-int/2addr v10, v8

    .line 679
    .local v10, "dest":I
    add-int/lit8 v11, v10, -0x1

    .end local v10    # "dest":I
    .local v11, "dest":I
    add-int/lit8 v12, v7, -0x1

    .end local v7    # "cursor1":I
    .local v12, "cursor1":I
    aget-object v7, v4, v7

    aput-object v7, v4, v10

    .line 680
    add-int/lit8 v7, p2, -0x1

    .end local p2    # "len1":I
    .local v7, "len1":I
    if-nez v7, :cond_0

    .line 681
    add-int/lit8 v8, v3, -0x1

    sub-int v8, v11, v8

    invoke-static {v5, v6, v4, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 682
    return-void

    .line 684
    :cond_0
    if-ne v3, v8, :cond_1

    .line 685
    sub-int/2addr v11, v7

    .line 686
    sub-int/2addr v12, v7

    .line 687
    add-int/lit8 v6, v12, 0x1

    add-int/lit8 v8, v11, 0x1

    invoke-static {v4, v6, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 688
    aget-object v6, v5, v9

    aput-object v6, v4, v11

    .line 689
    return-void

    .line 692
    :cond_1
    iget v10, v0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    .line 695
    .end local p4    # "len2":I
    .local v3, "len2":I
    .local v10, "minGallop":I
    :goto_0
    const/4 v13, 0x0

    .line 696
    .local v13, "count1":I
    const/4 v14, 0x0

    .line 703
    .local v14, "count2":I
    :goto_1
    aget-object v15, v5, v9

    check-cast v15, Ljava/lang/Comparable;

    aget-object v6, v4, v12

    invoke-interface {v15, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_3

    .line 704
    add-int/lit8 v6, v11, -0x1

    .end local v11    # "dest":I
    .local v6, "dest":I
    add-int/lit8 v15, v12, -0x1

    .end local v12    # "cursor1":I
    .local v15, "cursor1":I
    aget-object v12, v4, v12

    aput-object v12, v4, v11

    .line 705
    add-int/lit8 v13, v13, 0x1

    .line 706
    const/4 v11, 0x0

    .line 707
    .end local v14    # "count2":I
    .local v11, "count2":I
    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_2

    move v12, v15

    goto/16 :goto_4

    :cond_2
    move v14, v11

    move v12, v15

    move v11, v6

    goto :goto_2

    .line 709
    .end local v6    # "dest":I
    .end local v15    # "cursor1":I
    .local v11, "dest":I
    .restart local v12    # "cursor1":I
    .restart local v14    # "count2":I
    :cond_3
    add-int/lit8 v6, v11, -0x1

    .end local v11    # "dest":I
    .restart local v6    # "dest":I
    add-int/lit8 v15, v9, -0x1

    .end local v9    # "cursor2":I
    .local v15, "cursor2":I
    aget-object v9, v5, v9

    aput-object v9, v4, v11

    .line 710
    add-int/lit8 v14, v14, 0x1

    .line 711
    const/4 v9, 0x0

    .line 712
    .end local v13    # "count1":I
    .local v9, "count1":I
    add-int/lit8 v3, v3, -0x1

    if-ne v3, v8, :cond_4

    move v9, v15

    goto :goto_4

    :cond_4
    move v11, v6

    move v13, v9

    move v9, v15

    .line 714
    .end local v6    # "dest":I
    .end local v15    # "cursor2":I
    .local v9, "cursor2":I
    .restart local v11    # "dest":I
    .restart local v13    # "count1":I
    :goto_2
    or-int v6, v13, v14

    if-lt v6, v10, :cond_12

    .line 722
    :goto_3
    aget-object v6, v5, v9

    check-cast v6, Ljava/lang/Comparable;

    add-int/lit8 v15, v7, -0x1

    invoke-static {v6, v4, v1, v7, v15}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v6

    sub-int v13, v7, v6

    .line 723
    if-eqz v13, :cond_6

    .line 724
    sub-int v6, v11, v13

    .line 725
    .end local v11    # "dest":I
    .restart local v6    # "dest":I
    sub-int/2addr v12, v13

    .line 726
    sub-int/2addr v7, v13

    .line 727
    add-int/lit8 v11, v12, 0x1

    add-int/lit8 v15, v6, 0x1

    invoke-static {v4, v11, v4, v15, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 728
    if-nez v7, :cond_5

    goto :goto_4

    :cond_5
    move v11, v6

    .line 730
    .end local v6    # "dest":I
    .restart local v11    # "dest":I
    :cond_6
    add-int/lit8 v6, v11, -0x1

    .end local v11    # "dest":I
    .restart local v6    # "dest":I
    add-int/lit8 v15, v9, -0x1

    .end local v9    # "cursor2":I
    .restart local v15    # "cursor2":I
    aget-object v9, v5, v9

    aput-object v9, v4, v11

    .line 731
    add-int/lit8 v3, v3, -0x1

    if-ne v3, v8, :cond_7

    move v9, v15

    goto :goto_4

    .line 733
    :cond_7
    aget-object v9, v4, v12

    check-cast v9, Ljava/lang/Comparable;

    add-int/lit8 v11, v3, -0x1

    const/4 v8, 0x0

    invoke-static {v9, v5, v8, v3, v11}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v9

    sub-int v14, v3, v9

    .line 734
    if-eqz v14, :cond_8

    .line 735
    sub-int/2addr v6, v14

    .line 736
    sub-int v9, v15, v14

    .line 737
    .end local v15    # "cursor2":I
    .restart local v9    # "cursor2":I
    sub-int/2addr v3, v14

    .line 738
    add-int/lit8 v8, v9, 0x1

    add-int/lit8 v11, v6, 0x1

    invoke-static {v5, v8, v4, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 739
    const/4 v8, 0x1

    if-gt v3, v8, :cond_9

    goto :goto_4

    .line 734
    .end local v9    # "cursor2":I
    .restart local v15    # "cursor2":I
    :cond_8
    move v9, v15

    .line 741
    .end local v15    # "cursor2":I
    .restart local v9    # "cursor2":I
    :cond_9
    add-int/lit8 v11, v6, -0x1

    .end local v6    # "dest":I
    .restart local v11    # "dest":I
    add-int/lit8 v8, v12, -0x1

    .end local v12    # "cursor1":I
    .local v8, "cursor1":I
    aget-object v12, v4, v12

    aput-object v12, v4, v6

    .line 742
    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_d

    move v12, v8

    move v6, v11

    .line 748
    .end local v8    # "cursor1":I
    .end local v11    # "dest":I
    .end local v13    # "count1":I
    .end local v14    # "count2":I
    .restart local v6    # "dest":I
    .restart local v12    # "cursor1":I
    :goto_4
    const/4 v15, 0x1

    if-ge v10, v15, :cond_a

    move v8, v15

    goto :goto_5

    :cond_a
    move v8, v10

    :goto_5
    iput v8, v0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    .line 750
    if-ne v3, v15, :cond_b

    .line 752
    sub-int/2addr v6, v7

    .line 753
    sub-int/2addr v12, v7

    .line 754
    add-int/lit8 v8, v12, 0x1

    add-int/lit8 v11, v6, 0x1

    invoke-static {v4, v8, v4, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    aget-object v8, v5, v9

    aput-object v8, v4, v6

    goto :goto_6

    .line 756
    :cond_b
    if-eqz v3, :cond_c

    .line 761
    add-int/lit8 v8, v3, -0x1

    sub-int v8, v6, v8

    const/4 v11, 0x0

    invoke-static {v5, v11, v4, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 763
    :goto_6
    return-void

    .line 757
    :cond_c
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v11, "Comparison method violates its general contract!"

    invoke-direct {v8, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 743
    .end local v6    # "dest":I
    .end local v12    # "cursor1":I
    .restart local v8    # "cursor1":I
    .restart local v11    # "dest":I
    .restart local v13    # "count1":I
    .restart local v14    # "count2":I
    :cond_d
    const/4 v6, 0x0

    const/4 v15, 0x1

    add-int/lit8 v10, v10, -0x1

    .line 744
    const/4 v12, 0x7

    if-lt v13, v12, :cond_e

    move/from16 v16, v15

    goto :goto_7

    :cond_e
    move/from16 v16, v6

    :goto_7
    if-lt v14, v12, :cond_f

    move v12, v15

    goto :goto_8

    :cond_f
    move v12, v6

    :goto_8
    or-int v12, v16, v12

    if-nez v12, :cond_11

    .line 745
    if-gez v10, :cond_10

    const/4 v10, 0x0

    .line 746
    :cond_10
    nop

    .end local v13    # "count1":I
    .end local v14    # "count2":I
    add-int/lit8 v10, v10, 0x2

    .line 747
    move v12, v8

    move v8, v15

    goto/16 :goto_0

    .line 744
    .restart local v13    # "count1":I
    .restart local v14    # "count2":I
    :cond_11
    move v12, v8

    move v8, v15

    goto/16 :goto_3

    .line 714
    .end local v8    # "cursor1":I
    .restart local v12    # "cursor1":I
    :cond_12
    move v15, v8

    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method private mergeLo(IIII)V
    .locals 16
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .line 566
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 567
    .local v2, "a":[Ljava/lang/Object;
    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v3

    .line 568
    .local v3, "tmp":[Ljava/lang/Object;
    const/4 v4, 0x0

    move/from16 v5, p1

    invoke-static {v2, v5, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    const/4 v6, 0x0

    .line 571
    .local v6, "cursor1":I
    move/from16 v7, p3

    .line 572
    .local v7, "cursor2":I
    move/from16 v8, p1

    .line 575
    .local v8, "dest":I
    add-int/lit8 v9, v8, 0x1

    .end local v8    # "dest":I
    .local v9, "dest":I
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "cursor2":I
    .local v10, "cursor2":I
    aget-object v7, v2, v7

    aput-object v7, v2, v8

    .line 576
    add-int/lit8 v7, p4, -0x1

    .end local p4    # "len2":I
    .local v7, "len2":I
    if-nez v7, :cond_0

    .line 577
    invoke-static {v3, v6, v2, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    return-void

    .line 580
    :cond_0
    const/4 v8, 0x1

    if-ne v1, v8, :cond_1

    .line 581
    invoke-static {v2, v10, v2, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 582
    add-int v4, v9, v7

    aget-object v8, v3, v6

    aput-object v8, v2, v4

    .line 583
    return-void

    .line 586
    :cond_1
    iget v11, v0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    .line 589
    .end local p2    # "len1":I
    .local v1, "len1":I
    .local v11, "minGallop":I
    :goto_0
    const/4 v12, 0x0

    .line 590
    .local v12, "count1":I
    const/4 v13, 0x0

    .line 597
    .local v13, "count2":I
    :cond_2
    aget-object v14, v2, v10

    check-cast v14, Ljava/lang/Comparable;

    aget-object v15, v3, v6

    invoke-interface {v14, v15}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v14

    if-gez v14, :cond_4

    .line 598
    add-int/lit8 v14, v9, 0x1

    .end local v9    # "dest":I
    .local v14, "dest":I
    add-int/lit8 v15, v10, 0x1

    .end local v10    # "cursor2":I
    .local v15, "cursor2":I
    aget-object v10, v2, v10

    aput-object v10, v2, v9

    .line 599
    add-int/lit8 v13, v13, 0x1

    .line 600
    const/4 v9, 0x0

    .line 601
    .end local v12    # "count1":I
    .local v9, "count1":I
    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_3

    move v10, v15

    goto/16 :goto_3

    :cond_3
    move v12, v9

    move v9, v14

    move v10, v15

    goto :goto_1

    .line 603
    .end local v14    # "dest":I
    .end local v15    # "cursor2":I
    .local v9, "dest":I
    .restart local v10    # "cursor2":I
    .restart local v12    # "count1":I
    :cond_4
    add-int/lit8 v14, v9, 0x1

    .end local v9    # "dest":I
    .restart local v14    # "dest":I
    add-int/lit8 v15, v6, 0x1

    .end local v6    # "cursor1":I
    .local v15, "cursor1":I
    aget-object v6, v3, v6

    aput-object v6, v2, v9

    .line 604
    add-int/lit8 v12, v12, 0x1

    .line 605
    const/4 v6, 0x0

    .line 606
    .end local v13    # "count2":I
    .local v6, "count2":I
    add-int/lit8 v1, v1, -0x1

    if-ne v1, v8, :cond_5

    move v6, v15

    goto :goto_3

    :cond_5
    move v13, v6

    move v9, v14

    move v6, v15

    .line 608
    .end local v14    # "dest":I
    .end local v15    # "cursor1":I
    .local v6, "cursor1":I
    .restart local v9    # "dest":I
    .restart local v13    # "count2":I
    :goto_1
    or-int v14, v12, v13

    if-lt v14, v11, :cond_2

    .line 616
    :goto_2
    aget-object v14, v2, v10

    check-cast v14, Ljava/lang/Comparable;

    invoke-static {v14, v3, v6, v1, v4}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopRight(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v12

    .line 617
    if-eqz v12, :cond_7

    .line 618
    invoke-static {v3, v6, v2, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    add-int v14, v9, v12

    .line 620
    .end local v9    # "dest":I
    .restart local v14    # "dest":I
    add-int/2addr v6, v12

    .line 621
    sub-int/2addr v1, v12

    .line 622
    if-gt v1, v8, :cond_6

    .line 623
    goto :goto_3

    .line 622
    :cond_6
    move v9, v14

    .line 625
    .end local v14    # "dest":I
    .restart local v9    # "dest":I
    :cond_7
    add-int/lit8 v14, v9, 0x1

    .end local v9    # "dest":I
    .restart local v14    # "dest":I
    add-int/lit8 v15, v10, 0x1

    .end local v10    # "cursor2":I
    .local v15, "cursor2":I
    aget-object v10, v2, v10

    aput-object v10, v2, v9

    .line 626
    add-int/lit8 v7, v7, -0x1

    if-nez v7, :cond_8

    move v10, v15

    goto :goto_3

    .line 628
    :cond_8
    aget-object v9, v3, v6

    check-cast v9, Ljava/lang/Comparable;

    invoke-static {v9, v2, v15, v7, v4}, Lcom/badlogic/gdx/utils/ComparableTimSort;->gallopLeft(Ljava/lang/Comparable;[Ljava/lang/Object;III)I

    move-result v13

    .line 629
    if-eqz v13, :cond_9

    .line 630
    invoke-static {v2, v15, v2, v14, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 631
    add-int/2addr v14, v13

    .line 632
    add-int v10, v15, v13

    .line 633
    .end local v15    # "cursor2":I
    .restart local v10    # "cursor2":I
    sub-int/2addr v7, v13

    .line 634
    if-nez v7, :cond_a

    goto :goto_3

    .line 629
    .end local v10    # "cursor2":I
    .restart local v15    # "cursor2":I
    :cond_9
    move v10, v15

    .line 636
    .end local v15    # "cursor2":I
    .restart local v10    # "cursor2":I
    :cond_a
    add-int/lit8 v9, v14, 0x1

    .end local v14    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v15, v6, 0x1

    .end local v6    # "cursor1":I
    .local v15, "cursor1":I
    aget-object v6, v3, v6

    aput-object v6, v2, v14

    .line 637
    add-int/lit8 v1, v1, -0x1

    if-ne v1, v8, :cond_e

    move v14, v9

    move v6, v15

    .line 643
    .end local v9    # "dest":I
    .end local v12    # "count1":I
    .end local v13    # "count2":I
    .end local v15    # "cursor1":I
    .restart local v6    # "cursor1":I
    .restart local v14    # "dest":I
    :goto_3
    if-ge v11, v8, :cond_b

    move v4, v8

    goto :goto_4

    :cond_b
    move v4, v11

    :goto_4
    iput v4, v0, Lcom/badlogic/gdx/utils/ComparableTimSort;->minGallop:I

    .line 645
    if-ne v1, v8, :cond_c

    .line 647
    invoke-static {v2, v10, v2, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 648
    add-int v4, v14, v7

    aget-object v8, v3, v6

    aput-object v8, v2, v4

    goto :goto_5

    .line 649
    :cond_c
    if-eqz v1, :cond_d

    .line 654
    invoke-static {v3, v6, v2, v14, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 656
    :goto_5
    return-void

    .line 650
    :cond_d
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v8, "Comparison method violates its general contract!"

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 638
    .end local v6    # "cursor1":I
    .end local v14    # "dest":I
    .restart local v9    # "dest":I
    .restart local v12    # "count1":I
    .restart local v13    # "count2":I
    .restart local v15    # "cursor1":I
    :cond_e
    add-int/lit8 v11, v11, -0x1

    .line 639
    const/4 v6, 0x7

    if-lt v12, v6, :cond_f

    move v14, v8

    goto :goto_6

    :cond_f
    move v14, v4

    :goto_6
    if-lt v13, v6, :cond_10

    move v6, v8

    goto :goto_7

    :cond_10
    move v6, v4

    :goto_7
    or-int/2addr v6, v14

    if-nez v6, :cond_12

    .line 640
    if-gez v11, :cond_11

    const/4 v11, 0x0

    .line 641
    :cond_11
    nop

    .end local v12    # "count1":I
    .end local v13    # "count2":I
    add-int/lit8 v11, v11, 0x2

    .line 642
    move v6, v15

    goto/16 :goto_0

    .line 639
    .restart local v12    # "count1":I
    .restart local v13    # "count2":I
    :cond_12
    move v6, v15

    goto/16 :goto_2
.end method

.method private static minRunLength(I)I
    .locals 2
    .param p0, "n"    # I

    .line 320
    const/4 v0, 0x0

    .line 321
    .local v0, "r":I
    :goto_0
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    .line 322
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 323
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 325
    :cond_0
    add-int v1, p0, v0

    return v1
.end method

.method private pushRun(II)V
    .locals 2
    .param p1, "runBase"    # I
    .param p2, "runLen"    # I

    .line 333
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runBase:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    aput p1, v0, v1

    .line 334
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->runLen:[I

    aput p2, v0, v1

    .line 335
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    .line 336
    return-void
.end method

.method private static rangeCheck(III)V
    .locals 3
    .param p0, "arrayLen"    # I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 801
    if-gt p1, p2, :cond_2

    .line 802
    if-ltz p1, :cond_1

    .line 803
    if-gt p2, p0, :cond_0

    .line 804
    return-void

    .line 803
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 802
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 801
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static reverseRange([Ljava/lang/Object;II)V
    .locals 3
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .line 297
    add-int/lit8 p2, p2, -0x1

    .line 298
    :goto_0
    if-ge p1, p2, :cond_0

    .line 299
    aget-object v0, p0, p1

    .line 300
    .local v0, "t":Ljava/lang/Object;
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "lo":I
    .local v1, "lo":I
    aget-object v2, p0, p2

    aput-object v2, p0, p1

    .line 301
    add-int/lit8 p1, p2, -0x1

    .end local p2    # "hi":I
    .local p1, "hi":I
    aput-object v0, p0, p2

    .line 302
    .end local v0    # "t":Ljava/lang/Object;
    move p2, p1

    move p1, v1

    goto :goto_0

    .line 303
    .end local v1    # "lo":I
    .local p1, "lo":I
    .restart local p2    # "hi":I
    :cond_0
    return-void
.end method

.method static sort([Ljava/lang/Object;)V
    .locals 2
    .param p0, "a"    # [Ljava/lang/Object;

    .line 155
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->sort([Ljava/lang/Object;II)V

    .line 156
    return-void
.end method

.method static sort([Ljava/lang/Object;II)V
    .locals 7
    .param p0, "a"    # [Ljava/lang/Object;
    .param p1, "lo"    # I
    .param p2, "hi"    # I

    .line 159
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->rangeCheck(III)V

    .line 160
    sub-int v0, p2, p1

    .line 161
    .local v0, "nRemaining":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 164
    :cond_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    .line 165
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v1

    .line 166
    .local v1, "initRunLen":I
    add-int v2, p1, v1

    invoke-static {p0, p1, p2, v2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    .line 167
    return-void

    .line 172
    .end local v1    # "initRunLen":I
    :cond_1
    new-instance v1, Lcom/badlogic/gdx/utils/ComparableTimSort;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/utils/ComparableTimSort;-><init>([Ljava/lang/Object;)V

    .line 173
    .local v1, "ts":Lcom/badlogic/gdx/utils/ComparableTimSort;
    invoke-static {v0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->minRunLength(I)I

    move-result v2

    .line 176
    .local v2, "minRun":I
    :goto_0
    invoke-static {p0, p1, p2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v3

    .line 179
    .local v3, "runLen":I
    if-ge v3, v2, :cond_3

    .line 180
    if-gt v0, v2, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v2

    .line 181
    .local v4, "force":I
    :goto_1
    add-int v5, p1, v4

    add-int v6, p1, v3

    invoke-static {p0, p1, v5, v6}, Lcom/badlogic/gdx/utils/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    .line 182
    move v3, v4

    .line 186
    .end local v4    # "force":I
    :cond_3
    invoke-direct {v1, p1, v3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->pushRun(II)V

    .line 187
    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeCollapse()V

    .line 190
    add-int/2addr p1, v3

    .line 191
    sub-int/2addr v0, v3

    .line 192
    .end local v3    # "runLen":I
    if-nez v0, :cond_4

    .line 196
    invoke-direct {v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeForceCollapse()V

    .line 198
    return-void

    .line 192
    :cond_4
    goto :goto_0
.end method


# virtual methods
.method public doSort([Ljava/lang/Object;II)V
    .locals 6
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "lo"    # I
    .param p3, "hi"    # I

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->stackSize:I

    .line 78
    array-length v1, p1

    invoke-static {v1, p2, p3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->rangeCheck(III)V

    .line 79
    sub-int v1, p3, p2

    .line 80
    .local v1, "nRemaining":I
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    return-void

    .line 83
    :cond_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 84
    invoke-static {p1, p2, p3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v0

    .line 85
    .local v0, "initRunLen":I
    add-int v2, p2, v0

    invoke-static {p1, p2, p3, v2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    .line 86
    return-void

    .line 89
    .end local v0    # "initRunLen":I
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 90
    iput v0, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmpCount:I

    .line 94
    invoke-static {v1}, Lcom/badlogic/gdx/utils/ComparableTimSort;->minRunLength(I)I

    move-result v0

    .line 97
    .local v0, "minRun":I
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/badlogic/gdx/utils/ComparableTimSort;->countRunAndMakeAscending([Ljava/lang/Object;II)I

    move-result v2

    .line 100
    .local v2, "runLen":I
    if-ge v2, v0, :cond_3

    .line 101
    if-gt v1, v0, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    .line 102
    .local v3, "force":I
    :goto_1
    add-int v4, p2, v3

    add-int v5, p2, v2

    invoke-static {p1, p2, v4, v5}, Lcom/badlogic/gdx/utils/ComparableTimSort;->binarySort([Ljava/lang/Object;III)V

    .line 103
    move v2, v3

    .line 107
    .end local v3    # "force":I
    :cond_3
    invoke-direct {p0, p2, v2}, Lcom/badlogic/gdx/utils/ComparableTimSort;->pushRun(II)V

    .line 108
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeCollapse()V

    .line 111
    add-int/2addr p2, v2

    .line 112
    sub-int/2addr v1, v2

    .line 113
    .end local v2    # "runLen":I
    if-nez v1, :cond_5

    .line 117
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/ComparableTimSort;->mergeForceCollapse()V

    .line 120
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->a:[Ljava/lang/Object;

    .line 121
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmp:[Ljava/lang/Object;

    .line 122
    .local v3, "tmp":[Ljava/lang/Object;
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, p0, Lcom/badlogic/gdx/utils/ComparableTimSort;->tmpCount:I

    .local v5, "n":I
    :goto_2
    if-ge v4, v5, :cond_4

    .line 123
    aput-object v2, v3, v4

    .line 122
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 124
    .end local v4    # "i":I
    .end local v5    # "n":I
    :cond_4
    return-void

    .line 113
    .end local v3    # "tmp":[Ljava/lang/Object;
    :cond_5
    goto :goto_0
.end method
