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

    .line 69
    const/4 v0, 0x6

    const/4 v1, 0x2

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
    .locals 2
    .param p0, "len"    # I

    .line 245
    if-ltz p0, :cond_0

    .line 248
    return-void

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lengths must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkRange([BI)V
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "off"    # I

    .line 231
    if-ltz p1, :cond_0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 234
    return-void

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method static checkRange([BII)V
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 237
    invoke-static {p2}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->checkLength(I)V

    .line 238
    if-lez p2, :cond_0

    .line 239
    invoke-static {p0, p1}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->checkRange([BI)V

    .line 240
    add-int v0, p1, p2

    add-int/lit8 v0, v0, -0x1

    invoke-static {p0, v0}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->checkRange([BI)V

    .line 242
    :cond_0
    return-void
.end method

.method static commonBytes([BIII)I
    .locals 3
    .param p0, "b"    # [B
    .param p1, "o1"    # I
    .param p2, "o2"    # I
    .param p3, "limit"    # I

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "count":I
    :goto_0
    if-ge p2, p3, :cond_1

    add-int/lit8 v1, p1, 0x1

    .end local p1    # "o1":I
    .local v1, "o1":I
    aget-byte p1, p0, p1

    add-int/lit8 v2, p2, 0x1

    .end local p2    # "o2":I
    .local v2, "o2":I
    aget-byte p2, p0, p2

    if-ne p1, p2, :cond_0

    .line 209
    add-int/lit8 v0, v0, 0x1

    move p1, v1

    move p2, v2

    goto :goto_0

    .line 208
    :cond_0
    move p1, v1

    move p2, v2

    .line 211
    .end local v1    # "o1":I
    .end local v2    # "o2":I
    .restart local p1    # "o1":I
    .restart local p2    # "o2":I
    :cond_1
    return v0
.end method

.method static commonBytesBackward([BIIII)I
    .locals 3
    .param p0, "b"    # [B
    .param p1, "o1"    # I
    .param p2, "o2"    # I
    .param p3, "l1"    # I
    .param p4, "l2"    # I

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "count":I
    :goto_0
    if-le p1, p3, :cond_0

    if-le p2, p4, :cond_0

    add-int/lit8 p1, p1, -0x1

    aget-byte v1, p0, p1

    add-int/lit8 p2, p2, -0x1

    aget-byte v2, p0, p2

    if-ne v1, v2, :cond_0

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_0
    return v0
.end method

.method static compress64k([BII)I
    .locals 18
    .param p0, "src"    # [B
    .param p1, "srcOff"    # I
    .param p2, "srcLen"    # I

    .line 91
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    add-int v3, v1, v2

    .line 92
    .local v3, "srcEnd":I
    add-int/lit8 v4, v3, -0x5

    .line 93
    .local v4, "srcLimit":I
    add-int/lit8 v5, v3, -0xc

    .line 95
    .local v5, "mflimit":I
    move/from16 v6, p1

    .local v6, "sOff":I
    const/4 v7, 0x0

    .line 97
    .local v7, "dOff":I
    move v8, v6

    .line 99
    .local v8, "anchor":I
    const/4 v10, 0x1

    const/16 v11, 0xd

    if-lt v2, v11, :cond_8

    .line 101
    const/16 v11, 0x2000

    new-array v11, v11, [S

    .line 103
    .local v11, "hashTable":[S
    add-int/lit8 v6, v6, 0x1

    move v13, v7

    move v12, v8

    .line 108
    .end local v7    # "dOff":I
    .end local v8    # "anchor":I
    .local v12, "anchor":I
    .local v13, "dOff":I
    :goto_0
    move v7, v6

    .line 111
    .local v7, "forwardOff":I
    sget v8, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->SKIP_STRENGTH:I

    shl-int v8, v10, v8

    add-int/lit8 v8, v8, 0x3

    .line 113
    .local v8, "findMatchAttempts":I
    :goto_1
    move v6, v7

    .line 114
    add-int/lit8 v14, v8, 0x1

    .end local v8    # "findMatchAttempts":I
    .local v14, "findMatchAttempts":I
    sget v15, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->SKIP_STRENGTH:I

    ushr-int/2addr v8, v15

    add-int/2addr v7, v8

    .line 116
    if-le v7, v5, :cond_0

    .line 117
    move/from16 v17, v4

    move v8, v12

    move v7, v13

    goto/16 :goto_3

    .line 120
    :cond_0
    invoke-static {v0, v6}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->readInt([BI)I

    move-result v8

    invoke-static {v8}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->hash64k(I)I

    move-result v8

    .line 121
    .local v8, "h":I
    invoke-static {v11, v8}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->readShort([SI)I

    move-result v15

    add-int/2addr v15, v1

    .line 122
    .local v15, "ref":I
    sub-int v9, v6, v1

    invoke-static {v11, v8, v9}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->writeShort([SII)V

    .line 123
    .end local v8    # "h":I
    invoke-static {v0, v15, v6}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->readIntEquals([BII)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 126
    invoke-static {v0, v15, v6, v1, v12}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->commonBytesBackward([BIIII)I

    move-result v8

    .line 127
    .local v8, "excess":I
    sub-int/2addr v6, v8

    .line 128
    sub-int/2addr v15, v8

    .line 130
    sub-int v9, v6, v12

    .line 131
    .local v9, "runLen":I
    add-int/lit8 v13, v13, 0x1

    .line 133
    const/16 v10, 0xf

    if-lt v9, v10, :cond_2

    .line 134
    if-le v9, v10, :cond_1

    .line 135
    add-int/lit8 v10, v9, -0xf

    div-int/lit16 v10, v10, 0xff

    add-int/2addr v13, v10

    .line 136
    :cond_1
    const/4 v10, 0x1

    add-int/2addr v13, v10

    .line 138
    :cond_2
    add-int/2addr v13, v9

    .line 141
    :goto_2
    add-int/lit8 v13, v13, 0x2

    .line 143
    add-int/lit8 v6, v6, 0x4

    .line 144
    add-int/lit8 v15, v15, 0x4

    .line 145
    invoke-static {v0, v15, v6, v4}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->commonBytes([BIII)I

    move-result v10

    .line 146
    .local v10, "matchLen":I
    add-int/2addr v6, v10

    .line 148
    const/16 v2, 0xf

    if-lt v10, v2, :cond_4

    .line 149
    const/16 v2, 0x10e

    if-lt v10, v2, :cond_3

    .line 150
    add-int/lit8 v2, v10, -0xf

    div-int/lit16 v2, v2, 0xff

    add-int/2addr v13, v2

    .line 151
    :cond_3
    const/4 v2, 0x1

    add-int/2addr v13, v2

    .line 154
    :cond_4
    if-le v6, v5, :cond_5

    .line 155
    move v2, v6

    .line 156
    .end local v12    # "anchor":I
    .local v2, "anchor":I
    move v8, v2

    move/from16 v17, v4

    move v7, v13

    goto :goto_3

    .line 159
    .end local v2    # "anchor":I
    .restart local v12    # "anchor":I
    :cond_5
    add-int/lit8 v2, v6, -0x2

    invoke-static {v0, v2}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->readInt([BI)I

    move-result v2

    invoke-static {v2}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->hash64k(I)I

    move-result v2

    add-int/lit8 v16, v6, -0x2

    move/from16 v17, v4

    .end local v4    # "srcLimit":I
    .local v17, "srcLimit":I
    sub-int v4, v16, v1

    invoke-static {v11, v2, v4}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->writeShort([SII)V

    .line 161
    invoke-static {v0, v6}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->readInt([BI)I

    move-result v2

    invoke-static {v2}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->hash64k(I)I

    move-result v2

    .line 162
    .local v2, "h":I
    invoke-static {v11, v2}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->readShort([SI)I

    move-result v4

    add-int v15, v1, v4

    .line 163
    sub-int v4, v6, v1

    invoke-static {v11, v2, v4}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->writeShort([SII)V

    .line 164
    invoke-static {v0, v6, v15}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->readIntEquals([BII)Z

    move-result v4

    if-nez v4, :cond_6

    .line 165
    nop

    .line 170
    .end local v2    # "h":I
    .end local v10    # "matchLen":I
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "sOff":I
    .local v2, "sOff":I
    move v12, v6

    .line 171
    .end local v7    # "forwardOff":I
    .end local v8    # "excess":I
    .end local v9    # "runLen":I
    .end local v14    # "findMatchAttempts":I
    .end local v15    # "ref":I
    move v6, v2

    move/from16 v4, v17

    const/4 v10, 0x1

    move/from16 v2, p2

    goto/16 :goto_0

    .line 167
    .local v2, "h":I
    .restart local v6    # "sOff":I
    .restart local v7    # "forwardOff":I
    .restart local v8    # "excess":I
    .restart local v9    # "runLen":I
    .restart local v10    # "matchLen":I
    .restart local v14    # "findMatchAttempts":I
    .restart local v15    # "ref":I
    :cond_6
    nop

    .end local v2    # "h":I
    .end local v10    # "matchLen":I
    add-int/lit8 v13, v13, 0x1

    .line 168
    move/from16 v2, p2

    move/from16 v4, v17

    goto :goto_2

    .line 123
    .end local v8    # "excess":I
    .end local v9    # "runLen":I
    .end local v17    # "srcLimit":I
    .restart local v4    # "srcLimit":I
    :cond_7
    move/from16 v17, v4

    .end local v4    # "srcLimit":I
    .restart local v17    # "srcLimit":I
    move/from16 v2, p2

    move v8, v14

    const/4 v10, 0x1

    goto/16 :goto_1

    .line 99
    .end local v11    # "hashTable":[S
    .end local v12    # "anchor":I
    .end local v13    # "dOff":I
    .end local v14    # "findMatchAttempts":I
    .end local v15    # "ref":I
    .end local v17    # "srcLimit":I
    .restart local v4    # "srcLimit":I
    .local v7, "dOff":I
    .local v8, "anchor":I
    :cond_8
    move/from16 v17, v4

    .line 173
    .end local v4    # "srcLimit":I
    .restart local v17    # "srcLimit":I
    :goto_3
    sub-int v2, v3, v8

    .line 174
    .local v2, "runLen":I
    const/16 v4, 0x10e

    if-lt v2, v4, :cond_9

    .line 175
    add-int/lit8 v4, v2, -0xf

    div-int/lit16 v4, v4, 0xff

    add-int/2addr v7, v4

    .line 177
    :cond_9
    const/4 v4, 0x1

    add-int/2addr v7, v4

    .line 178
    add-int/2addr v7, v2

    .line 179
    return v7
.end method

.method static hash(I)I
    .locals 1
    .param p0, "i"    # I

    .line 190
    const v0, -0x61c8864f

    mul-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method static hash64k(I)I
    .locals 1
    .param p0, "i"    # I

    .line 194
    const v0, -0x61c8864f

    mul-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x13

    return v0
.end method

.method static final maxCompressedLength(I)I
    .locals 3
    .param p0, "length"    # I

    .line 183
    if-ltz p0, :cond_0

    .line 186
    div-int/lit16 v0, p0, 0xff

    add-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x10

    return v0

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length must be >= 0, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static readByte([BI)B
    .locals 1
    .param p0, "buf"    # [B
    .param p1, "i"    # I

    .line 227
    aget-byte v0, p0, p1

    return v0
.end method

.method static readInt([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "i"    # I

    .line 261
    sget-object v0, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->NATIVE_BYTE_ORDER:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_0

    .line 262
    invoke-static {p0, p1}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->readIntBE([BI)I

    move-result v0

    return v0

    .line 264
    :cond_0
    invoke-static {p0, p1}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->readIntLE([BI)I

    move-result v0

    return v0
.end method

.method static readIntBE([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "i"    # I

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

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static readIntEquals([BII)Z
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "i"    # I
    .param p2, "j"    # I

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

    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static readIntLE([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "i"    # I

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

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static readShort([SI)I
    .locals 2
    .param p0, "buf"    # [S
    .param p1, "off"    # I

    .line 223
    aget-short v0, p0, p1

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method static readShortLittleEndian([BI)I
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "i"    # I

    .line 198
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method static writeShort([SII)V
    .locals 1
    .param p0, "buf"    # [S
    .param p1, "off"    # I
    .param p2, "v"    # I

    .line 269
    int-to-short v0, p2

    aput-short v0, p0, p1

    .line 270
    return-void
.end method


# virtual methods
.method public compressEstim([B)I
    .locals 2
    .param p1, "src"    # [B

    .line 56
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->compressEstim([BII)I

    move-result v0

    return v0
.end method

.method public compressEstim([BII)I
    .locals 11
    .param p1, "src"    # [B
    .param p2, "srcOff"    # I
    .param p3, "srcLen"    # I

    .line 33
    const/16 v0, 0xa

    if-ge p3, v0, :cond_0

    .line 34
    return p3

    .line 35
    :cond_0
    const v0, 0x1000a

    .line 36
    .local v0, "stride":I
    add-int v1, p3, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    div-int/2addr v1, v0

    .line 37
    .local v1, "segments":I
    div-int v0, p3, v1

    .line 38
    const v3, 0x1000a

    if-ge v0, v3, :cond_4

    mul-int v3, v0, v1

    if-gt v3, p3, :cond_4

    if-lt v1, v2, :cond_4

    if-lt v0, v2, :cond_4

    .line 40
    const/4 v2, 0x0

    .line 41
    .local v2, "bytesIn":I
    const/4 v3, 0x0

    .line 42
    .local v3, "bytesOut":I
    move v4, p3

    .line 43
    .local v4, "len":I
    :goto_0
    if-lez v4, :cond_2

    .line 44
    if-le v4, v0, :cond_1

    .line 45
    move v4, v0

    .line 46
    :cond_1
    invoke-static {p1, p2, v4}, Lar/com/hjg/pngj/pixels/DeflaterEstimatorLz4;->compress64k([BII)I

    move-result v5

    add-int/2addr v3, v5

    .line 47
    add-int/2addr p2, v4

    .line 48
    add-int/2addr v2, v4

    .line 49
    sub-int v4, p3, v2

    goto :goto_0

    .line 51
    :cond_2
    int-to-double v5, v3

    int-to-double v7, v2

    div-double/2addr v5, v7

    .line 52
    .local v5, "ratio":D
    if-ne v2, p3, :cond_3

    move v7, v3

    goto :goto_1

    :cond_3
    int-to-double v7, p3

    mul-double/2addr v7, v5

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v7, v9

    double-to-int v7, v7

    :goto_1
    return v7

    .line 39
    .end local v2    # "bytesIn":I
    .end local v3    # "bytesOut":I
    .end local v4    # "len":I
    .end local v5    # "ratio":D
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "?? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
