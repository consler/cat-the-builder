.class final Lcom/google/crypto/tink/subtle/Field25519;
.super Ljava/lang/Object;
.source "Field25519.java"


# static fields
.field private static final EXPAND_SHIFT:[I

.field private static final EXPAND_START:[I

.field static final FIELD_LEN:I = 0x20

.field static final LIMB_CNT:I = 0xa

.field private static final MASK:[I

.field private static final SHIFT:[I

.field private static final TWO_TO_25:J = 0x2000000L

.field private static final TWO_TO_26:J = 0x4000000L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 63
    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/crypto/tink/subtle/Field25519;->EXPAND_START:[I

    .line 64
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/crypto/tink/subtle/Field25519;->EXPAND_SHIFT:[I

    .line 65
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/google/crypto/tink/subtle/Field25519;->MASK:[I

    .line 66
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/crypto/tink/subtle/Field25519;->SHIFT:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x3
        0x6
        0x9
        0xc
        0x10
        0x13
        0x16
        0x19
        0x1c
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x3
        0x5
        0x6
        0x0
        0x1
        0x3
        0x4
        0x6
    .end array-data

    :array_2
    .array-data 4
        0x3ffffff
        0x1ffffff
    .end array-data

    :array_3
    .array-data 4
        0x1a
        0x19
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static contract([J)[B
    .locals 17
    .param p0, "inputLimbs"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputLimbs"
        }
    .end annotation

    .line 409
    const/16 v0, 0xa

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    .line 410
    .local v2, "input":[J
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    const/16 v4, 0x19

    const/16 v5, 0x1f

    const/4 v6, 0x2

    const/16 v7, 0x9

    const/4 v8, 0x0

    if-ge v3, v6, :cond_1

    .line 411
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v7, :cond_0

    .line 414
    aget-wide v9, v2, v6

    aget-wide v11, v2, v6

    shr-long/2addr v11, v5

    and-long/2addr v9, v11

    sget-object v11, Lcom/google/crypto/tink/subtle/Field25519;->SHIFT:[I

    and-int/lit8 v12, v6, 0x1

    aget v12, v11, v12

    shr-long/2addr v9, v12

    long-to-int v9, v9

    neg-int v9, v9

    .line 415
    .local v9, "carry":I
    aget-wide v12, v2, v6

    and-int/lit8 v10, v6, 0x1

    aget v10, v11, v10

    shl-int v10, v9, v10

    int-to-long v10, v10

    add-long/2addr v12, v10

    aput-wide v12, v2, v6

    .line 416
    add-int/lit8 v10, v6, 0x1

    aget-wide v11, v2, v10

    int-to-long v13, v9

    sub-long/2addr v11, v13

    aput-wide v11, v2, v10

    .line 411
    .end local v9    # "carry":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 422
    .end local v6    # "i":I
    :cond_0
    aget-wide v9, v2, v7

    aget-wide v11, v2, v7

    shr-long v5, v11, v5

    and-long/2addr v5, v9

    shr-long v4, v5, v4

    long-to-int v4, v4

    neg-int v4, v4

    .line 423
    .local v4, "carry":I
    aget-wide v5, v2, v7

    shl-int/lit8 v9, v4, 0x19

    int-to-long v9, v9

    add-long/2addr v5, v9

    aput-wide v5, v2, v7

    .line 424
    aget-wide v5, v2, v8

    mul-int/lit8 v7, v4, 0x13

    int-to-long v9, v7

    sub-long/2addr v5, v9

    aput-wide v5, v2, v8

    .line 410
    .end local v4    # "carry":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 443
    .end local v3    # "j":I
    :cond_1
    aget-wide v9, v2, v8

    aget-wide v11, v2, v8

    shr-long/2addr v11, v5

    and-long/2addr v9, v11

    const/16 v3, 0x1a

    shr-long/2addr v9, v3

    long-to-int v3, v9

    neg-int v3, v3

    .line 444
    .local v3, "carry":I
    aget-wide v9, v2, v8

    shl-int/lit8 v5, v3, 0x1a

    int-to-long v11, v5

    add-long/2addr v9, v11

    aput-wide v9, v2, v8

    .line 445
    const/4 v5, 0x1

    aget-wide v9, v2, v5

    int-to-long v11, v3

    sub-long/2addr v9, v11

    aput-wide v9, v2, v5

    .line 450
    .end local v3    # "carry":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v6, :cond_3

    .line 451
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3
    if-ge v9, v7, :cond_2

    .line 452
    aget-wide v10, v2, v9

    sget-object v12, Lcom/google/crypto/tink/subtle/Field25519;->SHIFT:[I

    and-int/lit8 v13, v9, 0x1

    aget v12, v12, v13

    shr-long/2addr v10, v12

    long-to-int v10, v10

    .line 453
    .local v10, "carry":I
    aget-wide v11, v2, v9

    sget-object v13, Lcom/google/crypto/tink/subtle/Field25519;->MASK:[I

    and-int/lit8 v14, v9, 0x1

    aget v13, v13, v14

    int-to-long v13, v13

    and-long/2addr v11, v13

    aput-wide v11, v2, v9

    .line 454
    add-int/lit8 v11, v9, 0x1

    aget-wide v12, v2, v11

    int-to-long v14, v10

    add-long/2addr v12, v14

    aput-wide v12, v2, v11

    .line 451
    .end local v10    # "carry":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 450
    .end local v9    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 459
    .end local v3    # "j":I
    :cond_3
    aget-wide v9, v2, v7

    shr-long v3, v9, v4

    long-to-int v3, v3

    .line 460
    .local v3, "carry":I
    aget-wide v9, v2, v7

    const-wide/32 v11, 0x1ffffff

    and-long/2addr v9, v11

    aput-wide v9, v2, v7

    .line 461
    aget-wide v9, v2, v8

    mul-int/lit8 v4, v3, 0x13

    int-to-long v11, v4

    add-long/2addr v9, v11

    aput-wide v9, v2, v8

    .line 474
    .end local v3    # "carry":I
    aget-wide v3, v2, v8

    long-to-int v3, v3

    const v4, 0x3ffffed

    invoke-static {v3, v4}, Lcom/google/crypto/tink/subtle/Field25519;->gte(II)I

    move-result v3

    .line 475
    .local v3, "mask":I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_4
    if-ge v7, v0, :cond_4

    .line 476
    aget-wide v9, v2, v7

    long-to-int v9, v9

    sget-object v10, Lcom/google/crypto/tink/subtle/Field25519;->MASK:[I

    and-int/lit8 v11, v7, 0x1

    aget v10, v10, v11

    invoke-static {v9, v10}, Lcom/google/crypto/tink/subtle/Field25519;->eq(II)I

    move-result v9

    and-int/2addr v3, v9

    .line 475
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 481
    .end local v7    # "i":I
    :cond_4
    aget-wide v9, v2, v8

    and-int/2addr v4, v3

    int-to-long v11, v4

    sub-long/2addr v9, v11

    aput-wide v9, v2, v8

    .line 482
    aget-wide v7, v2, v5

    const v4, 0x1ffffff

    and-int v9, v3, v4

    int-to-long v9, v9

    sub-long/2addr v7, v9

    aput-wide v7, v2, v5

    .line 483
    const/4 v7, 0x2

    .restart local v7    # "i":I
    :goto_5
    if-ge v7, v0, :cond_5

    .line 484
    aget-wide v8, v2, v7

    const v10, 0x3ffffff

    and-int/2addr v10, v3

    int-to-long v10, v10

    sub-long/2addr v8, v10

    aput-wide v8, v2, v7

    .line 485
    add-int/lit8 v8, v7, 0x1

    aget-wide v9, v2, v8

    and-int v11, v3, v4

    int-to-long v11, v11

    sub-long/2addr v9, v11

    aput-wide v9, v2, v8

    .line 483
    add-int/lit8 v7, v7, 0x2

    goto :goto_5

    .line 488
    .end local v7    # "i":I
    :cond_5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    if-ge v4, v0, :cond_6

    .line 489
    aget-wide v7, v2, v4

    sget-object v9, Lcom/google/crypto/tink/subtle/Field25519;->EXPAND_SHIFT:[I

    aget v9, v9, v4

    shl-long/2addr v7, v9

    aput-wide v7, v2, v4

    .line 488
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 491
    .end local v4    # "i":I
    :cond_6
    const/16 v4, 0x20

    new-array v4, v4, [B

    .line 492
    .local v4, "output":[B
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_7
    if-ge v7, v0, :cond_7

    .line 493
    sget-object v8, Lcom/google/crypto/tink/subtle/Field25519;->EXPAND_START:[I

    aget v9, v8, v7

    aget-byte v10, v4, v9

    int-to-long v10, v10

    aget-wide v12, v2, v7

    const-wide/16 v14, 0xff

    and-long/2addr v12, v14

    or-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    .line 494
    aget v9, v8, v7

    add-int/2addr v9, v5

    aget-byte v10, v4, v9

    int-to-long v10, v10

    aget-wide v12, v2, v7

    const/16 v16, 0x8

    shr-long v12, v12, v16

    and-long/2addr v12, v14

    or-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    .line 495
    aget v9, v8, v7

    add-int/2addr v9, v6

    aget-byte v10, v4, v9

    int-to-long v10, v10

    aget-wide v12, v2, v7

    const/16 v16, 0x10

    shr-long v12, v12, v16

    and-long/2addr v12, v14

    or-long/2addr v10, v12

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v4, v9

    .line 496
    aget v8, v8, v7

    add-int/lit8 v8, v8, 0x3

    aget-byte v9, v4, v8

    int-to-long v9, v9

    aget-wide v11, v2, v7

    const/16 v13, 0x18

    shr-long/2addr v11, v13

    and-long/2addr v11, v14

    or-long/2addr v9, v11

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v4, v8

    .line 492
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 498
    .end local v7    # "i":I
    :cond_7
    return-object v4
.end method

.method private static eq(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 595
    xor-int v0, p0, p1

    not-int p0, v0

    .line 596
    shl-int/lit8 v0, p0, 0x10

    and-int/2addr p0, v0

    .line 597
    shl-int/lit8 v0, p0, 0x8

    and-int/2addr p0, v0

    .line 598
    shl-int/lit8 v0, p0, 0x4

    and-int/2addr p0, v0

    .line 599
    shl-int/lit8 v0, p0, 0x2

    and-int/2addr p0, v0

    .line 600
    shl-int/lit8 v0, p0, 0x1

    and-int/2addr p0, v0

    .line 601
    shr-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method static expand([B)[J
    .locals 9
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 391
    const/16 v0, 0xa

    new-array v1, v0, [J

    .line 392
    .local v1, "output":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 393
    sget-object v3, Lcom/google/crypto/tink/subtle/Field25519;->EXPAND_START:[I

    aget v4, v3, v2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    aget v6, v3, v2

    add-int/lit8 v6, v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    aget v6, v3, v2

    add-int/lit8 v6, v6, 0x2

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    aget v3, v3, v2

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v6, v3

    const/16 v3, 0x18

    shl-long/2addr v6, v3

    or-long v3, v4, v6

    sget-object v5, Lcom/google/crypto/tink/subtle/Field25519;->EXPAND_SHIFT:[I

    aget v5, v5, v2

    shr-long/2addr v3, v5

    sget-object v5, Lcom/google/crypto/tink/subtle/Field25519;->MASK:[I

    and-int/lit8 v6, v2, 0x1

    aget v5, v5, v6

    int-to-long v5, v5

    and-long/2addr v3, v5

    aput-wide v3, v1, v2

    .line 392
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 398
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private static gte(II)I
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 608
    sub-int/2addr p0, p1

    .line 610
    shr-int/lit8 v0, p0, 0x1f

    not-int v0, v0

    return v0
.end method

.method static inverse([J[J)V
    .locals 13
    .param p0, "out"    # [J
    .param p1, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "z"
        }
    .end annotation

    .line 508
    const/16 v0, 0xa

    new-array v1, v0, [J

    .line 509
    .local v1, "z2":[J
    new-array v2, v0, [J

    .line 510
    .local v2, "z9":[J
    new-array v3, v0, [J

    .line 511
    .local v3, "z11":[J
    new-array v4, v0, [J

    .line 512
    .local v4, "z2To5Minus1":[J
    new-array v5, v0, [J

    .line 513
    .local v5, "z2To10Minus1":[J
    new-array v6, v0, [J

    .line 514
    .local v6, "z2To20Minus1":[J
    new-array v7, v0, [J

    .line 515
    .local v7, "z2To50Minus1":[J
    new-array v8, v0, [J

    .line 516
    .local v8, "z2To100Minus1":[J
    new-array v9, v0, [J

    .line 517
    .local v9, "t0":[J
    new-array v10, v0, [J

    .line 519
    .local v10, "t1":[J
    invoke-static {v1, p1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 520
    invoke-static {v10, v1}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 521
    invoke-static {v9, v10}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 522
    invoke-static {v2, v9, p1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 523
    invoke-static {v3, v2, v1}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 524
    invoke-static {v9, v3}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 525
    invoke-static {v4, v9, v2}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 527
    invoke-static {v9, v4}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 528
    invoke-static {v10, v9}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 529
    invoke-static {v9, v10}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 530
    invoke-static {v10, v9}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 531
    invoke-static {v9, v10}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 532
    invoke-static {v5, v9, v4}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 534
    invoke-static {v9, v5}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 535
    invoke-static {v10, v9}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 536
    const/4 v11, 0x2

    .local v11, "i":I
    :goto_0
    if-ge v11, v0, :cond_0

    .line 537
    invoke-static {v9, v10}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 538
    invoke-static {v10, v9}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 536
    add-int/lit8 v11, v11, 0x2

    goto :goto_0

    .line 540
    .end local v11    # "i":I
    :cond_0
    invoke-static {v6, v10, v5}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 542
    invoke-static {v9, v6}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 543
    invoke-static {v10, v9}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 544
    const/4 v11, 0x2

    .restart local v11    # "i":I
    :goto_1
    const/16 v12, 0x14

    if-ge v11, v12, :cond_1

    .line 545
    invoke-static {v9, v10}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 546
    invoke-static {v10, v9}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 544
    add-int/lit8 v11, v11, 0x2

    goto :goto_1

    .line 548
    .end local v11    # "i":I
    :cond_1
    invoke-static {v9, v10, v6}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 550
    invoke-static {v10, v9}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 551
    invoke-static {v9, v10}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 552
    const/4 v11, 0x2

    .restart local v11    # "i":I
    :goto_2
    if-ge v11, v0, :cond_2

    .line 553
    invoke-static {v10, v9}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 554
    invoke-static {v9, v10}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 552
    add-int/lit8 v11, v11, 0x2

    goto :goto_2

    .line 556
    .end local v11    # "i":I
    :cond_2
    invoke-static {v7, v9, v5}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 558
    invoke-static {v9, v7}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 559
    invoke-static {v10, v9}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 560
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_3
    const/16 v11, 0x32

    if-ge v0, v11, :cond_3

    .line 561
    invoke-static {v9, v10}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 562
    invoke-static {v10, v9}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 560
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    .line 564
    .end local v0    # "i":I
    :cond_3
    invoke-static {v8, v10, v7}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 566
    invoke-static {v10, v8}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 567
    invoke-static {v9, v10}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 568
    const/4 v0, 0x2

    .restart local v0    # "i":I
    :goto_4
    const/16 v12, 0x64

    if-ge v0, v12, :cond_4

    .line 569
    invoke-static {v10, v9}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 570
    invoke-static {v9, v10}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 568
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    .line 572
    .end local v0    # "i":I
    :cond_4
    invoke-static {v10, v9, v8}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 574
    invoke-static {v9, v10}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 575
    invoke-static {v10, v9}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 576
    const/4 v0, 0x2

    .restart local v0    # "i":I
    :goto_5
    if-ge v0, v11, :cond_5

    .line 577
    invoke-static {v9, v10}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 578
    invoke-static {v10, v9}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 576
    add-int/lit8 v0, v0, 0x2

    goto :goto_5

    .line 580
    .end local v0    # "i":I
    :cond_5
    invoke-static {v9, v10, v7}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 582
    invoke-static {v10, v9}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 583
    invoke-static {v9, v10}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 584
    invoke-static {v10, v9}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 585
    invoke-static {v9, v10}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 586
    invoke-static {v10, v9}, Lcom/google/crypto/tink/subtle/Field25519;->square([J[J)V

    .line 587
    invoke-static {p0, v10, v3}, Lcom/google/crypto/tink/subtle/Field25519;->mult([J[J[J)V

    .line 588
    return-void
.end method

.method static mult([J[J[J)V
    .locals 1
    .param p0, "output"    # [J
    .param p1, "in"    # [J
    .param p2, "in2"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "in",
            "in2"
        }
    .end annotation

    .line 328
    const/16 v0, 0x13

    new-array v0, v0, [J

    .line 329
    .local v0, "t":[J
    invoke-static {v0, p1, p2}, Lcom/google/crypto/tink/subtle/Field25519;->product([J[J[J)V

    .line 331
    invoke-static {v0, p0}, Lcom/google/crypto/tink/subtle/Field25519;->reduce([J[J)V

    .line 332
    return-void
.end method

.method static product([J[J[J)V
    .locals 18
    .param p0, "out"    # [J
    .param p1, "in2"    # [J
    .param p2, "in"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "in2",
            "in"
        }
    .end annotation

    .line 128
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    mul-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 129
    aget-wide v1, p1, v0

    const/4 v3, 0x1

    aget-wide v4, p2, v3

    mul-long/2addr v1, v4

    aget-wide v4, p1, v3

    aget-wide v6, p2, v0

    mul-long/2addr v4, v6

    add-long/2addr v1, v4

    aput-wide v1, p0, v3

    .line 131
    aget-wide v1, p1, v3

    const-wide/16 v4, 0x2

    mul-long/2addr v1, v4

    aget-wide v6, p2, v3

    mul-long/2addr v1, v6

    aget-wide v6, p1, v0

    const/4 v8, 0x2

    aget-wide v9, p2, v8

    mul-long/2addr v6, v9

    add-long/2addr v1, v6

    aget-wide v6, p1, v8

    aget-wide v9, p2, v0

    mul-long/2addr v6, v9

    add-long/2addr v1, v6

    aput-wide v1, p0, v8

    .line 134
    aget-wide v1, p1, v3

    aget-wide v6, p2, v8

    mul-long/2addr v1, v6

    aget-wide v6, p1, v8

    aget-wide v9, p2, v3

    mul-long/2addr v6, v9

    add-long/2addr v1, v6

    aget-wide v6, p1, v0

    const/4 v9, 0x3

    aget-wide v10, p2, v9

    mul-long/2addr v6, v10

    add-long/2addr v1, v6

    aget-wide v6, p1, v9

    aget-wide v10, p2, v0

    mul-long/2addr v6, v10

    add-long/2addr v1, v6

    aput-wide v1, p0, v9

    .line 138
    aget-wide v1, p1, v8

    aget-wide v6, p2, v8

    mul-long/2addr v1, v6

    aget-wide v6, p1, v3

    aget-wide v10, p2, v9

    mul-long/2addr v6, v10

    aget-wide v10, p1, v9

    aget-wide v12, p2, v3

    mul-long/2addr v10, v12

    add-long/2addr v6, v10

    mul-long/2addr v6, v4

    add-long/2addr v1, v6

    aget-wide v6, p1, v0

    const/4 v10, 0x4

    aget-wide v11, p2, v10

    mul-long/2addr v6, v11

    add-long/2addr v1, v6

    aget-wide v6, p1, v10

    aget-wide v11, p2, v0

    mul-long/2addr v6, v11

    add-long/2addr v1, v6

    aput-wide v1, p0, v10

    .line 142
    aget-wide v1, p1, v8

    aget-wide v6, p2, v9

    mul-long/2addr v1, v6

    aget-wide v6, p1, v9

    aget-wide v11, p2, v8

    mul-long/2addr v6, v11

    add-long/2addr v1, v6

    aget-wide v6, p1, v3

    aget-wide v11, p2, v10

    mul-long/2addr v6, v11

    add-long/2addr v1, v6

    aget-wide v6, p1, v10

    aget-wide v11, p2, v3

    mul-long/2addr v6, v11

    add-long/2addr v1, v6

    aget-wide v6, p1, v0

    const/4 v11, 0x5

    aget-wide v12, p2, v11

    mul-long/2addr v6, v12

    add-long/2addr v1, v6

    aget-wide v6, p1, v11

    aget-wide v12, p2, v0

    mul-long/2addr v6, v12

    add-long/2addr v1, v6

    aput-wide v1, p0, v11

    .line 148
    aget-wide v1, p1, v9

    aget-wide v6, p2, v9

    mul-long/2addr v1, v6

    aget-wide v6, p1, v3

    aget-wide v12, p2, v11

    mul-long/2addr v6, v12

    add-long/2addr v1, v6

    aget-wide v6, p1, v11

    aget-wide v12, p2, v3

    mul-long/2addr v6, v12

    add-long/2addr v1, v6

    mul-long/2addr v1, v4

    aget-wide v6, p1, v8

    aget-wide v12, p2, v10

    mul-long/2addr v6, v12

    add-long/2addr v1, v6

    aget-wide v6, p1, v10

    aget-wide v12, p2, v8

    mul-long/2addr v6, v12

    add-long/2addr v1, v6

    aget-wide v6, p1, v0

    const/4 v12, 0x6

    aget-wide v13, p2, v12

    mul-long/2addr v6, v13

    add-long/2addr v1, v6

    aget-wide v6, p1, v12

    aget-wide v13, p2, v0

    mul-long/2addr v6, v13

    add-long/2addr v1, v6

    aput-wide v1, p0, v12

    .line 153
    aget-wide v1, p1, v9

    aget-wide v6, p2, v10

    mul-long/2addr v1, v6

    aget-wide v6, p1, v10

    aget-wide v13, p2, v9

    mul-long/2addr v6, v13

    add-long/2addr v1, v6

    aget-wide v6, p1, v8

    aget-wide v13, p2, v11

    mul-long/2addr v6, v13

    add-long/2addr v1, v6

    aget-wide v6, p1, v11

    aget-wide v13, p2, v8

    mul-long/2addr v6, v13

    add-long/2addr v1, v6

    aget-wide v6, p1, v3

    aget-wide v13, p2, v12

    mul-long/2addr v6, v13

    add-long/2addr v1, v6

    aget-wide v6, p1, v12

    aget-wide v13, p2, v3

    mul-long/2addr v6, v13

    add-long/2addr v1, v6

    aget-wide v6, p1, v0

    const/4 v13, 0x7

    aget-wide v14, p2, v13

    mul-long/2addr v6, v14

    add-long/2addr v1, v6

    aget-wide v6, p1, v13

    aget-wide v14, p2, v0

    mul-long/2addr v6, v14

    add-long/2addr v1, v6

    aput-wide v1, p0, v13

    .line 161
    aget-wide v1, p1, v10

    aget-wide v6, p2, v10

    mul-long/2addr v1, v6

    aget-wide v6, p1, v9

    aget-wide v14, p2, v11

    mul-long/2addr v6, v14

    aget-wide v14, p1, v11

    aget-wide v16, p2, v9

    mul-long v14, v14, v16

    add-long/2addr v6, v14

    aget-wide v14, p1, v3

    aget-wide v16, p2, v13

    mul-long v14, v14, v16

    add-long/2addr v6, v14

    aget-wide v14, p1, v13

    aget-wide v16, p2, v3

    mul-long v14, v14, v16

    add-long/2addr v6, v14

    mul-long/2addr v6, v4

    add-long/2addr v1, v6

    aget-wide v6, p1, v8

    aget-wide v14, p2, v12

    mul-long/2addr v6, v14

    add-long/2addr v1, v6

    aget-wide v6, p1, v12

    aget-wide v14, p2, v8

    mul-long/2addr v6, v14

    add-long/2addr v1, v6

    aget-wide v6, p1, v0

    const/16 v14, 0x8

    aget-wide v15, p2, v14

    mul-long/2addr v6, v15

    add-long/2addr v1, v6

    aget-wide v6, p1, v14

    aget-wide v15, p2, v0

    mul-long/2addr v6, v15

    add-long/2addr v1, v6

    aput-wide v1, p0, v14

    .line 167
    aget-wide v1, p1, v10

    aget-wide v6, p2, v11

    mul-long/2addr v1, v6

    aget-wide v6, p1, v11

    aget-wide v15, p2, v10

    mul-long/2addr v6, v15

    add-long/2addr v1, v6

    aget-wide v6, p1, v9

    aget-wide v15, p2, v12

    mul-long/2addr v6, v15

    add-long/2addr v1, v6

    aget-wide v6, p1, v12

    aget-wide v15, p2, v9

    mul-long/2addr v6, v15

    add-long/2addr v1, v6

    aget-wide v6, p1, v8

    aget-wide v15, p2, v13

    mul-long/2addr v6, v15

    add-long/2addr v1, v6

    aget-wide v6, p1, v13

    aget-wide v15, p2, v8

    mul-long/2addr v6, v15

    add-long/2addr v1, v6

    aget-wide v6, p1, v3

    aget-wide v15, p2, v14

    mul-long/2addr v6, v15

    add-long/2addr v1, v6

    aget-wide v6, p1, v14

    aget-wide v15, p2, v3

    mul-long/2addr v6, v15

    add-long/2addr v1, v6

    aget-wide v6, p1, v0

    const/16 v15, 0x9

    aget-wide v16, p2, v15

    mul-long v6, v6, v16

    add-long/2addr v1, v6

    aget-wide v6, p1, v15

    aget-wide v16, p2, v0

    mul-long v6, v6, v16

    add-long/2addr v1, v6

    aput-wide v1, p0, v15

    .line 177
    aget-wide v0, p1, v11

    aget-wide v6, p2, v11

    mul-long/2addr v0, v6

    aget-wide v6, p1, v9

    aget-wide v16, p2, v13

    mul-long v6, v6, v16

    add-long/2addr v0, v6

    aget-wide v6, p1, v13

    aget-wide v16, p2, v9

    mul-long v6, v6, v16

    add-long/2addr v0, v6

    aget-wide v6, p1, v3

    aget-wide v16, p2, v15

    mul-long v6, v6, v16

    add-long/2addr v0, v6

    aget-wide v6, p1, v15

    aget-wide v2, p2, v3

    mul-long/2addr v6, v2

    add-long/2addr v0, v6

    mul-long/2addr v0, v4

    aget-wide v2, p1, v10

    aget-wide v6, p2, v12

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    aget-wide v2, p1, v12

    aget-wide v6, p2, v10

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    aget-wide v2, p1, v8

    aget-wide v6, p2, v14

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    aget-wide v2, p1, v14

    aget-wide v6, p2, v8

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    const/16 v2, 0xa

    aput-wide v0, p0, v2

    .line 183
    aget-wide v0, p1, v11

    aget-wide v2, p2, v12

    mul-long/2addr v0, v2

    aget-wide v2, p1, v12

    aget-wide v6, p2, v11

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    aget-wide v2, p1, v10

    aget-wide v6, p2, v13

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    aget-wide v2, p1, v13

    aget-wide v6, p2, v10

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    aget-wide v2, p1, v9

    aget-wide v6, p2, v14

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    aget-wide v2, p1, v14

    aget-wide v6, p2, v9

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    aget-wide v2, p1, v8

    aget-wide v6, p2, v15

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    aget-wide v2, p1, v15

    aget-wide v6, p2, v8

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    const/16 v2, 0xb

    aput-wide v0, p0, v2

    .line 191
    aget-wide v0, p1, v12

    aget-wide v2, p2, v12

    mul-long/2addr v0, v2

    aget-wide v2, p1, v11

    aget-wide v6, p2, v13

    mul-long/2addr v2, v6

    aget-wide v6, p1, v13

    aget-wide v16, p2, v11

    mul-long v6, v6, v16

    add-long/2addr v2, v6

    aget-wide v6, p1, v9

    aget-wide v16, p2, v15

    mul-long v6, v6, v16

    add-long/2addr v2, v6

    aget-wide v6, p1, v15

    aget-wide v8, p2, v9

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    aget-wide v2, p1, v10

    aget-wide v6, p2, v14

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    aget-wide v2, p1, v14

    aget-wide v6, p2, v10

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    const/16 v2, 0xc

    aput-wide v0, p0, v2

    .line 195
    aget-wide v0, p1, v12

    aget-wide v2, p2, v13

    mul-long/2addr v0, v2

    aget-wide v2, p1, v13

    aget-wide v6, p2, v12

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    aget-wide v2, p1, v11

    aget-wide v6, p2, v14

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    aget-wide v2, p1, v14

    aget-wide v6, p2, v11

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    aget-wide v2, p1, v10

    aget-wide v6, p2, v15

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    aget-wide v2, p1, v15

    aget-wide v6, p2, v10

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    const/16 v2, 0xd

    aput-wide v0, p0, v2

    .line 201
    aget-wide v0, p1, v13

    aget-wide v2, p2, v13

    mul-long/2addr v0, v2

    aget-wide v2, p1, v11

    aget-wide v6, p2, v15

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    aget-wide v2, p1, v15

    aget-wide v6, p2, v11

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    mul-long/2addr v0, v4

    aget-wide v2, p1, v12

    aget-wide v6, p2, v14

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    aget-wide v2, p1, v14

    aget-wide v6, p2, v12

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    const/16 v2, 0xe

    aput-wide v0, p0, v2

    .line 204
    aget-wide v0, p1, v13

    aget-wide v2, p2, v14

    mul-long/2addr v0, v2

    aget-wide v2, p1, v14

    aget-wide v6, p2, v13

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    aget-wide v2, p1, v12

    aget-wide v6, p2, v15

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    aget-wide v2, p1, v15

    aget-wide v6, p2, v12

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    const/16 v2, 0xf

    aput-wide v0, p0, v2

    .line 208
    aget-wide v0, p1, v14

    aget-wide v2, p2, v14

    mul-long/2addr v0, v2

    aget-wide v2, p1, v13

    aget-wide v6, p2, v15

    mul-long/2addr v2, v6

    aget-wide v6, p1, v15

    aget-wide v8, p2, v13

    mul-long/2addr v6, v8

    add-long/2addr v2, v6

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    const/16 v2, 0x10

    aput-wide v0, p0, v2

    .line 210
    aget-wide v0, p1, v14

    aget-wide v2, p2, v15

    mul-long/2addr v0, v2

    aget-wide v2, p1, v15

    aget-wide v6, p2, v14

    mul-long/2addr v2, v6

    add-long/2addr v0, v2

    const/16 v2, 0x11

    aput-wide v0, p0, v2

    .line 212
    aget-wide v0, p1, v15

    mul-long/2addr v0, v4

    aget-wide v2, p2, v15

    mul-long/2addr v0, v2

    const/16 v2, 0x12

    aput-wide v0, p0, v2

    .line 213
    return-void
.end method

.method static reduce([J[J)V
    .locals 3
    .param p0, "input"    # [J
    .param p1, "output"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "output"
        }
    .end annotation

    .line 225
    array-length v0, p0

    const/16 v1, 0x13

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 226
    move-object v0, p0

    .local v0, "tmp":[J
    goto :goto_0

    .line 228
    .end local v0    # "tmp":[J
    :cond_0
    new-array v0, v1, [J

    .line 229
    .restart local v0    # "tmp":[J
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    :goto_0
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Field25519;->reduceSizeByModularReduction([J)V

    .line 232
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Field25519;->reduceCoefficients([J)V

    .line 233
    const/16 v1, 0xa

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    return-void
.end method

.method static reduceCoefficients([J)V
    .locals 12
    .param p0, "output"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 285
    const/16 v0, 0xa

    const-wide/16 v1, 0x0

    aput-wide v1, p0, v0

    .line 287
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x1a

    const-wide/32 v5, 0x4000000

    if-ge v3, v0, :cond_0

    .line 288
    aget-wide v7, p0, v3

    div-long/2addr v7, v5

    .line 292
    .local v7, "over":J
    aget-wide v5, p0, v3

    shl-long v9, v7, v4

    sub-long/2addr v5, v9

    aput-wide v5, p0, v3

    .line 293
    add-int/lit8 v4, v3, 0x1

    aget-wide v5, p0, v4

    add-long/2addr v5, v7

    aput-wide v5, p0, v4

    .line 300
    add-int/lit8 v4, v3, 0x1

    aget-wide v4, p0, v4

    const-wide/32 v9, 0x2000000

    div-long/2addr v4, v9

    .line 301
    .end local v7    # "over":J
    .local v4, "over":J
    add-int/lit8 v6, v3, 0x1

    aget-wide v7, p0, v6

    const/16 v9, 0x19

    shl-long v9, v4, v9

    sub-long/2addr v7, v9

    aput-wide v7, p0, v6

    .line 302
    add-int/lit8 v6, v3, 0x2

    aget-wide v7, p0, v6

    add-long/2addr v7, v4

    aput-wide v7, p0, v6

    .line 287
    .end local v4    # "over":J
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 305
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x0

    aget-wide v7, p0, v3

    aget-wide v9, p0, v0

    const/4 v11, 0x4

    shl-long/2addr v9, v11

    add-long/2addr v7, v9

    aput-wide v7, p0, v3

    .line 306
    aget-wide v7, p0, v3

    aget-wide v9, p0, v0

    const/4 v11, 0x1

    shl-long/2addr v9, v11

    add-long/2addr v7, v9

    aput-wide v7, p0, v3

    .line 307
    aget-wide v7, p0, v3

    aget-wide v9, p0, v0

    add-long/2addr v7, v9

    aput-wide v7, p0, v3

    .line 309
    aput-wide v1, p0, v0

    .line 312
    aget-wide v0, p0, v3

    div-long/2addr v0, v5

    .line 313
    .local v0, "over":J
    aget-wide v5, p0, v3

    shl-long v7, v0, v4

    sub-long/2addr v5, v7

    aput-wide v5, p0, v3

    .line 314
    aget-wide v2, p0, v11

    add-long/2addr v2, v0

    aput-wide v2, p0, v11

    .line 317
    return-void
.end method

.method static reduceSizeByModularReduction([J)V
    .locals 8
    .param p0, "output"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "output"
        }
    .end annotation

    .line 250
    const/16 v0, 0x8

    aget-wide v1, p0, v0

    const/16 v3, 0x12

    aget-wide v4, p0, v3

    const/4 v6, 0x4

    shl-long/2addr v4, v6

    add-long/2addr v1, v4

    aput-wide v1, p0, v0

    .line 251
    aget-wide v1, p0, v0

    aget-wide v4, p0, v3

    const/4 v7, 0x1

    shl-long/2addr v4, v7

    add-long/2addr v1, v4

    aput-wide v1, p0, v0

    .line 252
    aget-wide v1, p0, v0

    aget-wide v3, p0, v3

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 253
    const/4 v0, 0x7

    aget-wide v1, p0, v0

    const/16 v3, 0x11

    aget-wide v4, p0, v3

    shl-long/2addr v4, v6

    add-long/2addr v1, v4

    aput-wide v1, p0, v0

    .line 254
    aget-wide v1, p0, v0

    aget-wide v4, p0, v3

    shl-long/2addr v4, v7

    add-long/2addr v1, v4

    aput-wide v1, p0, v0

    .line 255
    aget-wide v1, p0, v0

    aget-wide v3, p0, v3

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 256
    const/4 v0, 0x6

    aget-wide v1, p0, v0

    const/16 v3, 0x10

    aget-wide v4, p0, v3

    shl-long/2addr v4, v6

    add-long/2addr v1, v4

    aput-wide v1, p0, v0

    .line 257
    aget-wide v1, p0, v0

    aget-wide v4, p0, v3

    shl-long/2addr v4, v7

    add-long/2addr v1, v4

    aput-wide v1, p0, v0

    .line 258
    aget-wide v1, p0, v0

    aget-wide v3, p0, v3

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 259
    const/4 v0, 0x5

    aget-wide v1, p0, v0

    const/16 v3, 0xf

    aget-wide v4, p0, v3

    shl-long/2addr v4, v6

    add-long/2addr v1, v4

    aput-wide v1, p0, v0

    .line 260
    aget-wide v1, p0, v0

    aget-wide v4, p0, v3

    shl-long/2addr v4, v7

    add-long/2addr v1, v4

    aput-wide v1, p0, v0

    .line 261
    aget-wide v1, p0, v0

    aget-wide v3, p0, v3

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 262
    aget-wide v0, p0, v6

    const/16 v2, 0xe

    aget-wide v3, p0, v2

    shl-long/2addr v3, v6

    add-long/2addr v0, v3

    aput-wide v0, p0, v6

    .line 263
    aget-wide v0, p0, v6

    aget-wide v3, p0, v2

    shl-long/2addr v3, v7

    add-long/2addr v0, v3

    aput-wide v0, p0, v6

    .line 264
    aget-wide v0, p0, v6

    aget-wide v2, p0, v2

    add-long/2addr v0, v2

    aput-wide v0, p0, v6

    .line 265
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    const/16 v3, 0xd

    aget-wide v4, p0, v3

    shl-long/2addr v4, v6

    add-long/2addr v1, v4

    aput-wide v1, p0, v0

    .line 266
    aget-wide v1, p0, v0

    aget-wide v4, p0, v3

    shl-long/2addr v4, v7

    add-long/2addr v1, v4

    aput-wide v1, p0, v0

    .line 267
    aget-wide v1, p0, v0

    aget-wide v3, p0, v3

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 268
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    const/16 v3, 0xc

    aget-wide v4, p0, v3

    shl-long/2addr v4, v6

    add-long/2addr v1, v4

    aput-wide v1, p0, v0

    .line 269
    aget-wide v1, p0, v0

    aget-wide v4, p0, v3

    shl-long/2addr v4, v7

    add-long/2addr v1, v4

    aput-wide v1, p0, v0

    .line 270
    aget-wide v1, p0, v0

    aget-wide v3, p0, v3

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 271
    aget-wide v0, p0, v7

    const/16 v2, 0xb

    aget-wide v3, p0, v2

    shl-long/2addr v3, v6

    add-long/2addr v0, v3

    aput-wide v0, p0, v7

    .line 272
    aget-wide v0, p0, v7

    aget-wide v3, p0, v2

    shl-long/2addr v3, v7

    add-long/2addr v0, v3

    aput-wide v0, p0, v7

    .line 273
    aget-wide v0, p0, v7

    aget-wide v2, p0, v2

    add-long/2addr v0, v2

    aput-wide v0, p0, v7

    .line 274
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const/16 v3, 0xa

    aget-wide v4, p0, v3

    shl-long/2addr v4, v6

    add-long/2addr v1, v4

    aput-wide v1, p0, v0

    .line 275
    aget-wide v1, p0, v0

    aget-wide v4, p0, v3

    shl-long/2addr v4, v7

    add-long/2addr v1, v4

    aput-wide v1, p0, v0

    .line 276
    aget-wide v1, p0, v0

    aget-wide v3, p0, v3

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 277
    return-void
.end method

.method static scalarProduct([J[JJ)V
    .locals 3
    .param p0, "output"    # [J
    .param p1, "in"    # [J
    .param p2, "scalar"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "in",
            "scalar"
        }
    .end annotation

    .line 114
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 115
    aget-wide v1, p1, v0

    mul-long/2addr v1, p2

    aput-wide v1, p0, v0

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static square([J[J)V
    .locals 1
    .param p0, "output"    # [J
    .param p1, "in"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "in"
        }
    .end annotation

    .line 380
    const/16 v0, 0x13

    new-array v0, v0, [J

    .line 381
    .local v0, "t":[J
    invoke-static {v0, p1}, Lcom/google/crypto/tink/subtle/Field25519;->squareInner([J[J)V

    .line 384
    invoke-static {v0, p0}, Lcom/google/crypto/tink/subtle/Field25519;->reduce([J[J)V

    .line 385
    return-void
.end method

.method private static squareInner([J[J)V
    .locals 23
    .param p0, "out"    # [J
    .param p1, "in"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    .line 343
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    aget-wide v3, p1, v0

    mul-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 344
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    const/4 v5, 0x1

    aget-wide v6, p1, v5

    mul-long/2addr v1, v6

    aput-wide v1, p0, v5

    .line 345
    aget-wide v1, p1, v5

    aget-wide v6, p1, v5

    mul-long/2addr v1, v6

    aget-wide v6, p1, v0

    const/4 v8, 0x2

    aget-wide v9, p1, v8

    mul-long/2addr v6, v9

    add-long/2addr v1, v6

    mul-long/2addr v1, v3

    aput-wide v1, p0, v8

    .line 346
    aget-wide v1, p1, v5

    aget-wide v6, p1, v8

    mul-long/2addr v1, v6

    aget-wide v6, p1, v0

    const/4 v9, 0x3

    aget-wide v10, p1, v9

    mul-long/2addr v6, v10

    add-long/2addr v1, v6

    mul-long/2addr v1, v3

    aput-wide v1, p0, v9

    .line 347
    aget-wide v1, p1, v8

    aget-wide v6, p1, v8

    mul-long/2addr v1, v6

    aget-wide v6, p1, v5

    const-wide/16 v10, 0x4

    mul-long/2addr v6, v10

    aget-wide v12, p1, v9

    mul-long/2addr v6, v12

    add-long/2addr v1, v6

    aget-wide v6, p1, v0

    mul-long/2addr v6, v3

    const/4 v12, 0x4

    aget-wide v13, p1, v12

    mul-long/2addr v6, v13

    add-long/2addr v1, v6

    aput-wide v1, p0, v12

    .line 350
    aget-wide v1, p1, v8

    aget-wide v6, p1, v9

    mul-long/2addr v1, v6

    aget-wide v6, p1, v5

    aget-wide v13, p1, v12

    mul-long/2addr v6, v13

    add-long/2addr v1, v6

    aget-wide v6, p1, v0

    const/4 v13, 0x5

    aget-wide v14, p1, v13

    mul-long/2addr v6, v14

    add-long/2addr v1, v6

    mul-long/2addr v1, v3

    aput-wide v1, p0, v13

    .line 351
    aget-wide v1, p1, v9

    aget-wide v6, p1, v9

    mul-long/2addr v1, v6

    aget-wide v6, p1, v8

    aget-wide v14, p1, v12

    mul-long/2addr v6, v14

    add-long/2addr v1, v6

    aget-wide v6, p1, v0

    const/4 v14, 0x6

    aget-wide v15, p1, v14

    mul-long/2addr v6, v15

    add-long/2addr v1, v6

    aget-wide v6, p1, v5

    mul-long/2addr v6, v3

    aget-wide v15, p1, v13

    mul-long/2addr v6, v15

    add-long/2addr v1, v6

    mul-long/2addr v1, v3

    aput-wide v1, p0, v14

    .line 352
    aget-wide v1, p1, v9

    aget-wide v6, p1, v12

    mul-long/2addr v1, v6

    aget-wide v6, p1, v8

    aget-wide v15, p1, v13

    mul-long/2addr v6, v15

    add-long/2addr v1, v6

    aget-wide v6, p1, v5

    aget-wide v15, p1, v14

    mul-long/2addr v6, v15

    add-long/2addr v1, v6

    aget-wide v6, p1, v0

    const/4 v15, 0x7

    aget-wide v16, p1, v15

    mul-long v6, v6, v16

    add-long/2addr v1, v6

    mul-long/2addr v1, v3

    aput-wide v1, p0, v15

    .line 353
    aget-wide v1, p1, v12

    aget-wide v6, p1, v12

    mul-long/2addr v1, v6

    aget-wide v6, p1, v8

    aget-wide v16, p1, v14

    mul-long v6, v6, v16

    aget-wide v16, p1, v0

    const/16 v18, 0x8

    aget-wide v19, p1, v18

    mul-long v16, v16, v19

    add-long v6, v6, v16

    aget-wide v16, p1, v5

    aget-wide v19, p1, v15

    mul-long v16, v16, v19

    aget-wide v19, p1, v9

    aget-wide v21, p1, v13

    mul-long v19, v19, v21

    add-long v16, v16, v19

    mul-long v16, v16, v3

    add-long v6, v6, v16

    mul-long/2addr v6, v3

    add-long/2addr v1, v6

    aput-wide v1, p0, v18

    .line 355
    aget-wide v1, p1, v12

    aget-wide v6, p1, v13

    mul-long/2addr v1, v6

    aget-wide v6, p1, v9

    aget-wide v16, p1, v14

    mul-long v6, v6, v16

    add-long/2addr v1, v6

    aget-wide v6, p1, v8

    aget-wide v16, p1, v15

    mul-long v6, v6, v16

    add-long/2addr v1, v6

    aget-wide v6, p1, v5

    aget-wide v16, p1, v18

    mul-long v6, v6, v16

    add-long/2addr v1, v6

    aget-wide v6, p1, v0

    const/16 v0, 0x9

    aget-wide v16, p1, v0

    mul-long v6, v6, v16

    add-long/2addr v1, v6

    mul-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 356
    aget-wide v1, p1, v13

    aget-wide v6, p1, v13

    mul-long/2addr v1, v6

    aget-wide v6, p1, v12

    aget-wide v16, p1, v14

    mul-long v6, v6, v16

    add-long/2addr v1, v6

    aget-wide v6, p1, v8

    aget-wide v16, p1, v18

    mul-long v6, v6, v16

    add-long/2addr v1, v6

    aget-wide v6, p1, v9

    aget-wide v16, p1, v15

    mul-long v6, v6, v16

    aget-wide v16, p1, v5

    aget-wide v19, p1, v0

    mul-long v16, v16, v19

    add-long v6, v6, v16

    mul-long/2addr v6, v3

    add-long/2addr v1, v6

    mul-long/2addr v1, v3

    const/16 v5, 0xa

    aput-wide v1, p0, v5

    .line 360
    aget-wide v1, p1, v13

    aget-wide v5, p1, v14

    mul-long/2addr v1, v5

    aget-wide v5, p1, v12

    aget-wide v16, p1, v15

    mul-long v5, v5, v16

    add-long/2addr v1, v5

    aget-wide v5, p1, v9

    aget-wide v16, p1, v18

    mul-long v5, v5, v16

    add-long/2addr v1, v5

    aget-wide v5, p1, v8

    aget-wide v7, p1, v0

    mul-long/2addr v5, v7

    add-long/2addr v1, v5

    mul-long/2addr v1, v3

    const/16 v5, 0xb

    aput-wide v1, p0, v5

    .line 361
    aget-wide v1, p1, v14

    aget-wide v5, p1, v14

    mul-long/2addr v1, v5

    aget-wide v5, p1, v12

    aget-wide v7, p1, v18

    mul-long/2addr v5, v7

    aget-wide v7, p1, v13

    aget-wide v16, p1, v15

    mul-long v7, v7, v16

    aget-wide v16, p1, v9

    aget-wide v19, p1, v0

    mul-long v16, v16, v19

    add-long v7, v7, v16

    mul-long/2addr v7, v3

    add-long/2addr v5, v7

    mul-long/2addr v5, v3

    add-long/2addr v1, v5

    const/16 v5, 0xc

    aput-wide v1, p0, v5

    .line 363
    aget-wide v1, p1, v14

    aget-wide v5, p1, v15

    mul-long/2addr v1, v5

    aget-wide v5, p1, v13

    aget-wide v7, p1, v18

    mul-long/2addr v5, v7

    add-long/2addr v1, v5

    aget-wide v5, p1, v12

    aget-wide v7, p1, v0

    mul-long/2addr v5, v7

    add-long/2addr v1, v5

    mul-long/2addr v1, v3

    const/16 v5, 0xd

    aput-wide v1, p0, v5

    .line 364
    aget-wide v1, p1, v15

    aget-wide v5, p1, v15

    mul-long/2addr v1, v5

    aget-wide v5, p1, v14

    aget-wide v7, p1, v18

    mul-long/2addr v5, v7

    add-long/2addr v1, v5

    aget-wide v5, p1, v13

    mul-long/2addr v5, v3

    aget-wide v7, p1, v0

    mul-long/2addr v5, v7

    add-long/2addr v1, v5

    mul-long/2addr v1, v3

    const/16 v5, 0xe

    aput-wide v1, p0, v5

    .line 365
    aget-wide v1, p1, v15

    aget-wide v5, p1, v18

    mul-long/2addr v1, v5

    aget-wide v5, p1, v14

    aget-wide v7, p1, v0

    mul-long/2addr v5, v7

    add-long/2addr v1, v5

    mul-long/2addr v1, v3

    const/16 v5, 0xf

    aput-wide v1, p0, v5

    .line 366
    aget-wide v1, p1, v18

    aget-wide v5, p1, v18

    mul-long/2addr v1, v5

    aget-wide v5, p1, v15

    mul-long/2addr v5, v10

    aget-wide v7, p1, v0

    mul-long/2addr v5, v7

    add-long/2addr v1, v5

    const/16 v5, 0x10

    aput-wide v1, p0, v5

    .line 367
    aget-wide v1, p1, v18

    mul-long/2addr v1, v3

    aget-wide v5, p1, v0

    mul-long/2addr v1, v5

    const/16 v5, 0x11

    aput-wide v1, p0, v5

    .line 368
    aget-wide v1, p1, v0

    mul-long/2addr v1, v3

    aget-wide v3, p1, v0

    mul-long/2addr v1, v3

    const/16 v0, 0x12

    aput-wide v1, p0, v0

    .line 369
    return-void
.end method

.method static sub([J[J)V
    .locals 0
    .param p0, "output"    # [J
    .param p1, "in"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "in"
        }
    .end annotation

    .line 107
    invoke-static {p0, p1, p0}, Lcom/google/crypto/tink/subtle/Field25519;->sub([J[J[J)V

    .line 108
    return-void
.end method

.method static sub([J[J[J)V
    .locals 5
    .param p0, "output"    # [J
    .param p1, "in1"    # [J
    .param p2, "in2"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "in1",
            "in2"
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 96
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    sub-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static sum([J[J)V
    .locals 0
    .param p0, "output"    # [J
    .param p1, "in"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "in"
        }
    .end annotation

    .line 85
    invoke-static {p0, p0, p1}, Lcom/google/crypto/tink/subtle/Field25519;->sum([J[J[J)V

    .line 86
    return-void
.end method

.method static sum([J[J[J)V
    .locals 5
    .param p0, "output"    # [J
    .param p1, "in1"    # [J
    .param p2, "in2"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "in1",
            "in2"
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 75
    aget-wide v1, p1, v0

    aget-wide v3, p2, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
