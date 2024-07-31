.class public Lcom/badlogic/gdx/utils/IntMap;
.super Ljava/lang/Object;
.source "IntMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IntMap$Keys;,
        Lcom/badlogic/gdx/utils/IntMap$Values;,
        Lcom/badlogic/gdx/utils/IntMap$Entries;,
        Lcom/badlogic/gdx/utils/IntMap$MapIterator;,
        Lcom/badlogic/gdx/utils/IntMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/IntMap$Entry<",
        "TV;>;>;"
    }
.end annotation


# static fields
.field private static final EMPTY:I = 0x0

.field private static final PRIME1:I = -0x41e0eb4f

.field private static final PRIME2:I = -0x4b47d1c7

.field private static final PRIME3:I = -0x312e3dbf


# instance fields
.field capacity:I

.field private entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

.field private entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

.field hasZeroValue:Z

.field private hashShift:I

.field keyTable:[I

.field private keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

.field private keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

.field private loadFactor:F

.field private mask:I

.field private pushIterations:I

.field public size:I

.field private stashCapacity:I

.field stashSize:I

.field private threshold:I

.field valueTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private values1:Lcom/badlogic/gdx/utils/IntMap$Values;

.field private values2:Lcom/badlogic/gdx/utils/IntMap$Values;

.field zeroValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 56
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 62
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    .line 63
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 68
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    if-ltz p1, :cond_2

    .line 70
    int-to-float v0, p1

    div-float/2addr v0, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 71
    const/high16 v0, 0x40000000    # 2.0f

    if-gt p1, v0, :cond_1

    .line 72
    iput p1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    .line 74
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    .line 75
    iput p2, p0, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    .line 77
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    .line 78
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hashShift:I

    .line 80
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    .line 81
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    div-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->pushIterations:I

    .line 83
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 84
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 85
    return-void

    .line 74
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

    .line 71
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

    .line 69
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

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "+TV;>;)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<+TV;>;"
    iget v0, p1, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntMap;-><init>(IF)V

    .line 90
    iget v0, p1, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    .line 91
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iget v0, p1, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 94
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 95
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 96
    return-void
.end method

.method private containsKeyStash(I)Z
    .locals 4
    .param p1, "key"    # I

    .line 487
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 488
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 489
    aget v3, v0, v1

    if-ne v3, p1, :cond_0

    const/4 v3, 0x1

    return v3

    .line 488
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 490
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private getStash(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 333
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 334
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 335
    aget v3, v0, v1

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    return-object v3

    .line 334
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return-object p2
.end method

.method private hash2(I)I
    .locals 2
    .param p1, "h"    # I

    .line 552
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const v0, -0x4b47d1c7

    mul-int/2addr p1, v0

    .line 553
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private hash3(I)I
    .locals 2
    .param p1, "h"    # I

    .line 557
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const v0, -0x312e3dbf

    mul-int/2addr p1, v0

    .line 558
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private push(ILjava/lang/Object;IIIIII)V
    .locals 17
    .param p1, "insertKey"    # I
    .param p3, "index1"    # I
    .param p4, "key1"    # I
    .param p5, "index2"    # I
    .param p6, "key2"    # I
    .param p7, "index3"    # I
    .param p8, "key3"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;IIIIII)V"
        }
    .end annotation

    .line 216
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p2, "insertValue":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 218
    .local v1, "keyTable":[I
    iget-object v2, v0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 219
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget v3, v0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    .line 224
    .local v3, "mask":I
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, v0, Lcom/badlogic/gdx/utils/IntMap;->pushIterations:I

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move v13, v4

    move/from16 v4, p1

    .line 227
    .end local p1    # "insertKey":I
    .end local p2    # "insertValue":Ljava/lang/Object;, "TV;"
    .end local p3    # "index1":I
    .end local p4    # "key1":I
    .end local p5    # "index2":I
    .end local p6    # "key2":I
    .end local p7    # "index3":I
    .end local p8    # "key3":I
    .local v4, "insertKey":I
    .local v5, "pushIterations":I
    .local v6, "insertValue":Ljava/lang/Object;, "TV;"
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

    .line 241
    move v14, v12

    .line 242
    .local v14, "evictedKey":I
    aget-object v16, v2, v11

    .line 243
    .local v16, "evictedValue":Ljava/lang/Object;, "TV;"
    aput v4, v1, v11

    .line 244
    aput-object v6, v2, v11

    move-object/from16 v15, v16

    goto :goto_1

    .line 235
    .end local v14    # "evictedKey":I
    .end local v16    # "evictedValue":Ljava/lang/Object;, "TV;"
    :cond_0
    move v14, v10

    .line 236
    .restart local v14    # "evictedKey":I
    aget-object v16, v2, v9

    .line 237
    .restart local v16    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput v4, v1, v9

    .line 238
    aput-object v6, v2, v9

    .line 239
    move-object/from16 v15, v16

    goto :goto_1

    .line 229
    .end local v14    # "evictedKey":I
    .end local v16    # "evictedValue":Ljava/lang/Object;, "TV;"
    :cond_1
    move v14, v8

    .line 230
    .restart local v14    # "evictedKey":I
    aget-object v16, v2, v7

    .line 231
    .restart local v16    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput v4, v1, v7

    .line 232
    aput-object v6, v2, v7

    .line 233
    move-object/from16 v15, v16

    .line 249
    .end local v16    # "evictedValue":Ljava/lang/Object;, "TV;"
    .local v15, "evictedValue":Ljava/lang/Object;, "TV;"
    :goto_1
    and-int v7, v14, v3

    .line 250
    aget v8, v1, v7

    .line 251
    if-nez v8, :cond_3

    .line 252
    aput v14, v1, v7

    .line 253
    aput-object v15, v2, v7

    .line 254
    move/from16 v16, v3

    .end local v3    # "mask":I
    .local v16, "mask":I
    iget v3, v0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    move/from16 p2, v4

    .end local v4    # "insertKey":I
    .local p2, "insertKey":I
    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v4, v0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v3, v4, :cond_2

    iget v3, v0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 255
    :cond_2
    return-void

    .line 258
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
    invoke-direct {v0, v14}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v9

    .line 259
    aget v10, v1, v9

    .line 260
    if-nez v10, :cond_5

    .line 261
    aput v14, v1, v9

    .line 262
    aput-object v15, v2, v9

    .line 263
    iget v3, v0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v4, v0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v3, v4, :cond_4

    iget v3, v0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 264
    :cond_4
    return-void

    .line 267
    :cond_5
    invoke-direct {v0, v14}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v11

    .line 268
    aget v12, v1, v11

    .line 269
    if-nez v12, :cond_7

    .line 270
    aput v14, v1, v11

    .line 271
    aput-object v15, v2, v11

    .line 272
    iget v3, v0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v4, v0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v3, v4, :cond_6

    iget v3, v0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    const/4 v4, 0x1

    shl-int/2addr v3, v4

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 273
    :cond_6
    return-void

    .line 276
    :cond_7
    add-int/lit8 v13, v13, 0x1

    if-ne v13, v5, :cond_8

    .line 282
    invoke-direct {v0, v14, v15}, Lcom/badlogic/gdx/utils/IntMap;->putStash(ILjava/lang/Object;)V

    .line 283
    return-void

    .line 278
    :cond_8
    move v4, v14

    .line 279
    .end local p2    # "insertKey":I
    .restart local v4    # "insertKey":I
    move-object v6, v15

    .line 280
    move/from16 v3, v16

    goto/16 :goto_0
.end method

.method private putResize(ILjava/lang/Object;)V
    .locals 17
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 178
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v9, p0

    move-object/from16 v10, p2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 179
    iput-object v10, v9, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 180
    iput-boolean v0, v9, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 181
    return-void

    .line 185
    :cond_0
    iget v1, v9, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int v11, p1, v1

    .line 186
    .local v11, "index1":I
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v12, v1, v11

    .line 187
    .local v12, "key1":I
    if-nez v12, :cond_2

    .line 188
    aput p1, v1, v11

    .line 189
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object v10, v1, v11

    .line 190
    iget v1, v9, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v9, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v2, v9, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v1, v2, :cond_1

    iget v1, v9, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 191
    :cond_1
    return-void

    .line 194
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v13

    .line 195
    .local v13, "index2":I
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v14, v1, v13

    .line 196
    .local v14, "key2":I
    if-nez v14, :cond_4

    .line 197
    aput p1, v1, v13

    .line 198
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object v10, v1, v13

    .line 199
    iget v1, v9, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v9, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v2, v9, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v1, v2, :cond_3

    iget v1, v9, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 200
    :cond_3
    return-void

    .line 203
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v15

    .line 204
    .local v15, "index3":I
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v16, v1, v15

    .line 205
    .local v16, "key3":I
    if-nez v16, :cond_6

    .line 206
    aput p1, v1, v15

    .line 207
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object v10, v1, v15

    .line 208
    iget v1, v9, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v9, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v2, v9, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v1, v2, :cond_5

    iget v1, v9, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 209
    :cond_5
    return-void

    .line 212
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v11

    move v4, v12

    move v5, v13

    move v6, v14

    move v7, v15

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IntMap;->push(ILjava/lang/Object;IIIIII)V

    .line 213
    return-void
.end method

.method private putStash(ILjava/lang/Object;)V
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .line 286
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    if-ne v0, v1, :cond_0

    .line 288
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 289
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/IntMap;->putResize(ILjava/lang/Object;)V

    .line 290
    return-void

    .line 293
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    add-int/2addr v1, v0

    .line 294
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aput p1, v2, v1

    .line 295
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 296
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    .line 297
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 298
    return-void
.end method

.method private resize(I)V
    .locals 7
    .param p1, "newSize"    # I

    .line 525
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v0, v1

    .line 527
    .local v0, "oldEndIndex":I
    iput p1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    .line 528
    int-to-float v1, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    .line 529
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    .line 530
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->hashShift:I

    .line 531
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

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    .line 532
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

    iput v1, p0, Lcom/badlogic/gdx/utils/IntMap;->pushIterations:I

    .line 534
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 535
    .local v1, "oldKeyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 537
    .local v2, "oldValueTable":[Ljava/lang/Object;, "[TV;"
    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap;->stashCapacity:I

    add-int v4, p1, v3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 538
    add-int/2addr v3, p1

    new-array v3, v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 540
    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 541
    .local v3, "oldSize":I
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    iput v4, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 542
    const/4 v4, 0x0

    iput v4, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    .line 543
    if-lez v3, :cond_1

    .line 544
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 545
    aget v5, v1, v4

    .line 546
    .local v5, "key":I
    if-eqz v5, :cond_0

    aget-object v6, v2, v4

    invoke-direct {p0, v5, v6}, Lcom/badlogic/gdx/utils/IntMap;->putResize(ILjava/lang/Object;)V

    .line 544
    .end local v5    # "key":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 549
    .end local v4    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    .line 437
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-nez v0, :cond_0

    return-void

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 439
    .local v0, "keyTable":[I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 440
    .local v1, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    if-lez v2, :cond_1

    .line 441
    aput v5, v0, v3

    .line 442
    aput-object v4, v1, v3

    move v2, v3

    goto :goto_0

    .line 444
    .end local v3    # "i":I
    :cond_1
    iput v5, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 445
    iput v5, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    .line 446
    iput-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 447
    iput-boolean v5, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 448
    return-void
.end method

.method public clear(I)V
    .locals 1
    .param p1, "maximumCapacity"    # I

    .line 426
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    if-gt v0, p1, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap;->clear()V

    .line 428
    return-void

    .line 430
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 432
    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 433
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 434
    return-void
.end method

.method public containsKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .line 474
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    return v0

    .line 475
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int/2addr v0, p1

    .line 476
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 477
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v0

    .line 478
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 479
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v0

    .line 480
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->containsKeyStash(I)Z

    move-result v1

    return v1

    .line 483
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "identity"    # Z

    .line 455
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 456
    .local v0, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v1, 0x1

    if-nez p1, :cond_3

    .line 457
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-nez v2, :cond_0

    return v1

    .line 458
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 459
    .local v2, "keyTable":[I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    if-lez v3, :cond_2

    .line 460
    aget v3, v2, v4

    if-eqz v3, :cond_1

    aget-object v3, v0, v4

    if-nez v3, :cond_1

    return v1

    .line 459
    :cond_1
    move v3, v4

    goto :goto_0

    .line 461
    .end local v2    # "keyTable":[I
    .end local v4    # "i":I
    :cond_2
    goto :goto_3

    :cond_3
    if-eqz p2, :cond_7

    .line 462
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-ne p1, v2, :cond_4

    return v1

    .line 463
    :cond_4
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "i":I
    :goto_1
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    if-lez v2, :cond_6

    .line 464
    aget-object v2, v0, v3

    if-ne v2, p1, :cond_5

    return v1

    :cond_5
    move v2, v3

    goto :goto_1

    .end local v3    # "i":I
    :cond_6
    goto :goto_3

    .line 466
    :cond_7
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v1

    .line 467
    :cond_8
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_2
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    if-lez v2, :cond_a

    .line 468
    aget-object v2, v0, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    return v1

    :cond_9
    move v2, v3

    goto :goto_2

    .line 470
    .end local v3    # "i":I
    :cond_a
    :goto_3
    const/4 v1, 0x0

    return v1
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "additionalCapacity"    # I

    .line 519
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    if-ltz p1, :cond_1

    .line 520
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/2addr v0, p1

    .line 521
    .local v0, "sizeNeeded":I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->loadFactor:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 522
    :cond_0
    return-void

    .line 519
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

.method public entries()Lcom/badlogic/gdx/utils/IntMap$Entries;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IntMap$Entries<",
            "TV;>;"
        }
    .end annotation

    .line 669
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    return-object v0

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    if-nez v0, :cond_1

    .line 671
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    .line 672
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

    .line 674
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 675
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Entries;->reset()V

    .line 676
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    .line 677
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    .line 678
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    return-object v0

    .line 680
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Entries;->reset()V

    .line 681
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    .line 682
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries1:Lcom/badlogic/gdx/utils/IntMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Entries;->valid:Z

    .line 683
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->entries2:Lcom/badlogic/gdx/utils/IntMap$Entries;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 583
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 584
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/IntMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 585
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/IntMap;

    .line 586
    .local v1, "other":Lcom/badlogic/gdx/utils/IntMap;
    iget v3, v1, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-eq v3, v4, :cond_2

    return v2

    .line 587
    :cond_2
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eq v3, v4, :cond_3

    return v2

    .line 588
    :cond_3
    if-eqz v4, :cond_5

    .line 589
    iget-object v3, v1, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 590
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-eqz v3, :cond_5

    return v2

    .line 592
    :cond_4
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    .line 595
    :cond_5
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 596
    .local v3, "keyTable":[I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 597
    .local v4, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v5, 0x0

    .local v5, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v7, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v6, v7

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_8

    .line 598
    aget v7, v3, v5

    .line 599
    .local v7, "key":I
    if-eqz v7, :cond_7

    .line 600
    aget-object v8, v4, v5

    .line 601
    .local v8, "value":Ljava/lang/Object;, "TV;"
    if-nez v8, :cond_6

    .line 602
    sget-object v9, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {v1, v7, v9}, Lcom/badlogic/gdx/utils/IntMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_7

    return v2

    .line 604
    :cond_6
    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    return v2

    .line 597
    .end local v7    # "key":I
    .end local v8    # "value":Ljava/lang/Object;, "TV;"
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 608
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_8
    return v0
.end method

.method public equalsIdentity(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 613
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 614
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/IntMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 615
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/IntMap;

    .line 616
    .local v1, "other":Lcom/badlogic/gdx/utils/IntMap;
    iget v3, v1, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-eq v3, v4, :cond_2

    return v2

    .line 617
    :cond_2
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eq v3, v4, :cond_3

    return v2

    .line 618
    :cond_3
    if-eqz v4, :cond_4

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    iget-object v4, v1, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-eq v3, v4, :cond_4

    return v2

    .line 619
    :cond_4
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 620
    .local v3, "keyTable":[I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 621
    .local v4, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v5, 0x0

    .local v5, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v7, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v6, v7

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_6

    .line 622
    aget v7, v3, v5

    .line 623
    .local v7, "key":I
    if-eqz v7, :cond_5

    aget-object v8, v4, v5

    sget-object v9, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {v1, v7, v9}, Lcom/badlogic/gdx/utils/IntMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v8, v9, :cond_5

    return v2

    .line 621
    .end local v7    # "key":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 625
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_6
    return v0
.end method

.method public findKey(Ljava/lang/Object;ZI)I
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "identity"    # Z
    .param p3, "notFound"    # I

    .line 498
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 499
    .local v0, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v1, 0x0

    if-nez p1, :cond_3

    .line 500
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-nez v2, :cond_0

    return v1

    .line 501
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 502
    .local v1, "keyTable":[I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    if-lez v2, :cond_2

    .line 503
    aget v2, v1, v3

    if-eqz v2, :cond_1

    aget-object v2, v0, v3

    if-nez v2, :cond_1

    aget v2, v1, v3

    return v2

    .line 502
    :cond_1
    move v2, v3

    goto :goto_0

    .line 504
    .end local v1    # "keyTable":[I
    .end local v3    # "i":I
    :cond_2
    goto :goto_3

    :cond_3
    if-eqz p2, :cond_7

    .line 505
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-ne p1, v2, :cond_4

    return v1

    .line 506
    :cond_4
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v1, v2

    .local v1, "i":I
    :goto_1
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    if-lez v1, :cond_6

    .line 507
    aget-object v1, v0, v2

    if-ne v1, p1, :cond_5

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v2

    return v1

    :cond_5
    move v1, v2

    goto :goto_1

    .end local v2    # "i":I
    :cond_6
    goto :goto_3

    .line 509
    :cond_7
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v1

    .line 510
    :cond_8
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v1, v2

    .restart local v1    # "i":I
    :goto_2
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    if-lez v1, :cond_a

    .line 511
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v2

    return v1

    :cond_9
    move v1, v2

    goto :goto_2

    .line 513
    .end local v2    # "i":I
    :cond_a
    :goto_3
    return p3
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 301
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 302
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-nez v1, :cond_0

    return-object v0

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    return-object v0

    .line 305
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int/2addr v1, p1

    .line 306
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v2, v2, v1

    if-eq v2, p1, :cond_2

    .line 307
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v1

    .line 308
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v2, v2, v1

    if-eq v2, p1, :cond_2

    .line 309
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v1

    .line 310
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v2, v2, v1

    if-eq v2, p1, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntMap;->getStash(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 313
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 317
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    if-nez p1, :cond_1

    .line 318
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-nez v0, :cond_0

    return-object p2

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    return-object v0

    .line 321
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int/2addr v0, p1

    .line 322
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    .line 323
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v0

    .line 324
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    .line 325
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v0

    .line 326
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/IntMap;->getStash(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 329
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public hashCode()I
    .locals 8

    .line 562
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v0, 0x0

    .line 563
    .local v0, "h":I
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 564
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 566
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 567
    .local v1, "keyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 568
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v4, v5

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 569
    aget v5, v1, v3

    .line 570
    .local v5, "key":I
    if-eqz v5, :cond_1

    .line 571
    mul-int/lit8 v6, v5, 0x1f

    add-int/2addr v0, v6

    .line 573
    aget-object v6, v2, v3

    .line 574
    .local v6, "value":Ljava/lang/Object;, "TV;"
    if-eqz v6, :cond_1

    .line 575
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    add-int/2addr v0, v7

    .line 568
    .end local v5    # "key":I
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 579
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 411
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

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
            "Lcom/badlogic/gdx/utils/IntMap$Entry<",
            "TV;>;>;"
        }
    .end annotation

    .line 661
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntMap;->entries()Lcom/badlogic/gdx/utils/IntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/IntMap$Keys;
    .locals 3

    .line 713
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    return-object v0

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    if-nez v0, :cond_1

    .line 715
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    .line 716
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

    .line 718
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntMap$Keys;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 719
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Keys;->reset()V

    .line 720
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Keys;->valid:Z

    .line 721
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Keys;->valid:Z

    .line 722
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    return-object v0

    .line 724
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Keys;->reset()V

    .line 725
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Keys;->valid:Z

    .line 726
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys1:Lcom/badlogic/gdx/utils/IntMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Keys;->valid:Z

    .line 727
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keys2:Lcom/badlogic/gdx/utils/IntMap$Keys;

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 406
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p2

    const/4 v0, 0x1

    if-nez v10, :cond_1

    .line 100
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 101
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object v11, v9, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 102
    iget-boolean v2, v9, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-nez v2, :cond_0

    .line 103
    iput-boolean v0, v9, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 104
    iget v2, v9, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/2addr v2, v0

    iput v2, v9, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 106
    :cond_0
    return-object v1

    .line 109
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    iget-object v12, v9, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 112
    .local v12, "keyTable":[I
    iget v1, v9, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int v13, v10, v1

    .line 113
    .local v13, "index1":I
    aget v14, v12, v13

    .line 114
    .local v14, "key1":I
    if-ne v14, v10, :cond_2

    .line 115
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v0, v13

    .line 116
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v11, v0, v13

    .line 117
    return-object v1

    .line 120
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v15

    .line 121
    .local v15, "index2":I
    aget v8, v12, v15

    .line 122
    .local v8, "key2":I
    if-ne v8, v10, :cond_3

    .line 123
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v0, v15

    .line 124
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v11, v0, v15

    .line 125
    return-object v1

    .line 128
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v16

    .line 129
    .local v16, "index3":I
    aget v7, v12, v16

    .line 130
    .local v7, "key3":I
    if-ne v7, v10, :cond_4

    .line 131
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v0, v16

    .line 132
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v11, v0, v16

    .line 133
    return-object v1

    .line 137
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_4
    iget v1, v9, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    .local v1, "i":I
    iget v2, v9, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_6

    .line 138
    aget v3, v12, v1

    if-ne v3, v10, :cond_5

    .line 139
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v0, v1

    .line 140
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v11, v0, v1

    .line 141
    return-object v3

    .line 137
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_6
    const/16 v17, 0x0

    if-nez v14, :cond_8

    .line 147
    aput v10, v12, v13

    .line 148
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object v11, v1, v13

    .line 149
    iget v1, v9, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v9, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v2, v9, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v1, v2, :cond_7

    iget v1, v9, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 150
    :cond_7
    return-object v17

    .line 153
    :cond_8
    if-nez v8, :cond_a

    .line 154
    aput v10, v12, v15

    .line 155
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object v11, v1, v15

    .line 156
    iget v1, v9, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v9, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v2, v9, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v1, v2, :cond_9

    iget v1, v9, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 157
    :cond_9
    return-object v17

    .line 160
    :cond_a
    if-nez v7, :cond_c

    .line 161
    aput v10, v12, v16

    .line 162
    iget-object v1, v9, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object v11, v1, v16

    .line 163
    iget v1, v9, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v9, Lcom/badlogic/gdx/utils/IntMap;->size:I

    iget v2, v9, Lcom/badlogic/gdx/utils/IntMap;->threshold:I

    if-lt v1, v2, :cond_b

    iget v1, v9, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 164
    :cond_b
    return-object v17

    .line 167
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v13

    move v4, v14

    move v5, v15

    move v6, v8

    move/from16 v18, v7

    .end local v7    # "key3":I
    .local v18, "key3":I
    move/from16 v7, v16

    move/from16 v19, v8

    .end local v8    # "key2":I
    .local v19, "key2":I
    move/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IntMap;->push(ILjava/lang/Object;IIIIII)V

    .line 168
    return-object v17
.end method

.method public putAll(Lcom/badlogic/gdx/utils/IntMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/IntMap<",
            "+TV;>;)V"
        }
    .end annotation

    .line 172
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<+TV;>;"
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntMap;->entries()Lcom/badlogic/gdx/utils/IntMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/IntMap$Entry;

    .line 173
    .local v1, "entry":Lcom/badlogic/gdx/utils/IntMap$Entry;, "Lcom/badlogic/gdx/utils/IntMap$Entry<+TV;>;"
    iget v2, v1, Lcom/badlogic/gdx/utils/IntMap$Entry;->key:I

    iget-object v3, v1, Lcom/badlogic/gdx/utils/IntMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/utils/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    .end local v1    # "entry":Lcom/badlogic/gdx/utils/IntMap$Entry;, "Lcom/badlogic/gdx/utils/IntMap$Entry<+TV;>;"
    :cond_0
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 340
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 341
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    if-nez v2, :cond_0

    return-object v1

    .line 342
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 343
    .local v2, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    .line 344
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    .line 345
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 346
    return-object v2

    .line 349
    .end local v2    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->mask:I

    and-int/2addr v2, p1

    .line 350
    .local v2, "index":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v4, v3, v2

    if-ne v4, p1, :cond_2

    .line 351
    aput v0, v3, v2

    .line 352
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v0, v2

    .line 353
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v1, v0, v2

    .line 354
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 355
    return-object v3

    .line 358
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash2(I)I

    move-result v2

    .line 359
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v4, v3, v2

    if-ne v4, p1, :cond_3

    .line 360
    aput v0, v3, v2

    .line 361
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v0, v2

    .line 362
    .restart local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v1, v0, v2

    .line 363
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 364
    return-object v3

    .line 367
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->hash3(I)I

    move-result v2

    .line 368
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v4, v3, v2

    if-ne v4, p1, :cond_4

    .line 369
    aput v0, v3, v2

    .line 370
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v0, v2

    .line 371
    .restart local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v1, v0, v2

    .line 372
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 373
    return-object v3

    .line 376
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_4
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->removeStash(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method removeStash(I)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 380
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 381
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 382
    aget v3, v0, v1

    if-ne v3, p1, :cond_0

    .line 383
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    .line 384
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntMap;->removeStashIndex(I)V

    .line 385
    iget v4, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 386
    return-object v3

    .line 381
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method removeStashIndex(I)V
    .locals 4
    .param p1, "index"    # I

    .line 394
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntMap;->stashSize:I

    .line 395
    iget v1, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    add-int/2addr v1, v0

    .line 396
    .local v1, "lastIndex":I
    const/4 v0, 0x0

    if-ge p1, v1, :cond_0

    .line 397
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    aget v3, v2, v1

    aput v3, v2, p1

    .line 398
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v2, v1

    aput-object v3, v2, p1

    .line 399
    aput-object v0, v2, v1

    goto :goto_0

    .line 401
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    aput-object v0, v2, p1

    .line 402
    :goto_0
    return-void
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "maximumCapacity"    # I

    .line 417
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    if-ltz p1, :cond_2

    .line 418
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-le v0, p1, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    .line 419
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->capacity:I

    if-gt v0, p1, :cond_1

    return-void

    .line 420
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 421
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntMap;->resize(I)V

    .line 422
    return-void

    .line 417
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

    .line 629
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IntMap;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 630
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 631
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 632
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntMap;->keyTable:[I

    .line 633
    .local v1, "keyTable":[I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntMap;->valueTable:[Ljava/lang/Object;

    .line 634
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    array-length v3, v1

    .line 635
    .local v3, "i":I
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/IntMap;->hasZeroValue:Z

    const/16 v5, 0x3d

    if-eqz v4, :cond_1

    .line 636
    const-string v4, "0="

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 637
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IntMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    .line 639
    :cond_1
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    if-lez v3, :cond_3

    .line 640
    aget v3, v1, v4

    .line 641
    .local v3, "key":I
    if-nez v3, :cond_2

    move v3, v4

    goto :goto_0

    .line 642
    :cond_2
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 643
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 644
    aget-object v6, v2, v4

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 648
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

    .line 649
    aget v3, v1, v4

    .line 650
    .local v3, "key":I
    if-nez v3, :cond_4

    goto :goto_1

    .line 651
    :cond_4
    const-string v6, ", "

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 652
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 653
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 654
    aget-object v6, v2, v4

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 655
    .end local v3    # "key":I
    goto :goto_1

    .line 656
    :cond_5
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 657
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public values()Lcom/badlogic/gdx/utils/IntMap$Values;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IntMap$Values<",
            "TV;>;"
        }
    .end annotation

    .line 691
    .local p0, "this":Lcom/badlogic/gdx/utils/IntMap;, "Lcom/badlogic/gdx/utils/IntMap<TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    return-object v0

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    if-nez v0, :cond_1

    .line 693
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    .line 694
    new-instance v0, Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntMap$Values;-><init>(Lcom/badlogic/gdx/utils/IntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values2:Lcom/badlogic/gdx/utils/IntMap$Values;

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntMap$Values;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 697
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Values;->reset()V

    .line 698
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Values;->valid:Z

    .line 699
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values2:Lcom/badlogic/gdx/utils/IntMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Values;->valid:Z

    .line 700
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    return-object v0

    .line 702
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values2:Lcom/badlogic/gdx/utils/IntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntMap$Values;->reset()V

    .line 703
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values2:Lcom/badlogic/gdx/utils/IntMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntMap$Values;->valid:Z

    .line 704
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values1:Lcom/badlogic/gdx/utils/IntMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntMap$Values;->valid:Z

    .line 705
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntMap;->values2:Lcom/badlogic/gdx/utils/IntMap$Values;

    return-object v0
.end method
