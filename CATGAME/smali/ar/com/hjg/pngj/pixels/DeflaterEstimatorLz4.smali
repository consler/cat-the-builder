.class public final Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;
.super Ljava/lang/Object;
.source "DeflaterEstimatorLz4.java"


# static fields
.field static final COPY_LENGTH:I = 0x8

.field static final HASH_LOG:I = 0xc

.field static final HASH_LOG_64K:I = 0xd

.field static final HASH_LOG_HC:I = 0xf

.field static final HASH_TABLE_SIZE:I = 0x1000

.field static final HASH_TABLE_SIZE_64K:I = 0x2000

.field static final HASH_TABLE_SIZE_HC:I = 0x8000

.field static final LAST_LITERALS:I = 0x5

.field static final LZ4_64K_LIMIT:I = 0x1000b

.field static final MAX_DISTANCE:I = 0x10000

.field static final MEMORY_USAGE:I = 0xe

.field static final MF_LIMIT:I = 0xc

.field static final MIN_LENGTH:I = 0xd

.field static final MIN_MATCH:I = 0x4

.field static final ML_BITS:I = 0x4

.field static final ML_MASK:I = 0xf

.field static final NATIVE_BYTE_ORDER:Ljava/nio/ByteOrder;

.field static final NOT_COMPRESSIBLE_DETECTION_LEVEL:I = 0x6

.field static final OPTIMAL_ML:I = 0x12

.field static final RUN_BITS:I = 0x4

.field static final RUN_MASK:I = 0xf

