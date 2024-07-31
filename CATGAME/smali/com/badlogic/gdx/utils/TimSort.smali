.class Lcom/badlogic/gdx/utils/TimSort;
.super Ljava/lang/Object;
.source "TimSort.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final INITIAL_TMP_STORAGE_LENGTH:I = 0x100

.field private static final MIN_GALLOP:I = 0x7

.field private static final MIN_MERGE:I = 0x20


# instance fields
.field private a:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private minGallop:I

.field private final runBase:[I

.field private final runLen:[I

.field private stackSize:I

.field private tmp:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private tmpCount:I


# direct methods
.method constructor <init>()V
    .locals 2

    .line 90
    .local p0, "this":Lcom/badlogic/gdx/utils/TimSort;, "Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x7

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    .line 91
    const/16 v0, 0x100

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    .line 92
    const/16 v0, 0x28

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    .line 93
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    .line 94
    return-void
.end method

.method private constructor <init>([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 152
    .local p0, "this":Lcom/badlogic/gdx/utils/TimSort;, "Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x7

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    .line 153
    iput-object p1, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    .line 154
    iput-object p2, p0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    .line 157
    array-length v0, p1

    .line 158
    .local v0, "len":I
    const/16 v1, 0x200

    if-ge v0, v1, :cond_0

    ushr-int/lit8 v1, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x100

    :goto_0
    new-array v1, v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 159
    .local v1, "newArray":[Ljava/lang/Object;, "[TT;"
    iput-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    .line 168
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

    .line 169
    .local v2, "stackLen":I
    :goto_1
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    .line 170
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    .line 171
    return-void
.end method

.method private static binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V
    .locals 6
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .param p3, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 243
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p4, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-ne p3, p1, :cond_0

    add-int/lit8 p3, p3, 0x1

    .line 244
    :cond_0
    :goto_0
    if-ge p3, p2, :cond_5

    .line 245
    aget-object v0, p0, p3

    .line 248
    .local v0, "pivot":Ljava/lang/Object;, "TT;"
    move v1, p1

    .line 249
    .local v1, "left":I
    move v2, p3

    .line 254
    .local v2, "right":I
    :goto_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 255
    add-int v4, v1, v2

    ushr-int/lit8 v3, v4, 0x1

    .line 256
    .local v3, "mid":I
    aget-object v4, p0, v3

    invoke-interface {p4, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    .line 257
    move v2, v3

    goto :goto_2

    .line 259
    :cond_1
    add-int/lit8 v1, v3, 0x1

    .line 260
    .end local v3    # "mid":I
    :goto_2
    goto :goto_1

    .line 268
    :cond_2
    sub-int v4, p3, v1

    .line 270
    .local v4, "n":I
    if-eq v4, v3, :cond_4

    const/4 v3, 0x2

    if-eq v4, v3, :cond_3

    .line 277
    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, v1, p0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 272
    :cond_3
    add-int/lit8 v3, v1, 0x2

    add-int/lit8 v5, v1, 0x1

    aget-object v5, p0, v5

    aput-object v5, p0, v3

    .line 274
    :cond_4
    add-int/lit8 v3, v1, 0x1

    aget-object v5, p0, v1

    aput-object v5, p0, v3

    .line 275
    nop

    .line 279
    :goto_3
    aput-object v0, p0, v1

    .line 244
    .end local v0    # "pivot":Ljava/lang/Object;, "TT;"
    .end local v1    # "left":I
    .end local v2    # "right":I
    .end local v4    # "n":I
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 281
    :cond_5
    return-void
.end method

.method private static countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I
    .locals 3
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 304
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    add-int/lit8 v0, p1, 0x1

    .line 305
    .local v0, "runHi":I
    if-ne v0, p2, :cond_0

    const/4 v1, 0x1

    return v1

    .line 308
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "runHi":I
    .local v1, "runHi":I
    aget-object v0, p0, v0

    aget-object v2, p0, p1

    invoke-interface {p3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    .line 309
    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v0, p0, v1

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    invoke-interface {p3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 311
    :cond_1
    invoke-static {p0, p1, v1}, Lcom/badlogic/gdx/utils/TimSort;->reverseRange([Ljava/lang/Object;II)V

    goto :goto_2

    .line 313
    :cond_2
    :goto_1
    if-ge v1, p2, :cond_3

    aget-object v0, p0, v1

    add-int/lit8 v2, v1, -0x1

    aget-object v2, p0, v2

    invoke-interface {p3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 317
    :cond_3
    :goto_2
    sub-int v0, v1, p1

    return v0
.end method

.method private ensureCapacity(I)[Ljava/lang/Object;
    .locals 2
    .param p1, "minCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .line 805
    .local p0, "this":Lcom/badlogic/gdx/utils/TimSort;, "Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->tmpCount:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->tmpCount:I

    .line 806
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 808
    move v0, p1

    .line 809
    .local v0, "newSize":I
    shr-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    .line 810
    shr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    .line 811
    shr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    .line 812
    shr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    .line 813
    shr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    .line 814
    add-int/lit8 v0, v0, 0x1

    .line 816
    if-gez v0, :cond_0

    .line 817
    move v0, p1

    goto :goto_0

    .line 819
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    array-length v1, v1

    ushr-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 821
    :goto_0
    new-array v1, v0, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 822
    .local v1, "newArray":[Ljava/lang/Object;, "[TT;"
    iput-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    .line 824
    .end local v0    # "newSize":I
    .end local v1    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    return-object v0
.end method

.method private static gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 4
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 467
    .local p0, "key":Ljava/lang/Object;, "TT;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p5, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x0

    .line 468
    .local v0, "lastOfs":I
    const/4 v1, 0x1

    .line 469
    .local v1, "ofs":I
    add-int v2, p2, p4

    aget-object v2, p1, v2

    invoke-interface {p5, p0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_3

    .line 471
    sub-int v2, p3, p4

    .line 472
    .local v2, "maxOfs":I
    :cond_0
    :goto_0
    if-ge v1, v2, :cond_1

    add-int v3, p2, p4

    add-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_1

    .line 473
    move v0, v1

    .line 474
    shl-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v3, 0x1

    .line 475
    if-gtz v1, :cond_0

    .line 476
    move v1, v2

    goto :goto_0

    .line 478
    :cond_1
    if-le v1, v2, :cond_2

    move v1, v2

    .line 481
    :cond_2
    add-int/2addr v0, p4

    .line 482
    add-int/2addr v1, p4

    .line 483
    .end local v2    # "maxOfs":I
    goto :goto_2

    .line 485
    :cond_3
    add-int/lit8 v2, p4, 0x1

    .line 486
    .restart local v2    # "maxOfs":I
    :cond_4
    :goto_1
    if-ge v1, v2, :cond_5

    add-int v3, p2, p4

    sub-int/2addr v3, v1

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gtz v3, :cond_5

    .line 487
    move v0, v1

    .line 488
    shl-int/lit8 v3, v1, 0x1

    add-int/lit8 v1, v3, 0x1

    .line 489
    if-gtz v1, :cond_4

    .line 490
    move v1, v2

    goto :goto_1

    .line 492
    :cond_5
    if-le v1, v2, :cond_6

    move v1, v2

    .line 495
    :cond_6
    move v3, v0

    .line 496
    .local v3, "tmp":I
    sub-int v0, p4, v1

    .line 497
    sub-int v1, p4, v3

    .line 505
    .end local v2    # "maxOfs":I
    .end local v3    # "tmp":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 506
    :goto_3
    if-ge v0, v1, :cond_8

    .line 507
    sub-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    .line 509
    .local v2, "m":I
    add-int v3, p2, v2

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_7

    .line 510
    add-int/lit8 v0, v2, 0x1

    goto :goto_4

    .line 512
    :cond_7
    move v1, v2

    .line 513
    .end local v2    # "m":I
    :goto_4
    goto :goto_3

    .line 515
    :cond_8
    return v1
.end method

.method private static gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I
    .locals 4
    .param p2, "base"    # I
    .param p3, "len"    # I
    .param p4, "hint"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;III",
            "Ljava/util/Comparator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 532
    .local p0, "key":Ljava/lang/Object;, "TT;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p5, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    const/4 v0, 0x1

    .line 533
    .local v0, "ofs":I
    const/4 v1, 0x0

    .line 534
    .local v1, "lastOfs":I
    add-int v2, p2, p4

    aget-object v2, p1, v2

    invoke-interface {p5, p0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_3

    .line 536
    add-int/lit8 v2, p4, 0x1

    .line 537
    .local v2, "maxOfs":I
    :cond_0
    :goto_0
    if-ge v0, v2, :cond_1

    add-int v3, p2, p4

    sub-int/2addr v3, v0

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_1

    .line 538
    move v1, v0

    .line 539
    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v3, 0x1

    .line 540
    if-gtz v0, :cond_0

    .line 541
    move v0, v2

    goto :goto_0

    .line 543
    :cond_1
    if-le v0, v2, :cond_2

    move v0, v2

    .line 546
    :cond_2
    move v3, v1

    .line 547
    .local v3, "tmp":I
    sub-int v1, p4, v0

    .line 548
    sub-int v0, p4, v3

    .line 549
    .end local v2    # "maxOfs":I
    .end local v3    # "tmp":I
    goto :goto_2

    .line 551
    :cond_3
    sub-int v2, p3, p4

    .line 552
    .restart local v2    # "maxOfs":I
    :cond_4
    :goto_1
    if-ge v0, v2, :cond_5

    add-int v3, p2, p4

    add-int/2addr v3, v0

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_5

    .line 553
    move v1, v0

    .line 554
    shl-int/lit8 v3, v0, 0x1

    add-int/lit8 v0, v3, 0x1

    .line 555
    if-gtz v0, :cond_4

    .line 556
    move v0, v2

    goto :goto_1

    .line 558
    :cond_5
    if-le v0, v2, :cond_6

    move v0, v2

    .line 561
    :cond_6
    add-int/2addr v1, p4

    .line 562
    add-int/2addr v0, p4

    .line 570
    .end local v2    # "maxOfs":I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 571
    :goto_3
    if-ge v1, v0, :cond_8

    .line 572
    sub-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v1

    .line 574
    .local v2, "m":I
    add-int v3, p2, v2

    aget-object v3, p1, v3

    invoke-interface {p5, p0, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_7

    .line 575
    move v0, v2

    goto :goto_4

    .line 577
    :cond_7
    add-int/lit8 v1, v2, 0x1

    .line 578
    .end local v2    # "m":I
    :goto_4
    goto :goto_3

    .line 580
    :cond_8
    return v0
.end method

.method private mergeAt(I)V
    .locals 18
    .param p1, "i"    # I

    .line 409
    .local p0, "this":Lcom/badlogic/gdx/utils/TimSort;, "Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    aget v9, v2, v1

    .line 410
    .local v9, "base1":I
    iget-object v3, v0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    aget v10, v3, v1

    .line 411
    .local v10, "len1":I
    add-int/lit8 v4, v1, 0x1

    aget v15, v2, v4

    .line 412
    .local v15, "base2":I
    add-int/lit8 v4, v1, 0x1

    aget v17, v3, v4

    .line 420
    .local v17, "len2":I
    add-int v4, v10, v17

    aput v4, v3, v1

    .line 421
    iget v4, v0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    add-int/lit8 v4, v4, -0x3

    if-ne v1, v4, :cond_0

    .line 422
    add-int/lit8 v4, v1, 0x1

    add-int/lit8 v5, v1, 0x2

    aget v5, v2, v5

    aput v5, v2, v4

    .line 423
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v4, v1, 0x2

    aget v4, v3, v4

    aput v4, v3, v2

    .line 425
    :cond_0
    iget v2, v0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    .line 431
    iget-object v4, v0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    aget-object v3, v4, v15

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    move v5, v9

    move v6, v10

    invoke-static/range {v3 .. v8}, Lcom/badlogic/gdx/utils/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    .line 433
    .local v2, "k":I
    add-int/2addr v9, v2

    .line 434
    sub-int/2addr v10, v2

    .line 435
    if-nez v10, :cond_1

    return-void

    .line 441
    :cond_1
    iget-object v12, v0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    add-int v3, v9, v10

    add-int/lit8 v3, v3, -0x1

    aget-object v11, v12, v3

    add-int/lit8 v3, v17, -0x1

    iget-object v4, v0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    move v13, v15

    move/from16 v14, v17

    move v5, v15

    .end local v15    # "base2":I
    .local v5, "base2":I
    move v15, v3

    move-object/from16 v16, v4

    invoke-static/range {v11 .. v16}, Lcom/badlogic/gdx/utils/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v3

    .line 443
    .end local v17    # "len2":I
    .local v3, "len2":I
    if-nez v3, :cond_2

    return-void

    .line 446
    :cond_2
    if-gt v10, v3, :cond_3

    .line 447
    invoke-direct {v0, v9, v10, v5, v3}, Lcom/badlogic/gdx/utils/TimSort;->mergeLo(IIII)V

    goto :goto_0

    .line 449
    :cond_3
    invoke-direct {v0, v9, v10, v5, v3}, Lcom/badlogic/gdx/utils/TimSort;->mergeHi(IIII)V

    .line 450
    :goto_0
    return-void
.end method

.method private mergeCollapse()V
    .locals 5

    .line 380
    .local p0, "this":Lcom/badlogic/gdx/utils/TimSort;, "Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 381
    add-int/lit8 v0, v0, -0x2

    .line 382
    .local v0, "n":I
    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    aget v3, v1, v0

    add-int/lit8 v4, v0, 0x1

    aget v1, v1, v4

    add-int/2addr v3, v1

    if-le v2, v3, :cond_1

    :cond_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x2

    aget v2, v1, v2

    aget v3, v1, v0

    add-int/lit8 v4, v0, -0x1

    aget v1, v1, v4

    add-int/2addr v3, v1

    if-gt v2, v3, :cond_2

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-ge v2, v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 384
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    aget v2, v1, v0

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-le v2, v1, :cond_3

    .line 385
    goto :goto_2

    .line 387
    :cond_3
    :goto_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/TimSort;->mergeAt(I)V

    .line 388
    .end local v0    # "n":I
    goto :goto_0

    .line 389
    :cond_4
    :goto_2
    return-void
.end method

.method private mergeForceCollapse()V
    .locals 4

    .line 393
    .local p0, "this":Lcom/badlogic/gdx/utils/TimSort;, "Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 394
    add-int/lit8 v0, v0, -0x2

    .line 395
    .local v0, "n":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    add-int/lit8 v2, v0, -0x1

    aget v2, v1, v2

    add-int/lit8 v3, v0, 0x1

    aget v1, v1, v3

    if-ge v2, v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 396
    :cond_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/TimSort;->mergeAt(I)V

    .line 397
    .end local v0    # "n":I
    goto :goto_0

    .line 398
    :cond_1
    return-void
.end method

.method private mergeHi(IIII)V
    .locals 23
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .line 702
    .local p0, "this":Lcom/badlogic/gdx/utils/TimSort;, "Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    iget-object v8, v0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    .line 703
    .local v8, "a":[Ljava/lang/Object;, "[TT;"
    invoke-direct {v0, v2}, Lcom/badlogic/gdx/utils/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v9

    .line 704
    .local v9, "tmp":[Ljava/lang/Object;, "[TT;"
    const/4 v10, 0x0

    invoke-static {v8, v1, v9, v10, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 706
    add-int v3, p1, p2

    const/4 v11, 0x1

    sub-int/2addr v3, v11

    .line 707
    .local v3, "cursor1":I
    add-int/lit8 v4, v2, -0x1

    .line 708
    .local v4, "cursor2":I
    add-int v5, v1, v2

    sub-int/2addr v5, v11

    .line 711
    .local v5, "dest":I
    add-int/lit8 v6, v5, -0x1

    .end local v5    # "dest":I
    .local v6, "dest":I
    add-int/lit8 v7, v3, -0x1

    .end local v3    # "cursor1":I
    .local v7, "cursor1":I
    aget-object v3, v8, v3

    aput-object v3, v8, v5

    .line 712
    add-int/lit8 v3, p2, -0x1

    .end local p2    # "len1":I
    .local v3, "len1":I
    if-nez v3, :cond_0

    .line 713
    add-int/lit8 v5, v2, -0x1

    sub-int v5, v6, v5

    invoke-static {v9, v10, v8, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 714
    return-void

    .line 716
    :cond_0
    if-ne v2, v11, :cond_1

    .line 717
    sub-int/2addr v6, v3

    .line 718
    sub-int/2addr v7, v3

    .line 719
    add-int/lit8 v5, v7, 0x1

    add-int/lit8 v10, v6, 0x1

    invoke-static {v8, v5, v8, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 720
    aget-object v5, v9, v4

    aput-object v5, v8, v6

    .line 721
    return-void

    .line 724
    :cond_1
    iget-object v12, v0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    .line 725
    .local v12, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iget v5, v0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    .line 728
    .end local p4    # "len2":I
    .local v2, "len2":I
    .local v5, "minGallop":I
    :goto_0
    const/4 v13, 0x0

    .line 729
    .local v13, "count1":I
    const/4 v14, 0x0

    .line 736
    .local v14, "count2":I
    :goto_1
    aget-object v15, v9, v4

    aget-object v10, v8, v7

    invoke-interface {v12, v15, v10}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    if-gez v10, :cond_3

    .line 737
    add-int/lit8 v10, v6, -0x1

    .end local v6    # "dest":I
    .local v10, "dest":I
    add-int/lit8 v15, v7, -0x1

    .end local v7    # "cursor1":I
    .local v15, "cursor1":I
    aget-object v7, v8, v7

    aput-object v7, v8, v6

    .line 738
    add-int/lit8 v13, v13, 0x1

    .line 739
    const/4 v6, 0x0

    .line 740
    .end local v14    # "count2":I
    .local v6, "count2":I
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_2

    move v7, v15

    goto/16 :goto_5

    :cond_2
    move v14, v6

    move v6, v10

    move v7, v15

    goto :goto_2

    .line 742
    .end local v10    # "dest":I
    .end local v15    # "cursor1":I
    .local v6, "dest":I
    .restart local v7    # "cursor1":I
    .restart local v14    # "count2":I
    :cond_3
    add-int/lit8 v10, v6, -0x1

    .end local v6    # "dest":I
    .restart local v10    # "dest":I
    add-int/lit8 v15, v4, -0x1

    .end local v4    # "cursor2":I
    .local v15, "cursor2":I
    aget-object v4, v9, v4

    aput-object v4, v8, v6

    .line 743
    add-int/lit8 v14, v14, 0x1

    .line 744
    const/4 v4, 0x0

    .line 745
    .end local v13    # "count1":I
    .local v4, "count1":I
    add-int/lit8 v2, v2, -0x1

    if-ne v2, v11, :cond_4

    move v4, v15

    goto/16 :goto_5

    :cond_4
    move v13, v4

    move v6, v10

    move v4, v15

    .line 747
    .end local v10    # "dest":I
    .end local v15    # "cursor2":I
    .local v4, "cursor2":I
    .restart local v6    # "dest":I
    .restart local v13    # "count1":I
    :goto_2
    or-int v10, v13, v14

    if-lt v10, v5, :cond_12

    move v10, v2

    move v15, v5

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v13

    move/from16 v20, v14

    move v13, v3

    move v14, v4

    .line 755
    .end local v2    # "len2":I
    .end local v3    # "len1":I
    .end local v4    # "cursor2":I
    .end local v5    # "minGallop":I
    .end local v6    # "dest":I
    .end local v7    # "cursor1":I
    .local v10, "len2":I
    .local v13, "len1":I
    .local v14, "cursor2":I
    .local v15, "minGallop":I
    .local v17, "dest":I
    .local v18, "cursor1":I
    .local v19, "count1":I
    .local v20, "count2":I
    :goto_3
    aget-object v2, v9, v14

    add-int/lit8 v6, v13, -0x1

    move-object v3, v8

    move/from16 v4, p1

    move v5, v13

    move-object v7, v12

    invoke-static/range {v2 .. v7}, Lcom/badlogic/gdx/utils/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    sub-int v7, v13, v2

    .line 756
    .end local v19    # "count1":I
    .local v7, "count1":I
    if-eqz v7, :cond_6

    .line 757
    sub-int v2, v17, v7

    .line 758
    .end local v17    # "dest":I
    .local v2, "dest":I
    sub-int v3, v18, v7

    .line 759
    .end local v18    # "cursor1":I
    .local v3, "cursor1":I
    sub-int v4, v13, v7

    .line 760
    .end local v13    # "len1":I
    .local v4, "len1":I
    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v2, 0x1

    invoke-static {v8, v5, v8, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 761
    if-nez v4, :cond_5

    move v7, v3

    move v3, v4

    move v4, v14

    move v5, v15

    move/from16 v22, v10

    move v10, v2

    move/from16 v2, v22

    goto/16 :goto_5

    :cond_5
    move/from16 v17, v2

    move/from16 v18, v3

    move v13, v4

    .line 763
    .end local v2    # "dest":I
    .end local v3    # "cursor1":I
    .end local v4    # "len1":I
    .restart local v13    # "len1":I
    .restart local v17    # "dest":I
    .restart local v18    # "cursor1":I
    :cond_6
    add-int/lit8 v19, v17, -0x1

    .end local v17    # "dest":I
    .local v19, "dest":I
    add-int/lit8 v21, v14, -0x1

    .end local v14    # "cursor2":I
    .local v21, "cursor2":I
    aget-object v2, v9, v14

    aput-object v2, v8, v17

    .line 764
    add-int/lit8 v10, v10, -0x1

    if-ne v10, v11, :cond_7

    move v2, v10

    move v3, v13

    move v5, v15

    move/from16 v7, v18

    move/from16 v10, v19

    move/from16 v4, v21

    goto :goto_5

    .line 766
    :cond_7
    aget-object v2, v8, v18

    const/4 v4, 0x0

    add-int/lit8 v6, v10, -0x1

    move-object v3, v9

    move v5, v10

    move v14, v7

    .end local v7    # "count1":I
    .local v14, "count1":I
    move-object v7, v12

    invoke-static/range {v2 .. v7}, Lcom/badlogic/gdx/utils/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v2

    sub-int v2, v10, v2

    .line 767
    .end local v20    # "count2":I
    .local v2, "count2":I
    if-eqz v2, :cond_9

    .line 768
    sub-int v3, v19, v2

    .line 769
    .end local v19    # "dest":I
    .local v3, "dest":I
    sub-int v4, v21, v2

    .line 770
    .end local v21    # "cursor2":I
    .local v4, "cursor2":I
    sub-int v5, v10, v2

    .line 771
    .end local v10    # "len2":I
    .local v5, "len2":I
    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v3, 0x1

    invoke-static {v9, v6, v8, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 772
    if-gt v5, v11, :cond_8

    .line 773
    move v10, v3

    move v2, v5

    move v3, v13

    move v5, v15

    move/from16 v7, v18

    goto :goto_5

    .line 772
    :cond_8
    move/from16 v19, v3

    move v10, v5

    goto :goto_4

    .line 767
    .end local v3    # "dest":I
    .end local v4    # "cursor2":I
    .end local v5    # "len2":I
    .restart local v10    # "len2":I
    .restart local v19    # "dest":I
    .restart local v21    # "cursor2":I
    :cond_9
    move/from16 v4, v21

    .line 775
    .end local v21    # "cursor2":I
    .restart local v4    # "cursor2":I
    :goto_4
    add-int/lit8 v17, v19, -0x1

    .end local v19    # "dest":I
    .restart local v17    # "dest":I
    add-int/lit8 v3, v18, -0x1

    .end local v18    # "cursor1":I
    .local v3, "cursor1":I
    aget-object v5, v8, v18

    aput-object v5, v8, v19

    .line 776
    add-int/lit8 v13, v13, -0x1

    if-nez v13, :cond_d

    move v7, v3

    move v2, v10

    move v3, v13

    move v5, v15

    move/from16 v10, v17

    .line 782
    .end local v13    # "len1":I
    .end local v14    # "count1":I
    .end local v15    # "minGallop":I
    .end local v17    # "dest":I
    .local v2, "len2":I
    .local v3, "len1":I
    .local v5, "minGallop":I
    .local v7, "cursor1":I
    .local v10, "dest":I
    :goto_5
    if-ge v5, v11, :cond_a

    move v6, v11

    goto :goto_6

    :cond_a
    move v6, v5

    :goto_6
    iput v6, v0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    .line 784
    if-ne v2, v11, :cond_b

    .line 786
    sub-int/2addr v10, v3

    .line 787
    sub-int/2addr v7, v3

    .line 788
    add-int/lit8 v6, v7, 0x1

    add-int/lit8 v11, v10, 0x1

    invoke-static {v8, v6, v8, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 789
    aget-object v6, v9, v4

    aput-object v6, v8, v10

    goto :goto_7

    .line 790
    :cond_b
    if-eqz v2, :cond_c

    .line 795
    add-int/lit8 v6, v2, -0x1

    sub-int v6, v10, v6

    const/4 v11, 0x0

    invoke-static {v9, v11, v8, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 797
    :goto_7
    return-void

    .line 791
    :cond_c
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v11, "Comparison method violates its general contract!"

    invoke-direct {v6, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 777
    .end local v5    # "minGallop":I
    .end local v7    # "cursor1":I
    .local v2, "count2":I
    .local v3, "cursor1":I
    .local v10, "len2":I
    .restart local v13    # "len1":I
    .restart local v14    # "count1":I
    .restart local v15    # "minGallop":I
    .restart local v17    # "dest":I
    :cond_d
    const/16 v16, 0x0

    add-int/lit8 v15, v15, -0x1

    .line 778
    const/4 v5, 0x7

    if-lt v14, v5, :cond_e

    move v6, v11

    goto :goto_8

    :cond_e
    move/from16 v6, v16

    :goto_8
    if-lt v2, v5, :cond_f

    move v5, v11

    goto :goto_9

    :cond_f
    move/from16 v5, v16

    :goto_9
    or-int/2addr v5, v6

    if-nez v5, :cond_11

    .line 779
    if-gez v15, :cond_10

    const/4 v15, 0x0

    .line 780
    :cond_10
    nop

    .end local v2    # "count2":I
    .end local v14    # "count1":I
    add-int/lit8 v5, v15, 0x2

    .line 781
    .end local v15    # "minGallop":I
    .restart local v5    # "minGallop":I
    move v7, v3

    move v2, v10

    move v3, v13

    move/from16 v10, v16

    move/from16 v6, v17

    goto/16 :goto_0

    .line 778
    .end local v5    # "minGallop":I
    .restart local v2    # "count2":I
    .restart local v14    # "count1":I
    .restart local v15    # "minGallop":I
    :cond_11
    move/from16 v20, v2

    move/from16 v18, v3

    move/from16 v19, v14

    move v14, v4

    goto/16 :goto_3

    .line 747
    .end local v10    # "len2":I
    .end local v15    # "minGallop":I
    .end local v17    # "dest":I
    .local v2, "len2":I
    .local v3, "len1":I
    .restart local v5    # "minGallop":I
    .restart local v6    # "dest":I
    .restart local v7    # "cursor1":I
    .local v13, "count1":I
    .local v14, "count2":I
    :cond_12
    const/16 v16, 0x0

    move/from16 v10, v16

    goto/16 :goto_1
.end method

.method private mergeLo(IIII)V
    .locals 19
    .param p1, "base1"    # I
    .param p2, "len1"    # I
    .param p3, "base2"    # I
    .param p4, "len2"    # I

    .line 598
    .local p0, "this":Lcom/badlogic/gdx/utils/TimSort;, "Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v7, v0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    .line 599
    .local v7, "a":[Ljava/lang/Object;, "[TT;"
    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/TimSort;->ensureCapacity(I)[Ljava/lang/Object;

    move-result-object v8

    .line 600
    .local v8, "tmp":[Ljava/lang/Object;, "[TT;"
    const/4 v9, 0x0

    move/from16 v10, p1

    invoke-static {v7, v10, v8, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 602
    const/4 v2, 0x0

    .line 603
    .local v2, "cursor1":I
    move/from16 v3, p3

    .line 604
    .local v3, "cursor2":I
    move/from16 v4, p1

    .line 607
    .local v4, "dest":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "dest":I
    .local v5, "dest":I
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "cursor2":I
    .local v6, "cursor2":I
    aget-object v3, v7, v3

    aput-object v3, v7, v4

    .line 608
    add-int/lit8 v3, p4, -0x1

    .end local p4    # "len2":I
    .local v3, "len2":I
    if-nez v3, :cond_0

    .line 609
    invoke-static {v8, v2, v7, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 610
    return-void

    .line 612
    :cond_0
    const/4 v11, 0x1

    if-ne v1, v11, :cond_1

    .line 613
    invoke-static {v7, v6, v7, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 614
    add-int v4, v5, v3

    aget-object v9, v8, v2

    aput-object v9, v7, v4

    .line 615
    return-void

    .line 618
    :cond_1
    iget-object v12, v0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    .line 619
    .local v12, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    iget v4, v0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    .line 622
    .end local p2    # "len1":I
    .local v1, "len1":I
    .local v4, "minGallop":I
    :goto_0
    const/4 v13, 0x0

    .line 623
    .local v13, "count1":I
    const/4 v14, 0x0

    .line 630
    .local v14, "count2":I
    :goto_1
    aget-object v15, v7, v6

    aget-object v9, v8, v2

    invoke-interface {v12, v15, v9}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    if-gez v9, :cond_3

    .line 631
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "dest":I
    .local v9, "dest":I
    add-int/lit8 v15, v6, 0x1

    .end local v6    # "cursor2":I
    .local v15, "cursor2":I
    aget-object v6, v7, v6

    aput-object v6, v7, v5

    .line 632
    add-int/lit8 v14, v14, 0x1

    .line 633
    const/4 v5, 0x0

    .line 634
    .end local v13    # "count1":I
    .local v5, "count1":I
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_2

    move v10, v11

    move v6, v15

    goto/16 :goto_5

    :cond_2
    move v13, v5

    move v5, v9

    move v6, v15

    goto :goto_2

    .line 636
    .end local v9    # "dest":I
    .end local v15    # "cursor2":I
    .local v5, "dest":I
    .restart local v6    # "cursor2":I
    .restart local v13    # "count1":I
    :cond_3
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "dest":I
    .restart local v9    # "dest":I
    add-int/lit8 v15, v2, 0x1

    .end local v2    # "cursor1":I
    .local v15, "cursor1":I
    aget-object v2, v8, v2

    aput-object v2, v7, v5

    .line 637
    add-int/lit8 v13, v13, 0x1

    .line 638
    const/4 v2, 0x0

    .line 639
    .end local v14    # "count2":I
    .local v2, "count2":I
    add-int/lit8 v1, v1, -0x1

    if-ne v1, v11, :cond_4

    move v10, v11

    move v2, v15

    goto/16 :goto_5

    :cond_4
    move v14, v2

    move v5, v9

    move v2, v15

    .line 641
    .end local v9    # "dest":I
    .end local v15    # "cursor1":I
    .local v2, "cursor1":I
    .restart local v5    # "dest":I
    .restart local v14    # "count2":I
    :goto_2
    or-int v9, v13, v14

    if-lt v9, v4, :cond_12

    move v9, v1

    move v15, v4

    move/from16 v16, v6

    move/from16 v17, v13

    move/from16 v18, v14

    move v13, v2

    move v14, v3

    move v6, v5

    .line 649
    .end local v1    # "len1":I
    .end local v2    # "cursor1":I
    .end local v3    # "len2":I
    .end local v4    # "minGallop":I
    .end local v5    # "dest":I
    .local v6, "dest":I
    .local v9, "len1":I
    .local v13, "cursor1":I
    .local v14, "len2":I
    .local v15, "minGallop":I
    .local v16, "cursor2":I
    .local v17, "count1":I
    .local v18, "count2":I
    :goto_3
    aget-object v1, v7, v16

    const/4 v5, 0x0

    move-object v2, v8

    move v3, v13

    move v4, v9

    move v11, v6

    .end local v6    # "dest":I
    .local v11, "dest":I
    move-object v6, v12

    invoke-static/range {v1 .. v6}, Lcom/badlogic/gdx/utils/TimSort;->gallopRight(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v6

    .line 650
    .end local v17    # "count1":I
    .local v6, "count1":I
    if-eqz v6, :cond_6

    .line 651
    invoke-static {v8, v13, v7, v11, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 652
    add-int v1, v11, v6

    .line 653
    .end local v11    # "dest":I
    .local v1, "dest":I
    add-int v2, v13, v6

    .line 654
    .end local v13    # "cursor1":I
    .restart local v2    # "cursor1":I
    sub-int v3, v9, v6

    .line 655
    .end local v9    # "len1":I
    .local v3, "len1":I
    const/4 v4, 0x1

    if-gt v3, v4, :cond_5

    .line 656
    move v9, v1

    move v1, v3

    move v3, v14

    move v4, v15

    move/from16 v6, v16

    const/4 v10, 0x1

    goto/16 :goto_5

    .line 655
    :cond_5
    move v11, v1

    move v13, v2

    move v9, v3

    .line 658
    .end local v1    # "dest":I
    .end local v2    # "cursor1":I
    .end local v3    # "len1":I
    .restart local v9    # "len1":I
    .restart local v11    # "dest":I
    .restart local v13    # "cursor1":I
    :cond_6
    add-int/lit8 v5, v11, 0x1

    .end local v11    # "dest":I
    .restart local v5    # "dest":I
    add-int/lit8 v4, v16, 0x1

    .end local v16    # "cursor2":I
    .local v4, "cursor2":I
    aget-object v1, v7, v16

    aput-object v1, v7, v11

    .line 659
    add-int/lit8 v11, v14, -0x1

    .end local v14    # "len2":I
    .local v11, "len2":I
    if-nez v11, :cond_7

    move v6, v4

    move v1, v9

    move v3, v11

    move v2, v13

    move v4, v15

    const/4 v10, 0x1

    move v9, v5

    goto :goto_5

    .line 661
    :cond_7
    aget-object v1, v8, v13

    const/4 v14, 0x0

    move-object v2, v7

    move v3, v4

    move v10, v4

    .end local v4    # "cursor2":I
    .local v10, "cursor2":I
    move v4, v11

    move/from16 p2, v15

    move v15, v5

    .end local v5    # "dest":I
    .local v15, "dest":I
    .local p2, "minGallop":I
    move v5, v14

    move v14, v6

    .end local v6    # "count1":I
    .local v14, "count1":I
    move-object v6, v12

    invoke-static/range {v1 .. v6}, Lcom/badlogic/gdx/utils/TimSort;->gallopLeft(Ljava/lang/Object;[Ljava/lang/Object;IIILjava/util/Comparator;)I

    move-result v1

    .line 662
    .end local v18    # "count2":I
    .local v1, "count2":I
    if-eqz v1, :cond_9

    .line 663
    invoke-static {v7, v10, v7, v15, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 664
    add-int v2, v15, v1

    .line 665
    .end local v15    # "dest":I
    .local v2, "dest":I
    add-int v6, v10, v1

    .line 666
    .end local v10    # "cursor2":I
    .local v6, "cursor2":I
    sub-int v3, v11, v1

    .line 667
    .end local v11    # "len2":I
    .local v3, "len2":I
    if-nez v3, :cond_8

    move/from16 v4, p2

    move v1, v9

    const/4 v10, 0x1

    move v9, v2

    move v2, v13

    goto :goto_5

    :cond_8
    move v5, v2

    move v11, v3

    move/from16 v16, v6

    goto :goto_4

    .line 662
    .end local v2    # "dest":I
    .end local v3    # "len2":I
    .end local v6    # "cursor2":I
    .restart local v10    # "cursor2":I
    .restart local v11    # "len2":I
    .restart local v15    # "dest":I
    :cond_9
    move/from16 v16, v10

    move v5, v15

    .line 669
    .end local v10    # "cursor2":I
    .end local v15    # "dest":I
    .restart local v5    # "dest":I
    .restart local v16    # "cursor2":I
    :goto_4
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "dest":I
    .local v6, "dest":I
    add-int/lit8 v2, v13, 0x1

    .end local v13    # "cursor1":I
    .local v2, "cursor1":I
    aget-object v3, v8, v13

    aput-object v3, v7, v5

    .line 670
    add-int/lit8 v9, v9, -0x1

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    move/from16 v4, p2

    move v1, v9

    move v3, v11

    move v9, v6

    move/from16 v6, v16

    .line 676
    .end local v11    # "len2":I
    .end local v14    # "count1":I
    .end local v16    # "cursor2":I
    .end local p2    # "minGallop":I
    .local v1, "len1":I
    .restart local v3    # "len2":I
    .local v4, "minGallop":I
    .local v6, "cursor2":I
    .local v9, "dest":I
    :goto_5
    if-ge v4, v10, :cond_a

    move v5, v10

    goto :goto_6

    :cond_a
    move v5, v4

    :goto_6
    iput v5, v0, Lcom/badlogic/gdx/utils/TimSort;->minGallop:I

    .line 678
    if-ne v1, v10, :cond_b

    .line 680
    invoke-static {v7, v6, v7, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 681
    add-int v5, v9, v3

    aget-object v10, v8, v2

    aput-object v10, v7, v5

    goto :goto_7

    .line 682
    :cond_b
    if-eqz v1, :cond_c

    .line 687
    invoke-static {v8, v2, v7, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 689
    :goto_7
    return-void

    .line 683
    :cond_c
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v10, "Comparison method violates its general contract!"

    invoke-direct {v5, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 671
    .end local v3    # "len2":I
    .end local v4    # "minGallop":I
    .local v1, "count2":I
    .local v6, "dest":I
    .local v9, "len1":I
    .restart local v11    # "len2":I
    .restart local v14    # "count1":I
    .restart local v16    # "cursor2":I
    .restart local p2    # "minGallop":I
    :cond_d
    add-int/lit8 v15, p2, -0x1

    .line 672
    .end local p2    # "minGallop":I
    .local v15, "minGallop":I
    const/4 v3, 0x7

    if-lt v14, v3, :cond_e

    move v4, v10

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    :goto_8
    if-lt v1, v3, :cond_f

    move v3, v10

    goto :goto_9

    :cond_f
    const/4 v3, 0x0

    :goto_9
    or-int/2addr v3, v4

    if-nez v3, :cond_11

    .line 673
    if-gez v15, :cond_10

    const/4 v15, 0x0

    .line 674
    :cond_10
    nop

    .end local v1    # "count2":I
    .end local v14    # "count1":I
    add-int/lit8 v4, v15, 0x2

    .line 675
    .end local v15    # "minGallop":I
    .restart local v4    # "minGallop":I
    move v5, v6

    move v1, v9

    move v3, v11

    move/from16 v6, v16

    const/4 v9, 0x0

    move v11, v10

    move/from16 v10, p1

    goto/16 :goto_0

    .line 672
    .end local v4    # "minGallop":I
    .restart local v1    # "count2":I
    .restart local v14    # "count1":I
    .restart local v15    # "minGallop":I
    :cond_11
    move/from16 v18, v1

    move v13, v2

    move/from16 v17, v14

    move v14, v11

    move v11, v10

    move/from16 v10, p1

    goto/16 :goto_3

    .line 641
    .end local v9    # "len1":I
    .end local v11    # "len2":I
    .end local v15    # "minGallop":I
    .end local v16    # "cursor2":I
    .local v1, "len1":I
    .restart local v3    # "len2":I
    .restart local v4    # "minGallop":I
    .restart local v5    # "dest":I
    .local v6, "cursor2":I
    .local v13, "count1":I
    .local v14, "count2":I
    :cond_12
    move v10, v11

    const/4 v9, 0x0

    move/from16 v10, p1

    goto/16 :goto_1
.end method

.method private static minRunLength(I)I
    .locals 2
    .param p0, "n"    # I

    .line 349
    const/4 v0, 0x0

    .line 350
    .local v0, "r":I
    :goto_0
    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    .line 351
    and-int/lit8 v1, p0, 0x1

    or-int/2addr v0, v1

    .line 352
    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 354
    :cond_0
    add-int v1, p0, v0

    return v1
.end method

.method private pushRun(II)V
    .locals 2
    .param p1, "runBase"    # I
    .param p2, "runLen"    # I

    .line 362
    .local p0, "this":Lcom/badlogic/gdx/utils/TimSort;, "Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runBase:[I

    iget v1, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    aput p1, v0, v1

    .line 363
    iget-object v0, p0, Lcom/badlogic/gdx/utils/TimSort;->runLen:[I

    aput p2, v0, v1

    .line 364
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    .line 365
    return-void
.end method

.method private static rangeCheck(III)V
    .locals 3
    .param p0, "arrayLen"    # I
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 835
    if-gt p1, p2, :cond_2

    .line 836
    if-ltz p1, :cond_1

    .line 837
    if-gt p2, p0, :cond_0

    .line 838
    return-void

    .line 837
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 836
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 835
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

    .line 326
    add-int/lit8 p2, p2, -0x1

    .line 327
    :goto_0
    if-ge p1, p2, :cond_0

    .line 328
    aget-object v0, p0, p1

    .line 329
    .local v0, "t":Ljava/lang/Object;
    add-int/lit8 v1, p1, 0x1

    .end local p1    # "lo":I
    .local v1, "lo":I
    aget-object v2, p0, p2

    aput-object v2, p0, p1

    .line 330
    add-int/lit8 p1, p2, -0x1

    .end local p2    # "hi":I
    .local p1, "hi":I
    aput-object v0, p0, p2

    .line 331
    .end local v0    # "t":Ljava/lang/Object;
    move p2, p1

    move p1, v1

    goto :goto_0

    .line 332
    .end local v1    # "lo":I
    .local p1, "lo":I
    .restart local p2    # "hi":I
    :cond_0
    return-void
.end method

.method static sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    .locals 7
    .param p1, "lo"    # I
    .param p2, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 183
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p3, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    if-nez p3, :cond_0

    .line 184
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;II)V

    .line 185
    return-void

    .line 188
    :cond_0
    array-length v0, p0

    invoke-static {v0, p1, p2}, Lcom/badlogic/gdx/utils/TimSort;->rangeCheck(III)V

    .line 189
    sub-int v0, p2, p1

    .line 190
    .local v0, "nRemaining":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    return-void

    .line 193
    :cond_1
    const/16 v1, 0x20

    if-ge v0, v1, :cond_2

    .line 194
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v1

    .line 195
    .local v1, "initRunLen":I
    add-int v2, p1, v1

    invoke-static {p0, p1, p2, v2, p3}, Lcom/badlogic/gdx/utils/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 196
    return-void

    .line 201
    .end local v1    # "initRunLen":I
    :cond_2
    new-instance v1, Lcom/badlogic/gdx/utils/TimSort;

    invoke-direct {v1, p0, p3}, Lcom/badlogic/gdx/utils/TimSort;-><init>([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 202
    .local v1, "ts":Lcom/badlogic/gdx/utils/TimSort;, "Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    invoke-static {v0}, Lcom/badlogic/gdx/utils/TimSort;->minRunLength(I)I

    move-result v2

    .line 205
    .local v2, "minRun":I
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v3

    .line 208
    .local v3, "runLen":I
    if-ge v3, v2, :cond_4

    .line 209
    if-gt v0, v2, :cond_3

    move v4, v0

    goto :goto_1

    :cond_3
    move v4, v2

    .line 210
    .local v4, "force":I
    :goto_1
    add-int v5, p1, v4

    add-int v6, p1, v3

    invoke-static {p0, p1, v5, v6, p3}, Lcom/badlogic/gdx/utils/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 211
    move v3, v4

    .line 215
    .end local v4    # "force":I
    :cond_4
    invoke-direct {v1, p1, v3}, Lcom/badlogic/gdx/utils/TimSort;->pushRun(II)V

    .line 216
    invoke-direct {v1}, Lcom/badlogic/gdx/utils/TimSort;->mergeCollapse()V

    .line 219
    add-int/2addr p1, v3

    .line 220
    sub-int/2addr v0, v3

    .line 221
    .end local v3    # "runLen":I
    if-nez v0, :cond_5

    .line 225
    invoke-direct {v1}, Lcom/badlogic/gdx/utils/TimSort;->mergeForceCollapse()V

    .line 227
    return-void

    .line 221
    :cond_5
    goto :goto_0
.end method

.method static sort([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 179
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    .local p1, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/badlogic/gdx/utils/TimSort;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 180
    return-void
.end method


# virtual methods
.method public doSort([Ljava/lang/Object;Ljava/util/Comparator;II)V
    .locals 6
    .param p3, "lo"    # I
    .param p4, "hi"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Ljava/util/Comparator<",
            "TT;>;II)V"
        }
    .end annotation

    .line 97
    .local p0, "this":Lcom/badlogic/gdx/utils/TimSort;, "Lcom/badlogic/gdx/utils/TimSort<TT;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->stackSize:I

    .line 98
    array-length v1, p1

    invoke-static {v1, p3, p4}, Lcom/badlogic/gdx/utils/TimSort;->rangeCheck(III)V

    .line 99
    sub-int v1, p4, p3

    .line 100
    .local v1, "nRemaining":I
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    return-void

    .line 103
    :cond_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 104
    invoke-static {p1, p3, p4, p2}, Lcom/badlogic/gdx/utils/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v0

    .line 105
    .local v0, "initRunLen":I
    add-int v2, p3, v0

    invoke-static {p1, p3, p4, v2, p2}, Lcom/badlogic/gdx/utils/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 106
    return-void

    .line 109
    .end local v0    # "initRunLen":I
    :cond_1
    iput-object p1, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    .line 110
    iput-object p2, p0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    .line 111
    iput v0, p0, Lcom/badlogic/gdx/utils/TimSort;->tmpCount:I

    .line 115
    invoke-static {v1}, Lcom/badlogic/gdx/utils/TimSort;->minRunLength(I)I

    move-result v0

    .line 118
    .local v0, "minRun":I
    :goto_0
    invoke-static {p1, p3, p4, p2}, Lcom/badlogic/gdx/utils/TimSort;->countRunAndMakeAscending([Ljava/lang/Object;IILjava/util/Comparator;)I

    move-result v2

    .line 121
    .local v2, "runLen":I
    if-ge v2, v0, :cond_3

    .line 122
    if-gt v1, v0, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    .line 123
    .local v3, "force":I
    :goto_1
    add-int v4, p3, v3

    add-int v5, p3, v2

    invoke-static {p1, p3, v4, v5, p2}, Lcom/badlogic/gdx/utils/TimSort;->binarySort([Ljava/lang/Object;IIILjava/util/Comparator;)V

    .line 124
    move v2, v3

    .line 128
    .end local v3    # "force":I
    :cond_3
    invoke-direct {p0, p3, v2}, Lcom/badlogic/gdx/utils/TimSort;->pushRun(II)V

    .line 129
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/TimSort;->mergeCollapse()V

    .line 132
    add-int/2addr p3, v2

    .line 133
    sub-int/2addr v1, v2

    .line 134
    .end local v2    # "runLen":I
    if-nez v1, :cond_5

    .line 138
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/TimSort;->mergeForceCollapse()V

    .line 141
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->a:[Ljava/lang/Object;

    .line 142
    iput-object v2, p0, Lcom/badlogic/gdx/utils/TimSort;->c:Ljava/util/Comparator;

    .line 143
    iget-object v3, p0, Lcom/badlogic/gdx/utils/TimSort;->tmp:[Ljava/lang/Object;

    .line 144
    .local v3, "tmp":[Ljava/lang/Object;, "[TT;"
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, p0, Lcom/badlogic/gdx/utils/TimSort;->tmpCount:I

    .local v5, "n":I
    :goto_2
    if-ge v4, v5, :cond_4

    .line 145
    aput-object v2, v3, v4

    .line 144
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 146
    .end local v4    # "i":I
    .end local v5    # "n":I
    :cond_4
    return-void

    .line 134
    .end local v3    # "tmp":[Ljava/lang/Object;, "[TT;"
    :cond_5
    goto :goto_0
.end method
