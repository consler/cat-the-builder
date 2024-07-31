.class public Lcom/badlogic/gdx/utils/IntFloatMap;
.super Ljava/lang/Object;
.source "IntFloatMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IntFloatMap$Keys;,
        Lcom/badlogic/gdx/utils/IntFloatMap$Values;,
        Lcom/badlogic/gdx/utils/IntFloatMap$Entries;,
        Lcom/badlogic/gdx/utils/IntFloatMap$MapIterator;,
        Lcom/badlogic/gdx/utils/IntFloatMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/IntFloatMap$Entry;",
        ">;"
    }
.end annotation


# static fields
.field private static final EMPTY:I = 0x0

.field private static final PRIME1:I = -0x41e0eb4f

.field private static final PRIME2:I = -0x4b47d1c7

.field private static final PRIME3:I = -0x312e3dbf


# instance fields
.field capacity:I

.field private entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

.field private entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

.field hasZeroValue:Z

.field private hashShift:I

.field keyTable:[I

.field private keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

.field private keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

.field private loadFactor:F

.field private mask:I

.field private pushIterations:I

.field public size:I

.field private stashCapacity:I

.field stashSize:I

.field private threshold:I

.field valueTable:[F

.field private values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

.field private values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

.field zeroValue:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 57
    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntFloatMap;-><init>(IF)V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 63
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;-><init>(IF)V

    .line 64
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    if-ltz p1, :cond_2

    .line 71
    int-to-float v0, p1

    div-float/2addr v0, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 72
    const/high16 v0, 0x40000000    # 2.0f

    if-gt p1, v0, :cond_1

    .line 73
    iput p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    .line 75
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    .line 76
    iput p2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    .line 78
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    .line 79
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hashShift:I

    .line 81
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashCapacity:I

    .line 82
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    div-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->pushIterations:I

    .line 84
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 85
    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 86
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadFactor must be > 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialCapacity is too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .locals 4
    .param p1, "map"    # Lcom/badlogic/gdx/utils/IntFloatMap;

    .line 90
    iget v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntFloatMap;-><init>(IF)V

    .line 91
    iget v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    .line 92
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iget v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 95
    iget v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 96
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 97
    return-void
.end method

.method private containsKeyStash(I)Z
    .locals 4
    .param p1, "key"    # I

    .line 492
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 493
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 494
    aget v3, v0, v1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    return v3

    .line 493
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private getAndIncrementStash(IFF)F
    .locals 6
    .param p1, "key"    # I
    .param p2, "defaultValue"    # F
    .param p3, "increment"    # F

    .line 347
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 348
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 349
    aget v3, v0, v1

    if-ne p1, v3, :cond_0

    .line 350
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget v4, v3, v1

    .line 351
    .local v4, "value":F
    add-float v5, v4, p3

    aput v5, v3, v1

    .line 352
    return v4

    .line 348
    .end local v4    # "value":F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    add-float v1, p2, p3

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/utils/IntFloatMap;->put(IF)V

    .line 355
    return p2
.end method

.method private getStash(IF)F
    .locals 4
    .param p1, "key"    # I
    .param p2, "defaultValue"    # F

    .line 312
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 313
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 314
    aget v3, v0, v1

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget v3, v3, v1

    return v3

    .line 313
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 315
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return p2
.end method

.method private hash2(I)I
    .locals 2
    .param p1, "h"    # I

    .line 545
    const v0, -0x4b47d1c7

    mul-int/2addr p1, v0

    .line 546
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private hash3(I)I
    .locals 2
    .param p1, "h"    # I

    .line 550
    const v0, -0x312e3dbf

    mul-int/2addr p1, v0

    .line 551
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private push(IFIIIIII)V
    .locals 17
    .param p1, "insertKey"    # I
    .param p2, "insertValue"    # F
    .param p3, "index1"    # I
    .param p4, "key1"    # I
    .param p5, "index2"    # I
    .param p6, "key2"    # I
    .param p7, "index3"    # I
    .param p8, "key3"    # I

    .line 211
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 212
    .local v1, "keyTable":[I
    iget-object v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 213
    .local v2, "valueTable":[F
    iget v3, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    .line 218
    .local v3, "mask":I
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->pushIterations:I

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move v13, v4

    move/from16 v4, p1

    .line 221
    .end local p1    # "insertKey":I
    .end local p2    # "insertValue":F
    .end local p3    # "index1":I
    .end local p4    # "key1":I
    .end local p5    # "index2":I
    .end local p6    # "key2":I
    .end local p7    # "index3":I
    .end local p8    # "key3":I
    .local v4, "insertKey":I
    .local v5, "pushIterations":I
    .local v6, "insertValue":F
    .local v7, "index1":I
    .local v8, "key1":I
    .local v9, "index2":I
    .local v10, "key2":I
    .local v11, "index3":I
    .local v12, "key3":I
    .local v13, "i":I
    :goto_0
    const/4 v14, 0x2

    invoke-static {v14}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v14

    const/4 v15, 0x1

    if-eqz v14, :cond_1

    if-eq v14, v15, :cond_0

    .line 235
    move v14, v12

    .line 236
    .local v14, "evictedKey":I
    aget v16, v2, v11

    .line 237
    .local v16, "evictedValue":F
    aput v4, v1, v11

    .line 238
    aput v6, v2, v11

    move/from16 v15, v16

    goto :goto_1

    .line 229
    .end local v14    # "evictedKey":I
    .end local v16    # "evictedValue":F
    :cond_0
    move v14, v10

    .line 230
    .restart local v14    # "evictedKey":I
    aget v16, v2, v9

    .line 231
    .restart local v16    # "evictedValue":F
    aput v4, v1, v9

    .line 232
    aput v6, v2, v9

    .line 233
    move/from16 v15, v16

    goto :goto_1

    .line 223
    .end local v14    # "evictedKey":I
    .end local v16    # "evictedValue":F
    :cond_1
    move v14, v8

    .line 224
    .restart local v14    # "evictedKey":I
    aget v16, v2, v7

    .line 225
    .restart local v16    # "evictedValue":F
    aput v4, v1, v7

    .line 226
    aput v6, v2, v7

    .line 227
    move/from16 v15, v16

    .line 243
    .end local v16    # "evictedValue":F
    .local v15, "evictedValue":F
    :goto_1
    and-int v7, v14, v3

    .line 244
    aget v8, v1, v7

    .line 245
    if-nez v8, :cond_3

    .line 246
    aput v14, v1, v7

    .line 247
    aput v15, v2, v7

    .line 248
    move/from16 v16, v3

    .end local v3    # "mask":I
    .local v16, "mask":I
    iget v3, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    move/from16 p2, v4

    .end local v4    # "insertKey":I
    .local p2, "insertKey":I
    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v4, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v3, v4, :cond_2

    iget v3, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    .line 249
    :cond_2
    return-void

    .line 252
    .end local v16    # "mask":I
    .end local p2    # "insertKey":I
    .restart local v3    # "mask":I
    .restart local v4    # "insertKey":I
    :cond_3
    move/from16 v16, v3

    move/from16 p2, v4

    .end local v3    # "mask":I
    .end local v4    # "insertKey":I
    .restart local v16    # "mask":I
    .restart local p2    # "insertKey":I
    invoke-direct {v0, v14}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash2(I)I

    move-result v9

    .line 253
    aget v10, v1, v9

    .line 254
    if-nez v10, :cond_5

    .line 255
    aput v14, v1, v9

    .line 256
    aput v15, v2, v9

    .line 257
    iget v3, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v4, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v3, v4, :cond_4

    iget v3, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    .line 258
    :cond_4
    return-void

    .line 261
    :cond_5
    invoke-direct {v0, v14}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash3(I)I

    move-result v11

    .line 262
    aget v12, v1, v11

    .line 263
    if-nez v12, :cond_7

    .line 264
    aput v14, v1, v11

    .line 265
    aput v15, v2, v11

    .line 266
    iget v3, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v4, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v3, v4, :cond_6

    iget v3, v0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    .line 267
    :cond_6
    return-void

    .line 270
    :cond_7
    add-int/lit8 v13, v13, 0x1

    if-ne v13, v5, :cond_8

    .line 276
    invoke-direct {v0, v14, v15}, Lcom/badlogic/gdx/utils/IntFloatMap;->putStash(IF)V

    .line 277
    return-void

    .line 272
    :cond_8
    move v4, v14

    .line 273
    .end local p2    # "insertKey":I
    .restart local v4    # "insertKey":I
    move v6, v15

    .line 274
    move/from16 v3, v16

    goto/16 :goto_0
.end method

.method private putResize(IF)V
    .locals 17
    .param p1, "key"    # I
    .param p2, "value"    # F

    .line 173
    move-object/from16 v9, p0

    move/from16 v10, p2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 174
    iput v10, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 175
    iput-boolean v0, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 176
    return-void

    .line 180
    :cond_0
    iget v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    and-int v11, p1, v1

    .line 181
    .local v11, "index1":I
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v12, v1, v11

    .line 182
    .local v12, "key1":I
    if-nez v12, :cond_2

    .line 183
    aput p1, v1, v11

    .line 184
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput v10, v1, v11

    .line 185
    iget v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v2, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v1, v2, :cond_1

    iget v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    .line 186
    :cond_1
    return-void

    .line 189
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash2(I)I

    move-result v13

    .line 190
    .local v13, "index2":I
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v14, v1, v13

    .line 191
    .local v14, "key2":I
    if-nez v14, :cond_4

    .line 192
    aput p1, v1, v13

    .line 193
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput v10, v1, v13

    .line 194
    iget v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v2, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v1, v2, :cond_3

    iget v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    .line 195
    :cond_3
    return-void

    .line 198
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash3(I)I

    move-result v15

    .line 199
    .local v15, "index3":I
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v16, v1, v15

    .line 200
    .local v16, "key3":I
    if-nez v16, :cond_6

    .line 201
    aput p1, v1, v15

    .line 202
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput v10, v1, v15

    .line 203
    iget v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v2, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v1, v2, :cond_5

    iget v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    .line 204
    :cond_5
    return-void

    .line 207
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v11

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IntFloatMap;->push(IFIIIIII)V

    .line 208
    return-void
.end method

.method private putStash(IF)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # F

    .line 280
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashCapacity:I

    if-ne v0, v1, :cond_0

    .line 282
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    .line 283
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/IntFloatMap;->putResize(IF)V

    .line 284
    return-void

    .line 287
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    add-int/2addr v1, v0

    .line 288
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aput p1, v2, v1

    .line 289
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput p2, v2, v1

    .line 290
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    .line 291
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 292
    return-void
.end method

.method private resize(I)V
    .locals 7
    .param p1, "newSize"    # I

    .line 518
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int/2addr v0, v1

    .line 520
    .local v0, "oldEndIndex":I
    iput p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    .line 521
    int-to-float v1, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    .line 522
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    .line 523
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hashShift:I

    .line 524
    int-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashCapacity:I

    .line 525
    const/16 v1, 0x8

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-int v3, v3

    div-int/2addr v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->pushIterations:I

    .line 527
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 528
    .local v1, "oldKeyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 530
    .local v2, "oldValueTable":[F
    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashCapacity:I

    add-int v4, p1, v3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 531
    add-int/2addr v3, p1

    new-array v3, v3, [F

    iput-object v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 533
    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 534
    .local v3, "oldSize":I
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    iput v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 535
    const/4 v4, 0x0

    iput v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    .line 536
    if-lez v3, :cond_1

    .line 537
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 538
    aget v5, v1, v4

    .line 539
    .local v5, "key":I
    if-eqz v5, :cond_0

    aget v6, v2, v4

    invoke-direct {p0, v5, v6}, Lcom/badlogic/gdx/utils/IntFloatMap;->putResize(IF)V

    .line 537
    .end local v5    # "key":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 542
    .end local v4    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 448
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-nez v0, :cond_0

    return-void

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 450
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    const/4 v3, 0x0

    if-lez v1, :cond_1

    .line 451
    aput v3, v0, v2

    move v1, v2

    goto :goto_0

    .line 452
    .end local v2    # "i":I
    :cond_1
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 453
    iput v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 454
    iput v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    .line 455
    return-void
.end method

.method public clear(I)V
    .locals 1
    .param p1, "maximumCapacity"    # I

    .line 438
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    if-gt v0, p1, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap;->clear()V

    .line 440
    return-void

    .line 442
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 443
    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 444
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    .line 445
    return-void
.end method

.method public containsKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .line 479
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    return v0

    .line 480
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    and-int/2addr v0, p1

    .line 481
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 482
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash2(I)I

    move-result v0

    .line 483
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 484
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash3(I)I

    move-result v0

    .line 485
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->containsKeyStash(I)Z

    move-result v1

    return v1

    .line 488
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public containsValue(F)Z
    .locals 5
    .param p1, "value"    # F

    .line 460
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return v1

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 462
    .local v0, "keyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 463
    .local v2, "valueTable":[F
    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    if-lez v3, :cond_2

    .line 464
    aget v3, v0, v4

    if-eqz v3, :cond_1

    aget v3, v2, v4

    cmpl-float v3, v3, p1

    if-nez v3, :cond_1

    return v1

    .line 463
    :cond_1
    move v3, v4

    goto :goto_0

    .line 465
    .end local v4    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public containsValue(FF)Z
    .locals 4
    .param p1, "value"    # F
    .param p2, "epsilon"    # F

    .line 471
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    return v1

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 473
    .local v0, "valueTable":[F
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    if-lez v2, :cond_2

    .line 474
    aget v2, v0, v3

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, p2

    if-gtz v2, :cond_1

    return v1

    :cond_1
    move v2, v3

    goto :goto_0

    .line 475
    .end local v3    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "additionalCapacity"    # I

    .line 512
    if-ltz p1, :cond_1

    .line 513
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr v0, p1

    .line 514
    .local v0, "sizeNeeded":I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->loadFactor:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    .line 515
    :cond_0
    return-void

    .line 512
    .end local v0    # "sizeNeeded":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "additionalCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public entries()Lcom/badlogic/gdx/utils/IntFloatMap$Entries;
    .locals 3

    .line 637
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    return-object v0

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    if-nez v0, :cond_1

    .line 639
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    .line 640
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    .line 642
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 643
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->reset()V

    .line 644
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    .line 645
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    .line 646
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    return-object v0

    .line 648
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->reset()V

    .line 649
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    .line 650
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries1:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->valid:Z

    .line 651
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->entries2:Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    .line 574
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 575
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/IntFloatMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 576
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/IntFloatMap;

    .line 577
    .local v1, "other":Lcom/badlogic/gdx/utils/IntFloatMap;
    iget v3, v1, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-eq v3, v4, :cond_2

    return v2

    .line 578
    :cond_2
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eq v3, v4, :cond_3

    return v2

    .line 579
    :cond_3
    if-eqz v4, :cond_4

    iget v3, v1, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    iget v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_4

    .line 580
    return v2

    .line 582
    :cond_4
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 583
    .local v3, "keyTable":[I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 584
    .local v4, "valueTable":[F
    const/4 v5, 0x0

    .local v5, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    iget v7, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int/2addr v6, v7

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_7

    .line 585
    aget v7, v3, v5

    .line 586
    .local v7, "key":I
    if-eqz v7, :cond_6

    .line 587
    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Lcom/badlogic/gdx/utils/IntFloatMap;->get(IF)F

    move-result v9

    .line 588
    .local v9, "otherValue":F
    cmpl-float v8, v9, v8

    if-nez v8, :cond_5

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/IntFloatMap;->containsKey(I)Z

    move-result v8

    if-nez v8, :cond_5

    return v2

    .line 589
    :cond_5
    aget v8, v4, v5

    .line 590
    .local v8, "value":F
    cmpl-float v10, v9, v8

    if-eqz v10, :cond_6

    return v2

    .line 584
    .end local v7    # "key":I
    .end local v8    # "value":F
    .end local v9    # "otherValue":F
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 593
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_7
    return v0
.end method

.method public findKey(FI)I
    .locals 4
    .param p1, "value"    # F
    .param p2, "notFound"    # I

    .line 501
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 502
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 503
    .local v0, "keyTable":[I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 504
    .local v1, "valueTable":[F
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    if-lez v2, :cond_2

    .line 505
    aget v2, v0, v3

    if-eqz v2, :cond_1

    aget v2, v1, v3

    cmpl-float v2, v2, p1

    if-nez v2, :cond_1

    aget v2, v0, v3

    return v2

    .line 504
    :cond_1
    move v2, v3

    goto :goto_0

    .line 506
    .end local v3    # "i":I
    :cond_2
    return p2
.end method

.method public get(IF)F
    .locals 2
    .param p1, "key"    # I
    .param p2, "defaultValue"    # F

    .line 296
    if-nez p1, :cond_1

    .line 297
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-nez v0, :cond_0

    return p2

    .line 298
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    return v0

    .line 300
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    and-int/2addr v0, p1

    .line 301
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    .line 302
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash2(I)I

    move-result v0

    .line 303
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    .line 304
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash3(I)I

    move-result v0

    .line 305
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/IntFloatMap;->getStash(IF)F

    move-result v1

    return v1

    .line 308
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget v1, v1, v0

    return v1
.end method

.method public getAndIncrement(IFF)F
    .locals 4
    .param p1, "key"    # I
    .param p2, "defaultValue"    # F
    .param p3, "increment"    # F

    .line 321
    if-nez p1, :cond_1

    .line 322
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    .line 323
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 324
    .local v0, "value":F
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    add-float/2addr v1, p3

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 325
    return v0

    .line 327
    .end local v0    # "value":F
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 328
    add-float v1, p2, p3

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 329
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 330
    return p2

    .line 333
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    and-int/2addr v0, p1

    .line 334
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v1, v1, v0

    if-eq p1, v1, :cond_2

    .line 335
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash2(I)I

    move-result v0

    .line 336
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v1, v1, v0

    if-eq p1, v1, :cond_2

    .line 337
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash3(I)I

    move-result v0

    .line 338
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v1, v1, v0

    if-eq p1, v1, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/IntFloatMap;->getAndIncrementStash(IFF)F

    move-result v1

    return v1

    .line 341
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget v2, v1, v0

    .line 342
    .local v2, "value":F
    add-float v3, v2, p3

    aput v3, v1, v0

    .line 343
    return v2
.end method

.method public hashCode()I
    .locals 8

    .line 555
    const/4 v0, 0x0

    .line 556
    .local v0, "h":I
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-eqz v1, :cond_0

    .line 557
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 559
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 560
    .local v1, "keyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 561
    .local v2, "valueTable":[F
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int/2addr v4, v5

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 562
    aget v5, v1, v3

    .line 563
    .local v5, "key":I
    if-eqz v5, :cond_1

    .line 564
    mul-int/lit8 v6, v5, 0x1f

    add-int/2addr v0, v6

    .line 566
    aget v6, v2, v3

    .line 567
    .local v6, "value":F
    invoke-static {v6}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v7

    add-int/2addr v0, v7

    .line 561
    .end local v5    # "key":I
    .end local v6    # "value":F
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 570
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 423
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/badlogic/gdx/utils/IntFloatMap$Entry;",
            ">;"
        }
    .end annotation

    .line 629
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntFloatMap;->entries()Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/IntFloatMap$Keys;
    .locals 3

    .line 681
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    return-object v0

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    if-nez v0, :cond_1

    .line 683
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    .line 684
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    .line 686
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 687
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->reset()V

    .line 688
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    .line 689
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    .line 690
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    return-object v0

    .line 692
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->reset()V

    .line 693
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    .line 694
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys1:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Keys;->valid:Z

    .line 695
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keys2:Lcom/badlogic/gdx/utils/IntFloatMap$Keys;

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 418
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(IF)V
    .locals 19
    .param p1, "key"    # I
    .param p2, "value"    # F

    .line 100
    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    const/4 v0, 0x1

    if-nez v10, :cond_1

    .line 101
    iput v11, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    .line 102
    iget-boolean v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-nez v1, :cond_0

    .line 103
    iput-boolean v0, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 104
    iget v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/2addr v1, v0

    iput v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 106
    :cond_0
    return-void

    .line 109
    :cond_1
    iget-object v12, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 112
    .local v12, "keyTable":[I
    iget v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    and-int v13, v10, v1

    .line 113
    .local v13, "index1":I
    aget v14, v12, v13

    .line 114
    .local v14, "key1":I
    if-ne v10, v14, :cond_2

    .line 115
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput v11, v0, v13

    .line 116
    return-void

    .line 119
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash2(I)I

    move-result v15

    .line 120
    .local v15, "index2":I
    aget v8, v12, v15

    .line 121
    .local v8, "key2":I
    if-ne v10, v8, :cond_3

    .line 122
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput v11, v0, v15

    .line 123
    return-void

    .line 126
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash3(I)I

    move-result v16

    .line 127
    .local v16, "index3":I
    aget v7, v12, v16

    .line 128
    .local v7, "key3":I
    if-ne v10, v7, :cond_4

    .line 129
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput v11, v0, v16

    .line 130
    return-void

    .line 134
    :cond_4
    iget v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    .local v1, "i":I
    iget v2, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_6

    .line 135
    aget v3, v12, v1

    if-ne v10, v3, :cond_5

    .line 136
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput v11, v0, v1

    .line 137
    return-void

    .line 134
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_6
    if-nez v14, :cond_8

    .line 143
    aput v10, v12, v13

    .line 144
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput v11, v1, v13

    .line 145
    iget v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v2, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v1, v2, :cond_7

    iget v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    .line 146
    :cond_7
    return-void

    .line 149
    :cond_8
    if-nez v8, :cond_a

    .line 150
    aput v10, v12, v15

    .line 151
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput v11, v1, v15

    .line 152
    iget v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v2, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v1, v2, :cond_9

    iget v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    .line 153
    :cond_9
    return-void

    .line 156
    :cond_a
    if-nez v7, :cond_c

    .line 157
    aput v10, v12, v16

    .line 158
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aput v11, v1, v16

    .line 159
    iget v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    iget v2, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->threshold:I

    if-lt v1, v2, :cond_b

    iget v1, v9, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    .line 160
    :cond_b
    return-void

    .line 163
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v13

    move v4, v14

    move v5, v15

    move v6, v8

    move/from16 v17, v7

    .end local v7    # "key3":I
    .local v17, "key3":I
    move/from16 v7, v16

    move/from16 v18, v8

    .end local v8    # "key2":I
    .local v18, "key2":I
    move/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IntFloatMap;->push(IFIIIIII)V

    .line 164
    return-void
.end method

.method public putAll(Lcom/badlogic/gdx/utils/IntFloatMap;)V
    .locals 4
    .param p1, "map"    # Lcom/badlogic/gdx/utils/IntFloatMap;

    .line 167
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->entries()Lcom/badlogic/gdx/utils/IntFloatMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;

    .line 168
    .local v1, "entry":Lcom/badlogic/gdx/utils/IntFloatMap$Entry;
    iget v2, v1, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;->key:I

    iget v3, v1, Lcom/badlogic/gdx/utils/IntFloatMap$Entry;->value:F

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/utils/IntFloatMap;->put(IF)V

    .end local v1    # "entry":Lcom/badlogic/gdx/utils/IntFloatMap$Entry;
    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method

.method public remove(IF)F
    .locals 4
    .param p1, "key"    # I
    .param p2, "defaultValue"    # F

    .line 359
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 360
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    if-nez v1, :cond_0

    return p2

    .line 361
    :cond_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    .line 362
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 363
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    return v0

    .line 366
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->mask:I

    and-int/2addr v1, p1

    .line 367
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v3, v2, v1

    if-ne p1, v3, :cond_2

    .line 368
    aput v0, v2, v1

    .line 369
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget v0, v0, v1

    .line 370
    .local v0, "oldValue":F
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 371
    return v0

    .line 374
    .end local v0    # "oldValue":F
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash2(I)I

    move-result v1

    .line 375
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v3, v2, v1

    if-ne p1, v3, :cond_3

    .line 376
    aput v0, v2, v1

    .line 377
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget v0, v0, v1

    .line 378
    .restart local v0    # "oldValue":F
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 379
    return v0

    .line 382
    .end local v0    # "oldValue":F
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->hash3(I)I

    move-result v1

    .line 383
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v3, v2, v1

    if-ne p1, v3, :cond_4

    .line 384
    aput v0, v2, v1

    .line 385
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget v0, v0, v1

    .line 386
    .restart local v0    # "oldValue":F
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 387
    return v0

    .line 390
    .end local v0    # "oldValue":F
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/IntFloatMap;->removeStash(IF)F

    move-result v0

    return v0
.end method

.method removeStash(IF)F
    .locals 5
    .param p1, "key"    # I
    .param p2, "defaultValue"    # F

    .line 394
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 395
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 396
    aget v3, v0, v1

    if-ne p1, v3, :cond_0

    .line 397
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget v3, v3, v1

    .line 398
    .local v3, "oldValue":F
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntFloatMap;->removeStashIndex(I)V

    .line 399
    iget v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 400
    return v3

    .line 395
    .end local v3    # "oldValue":F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return p2
.end method

.method removeStashIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .line 408
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->stashSize:I

    .line 409
    iget v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    add-int/2addr v1, v0

    .line 410
    .local v1, "lastIndex":I
    if-ge p1, v1, :cond_0

    .line 411
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    aget v2, v0, v1

    aput v2, v0, p1

    .line 412
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    aget v2, v0, v1

    aput v2, v0, p1

    .line 414
    :cond_0
    return-void
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "maximumCapacity"    # I

    .line 429
    if-ltz p1, :cond_2

    .line 430
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-le v0, p1, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    .line 431
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->capacity:I

    if-gt v0, p1, :cond_1

    return-void

    .line 432
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 433
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntFloatMap;->resize(I)V

    .line 434
    return-void

    .line 429
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maximumCapacity must be >= 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 597
    iget v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->size:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "{}"

    return-object v0

    .line 598
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 599
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 600
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->keyTable:[I

    .line 601
    .local v1, "keyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->valueTable:[F

    .line 602
    .local v2, "valueTable":[F
    array-length v3, v1

    .line 603
    .local v3, "i":I
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->hasZeroValue:Z

    const/16 v5, 0x3d

    if-eqz v4, :cond_1

    .line 604
    const-string v4, "0="

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 605
    iget v4, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->zeroValue:F

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    .line 607
    :cond_1
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    if-lez v3, :cond_3

    .line 608
    aget v3, v1, v4

    .line 609
    .local v3, "key":I
    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    .line 610
    :cond_2
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 611
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 612
    aget v6, v2, v4

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 616
    .end local v3    # "key":I
    :cond_3
    :goto_1
    move v3, v4

    .end local v4    # "i":I
    .local v3, "i":I
    :goto_2
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .restart local v4    # "i":I
    if-lez v3, :cond_5

    .line 617
    aget v3, v1, v4

    .line 618
    .local v3, "key":I
    if-nez v3, :cond_4

    goto :goto_1

    .line 619
    :cond_4
    const-string v6, ", "

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 620
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 621
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 622
    aget v6, v2, v4

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(F)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 623
    .end local v3    # "key":I
    goto :goto_1

    .line 624
    :cond_5
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 625
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public values()Lcom/badlogic/gdx/utils/IntFloatMap$Values;
    .locals 3

    .line 659
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    return-object v0

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    if-nez v0, :cond_1

    .line 661
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    .line 662
    new-instance v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntFloatMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 665
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->reset()V

    .line 666
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    .line 667
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    .line 668
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    return-object v0

    .line 670
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->reset()V

    .line 671
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    .line 672
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values1:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntFloatMap$Values;->valid:Z

    .line 673
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntFloatMap;->values2:Lcom/badlogic/gdx/utils/IntFloatMap$Values;

    return-object v0
.end method
