.class public Lcom/badlogic/gdx/utils/IntSet;
.super Ljava/lang/Object;
.source "IntSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;
    }
.end annotation


# static fields
.field private static final EMPTY:I = 0x0

.field private static final PRIME1:I = -0x41e0eb4f

.field private static final PRIME2:I = -0x4b47d1c7

.field private static final PRIME3:I = -0x312e3dbf


# instance fields
.field capacity:I

.field hasZeroValue:Z

.field private hashShift:I

.field private iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

.field private iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

.field keyTable:[I

.field private loadFactor:F

.field private mask:I

.field private pushIterations:I

.field public size:I

.field private stashCapacity:I

.field stashSize:I

.field private threshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntSet;-><init>(IF)V

    .line 52
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 57
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>(IF)V

    .line 58
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    if-ltz p1, :cond_2

    .line 65
    int-to-float v0, p1

    div-float/2addr v0, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 66
    const/high16 v0, 0x40000000    # 2.0f

    if-gt p1, v0, :cond_1

    .line 67
    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    .line 69
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    .line 70
    iput p2, p0, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    .line 72
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    .line 73
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hashShift:I

    .line 75
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->stashCapacity:I

    .line 76
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    div-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->pushIterations:I

    .line 78
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 79
    return-void

    .line 69
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

    .line 66
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

    .line 64
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

.method public constructor <init>(Lcom/badlogic/gdx/utils/IntSet;)V
    .locals 4
    .param p1, "set"    # Lcom/badlogic/gdx/utils/IntSet;

    .line 83
    iget v0, p1, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IntSet;-><init>(IF)V

    .line 84
    iget v0, p1, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    .line 85
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iget v0, p1, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 87
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 88
    return-void
.end method

.method private addResize(I)V
    .locals 15
    .param p1, "key"    # I

    .line 170
    move-object v8, p0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 171
    iput-boolean v0, v8, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 172
    return-void

    .line 176
    :cond_0
    iget v1, v8, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int v9, p1, v1

    .line 177
    .local v9, "index1":I
    iget-object v1, v8, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v10, v1, v9

    .line 178
    .local v10, "key1":I
    if-nez v10, :cond_2

    .line 179
    aput p1, v1, v9

    .line 180
    iget v1, v8, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v8, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v2, v8, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt v1, v2, :cond_1

    iget v1, v8, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    .line 181
    :cond_1
    return-void

    .line 184
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/utils/IntSet;->hash2(I)I

    move-result v11

    .line 185
    .local v11, "index2":I
    iget-object v1, v8, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v12, v1, v11

    .line 186
    .local v12, "key2":I
    if-nez v12, :cond_4

    .line 187
    aput p1, v1, v11

    .line 188
    iget v1, v8, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v8, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v2, v8, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt v1, v2, :cond_3

    iget v1, v8, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    .line 189
    :cond_3
    return-void

    .line 192
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/utils/IntSet;->hash3(I)I

    move-result v13

    .line 193
    .local v13, "index3":I
    iget-object v1, v8, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v14, v1, v13

    .line 194
    .local v14, "key3":I
    if-nez v14, :cond_6

    .line 195
    aput p1, v1, v13

    .line 196
    iget v1, v8, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v8, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v2, v8, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt v1, v2, :cond_5

    iget v1, v8, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    .line 197
    :cond_5
    return-void

    .line 200
    :cond_6
    move-object v0, p0

    move/from16 v1, p1

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    move v7, v14

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/utils/IntSet;->push(IIIIIII)V

    .line 201
    return-void
.end method

.method private addStash(I)V
    .locals 3
    .param p1, "key"    # I

    .line 262
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->stashCapacity:I

    if-ne v0, v1, :cond_0

    .line 264
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    .line 265
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->addResize(I)V

    .line 266
    return-void

    .line 269
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    add-int/2addr v1, v0

    .line 270
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aput p1, v2, v1

    .line 271
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    .line 272
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 273
    return-void
.end method

.method private containsKeyStash(I)Z
    .locals 4
    .param p1, "key"    # I

    .line 382
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 383
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 384
    aget v3, v0, v1

    if-ne v3, p1, :cond_0

    const/4 v3, 0x1

    return v3

    .line 383
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 385
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private hash2(I)I
    .locals 2
    .param p1, "h"    # I

    .line 430
    const v0, -0x4b47d1c7

    mul-int/2addr p1, v0

    .line 431
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private hash3(I)I
    .locals 2
    .param p1, "h"    # I

    .line 435
    const v0, -0x312e3dbf

    mul-int/2addr p1, v0

    .line 436
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private push(IIIIIII)V
    .locals 8
    .param p1, "insertKey"    # I
    .param p2, "index1"    # I
    .param p3, "key1"    # I
    .param p4, "index2"    # I
    .param p5, "key2"    # I
    .param p6, "index3"    # I
    .param p7, "key3"    # I

    .line 204
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 206
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    .line 210
    .local v1, "mask":I
    const/4 v2, 0x0

    .local v2, "i":I
    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->pushIterations:I

    .line 213
    .local v3, "pushIterations":I
    :goto_0
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    if-eq v4, v5, :cond_0

    .line 223
    move v4, p7

    .line 224
    .local v4, "evictedKey":I
    aput p1, v0, p6

    goto :goto_1

    .line 219
    .end local v4    # "evictedKey":I
    :cond_0
    move v4, p5

    .line 220
    .restart local v4    # "evictedKey":I
    aput p1, v0, p4

    .line 221
    goto :goto_1

    .line 215
    .end local v4    # "evictedKey":I
    :cond_1
    move v4, p3

    .line 216
    .restart local v4    # "evictedKey":I
    aput p1, v0, p2

    .line 217
    nop

    .line 229
    :goto_1
    and-int p2, v4, v1

    .line 230
    aget p3, v0, p2

    .line 231
    if-nez p3, :cond_3

    .line 232
    aput v4, v0, p2

    .line 233
    iget v6, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v7, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt v6, v7, :cond_2

    iget v6, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/lit8 v5, v6, 0x1

    invoke-direct {p0, v5}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    .line 234
    :cond_2
    return-void

    .line 237
    :cond_3
    invoke-direct {p0, v4}, Lcom/badlogic/gdx/utils/IntSet;->hash2(I)I

    move-result p4

    .line 238
    aget p5, v0, p4

    .line 239
    if-nez p5, :cond_5

    .line 240
    aput v4, v0, p4

    .line 241
    iget v6, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v7, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt v6, v7, :cond_4

    iget v6, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/lit8 v5, v6, 0x1

    invoke-direct {p0, v5}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    .line 242
    :cond_4
    return-void

    .line 245
    :cond_5
    invoke-direct {p0, v4}, Lcom/badlogic/gdx/utils/IntSet;->hash3(I)I

    move-result p6

    .line 246
    aget p7, v0, p6

    .line 247
    if-nez p7, :cond_7

    .line 248
    aput v4, v0, p6

    .line 249
    iget v6, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v7, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt v6, v7, :cond_6

    iget v6, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/lit8 v5, v6, 0x1

    invoke-direct {p0, v5}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    .line 250
    :cond_6
    return-void

    .line 253
    :cond_7
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_8

    .line 258
    invoke-direct {p0, v4}, Lcom/badlogic/gdx/utils/IntSet;->addStash(I)V

    .line 259
    return-void

    .line 255
    :cond_8
    move p1, v4

    .line 256
    goto :goto_0
.end method

.method private resize(I)V
    .locals 5
    .param p1, "newSize"    # I

    .line 405
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int/2addr v0, v1

    .line 407
    .local v0, "oldEndIndex":I
    iput p1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    .line 408
    int-to-float v1, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    .line 409
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    .line 410
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->hashShift:I

    .line 411
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

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->stashCapacity:I

    .line 412
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

    iput v1, p0, Lcom/badlogic/gdx/utils/IntSet;->pushIterations:I

    .line 414
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 416
    .local v1, "oldKeyTable":[I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->stashCapacity:I

    add-int/2addr v2, p1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 418
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 419
    .local v2, "oldSize":I
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    iput v3, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 420
    const/4 v3, 0x0

    iput v3, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    .line 421
    if-lez v2, :cond_1

    .line 422
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 423
    aget v4, v1, v3

    .line 424
    .local v4, "key":I
    if-eqz v4, :cond_0

    invoke-direct {p0, v4}, Lcom/badlogic/gdx/utils/IntSet;->addResize(I)V

    .line 422
    .end local v4    # "key":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 427
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public static varargs with([I)Lcom/badlogic/gdx/utils/IntSet;
    .locals 1
    .param p0, "array"    # [I

    .line 506
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/IntSet;-><init>()V

    .line 507
    .local v0, "set":Lcom/badlogic/gdx/utils/IntSet;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/IntSet;->addAll([I)V

    .line 508
    return-object v0
.end method


# virtual methods
.method public add(I)Z
    .locals 18
    .param p1, "key"    # I

    .line 92
    move-object/from16 v8, p0

    move/from16 v9, p1

    const/4 v0, 0x0

    const/4 v10, 0x1

    if-nez v9, :cond_1

    .line 93
    iget-boolean v1, v8, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz v1, :cond_0

    return v0

    .line 94
    :cond_0
    iput-boolean v10, v8, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 95
    iget v0, v8, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/2addr v0, v10

    iput v0, v8, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 96
    return v10

    .line 99
    :cond_1
    iget-object v11, v8, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 102
    .local v11, "keyTable":[I
    iget v1, v8, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int v12, v9, v1

    .line 103
    .local v12, "index1":I
    aget v13, v11, v12

    .line 104
    .local v13, "key1":I
    if-ne v13, v9, :cond_2

    return v0

    .line 106
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/utils/IntSet;->hash2(I)I

    move-result v14

    .line 107
    .local v14, "index2":I
    aget v15, v11, v14

    .line 108
    .local v15, "key2":I
    if-ne v15, v9, :cond_3

    return v0

    .line 110
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/badlogic/gdx/utils/IntSet;->hash3(I)I

    move-result v16

    .line 111
    .local v16, "index3":I
    aget v7, v11, v16

    .line 112
    .local v7, "key3":I
    if-ne v7, v9, :cond_4

    return v0

    .line 115
    :cond_4
    iget v1, v8, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    .local v1, "i":I
    iget v2, v8, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_6

    .line 116
    aget v3, v11, v1

    if-ne v3, v9, :cond_5

    return v0

    .line 115
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_6
    if-nez v13, :cond_8

    .line 120
    aput v9, v11, v12

    .line 121
    iget v0, v8, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v8, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v1, v8, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt v0, v1, :cond_7

    iget v0, v8, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/2addr v0, v10

    invoke-direct {v8, v0}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    .line 122
    :cond_7
    return v10

    .line 125
    :cond_8
    if-nez v15, :cond_a

    .line 126
    aput v9, v11, v14

    .line 127
    iget v0, v8, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v8, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v1, v8, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt v0, v1, :cond_9

    iget v0, v8, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/2addr v0, v10

    invoke-direct {v8, v0}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    .line 128
    :cond_9
    return v10

    .line 131
    :cond_a
    if-nez v7, :cond_c

    .line 132
    aput v9, v11, v16

    .line 133
    iget v0, v8, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v8, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v1, v8, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt v0, v1, :cond_b

    iget v0, v8, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    shl-int/2addr v0, v10

    invoke-direct {v8, v0}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    .line 134
    :cond_b
    return v10

    .line 137
    :cond_c
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v17, v7

    .end local v7    # "key3":I
    .local v17, "key3":I
    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/utils/IntSet;->push(IIIIIII)V

    .line 138
    return v10
.end method

.method public addAll(Lcom/badlogic/gdx/utils/IntArray;)V
    .locals 3
    .param p1, "array"    # Lcom/badlogic/gdx/utils/IntArray;

    .line 142
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    iget v1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/badlogic/gdx/utils/IntSet;->addAll([III)V

    .line 143
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/IntArray;II)V
    .locals 3
    .param p1, "array"    # Lcom/badlogic/gdx/utils/IntArray;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 146
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    if-gt v0, v1, :cond_0

    .line 148
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IntArray;->items:[I

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/IntSet;->addAll([III)V

    .line 149
    return-void

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "offset + length must be <= size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/badlogic/gdx/utils/IntArray;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Lcom/badlogic/gdx/utils/IntSet;)V
    .locals 2
    .param p1, "set"    # Lcom/badlogic/gdx/utils/IntSet;

    .line 162
    iget v0, p1, Lcom/badlogic/gdx/utils/IntSet;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/IntSet;->ensureCapacity(I)V

    .line 163
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/IntSet;->iterator()Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    move-result-object v0

    .line 164
    .local v0, "iterator":Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;
    :goto_0
    iget-boolean v1, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->hasNext:Z

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->next()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    goto :goto_0

    .line 166
    :cond_0
    return-void
.end method

.method public varargs addAll([I)V
    .locals 2
    .param p1, "array"    # [I

    .line 152
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/IntSet;->addAll([III)V

    .line 153
    return-void
.end method

.method public addAll([III)V
    .locals 3
    .param p1, "array"    # [I
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 156
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/IntSet;->ensureCapacity(I)V

    .line 157
    move v0, p2

    .local v0, "i":I
    add-int v1, v0, p3

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 158
    aget v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/IntSet;->add(I)Z

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    .line 359
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-nez v0, :cond_0

    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 361
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    const/4 v3, 0x0

    if-lez v1, :cond_1

    .line 362
    aput v3, v0, v2

    move v1, v2

    goto :goto_0

    .line 363
    .end local v2    # "i":I
    :cond_1
    iput v3, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 364
    iput v3, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    .line 365
    iput-boolean v3, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 366
    return-void
.end method

.method public clear(I)V
    .locals 1
    .param p1, "maximumCapacity"    # I

    .line 349
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    if-gt v0, p1, :cond_0

    .line 350
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IntSet;->clear()V

    .line 351
    return-void

    .line 353
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 354
    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 355
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    .line 356
    return-void
.end method

.method public contains(I)Z
    .locals 2
    .param p1, "key"    # I

    .line 369
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    return v0

    .line 370
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int/2addr v0, p1

    .line 371
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 372
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->hash2(I)I

    move-result v0

    .line 373
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 374
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->hash3(I)I

    move-result v0

    .line 375
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v1, v1, v0

    if-eq v1, p1, :cond_1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->containsKeyStash(I)Z

    move-result v1

    return v1

    .line 378
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "additionalCapacity"    # I

    .line 399
    if-ltz p1, :cond_1

    .line 400
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    add-int/2addr v0, p1

    .line 401
    .local v0, "sizeNeeded":I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->loadFactor:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    .line 402
    :cond_0
    return-void

    .line 399
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

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 447
    instance-of v0, p1, Lcom/badlogic/gdx/utils/IntSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 448
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/utils/IntSet;

    .line 449
    .local v0, "other":Lcom/badlogic/gdx/utils/IntSet;
    iget v2, v0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-eq v2, v3, :cond_1

    return v1

    .line 450
    :cond_1
    iget-boolean v2, v0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 451
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 452
    .local v2, "keyTable":[I
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int/2addr v4, v5

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_4

    .line 453
    aget v5, v2, v3

    if-eqz v5, :cond_3

    aget v5, v2, v3

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/IntSet;->contains(I)Z

    move-result v5

    if-nez v5, :cond_3

    return v1

    .line 452
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 454
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_4
    const/4 v1, 0x1

    return v1
.end method

.method public first()I
    .locals 4

    .line 389
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 391
    .local v0, "keyTable":[I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 392
    aget v3, v0, v1

    if-eqz v3, :cond_1

    aget v3, v0, v1

    return v3

    .line 391
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "IntSet is empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hashCode()I
    .locals 5

    .line 440
    const/4 v0, 0x0

    .line 441
    .local v0, "h":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 442
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v4, v3, v1

    if-eqz v4, :cond_0

    aget v3, v3, v1

    add-int/2addr v0, v3

    .line 441
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 334
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;
    .locals 3

    .line 488
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;-><init>(Lcom/badlogic/gdx/utils/IntSet;)V

    return-object v0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    if-nez v0, :cond_1

    .line 490
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;-><init>(Lcom/badlogic/gdx/utils/IntSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    .line 491
    new-instance v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;-><init>(Lcom/badlogic/gdx/utils/IntSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 494
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->reset()V

    .line 495
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 496
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 497
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    return-object v0

    .line 499
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->reset()V

    .line 500
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 501
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator1:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;->valid:Z

    .line 502
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->iterator2:Lcom/badlogic/gdx/utils/IntSet$IntSetIterator;

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 329
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(I)Z
    .locals 5
    .param p1, "key"    # I

    .line 277
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 278
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-nez v2, :cond_0

    return v0

    .line 279
    :cond_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    .line 280
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 281
    return v1

    .line 284
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->mask:I

    and-int/2addr v2, p1

    .line 285
    .local v2, "index":I
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v4, v3, v2

    if-ne v4, p1, :cond_2

    .line 286
    aput v0, v3, v2

    .line 287
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 288
    return v1

    .line 291
    :cond_2
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->hash2(I)I

    move-result v2

    .line 292
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v4, v3, v2

    if-ne v4, p1, :cond_3

    .line 293
    aput v0, v3, v2

    .line 294
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 295
    return v1

    .line 298
    :cond_3
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->hash3(I)I

    move-result v2

    .line 299
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v4, v3, v2

    if-ne v4, p1, :cond_4

    .line 300
    aput v0, v3, v2

    .line 301
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 302
    return v1

    .line 305
    :cond_4
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->removeStash(I)Z

    move-result v0

    return v0
.end method

.method removeStash(I)Z
    .locals 5
    .param p1, "key"    # I

    .line 309
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 310
    .local v0, "keyTable":[I
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 311
    aget v3, v0, v1

    if-ne v3, p1, :cond_0

    .line 312
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IntSet;->removeStashIndex(I)V

    .line 313
    iget v3, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 314
    return v4

    .line 310
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method removeStashIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .line 322
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IntSet;->stashSize:I

    .line 323
    iget v1, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    add-int/2addr v1, v0

    .line 324
    .local v1, "lastIndex":I
    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    aget v2, v0, v1

    aput v2, v0, p1

    .line 325
    :cond_0
    return-void
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "maximumCapacity"    # I

    .line 340
    if-ltz p1, :cond_2

    .line 341
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-le v0, p1, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    .line 342
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->capacity:I

    if-gt v0, p1, :cond_1

    return-void

    .line 343
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 344
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IntSet;->resize(I)V

    .line 345
    return-void

    .line 340
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
    .locals 5

    .line 458
    iget v0, p0, Lcom/badlogic/gdx/utils/IntSet;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 459
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 460
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 461
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IntSet;->keyTable:[I

    .line 462
    .local v1, "keyTable":[I
    array-length v2, v1

    .line 463
    .local v2, "i":I
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/IntSet;->hasZeroValue:Z

    if-eqz v3, :cond_1

    .line 464
    const-string v3, "0"

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    goto :goto_2

    .line 466
    :cond_1
    :goto_0
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    if-lez v2, :cond_3

    .line 467
    aget v2, v1, v3

    .line 468
    .local v2, "key":I
    if-nez v2, :cond_2

    move v2, v3

    goto :goto_0

    .line 469
    :cond_2
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 473
    .end local v2    # "key":I
    :cond_3
    :goto_1
    move v2, v3

    .end local v3    # "i":I
    .local v2, "i":I
    :goto_2
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    if-lez v2, :cond_5

    .line 474
    aget v2, v1, v3

    .line 475
    .local v2, "key":I
    if-nez v2, :cond_4

    goto :goto_1

    .line 476
    :cond_4
    const-string v4, ", "

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 477
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 478
    .end local v2    # "key":I
    goto :goto_1

    .line 479
    :cond_5
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 480
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