.field static final SKIP_STRENGTH:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sput-object v0, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->NATIVE_BYTE_ORDER:Ljava/nio/ByteOrder;

    const/4 v0, 0x6

    const/4 v1, 0x2

    .line 69
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->SKIP_STRENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkLength(I)V
    .locals 1

    if-ltz p0, :cond_0

    return-void

    .line 246
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "lengths must be >= 0"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static checkRange([BI)V
    .locals 0

    if-ltz p1, :cond_0

    .line 231
    array-length p0, p0

    if-ge p1, p0, :cond_0

    return-void

    .line 232
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method

.method static checkRange([BII)V
    .locals 0

    .line 237
    invoke-static {p2}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->checkLength(I)V

    if-lez p2, :cond_0

    .line 239
    invoke-static {p0, p1}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->checkRange([BI)V

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 240
    invoke-static {p0, p1}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->checkRange([BI)V

    :cond_0
    return-void
.end method

.method static commonBytes([BIII)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 208
    aget-byte p1, p0, p1

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, p0, p2

    if-ne p1, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    move p1, v1

    move p2, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method static commonBytesBackward([BIIII)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-le p1, p3, :cond_0

    if-le p2, p4, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 216
    aget-byte v1, p0, p1

    add-int/lit8 p2, p2, -0x1

    aget-byte v2, p0, p2

    if-ne v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method static compress64k([BII)I
    .locals 13

    add-int v0, p1, p2

    add-int/lit8 v1, v0, -0x5

    add-int/lit8 v2, v0, -0xc

    const/16 v3, 0xd

    const/16 v4, 0x10e

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lt p2, v3, :cond_8

    const/16 p2, 0x2000

    new-array p2, p2, [S

    add-int/lit8 v3, p1, 0x1

    move v7, p1

    move v8, v6

    .line 111
    :goto_0
    sget v6, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->SKIP_STRENGTH:I

    shl-int v6, v5, v6

    add-int/lit8 v6, v6, 0x3

    :goto_1
    add-int/lit8 v9, v6, 0x1

    .line 114
    sget v10, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->SKIP_STRENGTH:I

    ushr-int/2addr v6, v10

    add-int/2addr v6, v3

    if-le v6, v2, :cond_0

    move p1, v7

    :goto_2
    move v6, v8

    goto/16 :goto_4

    .line 120
    :cond_0
    invoke-static {p0, v3}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->readInt([BI)I

    move-result v10

    invoke-static {v10}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->hash64k(I)I

    move-result v10

    .line 121
    invoke-static {p2, v10}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->readShort([SI)I

    move-result v11

    add-int/2addr v11, p1

    sub-int v12, v3, p1

    .line 122
    invoke-static {p2, v10, v12}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->writeShort([SII)V

    .line 123
    invoke-static {p0, v11, v3}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->readIntEquals([BII)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 126
    invoke-static {p0, v11, v3, p1, v7}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->commonBytesBackward([BIIII)I

    move-result v6

    sub-int/2addr v3, v6

    sub-int/2addr v11, v6

    sub-int v6, v3, v7

    add-int/lit8 v8, v8, 0x1

    const/16 v10, 0xf

    if-lt v6, v10, :cond_2

    if-le v6, v10, :cond_1

    add-int/lit8 v7, v6, -0xf

    .line 135
    div-int/lit16 v7, v7, 0xff

    add-int/2addr v8, v7

    :cond_1
    add-int/2addr v8, v5

    :cond_2
    add-int/2addr v8, v6

    :goto_3
    add-int/lit8 v8, v8, 0x2

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v11, v11, 0x4

    .line 145
    invoke-static {p0, v11, v3, v1}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->commonBytes([BIII)I

    move-result v6

    add-int/2addr v3, v6

    if-lt v6, v10, :cond_4

    if-lt v6, v4, :cond_3

    add-int/lit8 v6, v6, -0xf

    .line 150
    div-int/lit16 v6, v6, 0xff

    add-int/2addr v8, v6

    :cond_3
    add-int/2addr v8, v5

    :cond_4
    if-le v3, v2, :cond_5

    move p1, v3

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v3, -0x2

    .line 159
    invoke-static {p0, v6}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->readInt([BI)I

    move-result v7

    invoke-static {v7}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->hash64k(I)I

    move-result v7

    sub-int/2addr v6, p1

    invoke-static {p2, v7, v6}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->writeShort([SII)V

    .line 161
    invoke-static {p0, v3}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->readInt([BI)I

    move-result v6

    invoke-static {v6}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->hash64k(I)I

    move-result v6

    .line 162
    invoke-static {p2, v6}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->readShort([SI)I

    move-result v7

    add-int v11, p1, v7

    sub-int v7, v3, p1

    .line 163
    invoke-static {p2, v6, v7}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->writeShort([SII)V

    .line 164
    invoke-static {p0, v3, v11}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->readIntEquals([BII)Z

    move-result v6

    if-nez v6, :cond_6

    add-int/lit8 v6, v3, 0x1

    move v7, v3

    move v3, v6

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    move v3, v6

    move v6, v9

    goto/16 :goto_1

    :cond_8
    :goto_4
    sub-int/2addr v0, p1

    if-lt v0, v4, :cond_9

    add-int/lit8 p0, v0, -0xf

    .line 175
    div-int/lit16 p0, p0, 0xff

    add-int/2addr v6, p0

    :cond_9
    add-int/2addr v6, v5

    add-int/2addr v6, v0

    return v6
.end method

.method static hash(I)I
    .locals 1

    const v0, -0x61c8864f

    mul-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x14

    return p0
.end method

.method static hash64k(I)I
    .locals 1

    const v0, -0x61c8864f

    mul-int/2addr p0, v0

    ushr-int/lit8 p0, p0, 0x13

    return p0
.end method

.method static final maxCompressedLength(I)I
    .locals 3

    if-ltz p0, :cond_0

    .line 186
    div-int/lit16 v0, p0, 0xff

    add-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x10

    return p0

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "length must be >= 0, got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static readByte([BI)B
    .locals 0

    .line 227
    aget-byte p0, p0, p1

    return p0
.end method

.method static readInt([BI)I
    .locals 2

    .line 261
    sget-object v0, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->NATIVE_BYTE_ORDER:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 262
    invoke-static {p0, p1}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->readIntBE([BI)I

    move-result p0

    return p0

    .line 264
    :cond_0
    invoke-static {p0, p1}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->readIntLE([BI)I

    move-result p0

    return p0
.end method

.method static readIntBE([BI)I
    .locals 2

    .line 251
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method static readIntEquals([BII)Z
    .locals 2

    .line 202
    aget-byte v0, p0, p1

    aget-byte v1, p0, p2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p0, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p0, v1

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, 0x3

    aget-byte p1, p0, p1

    add-int/lit8 p2, p2, 0x3

    aget-byte p0, p0, p2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static readIntLE([BI)I
    .locals 2

    .line 256
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method static readShort([SI)I
    .locals 0

    .line 223
    aget-short p0, p0, p1

    const p1, 0xffff

    and-int/2addr p0, p1

    return p0
.end method

.method static readShortLittleEndian([BI)I
    .locals 1

    .line 198
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0
.end method

.method static writeShort([SII)V
    .locals 0

    int-to-short p2, p2

    .line 269
    aput-short p2, p0, p1

    return-void
.end method


# virtual methods
.method public compressEstim([B)I
    .locals 2

    const/4 v0, 0x0

    .line 56
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->compressEstim([BII)I

    move-result p1

    return p1
.end method

.method public compressEstim([BII)I
    .locals 5

    const/16 v0, 0xa

    if-ge p3, v0, :cond_0

    return p3

    :cond_0
    const v0, 0x1000a

    add-int v1, p3, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 36
    div-int/2addr v1, v0

    .line 37
    div-int v3, p3, v1

    if-ge v3, v0, :cond_4

    mul-int v0, v3, v1

    if-gt v0, p3, :cond_4

    if-lt v1, v2, :cond_4

    if-lt v3, v2, :cond_4

    const/4 v0, 0x0

    move v2, p3

    move v1, v0

    :goto_0
    if-lez v2, :cond_2

    if-le v2, v3, :cond_1

    move v2, v3

    .line 46
    :cond_1
    invoke-static {p1, p2, v2}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->compress64k([BII)I

    move-result v4

    add-int/2addr v0, v4

    add-int/2addr p2, v2

    add-int/2addr v1, v2

    sub-int v2, p3, v1

    goto :goto_0

    :cond_2
    int-to-double p1, v0

    int-to-double v2, v1

    div-double/2addr p1, v2

    if-ne v1, p3, :cond_3

    goto :goto_1

    :cond_3
    int-to-double v0, p3

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    double-to-int v0, p1

    :goto_1
    return v0

    .line 39
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "?? "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
