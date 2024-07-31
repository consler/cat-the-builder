.class public Lcom/badlogic/gdx/utils/compression/lz/BinTree;
.super Lcom/badlogic/gdx/utils/compression/lz/InWindow;
.source "BinTree.java"


# static fields
.field private static final CrcTable:[I

.field static final kBT2HashSize:I = 0x10000

.field static final kEmptyHashValue:I = 0x0

.field static final kHash2Size:I = 0x400

.field static final kHash3Offset:I = 0x400

.field static final kHash3Size:I = 0x10000

.field static final kMaxValForNormalize:I = 0x3fffffff

.field static final kStartMaxLen:I = 0x1


# instance fields
.field HASH_ARRAY:Z

.field _cutValue:I

.field _cyclicBufferPos:I

.field _cyclicBufferSize:I

.field _hash:[I

.field _hashMask:I

.field _hashSizeSum:I

.field _matchMaxLen:I

.field _son:[I

.field kFixHashSize:I

.field kMinMatchCheck:I

.field kNumHashDirectBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 298
    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    .line 301
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 302
    move v2, v1

    .line 303
    .local v2, "r":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    .line 304
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_0

    .line 305
    ushr-int/lit8 v4, v2, 0x1

    const v5, -0x12477ce0

    xor-int v2, v4, v5

    goto :goto_2

    .line 307
    :cond_0
    ushr-int/lit8 v2, v2, 0x1

    .line 303
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 308
    .end local v3    # "j":I
    :cond_1
    sget-object v3, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    aput v2, v3, v1

    .line 301
    .end local v2    # "r":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 310
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    .line 15
    const/16 v1, 0xff

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    .line 17
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    .line 19
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    .line 29
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    .line 30
    const/4 v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    .line 31
    const v0, 0x10400

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    return-void
.end method


# virtual methods
.method public Create(IIII)Z
    .locals 5
    .param p1, "historySize"    # I
    .param p2, "keepAddBufferBefore"    # I
    .param p3, "matchMaxLen"    # I
    .param p4, "keepAddBufferAfter"    # I

    .line 61
    const v0, 0x3ffffeff    # 1.9999694f

    if-le p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 62
    :cond_0
    shr-int/lit8 v0, p3, 0x1

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    .line 64
    add-int v0, p1, p2

    add-int/2addr v0, p3

    add-int/2addr v0, p4

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v0, v0, 0x100

    .line 66
    .local v0, "windowReservSize":I
    add-int v1, p1, p2

    add-int v2, p3, p4

    invoke-super {p0, v1, v2, v0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->Create(III)V

    .line 68
    iput p3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    .line 70
    add-int/lit8 v1, p1, 0x1

    .line 71
    .local v1, "cyclicBufferSize":I
    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    if-eq v2, v1, :cond_1

    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    .line 73
    :cond_1
    const/high16 v2, 0x10000

    .line 75
    .local v2, "hs":I
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 76
    add-int/lit8 v2, p1, -0x1

    .line 77
    shr-int/lit8 v3, v2, 0x1

    or-int/2addr v2, v3

    .line 78
    shr-int/lit8 v3, v2, 0x2

    or-int/2addr v2, v3

    .line 79
    shr-int/lit8 v3, v2, 0x4

    or-int/2addr v2, v3

    .line 80
    shr-int/lit8 v3, v2, 0x8

    or-int/2addr v2, v3

    .line 81
    shr-int/2addr v2, v4

    .line 82
    const v3, 0xffff

    or-int/2addr v2, v3

    .line 83
    const/high16 v3, 0x1000000

    if-le v2, v3, :cond_2

    shr-int/lit8 v2, v2, 0x1

    .line 84
    :cond_2
    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashMask:I

    .line 85
    add-int/2addr v2, v4

    .line 86
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    add-int/2addr v2, v3

    .line 88
    :cond_3
    iget v3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    if-eq v2, v3, :cond_4

    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    new-array v3, v2, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    .line 89
    :cond_4
    return v4
.end method

.method public GetMatches([I)I
    .locals 22
    .param p1, "distances"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 94
    move-object/from16 v0, p0

    iget v1, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_streamPos:I

    const/4 v3, 0x0

    if-gt v1, v2, :cond_0

    .line 95
    iget v1, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    .local v1, "lenLimit":I
    goto :goto_0

    .line 97
    .end local v1    # "lenLimit":I
    :cond_0
    iget v1, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_streamPos:I

    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v1, v2

    .line 98
    .restart local v1    # "lenLimit":I
    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    if-ge v1, v2, :cond_1

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    .line 100
    return v3

    .line 104
    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 105
    .local v2, "offset":I
    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    if-le v4, v5, :cond_2

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    sub-int/2addr v4, v5

    goto :goto_1

    :cond_2
    move v4, v3

    .line 106
    .local v4, "matchMinPos":I
    :goto_1
    iget v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    iget v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    add-int/2addr v5, v6

    .line 107
    .local v5, "cur":I
    const/4 v6, 0x1

    .line 108
    .local v6, "maxLen":I
    const/4 v7, 0x0

    .local v7, "hash2Value":I
    const/4 v8, 0x0

    .line 110
    .local v8, "hash3Value":I
    iget-boolean v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    if-eqz v9, :cond_3

    .line 111
    sget-object v9, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v10, v10, v5

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v11, v5, 0x1

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    xor-int/2addr v9, v10

    .line 112
    .local v9, "temp":I
    and-int/lit16 v7, v9, 0x3ff

    .line 113
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v11, v5, 0x2

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    .line 114
    const v10, 0xffff

    and-int v8, v9, v10

    .line 115
    sget-object v10, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    iget-object v11, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v12, v5, 0x3

    aget-byte v11, v11, v12

    and-int/lit16 v11, v11, 0xff

    aget v10, v10, v11

    shl-int/lit8 v10, v10, 0x5

    xor-int/2addr v10, v9

    iget v11, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashMask:I

    and-int v9, v10, v11

    .line 116
    .local v9, "hashValue":I
    goto :goto_2

    .line 117
    .end local v9    # "hashValue":I
    :cond_3
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v9, v9, v5

    and-int/lit16 v9, v9, 0xff

    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v11, v5, 0x1

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v10, v10, 0x8

    xor-int/2addr v9, v10

    .line 119
    .restart local v9    # "hashValue":I
    :goto_2
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    iget v11, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    add-int/2addr v11, v9

    aget v11, v10, v11

    .line 120
    .local v11, "curMatch":I
    iget-boolean v12, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    if-eqz v12, :cond_7

    .line 121
    aget v12, v10, v7

    .line 122
    .local v12, "curMatch2":I
    add-int/lit16 v13, v8, 0x400

    aget v13, v10, v13

    .line 123
    .local v13, "curMatch3":I
    iget v14, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v14, v10, v7

    .line 124
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    add-int/lit16 v14, v8, 0x400

    iget v15, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v15, v10, v14

    .line 125
    if-le v12, v4, :cond_4

    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    iget v14, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    add-int/2addr v14, v12

    aget-byte v10, v10, v14

    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v14, v14, v5

    if-ne v10, v14, :cond_4

    .line 126
    add-int/lit8 v10, v2, 0x1

    .end local v2    # "offset":I
    .local v10, "offset":I
    const/4 v14, 0x2

    move v6, v14

    aput v14, p1, v2

    .line 127
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "offset":I
    .restart local v2    # "offset":I
    iget v14, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v14, v12

    add-int/lit8 v14, v14, -0x1

    aput v14, p1, v10

    .line 129
    :cond_4
    if-le v13, v4, :cond_6

    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    iget v14, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    add-int/2addr v14, v13

    aget-byte v10, v10, v14

    iget-object v14, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v14, v14, v5

    if-ne v10, v14, :cond_6

    .line 130
    if-ne v13, v12, :cond_5

    add-int/lit8 v2, v2, -0x2

    .line 131
    :cond_5
    add-int/lit8 v10, v2, 0x1

    .end local v2    # "offset":I
    .restart local v10    # "offset":I
    const/4 v14, 0x3

    move v6, v14

    aput v14, p1, v2

    .line 132
    add-int/lit8 v2, v10, 0x1

    .end local v10    # "offset":I
    .restart local v2    # "offset":I
    iget v14, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v14, v13

    add-int/lit8 v14, v14, -0x1

    aput v14, p1, v10

    .line 133
    move v12, v13

    .line 135
    :cond_6
    if-eqz v2, :cond_7

    if-ne v12, v11, :cond_7

    .line 136
    add-int/lit8 v2, v2, -0x2

    .line 137
    const/4 v6, 0x1

    .line 141
    .end local v12    # "curMatch2":I
    .end local v13    # "curMatch3":I
    :cond_7
    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    iget v12, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    add-int/2addr v12, v9

    iget v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v13, v10, v12

    .line 143
    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    shl-int/lit8 v12, v10, 0x1

    add-int/lit8 v12, v12, 0x1

    .line 144
    .local v12, "ptr0":I
    shl-int/lit8 v10, v10, 0x1

    .line 147
    .local v10, "ptr1":I
    iget v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    move v14, v13

    .local v14, "len1":I
    move v15, v13

    .line 149
    .local v15, "len0":I
    if-eqz v13, :cond_9

    .line 150
    if-le v11, v4, :cond_8

    .line 151
    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    add-int/2addr v3, v11

    move/from16 v16, v6

    .end local v6    # "maxLen":I
    .local v16, "maxLen":I
    iget v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    add-int/2addr v3, v6

    aget-byte v3, v13, v3

    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    iget v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    add-int v17, v5, v13

    aget-byte v6, v6, v17

    if-eq v3, v6, :cond_a

    .line 152
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    move v6, v13

    .end local v16    # "maxLen":I
    .restart local v6    # "maxLen":I
    aput v13, p1, v2

    .line 153
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    iget v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v13, v11

    add-int/lit8 v13, v13, -0x1

    aput v13, p1, v3

    goto :goto_4

    .line 150
    :cond_8
    move/from16 v16, v6

    .end local v6    # "maxLen":I
    .restart local v16    # "maxLen":I
    goto :goto_3

    .line 149
    .end local v16    # "maxLen":I
    .restart local v6    # "maxLen":I
    :cond_9
    move/from16 v16, v6

    .line 158
    .end local v6    # "maxLen":I
    .restart local v16    # "maxLen":I
    :cond_a
    :goto_3
    move/from16 v6, v16

    .end local v16    # "maxLen":I
    .restart local v6    # "maxLen":I
    :goto_4
    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    .line 161
    .local v3, "count":I
    :goto_5
    if-le v11, v4, :cond_13

    add-int/lit8 v13, v3, -0x1

    .end local v3    # "count":I
    .local v13, "count":I
    if-nez v3, :cond_b

    move/from16 v16, v4

    move/from16 v17, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move v3, v13

    goto/16 :goto_b

    .line 165
    :cond_b
    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v3, v11

    .line 166
    .local v3, "delta":I
    move/from16 v16, v4

    .end local v4    # "matchMinPos":I
    .local v16, "matchMinPos":I
    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    if-gt v3, v4, :cond_c

    sub-int/2addr v4, v3

    move/from16 v17, v7

    goto :goto_6

    :cond_c
    sub-int/2addr v4, v3

    move/from16 v17, v7

    .end local v7    # "hash2Value":I
    .local v17, "hash2Value":I
    iget v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    add-int/2addr v4, v7

    :goto_6
    shl-int/lit8 v4, v4, 0x1

    .line 169
    .local v4, "cyclicPos":I
    iget v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    add-int/2addr v7, v11

    .line 170
    .local v7, "pby1":I
    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 171
    .local v18, "len":I
    move/from16 v19, v8

    .end local v8    # "hash3Value":I
    .local v19, "hash3Value":I
    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v20, v7, v18

    aget-byte v8, v8, v20

    move/from16 v20, v9

    .end local v9    # "hashValue":I
    .local v20, "hashValue":I
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v21, v5, v18

    aget-byte v9, v9, v21

    if-ne v8, v9, :cond_11

    .line 172
    :goto_7
    add-int/lit8 v8, v18, 0x1

    .end local v18    # "len":I
    .local v8, "len":I
    if-eq v8, v1, :cond_e

    .line 173
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v18, v7, v8

    aget-byte v9, v9, v18

    move/from16 v21, v13

    .end local v13    # "count":I
    .local v21, "count":I
    iget-object v13, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v18, v5, v8

    aget-byte v13, v13, v18

    if-eq v9, v13, :cond_d

    goto :goto_8

    :cond_d
    move/from16 v18, v8

    move/from16 v13, v21

    goto :goto_7

    .line 172
    .end local v21    # "count":I
    .restart local v13    # "count":I
    :cond_e
    move/from16 v21, v13

    .line 174
    .end local v13    # "count":I
    .restart local v21    # "count":I
    :goto_8
    if-ge v6, v8, :cond_10

    .line 175
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "offset":I
    .local v9, "offset":I
    move v6, v8

    aput v8, p1, v2

    .line 176
    add-int/lit8 v2, v9, 0x1

    .end local v9    # "offset":I
    .restart local v2    # "offset":I
    add-int/lit8 v13, v3, -0x1

    aput v13, p1, v9

    .line 177
    if-ne v8, v1, :cond_f

    .line 178
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aget v13, v9, v4

    aput v13, v9, v10

    .line 179
    add-int/lit8 v13, v4, 0x1

    aget v13, v9, v13

    aput v13, v9, v12

    .line 180
    move/from16 v13, v21

    goto :goto_c

    .line 177
    :cond_f
    move/from16 v18, v8

    goto :goto_9

    .line 174
    :cond_10
    move/from16 v18, v8

    goto :goto_9

    .line 171
    .end local v8    # "len":I
    .end local v21    # "count":I
    .restart local v13    # "count":I
    .restart local v18    # "len":I
    :cond_11
    move/from16 v21, v13

    .line 184
    .end local v13    # "count":I
    .restart local v21    # "count":I
    :goto_9
    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v9, v7, v18

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v13, v5, v18

    aget-byte v9, v9, v13

    and-int/lit16 v9, v9, 0xff

    if-ge v8, v9, :cond_12

    .line 185
    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aput v11, v8, v10

    .line 186
    add-int/lit8 v9, v4, 0x1

    .line 187
    .end local v10    # "ptr1":I
    .local v9, "ptr1":I
    aget v8, v8, v9

    .line 188
    .end local v11    # "curMatch":I
    .local v8, "curMatch":I
    move/from16 v10, v18

    move v11, v8

    move v14, v10

    move v10, v9

    .end local v14    # "len1":I
    .local v10, "len1":I
    goto :goto_a

    .line 190
    .end local v8    # "curMatch":I
    .end local v9    # "ptr1":I
    .local v10, "ptr1":I
    .restart local v11    # "curMatch":I
    .restart local v14    # "len1":I
    :cond_12
    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aput v11, v8, v12

    .line 191
    move v9, v4

    .line 192
    .end local v12    # "ptr0":I
    .local v9, "ptr0":I
    aget v8, v8, v9

    .line 193
    .end local v11    # "curMatch":I
    .restart local v8    # "curMatch":I
    move/from16 v11, v18

    move v12, v9

    move v15, v11

    move v11, v8

    .line 195
    .end local v3    # "delta":I
    .end local v4    # "cyclicPos":I
    .end local v7    # "pby1":I
    .end local v8    # "curMatch":I
    .end local v9    # "ptr0":I
    .end local v18    # "len":I
    .restart local v11    # "curMatch":I
    .restart local v12    # "ptr0":I
    :goto_a
    move/from16 v4, v16

    move/from16 v7, v17

    move/from16 v8, v19

    move/from16 v9, v20

    move/from16 v3, v21

    goto/16 :goto_5

    .line 161
    .end local v16    # "matchMinPos":I
    .end local v17    # "hash2Value":I
    .end local v19    # "hash3Value":I
    .end local v20    # "hashValue":I
    .end local v21    # "count":I
    .local v3, "count":I
    .local v4, "matchMinPos":I
    .local v7, "hash2Value":I
    .local v8, "hash3Value":I
    .local v9, "hashValue":I
    :cond_13
    move/from16 v16, v4

    move/from16 v17, v7

    move/from16 v19, v8

    move/from16 v20, v9

    .line 162
    .end local v4    # "matchMinPos":I
    .end local v7    # "hash2Value":I
    .end local v8    # "hash3Value":I
    .end local v9    # "hashValue":I
    .restart local v16    # "matchMinPos":I
    .restart local v17    # "hash2Value":I
    .restart local v19    # "hash3Value":I
    .restart local v20    # "hashValue":I
    :goto_b
    iget-object v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    const/4 v7, 0x0

    aput v7, v4, v10

    aput v7, v4, v12

    .line 163
    move v13, v3

    .line 196
    .end local v3    # "count":I
    .restart local v13    # "count":I
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    .line 197
    return v2
.end method

.method public Init()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-super {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->Init()V

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    aput v2, v1, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    .end local v0    # "i":I
    :cond_0
    iput v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    .line 51
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->ReduceOffsets(I)V

    .line 52
    return-void
.end method

.method public MovePos()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    .line 56
    :cond_0
    invoke-super {p0}, Lcom/badlogic/gdx/utils/compression/lz/InWindow;->MovePos()V

    .line 57
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    const v1, 0x3fffffff    # 1.9999999f

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->Normalize()V

    .line 58
    :cond_1
    return-void
.end method

.method Normalize()V
    .locals 3

    .line 288
    iget v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    sub-int/2addr v0, v1

    .line 289
    .local v0, "subValue":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v2, v1, v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->NormalizeLinks([III)V

    .line 290
    iget-object v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    iget v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashSizeSum:I

    invoke-virtual {p0, v1, v2, v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->NormalizeLinks([III)V

    .line 291
    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->ReduceOffsets(I)V

    .line 292
    return-void
.end method

.method NormalizeLinks([III)V
    .locals 2
    .param p1, "items"    # [I
    .param p2, "numItems"    # I
    .param p3, "subValue"    # I

    .line 277
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 278
    aget v1, p1, v0

    .line 279
    .local v1, "value":I
    if-gt v1, p3, :cond_0

    .line 280
    const/4 v1, 0x0

    goto :goto_1

    .line 282
    :cond_0
    sub-int/2addr v1, p3

    .line 283
    :goto_1
    aput v1, p1, v0

    .line 277
    .end local v1    # "value":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public SetCutValue(I)V
    .locals 0
    .param p1, "cutValue"    # I

    .line 295
    iput p1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    .line 296
    return-void
.end method

.method public SetType(I)V
    .locals 3
    .param p1, "numHashBytes"    # I

    .line 34
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    .line 35
    if-eqz v2, :cond_1

    .line 36
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    .line 37
    const/4 v0, 0x4

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    .line 38
    const v0, 0x10400

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    goto :goto_1

    .line 40
    :cond_1
    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    .line 41
    const/4 v0, 0x3

    iput v0, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    .line 42
    iput v1, p0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    .line 44
    :goto_1
    return-void
.end method

.method public Skip(I)V
    .locals 19
    .param p1, "num"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 203
    .end local p1    # "num":I
    .local v1, "num":I
    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_streamPos:I

    if-gt v2, v3, :cond_0

    .line 204
    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_matchMaxLen:I

    .local v2, "lenLimit":I
    goto :goto_1

    .line 206
    .end local v2    # "lenLimit":I
    :cond_0
    iget v2, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_streamPos:I

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v2, v3

    .line 207
    .restart local v2    # "lenLimit":I
    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kMinMatchCheck:I

    if-ge v2, v3, :cond_1

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    .line 209
    goto/16 :goto_c

    .line 213
    :cond_1
    :goto_1
    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    if-le v3, v4, :cond_2

    iget v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    sub-int/2addr v3, v4

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    .line 214
    .local v3, "matchMinPos":I
    :goto_2
    iget v4, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    iget v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    add-int/2addr v4, v6

    .line 218
    .local v4, "cur":I
    iget-boolean v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->HASH_ARRAY:Z

    if-eqz v6, :cond_3

    .line 219
    sget-object v6, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v7, v7, v4

    and-int/lit16 v7, v7, 0xff

    aget v6, v6, v7

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v8, v4, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    xor-int/2addr v6, v7

    .line 220
    .local v6, "temp":I
    and-int/lit16 v7, v6, 0x3ff

    .line 221
    .local v7, "hash2Value":I
    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    iget v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v9, v8, v7

    .line 222
    iget-object v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v9, v4, 0x2

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    xor-int/2addr v6, v8

    .line 223
    const v8, 0xffff

    and-int/2addr v8, v6

    .line 224
    .local v8, "hash3Value":I
    iget-object v9, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    add-int/lit16 v10, v8, 0x400

    iget v11, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v11, v9, v10

    .line 225
    sget-object v9, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->CrcTable:[I

    iget-object v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v11, v4, 0x3

    aget-byte v10, v10, v11

    and-int/lit16 v10, v10, 0xff

    aget v9, v9, v10

    shl-int/lit8 v9, v9, 0x5

    xor-int/2addr v9, v6

    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hashMask:I

    and-int v6, v9, v10

    .line 226
    .end local v7    # "hash2Value":I
    .end local v8    # "hash3Value":I
    .local v6, "hashValue":I
    goto :goto_3

    .line 227
    .end local v6    # "hashValue":I
    :cond_3
    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    aget-byte v6, v6, v4

    and-int/lit16 v6, v6, 0xff

    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int/lit8 v8, v4, 0x1

    aget-byte v7, v7, v8

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    xor-int/2addr v6, v7

    .line 229
    .restart local v6    # "hashValue":I
    :goto_3
    iget-object v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_hash:[I

    iget v8, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kFixHashSize:I

    add-int v9, v8, v6

    aget v9, v7, v9

    .line 230
    .local v9, "curMatch":I
    add-int/2addr v8, v6

    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    aput v10, v7, v8

    .line 232
    iget v7, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    shl-int/lit8 v8, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 233
    .local v8, "ptr0":I
    shl-int/lit8 v7, v7, 0x1

    .line 236
    .local v7, "ptr1":I
    iget v10, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->kNumHashDirectBytes:I

    move v11, v10

    .line 238
    .local v10, "len0":I
    .local v11, "len1":I
    iget v12, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cutValue:I

    .line 240
    .local v12, "count":I
    :goto_4
    if-le v9, v3, :cond_b

    add-int/lit8 v13, v12, -0x1

    .end local v12    # "count":I
    .local v13, "count":I
    if-nez v12, :cond_4

    move/from16 v17, v3

    move/from16 v18, v6

    move v12, v13

    goto/16 :goto_a

    .line 245
    :cond_4
    iget v12, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_pos:I

    sub-int/2addr v12, v9

    .line 246
    .local v12, "delta":I
    iget v14, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferPos:I

    if-gt v12, v14, :cond_5

    sub-int/2addr v14, v12

    goto :goto_5

    :cond_5
    sub-int/2addr v14, v12

    iget v15, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_cyclicBufferSize:I

    add-int/2addr v14, v15

    :goto_5
    shl-int/lit8 v14, v14, 0x1

    .line 249
    .local v14, "cyclicPos":I
    iget v15, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferOffset:I

    add-int/2addr v15, v9

    .line 250
    .local v15, "pby1":I
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 251
    .local v16, "len":I
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v17, v15, v16

    aget-byte v5, v5, v17

    move/from16 v17, v3

    .end local v3    # "matchMinPos":I
    .local v17, "matchMinPos":I
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v18, v4, v16

    aget-byte v3, v3, v18

    if-ne v5, v3, :cond_9

    .line 252
    :goto_6
    add-int/lit8 v3, v16, 0x1

    .end local v16    # "len":I
    .local v3, "len":I
    if-eq v3, v2, :cond_7

    .line 253
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v16, v15, v3

    aget-byte v5, v5, v16

    move/from16 v18, v6

    .end local v6    # "hashValue":I
    .local v18, "hashValue":I
    iget-object v6, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v16, v4, v3

    aget-byte v6, v6, v16

    if-eq v5, v6, :cond_6

    goto :goto_7

    :cond_6
    move/from16 v16, v3

    move/from16 v6, v18

    goto :goto_6

    .line 252
    .end local v18    # "hashValue":I
    .restart local v6    # "hashValue":I
    :cond_7
    move/from16 v18, v6

    .line 254
    .end local v6    # "hashValue":I
    .restart local v18    # "hashValue":I
    :goto_7
    if-ne v3, v2, :cond_8

    .line 255
    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aget v6, v5, v14

    aput v6, v5, v7

    .line 256
    add-int/lit8 v6, v14, 0x1

    aget v6, v5, v6

    aput v6, v5, v8

    .line 257
    goto :goto_b

    .line 254
    :cond_8
    move/from16 v16, v3

    goto :goto_8

    .line 251
    .end local v3    # "len":I
    .end local v18    # "hashValue":I
    .restart local v6    # "hashValue":I
    .restart local v16    # "len":I
    :cond_9
    move/from16 v18, v6

    .line 260
    .end local v6    # "hashValue":I
    .restart local v18    # "hashValue":I
    :goto_8
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v5, v15, v16

    aget-byte v3, v3, v5

    and-int/lit16 v3, v3, 0xff

    iget-object v5, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_bufferBase:[B

    add-int v6, v4, v16

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    if-ge v3, v5, :cond_a

    .line 261
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aput v9, v3, v7

    .line 262
    add-int/lit8 v5, v14, 0x1

    .line 263
    .end local v7    # "ptr1":I
    .local v5, "ptr1":I
    aget v3, v3, v5

    .line 264
    .end local v9    # "curMatch":I
    .local v3, "curMatch":I
    move/from16 v6, v16

    move v9, v3

    move v7, v5

    move v11, v6

    .end local v11    # "len1":I
    .local v6, "len1":I
    goto :goto_9

    .line 266
    .end local v3    # "curMatch":I
    .end local v5    # "ptr1":I
    .end local v6    # "len1":I
    .restart local v7    # "ptr1":I
    .restart local v9    # "curMatch":I
    .restart local v11    # "len1":I
    :cond_a
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    aput v9, v3, v8

    .line 267
    move v5, v14

    .line 268
    .end local v8    # "ptr0":I
    .local v5, "ptr0":I
    aget v3, v3, v5

    .line 269
    .end local v9    # "curMatch":I
    .restart local v3    # "curMatch":I
    move/from16 v6, v16

    move v9, v3

    move v8, v5

    move v10, v6

    .line 271
    .end local v3    # "curMatch":I
    .end local v5    # "ptr0":I
    .end local v12    # "delta":I
    .end local v14    # "cyclicPos":I
    .end local v15    # "pby1":I
    .end local v16    # "len":I
    .restart local v8    # "ptr0":I
    .restart local v9    # "curMatch":I
    :goto_9
    move v12, v13

    move/from16 v3, v17

    move/from16 v6, v18

    goto/16 :goto_4

    .line 240
    .end local v13    # "count":I
    .end local v17    # "matchMinPos":I
    .end local v18    # "hashValue":I
    .local v3, "matchMinPos":I
    .local v6, "hashValue":I
    .local v12, "count":I
    :cond_b
    move/from16 v17, v3

    move/from16 v18, v6

    .line 241
    .end local v3    # "matchMinPos":I
    .end local v6    # "hashValue":I
    .restart local v17    # "matchMinPos":I
    .restart local v18    # "hashValue":I
    :goto_a
    iget-object v3, v0, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->_son:[I

    const/4 v5, 0x0

    aput v5, v3, v7

    aput v5, v3, v8

    .line 242
    move v13, v12

    .line 272
    .end local v12    # "count":I
    .restart local v13    # "count":I
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/badlogic/gdx/utils/compression/lz/BinTree;->MovePos()V

    .line 273
    .end local v2    # "lenLimit":I
    .end local v4    # "cur":I
    .end local v7    # "ptr1":I
    .end local v8    # "ptr0":I
    .end local v9    # "curMatch":I
    .end local v10    # "len0":I
    .end local v11    # "len1":I
    .end local v13    # "count":I
    .end local v17    # "matchMinPos":I
    .end local v18    # "hashValue":I
    :goto_c
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_c

    .line 274
    return-void

    .line 273
    :cond_c
    goto/16 :goto_0
.end method
