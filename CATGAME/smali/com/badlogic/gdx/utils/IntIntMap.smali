.class public Lcom/badlogic/gdx/utils/IntIntMap;
.super Ljava/lang/Object;
.source "IntIntMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IntIntMap$Keys;,
        Lcom/badlogic/gdx/utils/IntIntMap$Values;,
        Lcom/badlogic/gdx/utils/IntIntMap$Entries;,
        Lcom/badlogic/gdx/utils/IntIntMap$MapIterator;,
        Lcom/badlogic/gdx/utils/IntIntMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
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

.field private entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

.field private entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

.field hasZeroValue:Z

.field private hashShift:I

.field keyTable:[I

.field private keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

.field private keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

.field private loadFactor:F

.field private mask:I

.field private pushIterations:I

.field public size:I

.field private stashCapacity:I

.field stashSize:I

.field private threshold:I

.field valueTable:[I

.field private values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

.field private values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

.field zeroValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(IF)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 61
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(IF)V

    .line 62
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    if-ltz p1, :cond_2

    .line 69
    int-to-float v0, p1

    div-float/2addr v0, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 70
    const/high16 v0, 0x40000000    # 2.0f

    if-gt p1, v0, :cond_1

    .line 71
    iput p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    .line 73
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    .line 74
    iput p2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    .line 76
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    .line 77
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hashShift:I

    .line 79
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashCapacity:I

    .line 80
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    div-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->pushIterations:I

    .line 82
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 83
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 84
    return-void

    .line 73
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

    .line 70
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

    .line 68
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

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntIntMap;)V
    .locals 4
    .param p1, "map"    # Lcom/badlogic/gdx/utils/IntIntMap;

    .line 88
    iget v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;-><init>(IF)V

    .line 89
    iget v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    .line 90
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iget v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 93
    iget v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 94
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 95
    return-void
.end method

.method private containsKeyStash(I)Z
    .locals 4
    .param p1, "key"    # I

    .line 479
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 480
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 481
    aget v3, v0, v1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    return v3

    .line 480
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 482
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private getAndIncrementStash(III)I
    .locals 6
    .param p1, "key"    # I
    .param p2, "defaultValue"    # I
    .param p3, "increment"    # I

    .line 345
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 346
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 347
    aget v3, v0, v1

    if-ne p1, v3, :cond_0

    .line 348
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget v4, v3, v1

    .line 349
    .local v4, "value":I
    add-int v5, v4, p3

    aput v5, v3, v1

    .line 350
    return v4

    .line 346
    .end local v4    # "value":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    add-int v1, p2, p3

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    .line 353
    return p2
.end method

.method private getStash(II)I
    .locals 4
    .param p1, "key"    # I
    .param p2, "defaultValue"    # I

    .line 310
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 311
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 312
    aget v3, v0, v1

    if-ne p1, v3, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget v3, v3, v1

    return v3

    .line 311
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return p2
.end method

.method private hash2(I)I
    .locals 2
    .param p1, "h"    # I

    .line 531
    const v0, -0x4b47d1c7

    mul-int/2addr p1, v0

    .line 532
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private hash3(I)I
    .locals 2
    .param p1, "h"    # I

    .line 536
    const v0, -0x312e3dbf

    mul-int/2addr p1, v0

    .line 537
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private push(IIIIIIII)V
    .locals 17
    .param p1, "insertKey"    # I
    .param p2, "insertValue"    # I
    .param p3, "index1"    # I
    .param p4, "key1"    # I
    .param p5, "index2"    # I
    .param p6, "key2"    # I
    .param p7, "index3"    # I
    .param p8, "key3"    # I

    .line 209
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 210
    .local v1, "keyTable":[I
    iget-object v2, v0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 211
    .local v2, "valueTable":[I
    iget v3, v0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    .line 216
    .local v3, "mask":I
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, v0, Lcom/badlogic/gdx/utils/IntIntMap;->pushIterations:I

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move v13, v4

    move/from16 v4, p1

    .line 219
    .end local p1    # "insertKey":I
    .end local p2    # "insertValue":I
    .end local p3    # "index1":I
    .end local p4    # "key1":I
    .end local p5    # "index2":I
    .end local p6    # "key2":I
    .end local p7    # "index3":I
    .end local p8    # "key3":I
    .local v4, "insertKey":I
    .local v5, "pushIterations":I
    .local v6, "insertValue":I
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

    .line 233
    move v14, v12

    .line 234
    .local v14, "evictedKey":I
    aget v16, v2, v11

    .line 235
    .local v16, "evictedValue":I
    aput v4, v1, v11

    .line 236
    aput v6, v2, v11

    move/from16 v15, v16

    goto :goto_1

    .line 227
    .end local v14    # "evictedKey":I
    .end local v16    # "evictedValue":I
    :cond_0
    move v14, v10

    .line 228
    .restart local v14    # "evictedKey":I
    aget v16, v2, v9

    .line 229
    .restart local v16    # "evictedValue":I
    aput v4, v1, v9

    .line 230
    aput v6, v2, v9

    .line 231
    move/from16 v15, v16

    goto :goto_1

    .line 221
    .end local v14    # "evictedKey":I
    .end local v16    # "evictedValue":I
    :cond_1
    move v14, v8

    .line 222
    .restart local v14    # "evictedKey":I
    aget v16, v2, v7

    .line 223
    .restart local v16    # "evictedValue":I
    aput v4, v1, v7

    .line 224
    aput v6, v2, v7

    .line 225
    move/from16 v15, v16

    .line 241
    .end local v16    # "evictedValue":I
    .local v15, "evictedValue":I
    :goto_1
    and-int v7, v14, v3

    .line 242
    aget v8, v1, v7

    .line 243
    if-nez v8, :cond_3

    .line 244
    aput v14, v1, v7

    .line 245
    aput v15, v2, v7

    .line 246
    move/from16 v16, v3

    .end local v3    # "mask":I
    .local v16, "mask":I
    iget v3, v0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    move/from16 p2, v4

    .end local v4    # "insertKey":I
    .local p2, "insertKey":I
    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v4, v0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v3, v4, :cond_2

    iget v3, v0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    .line 247
    :cond_2
    return-void

    .line 250
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
    invoke-direct {v0, v14}, Lcom/badlogic/gdx/utils/IntIntMap;->hash2(I)I

    move-result v9

    .line 251
    aget v10, v1, v9

    .line 252
    if-nez v10, :cond_5

    .line 253
    aput v14, v1, v9

    .line 254
    aput v15, v2, v9

    .line 255
    iget v3, v0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v4, v0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v3, v4, :cond_4

    iget v3, v0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    .line 256
    :cond_4
    return-void

    .line 259
    :cond_5
    invoke-direct {v0, v14}, Lcom/badlogic/gdx/utils/IntIntMap;->hash3(I)I

    move-result v11

    .line 260
    aget v12, v1, v11

    .line 261
    if-nez v12, :cond_7

    .line 262
    aput v14, v1, v11

    .line 263
    aput v15, v2, v11

    .line 264
    iget v3, v0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v4, v0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v3, v4, :cond_6

    iget v3, v0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    .line 265
    :cond_6
    return-void

    .line 268
    :cond_7
    add-int/lit8 v13, v13, 0x1

    if-ne v13, v5, :cond_8

    .line 274
    invoke-direct {v0, v14, v15}, Lcom/badlogic/gdx/utils/IntIntMap;->putStash(II)V

    .line 275
    return-void

    .line 270
    :cond_8
    move v4, v14

    .line 271
    .end local p2    # "insertKey":I
    .restart local v4    # "insertKey":I
    move v6, v15

    .line 272
    move/from16 v3, v16

    goto/16 :goto_0
.end method

.method private putResize(II)V
    .locals 17
    .param p1, "key"    # I
    .param p2, "value"    # I

    .line 171
    move-object/from16 v9, p0

    move/from16 v10, p2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 172
    iput v10, v9, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 173
    iput-boolean v0, v9, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 174
    return-void

    .line 178
    :cond_0
    iget v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    and-int v11, p1, v1

    .line 179
    .local v11, "index1":I
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v12, v1, v11

    .line 180
    .local v12, "key1":I
    if-nez v12, :cond_2

    .line 181
    aput p1, v1, v11

    .line 182
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput v10, v1, v11

    .line 183
    iget v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v9, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v2, v9, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v1, v2, :cond_1

    iget v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    .line 184
    :cond_1
    return-void

    .line 187
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash2(I)I

    move-result v13

    .line 188
    .local v13, "index2":I
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v14, v1, v13

    .line 189
    .local v14, "key2":I
    if-nez v14, :cond_4

    .line 190
    aput p1, v1, v13

    .line 191
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput v10, v1, v13

    .line 192
    iget v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v9, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v2, v9, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v1, v2, :cond_3

    iget v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    .line 193
    :cond_3
    return-void

    .line 196
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash3(I)I

    move-result v15

    .line 197
    .local v15, "index3":I
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v16, v1, v15

    .line 198
    .local v16, "key3":I
    if-nez v16, :cond_6

    .line 199
    aput p1, v1, v15

    .line 200
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput v10, v1, v15

    .line 201
    iget v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v9, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v2, v9, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v1, v2, :cond_5

    iget v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    .line 202
    :cond_5
    return-void

    .line 205
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

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IntIntMap;->push(IIIIIIII)V

    .line 206
    return-void
.end method

.method private putStash(II)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "value"    # I

    .line 278
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashCapacity:I

    if-ne v0, v1, :cond_0

    .line 280
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/IntIntMap;->putResize(II)V

    .line 282
    return-void

    .line 285
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    add-int/2addr v1, v0

    .line 286
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aput p1, v2, v1

    .line 287
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput p2, v2, v1

    .line 288
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    .line 289
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 290
    return-void
.end method

.method private resize(I)V
    .locals 7
    .param p1, "newSize"    # I

    .line 504
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int/2addr v0, v1

    .line 506
    .local v0, "oldEndIndex":I
    iput p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    .line 507
    int-to-float v1, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    .line 508
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    .line 509
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hashShift:I

    .line 510
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

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashCapacity:I

    .line 511
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

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->pushIterations:I

    .line 513
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 514
    .local v1, "oldKeyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 516
    .local v2, "oldValueTable":[I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashCapacity:I

    add-int v4, p1, v3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 517
    add-int/2addr v3, p1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 519
    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 520
    .local v3, "oldSize":I
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    iput v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 521
    const/4 v4, 0x0

    iput v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    .line 522
    if-lez v3, :cond_1

    .line 523
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 524
    aget v5, v1, v4

    .line 525
    .local v5, "key":I
    if-eqz v5, :cond_0

    aget v6, v2, v4

    invoke-direct {p0, v5, v6}, Lcom/badlogic/gdx/utils/IntIntMap;->putResize(II)V

    .line 523
    .end local v5    # "key":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 528
    .end local v4    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 446
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    if-nez v0, :cond_0

    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 448
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    const/4 v3, 0x0

    if-lez v1, :cond_1

    .line 449
    aput v3, v0, v2

    move v1, v2

    goto :goto_0

    .line 450
    .end local v2    # "i":I
    :cond_1
    iput v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 451
    iput v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    .line 452
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 453
    return-void
.end method

.method public clear(I)V
    .locals 1
    .param p1, "maximumCapacity"    # I

    .line 436
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    if-gt v0, p1, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap;->clear()V

    .line 438
    return-void

    .line 440
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 441
    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 442
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    .line 443
    return-void
.end method

.method public containsKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .line 466
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    return v0

    .line 467
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    and-int/2addr v0, p1

    .line 468
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 469
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash2(I)I

    move-result v0

    .line 470
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 471
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash3(I)I

    move-result v0

    .line 472
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->containsKeyStash(I)Z

    move-result v1

    return v1

    .line 475
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public containsValue(I)Z
    .locals 5
    .param p1, "value"    # I

    .line 458
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    if-ne v0, p1, :cond_0

    return v1

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .local v0, "keyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 460
    .local v2, "valueTable":[I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    if-lez v3, :cond_2

    .line 461
    aget v3, v0, v4

    if-eqz v3, :cond_1

    aget v3, v2, v4

    if-ne v3, p1, :cond_1

    return v1

    .line 460
    :cond_1
    move v3, v4

    goto :goto_0

    .line 462
    .end local v4    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "additionalCapacity"    # I

    .line 498
    if-ltz p1, :cond_1

    .line 499
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/2addr v0, p1

    .line 500
    .local v0, "sizeNeeded":I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->loadFactor:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    .line 501
    :cond_0
    return-void

    .line 498
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

.method public entries()Lcom/badlogic/gdx/utils/IntIntMap$Entries;
    .locals 3

    .line 623
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    return-object v0

    .line 624
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    if-nez v0, :cond_1

    .line 625
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    .line 626
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 629
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->reset()V

    .line 630
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    .line 631
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    .line 632
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    return-object v0

    .line 634
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->reset()V

    .line 635
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    .line 636
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries1:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->valid:Z

    .line 637
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->entries2:Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 560
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 561
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/IntIntMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 562
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/IntIntMap;

    .line 563
    .local v1, "other":Lcom/badlogic/gdx/utils/IntIntMap;
    iget v3, v1, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    if-eq v3, v4, :cond_2

    return v2

    .line 564
    :cond_2
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eq v3, v4, :cond_3

    return v2

    .line 565
    :cond_3
    if-eqz v4, :cond_4

    iget v3, v1, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    if-eq v3, v4, :cond_4

    .line 566
    return v2

    .line 568
    :cond_4
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 569
    .local v3, "keyTable":[I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 570
    .local v4, "valueTable":[I
    const/4 v5, 0x0

    .local v5, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    iget v7, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int/2addr v6, v7

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_7

    .line 571
    aget v7, v3, v5

    .line 572
    .local v7, "key":I
    if-eqz v7, :cond_6

    .line 573
    invoke-virtual {v1, v7, v2}, Lcom/badlogic/gdx/utils/IntIntMap;->get(II)I

    move-result v8

    .line 574
    .local v8, "otherValue":I
    if-nez v8, :cond_5

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/IntIntMap;->containsKey(I)Z

    move-result v9

    if-nez v9, :cond_5

    return v2

    .line 575
    :cond_5
    aget v9, v4, v5

    .line 576
    .local v9, "value":I
    if-eq v8, v9, :cond_6

    return v2

    .line 570
    .end local v7    # "key":I
    .end local v8    # "otherValue":I
    .end local v9    # "value":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 579
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_7
    return v0
.end method

.method public findKey(II)I
    .locals 4
    .param p1, "value"    # I
    .param p2, "notFound"    # I

    .line 488
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .local v0, "keyTable":[I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 490
    .local v1, "valueTable":[I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    if-lez v2, :cond_2

    .line 491
    aget v2, v0, v3

    if-eqz v2, :cond_1

    aget v2, v1, v3

    if-ne v2, p1, :cond_1

    aget v2, v0, v3

    return v2

    .line 490
    :cond_1
    move v2, v3

    goto :goto_0

    .line 492
    .end local v3    # "i":I
    :cond_2
    return p2
.end method

.method public get(II)I
    .locals 2
    .param p1, "key"    # I
    .param p2, "defaultValue"    # I

    .line 294
    if-nez p1, :cond_1

    .line 295
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-nez v0, :cond_0

    return p2

    .line 296
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    return v0

    .line 298
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    and-int/2addr v0, p1

    .line 299
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    .line 300
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash2(I)I

    move-result v0

    .line 301
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    .line 302
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash3(I)I

    move-result v0

    .line 303
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/IntIntMap;->getStash(II)I

    move-result v1

    return v1

    .line 306
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget v1, v1, v0

    return v1
.end method

.method public getAndIncrement(III)I
    .locals 4
    .param p1, "key"    # I
    .param p2, "defaultValue"    # I
    .param p3, "increment"    # I

    .line 319
    if-nez p1, :cond_1

    .line 320
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz v0, :cond_0

    .line 321
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 322
    .local v0, "value":I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 323
    return v0

    .line 325
    .end local v0    # "value":I
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 326
    add-int v1, p2, p3

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 327
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 328
    return p2

    .line 331
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    and-int/2addr v0, p1

    .line 332
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq p1, v1, :cond_2

    .line 333
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash2(I)I

    move-result v0

    .line 334
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq p1, v1, :cond_2

    .line 335
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash3(I)I

    move-result v0

    .line 336
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq p1, v1, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/IntIntMap;->getAndIncrementStash(III)I

    move-result v1

    return v1

    .line 339
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget v2, v1, v0

    .line 340
    .local v2, "value":I
    add-int v3, v2, p3

    aput v3, v1, v0

    .line 341
    return v2
.end method

.method public hashCode()I
    .locals 7

    .line 541
    const/4 v0, 0x0

    .line 542
    .local v0, "h":I
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-eqz v1, :cond_0

    .line 543
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 545
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 546
    .local v1, "keyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 547
    .local v2, "valueTable":[I
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int/2addr v4, v5

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 548
    aget v5, v1, v3

    .line 549
    .local v5, "key":I
    if-eqz v5, :cond_1

    .line 550
    mul-int/lit8 v6, v5, 0x1f

    add-int/2addr v0, v6

    .line 552
    aget v6, v2, v3

    .line 553
    .local v6, "value":I
    add-int/2addr v0, v6

    .line 547
    .end local v5    # "key":I
    .end local v6    # "value":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 556
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 421
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

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
            "Lcom/badlogic/gdx/utils/IntIntMap$Entry;",
            ">;"
        }
    .end annotation

    .line 615
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntIntMap;->entries()Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/IntIntMap$Keys;
    .locals 3

    .line 667
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    return-object v0

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    if-nez v0, :cond_1

    .line 669
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    .line 670
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 673
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->reset()V

    .line 674
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->valid:Z

    .line 675
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->valid:Z

    .line 676
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    return-object v0

    .line 678
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->reset()V

    .line 679
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->valid:Z

    .line 680
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys1:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Keys;->valid:Z

    .line 681
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keys2:Lcom/badlogic/gdx/utils/IntIntMap$Keys;

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 416
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(II)V
    .locals 19
    .param p1, "key"    # I
    .param p2, "value"    # I

    .line 98
    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    const/4 v0, 0x1

    if-nez v10, :cond_1

    .line 99
    iput v11, v9, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    .line 100
    iget-boolean v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-nez v1, :cond_0

    .line 101
    iput-boolean v0, v9, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 102
    iget v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/2addr v1, v0

    iput v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 104
    :cond_0
    return-void

    .line 107
    :cond_1
    iget-object v12, v9, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 110
    .local v12, "keyTable":[I
    iget v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    and-int v13, v10, v1

    .line 111
    .local v13, "index1":I
    aget v14, v12, v13

    .line 112
    .local v14, "key1":I
    if-ne v10, v14, :cond_2

    .line 113
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput v11, v0, v13

    .line 114
    return-void

    .line 117
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash2(I)I

    move-result v15

    .line 118
    .local v15, "index2":I
    aget v8, v12, v15

    .line 119
    .local v8, "key2":I
    if-ne v10, v8, :cond_3

    .line 120
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput v11, v0, v15

    .line 121
    return-void

    .line 124
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash3(I)I

    move-result v16

    .line 125
    .local v16, "index3":I
    aget v7, v12, v16

    .line 126
    .local v7, "key3":I
    if-ne v10, v7, :cond_4

    .line 127
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput v11, v0, v16

    .line 128
    return-void

    .line 132
    :cond_4
    iget v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    .local v1, "i":I
    iget v2, v9, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_6

    .line 133
    aget v3, v12, v1

    if-ne v10, v3, :cond_5

    .line 134
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput v11, v0, v1

    .line 135
    return-void

    .line 132
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_6
    if-nez v14, :cond_8

    .line 141
    aput v10, v12, v13

    .line 142
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput v11, v1, v13

    .line 143
    iget v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v9, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v2, v9, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v1, v2, :cond_7

    iget v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    .line 144
    :cond_7
    return-void

    .line 147
    :cond_8
    if-nez v8, :cond_a

    .line 148
    aput v10, v12, v15

    .line 149
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput v11, v1, v15

    .line 150
    iget v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v9, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v2, v9, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v1, v2, :cond_9

    iget v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    .line 151
    :cond_9
    return-void

    .line 154
    :cond_a
    if-nez v7, :cond_c

    .line 155
    aput v10, v12, v16

    .line 156
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aput v11, v1, v16

    .line 157
    iget v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v9, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    iget v2, v9, Lcom/badlogic/gdx/utils/IntIntMap;->threshold:I

    if-lt v1, v2, :cond_b

    iget v1, v9, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    .line 158
    :cond_b
    return-void

    .line 161
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

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IntIntMap;->push(IIIIIIII)V

    .line 162
    return-void
.end method

.method public putAll(Lcom/badlogic/gdx/utils/IntIntMap;)V
    .locals 4
    .param p1, "map"    # Lcom/badlogic/gdx/utils/IntIntMap;

    .line 165
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntIntMap;->entries()Lcom/badlogic/gdx/utils/IntIntMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;

    .line 166
    .local v1, "entry":Lcom/badlogic/gdx/utils/IntIntMap$Entry;
    iget v2, v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->key:I

    iget v3, v1, Lcom/badlogic/gdx/utils/IntIntMap$Entry;->value:I

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/utils/IntIntMap;->put(II)V

    .end local v1    # "entry":Lcom/badlogic/gdx/utils/IntIntMap$Entry;
    goto :goto_0

    .line 167
    :cond_0
    return-void
.end method

.method public remove(II)I
    .locals 4
    .param p1, "key"    # I
    .param p2, "defaultValue"    # I

    .line 357
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 358
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    if-nez v1, :cond_0

    return p2

    .line 359
    :cond_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    .line 360
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 361
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    return v0

    .line 364
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->mask:I

    and-int/2addr v1, p1

    .line 365
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v3, v2, v1

    if-ne p1, v3, :cond_2

    .line 366
    aput v0, v2, v1

    .line 367
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget v0, v0, v1

    .line 368
    .local v0, "oldValue":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 369
    return v0

    .line 372
    .end local v0    # "oldValue":I
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash2(I)I

    move-result v1

    .line 373
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v3, v2, v1

    if-ne p1, v3, :cond_3

    .line 374
    aput v0, v2, v1

    .line 375
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget v0, v0, v1

    .line 376
    .restart local v0    # "oldValue":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 377
    return v0

    .line 380
    .end local v0    # "oldValue":I
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->hash3(I)I

    move-result v1

    .line 381
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v3, v2, v1

    if-ne p1, v3, :cond_4

    .line 382
    aput v0, v2, v1

    .line 383
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget v0, v0, v1

    .line 384
    .restart local v0    # "oldValue":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 385
    return v0

    .line 388
    .end local v0    # "oldValue":I
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/IntIntMap;->removeStash(II)I

    move-result v0

    return v0
.end method

.method removeStash(II)I
    .locals 5
    .param p1, "key"    # I
    .param p2, "defaultValue"    # I

    .line 392
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 393
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 394
    aget v3, v0, v1

    if-ne p1, v3, :cond_0

    .line 395
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget v3, v3, v1

    .line 396
    .local v3, "oldValue":I
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntIntMap;->removeStashIndex(I)V

    .line 397
    iget v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 398
    return v3

    .line 393
    .end local v3    # "oldValue":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return p2
.end method

.method removeStashIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .line 406
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->stashSize:I

    .line 407
    iget v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    add-int/2addr v1, v0

    .line 408
    .local v1, "lastIndex":I
    if-ge p1, v1, :cond_0

    .line 409
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    aget v2, v0, v1

    aput v2, v0, p1

    .line 410
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    aget v2, v0, v1

    aput v2, v0, p1

    .line 412
    :cond_0
    return-void
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "maximumCapacity"    # I

    .line 427
    if-ltz p1, :cond_2

    .line 428
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    if-le v0, p1, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    .line 429
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->capacity:I

    if-gt v0, p1, :cond_1

    return-void

    .line 430
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 431
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntIntMap;->resize(I)V

    .line 432
    return-void

    .line 427
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

    .line 583
    iget v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->size:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "{}"

    return-object v0

    .line 584
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 585
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 586
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntIntMap;->keyTable:[I

    .line 587
    .local v1, "keyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntIntMap;->valueTable:[I

    .line 588
    .local v2, "valueTable":[I
    array-length v3, v1

    .line 589
    .local v3, "i":I
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->hasZeroValue:Z

    const/16 v5, 0x3d

    if-eqz v4, :cond_1

    .line 590
    const-string v4, "0="

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 591
    iget v4, p0, Lcom/badlogic/gdx/utils/IntIntMap;->zeroValue:I

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    .line 593
    :cond_1
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    if-lez v3, :cond_3

    .line 594
    aget v3, v1, v4

    .line 595
    .local v3, "key":I
    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    .line 596
    :cond_2
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 597
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 598
    aget v6, v2, v4

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 602
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

    .line 603
    aget v3, v1, v4

    .line 604
    .local v3, "key":I
    if-nez v3, :cond_4

    goto :goto_1

    .line 605
    :cond_4
    const-string v6, ", "

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 606
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 607
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 608
    aget v6, v2, v4

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 609
    .end local v3    # "key":I
    goto :goto_1

    .line 610
    :cond_5
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 611
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public values()Lcom/badlogic/gdx/utils/IntIntMap$Values;
    .locals 3

    .line 645
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    return-object v0

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    if-nez v0, :cond_1

    .line 647
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    .line 648
    new-instance v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntIntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 651
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Values;->reset()V

    .line 652
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;->valid:Z

    .line 653
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;->valid:Z

    .line 654
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    return-object v0

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntIntMap$Values;->reset()V

    .line 657
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;->valid:Z

    .line 658
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values1:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntIntMap$Values;->valid:Z

    .line 659
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntIntMap;->values2:Lcom/badlogic/gdx/utils/IntIntMap$Values;

    return-object v0
.end method
