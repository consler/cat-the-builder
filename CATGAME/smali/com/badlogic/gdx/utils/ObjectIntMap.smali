.class public Lcom/badlogic/gdx/utils/ObjectIntMap;
.super Ljava/lang/Object;
.source "ObjectIntMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;,
        Lcom/badlogic/gdx/utils/ObjectIntMap$Values;,
        Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;,
        Lcom/badlogic/gdx/utils/ObjectIntMap$MapIterator;,
        Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/ObjectIntMap$Entry<",
        "TK;>;>;"
    }
.end annotation


# static fields
.field private static final PRIME1:I = -0x41e0eb4f

.field private static final PRIME2:I = -0x4b47d1c7

.field private static final PRIME3:I = -0x312e3dbf


# instance fields
.field capacity:I

.field private entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

.field private entries2:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

.field private hashShift:I

.field keyTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

.field private keys2:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

.field private loadFactor:F

.field private mask:I

.field private pushIterations:I

.field public size:I

.field private stashCapacity:I

.field stashSize:I

.field private threshold:I

.field valueTable:[I

.field private values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

.field private values2:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>(IF)V

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 59
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>(IF)V

    .line 60
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 65
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    if-ltz p1, :cond_2

    .line 67
    int-to-float v0, p1

    div-float/2addr v0, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 68
    const/high16 v0, 0x40000000    # 2.0f

    if-gt p1, v0, :cond_1

    .line 69
    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    .line 71
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    .line 72
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->loadFactor:F

    .line 74
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    .line 75
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->hashShift:I

    .line 77
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashCapacity:I

    .line 78
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    div-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->pushIterations:I

    .line 80
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 81
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 82
    return-void

    .line 71
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

    .line 68
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

    .line 66
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

.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "+TK;>;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<+TK;>;"
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;-><init>(IF)V

    .line 87
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    .line 88
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 91
    return-void
.end method

.method private containsKeyStash(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 444
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 445
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 446
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    .line 445
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 447
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private getAndIncrementStash(Ljava/lang/Object;II)I
    .locals 6
    .param p2, "defaultValue"    # I
    .param p3, "increment"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)I"
        }
    .end annotation

    .line 316
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 317
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 318
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget v4, v3, v1

    .line 320
    .local v4, "value":I
    add-int v5, v4, p3

    aput v5, v3, v1

    .line 321
    return v4

    .line 317
    .end local v4    # "value":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    add-int v1, p2, p3

    invoke-virtual {p0, p1, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .line 324
    return p2
.end method

.method private getStash(Ljava/lang/Object;I)I
    .locals 4
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 292
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 293
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 294
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget v3, v3, v1

    return v3

    .line 293
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return p2
.end method

.method private hash2(I)I
    .locals 2
    .param p1, "h"    # I

    .line 496
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    const v0, -0x4b47d1c7

    mul-int/2addr p1, v0

    .line 497
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private hash3(I)I
    .locals 2
    .param p1, "h"    # I

    .line 501
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    const v0, -0x312e3dbf

    mul-int/2addr p1, v0

    .line 502
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private push(Ljava/lang/Object;IILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 17
    .param p2, "insertValue"    # I
    .param p3, "index1"    # I
    .param p5, "index2"    # I
    .param p7, "index3"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;IITK;ITK;ITK;)V"
        }
    .end annotation

    .line 193
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "insertKey":Ljava/lang/Object;, "TK;"
    .local p4, "key1":Ljava/lang/Object;, "TK;"
    .local p6, "key2":Ljava/lang/Object;, "TK;"
    .local p8, "key3":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 194
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 195
    .local v2, "valueTable":[I
    iget v3, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    .line 200
    .local v3, "mask":I
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->pushIterations:I

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    move v13, v4

    move-object/from16 v4, p1

    .line 203
    .end local p1    # "insertKey":Ljava/lang/Object;, "TK;"
    .end local p2    # "insertValue":I
    .end local p3    # "index1":I
    .end local p4    # "key1":Ljava/lang/Object;, "TK;"
    .end local p5    # "index2":I
    .end local p6    # "key2":Ljava/lang/Object;, "TK;"
    .end local p7    # "index3":I
    .end local p8    # "key3":Ljava/lang/Object;, "TK;"
    .local v4, "insertKey":Ljava/lang/Object;, "TK;"
    .local v5, "pushIterations":I
    .local v6, "insertValue":I
    .local v7, "index1":I
    .local v8, "key1":Ljava/lang/Object;, "TK;"
    .local v9, "index2":I
    .local v10, "key2":Ljava/lang/Object;, "TK;"
    .local v11, "index3":I
    .local v12, "key3":Ljava/lang/Object;, "TK;"
    .local v13, "i":I
    :goto_0
    const/4 v14, 0x2

    invoke-static {v14}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v14

    const/4 v15, 0x1

    if-eqz v14, :cond_1

    if-eq v14, v15, :cond_0

    .line 217
    move-object v14, v12

    .line 218
    .local v14, "evictedKey":Ljava/lang/Object;, "TK;"
    aget v16, v2, v11

    .line 219
    .local v16, "evictedValue":I
    aput-object v4, v1, v11

    .line 220
    aput v6, v2, v11

    move/from16 v15, v16

    goto :goto_1

    .line 211
    .end local v14    # "evictedKey":Ljava/lang/Object;, "TK;"
    .end local v16    # "evictedValue":I
    :cond_0
    move-object v14, v10

    .line 212
    .restart local v14    # "evictedKey":Ljava/lang/Object;, "TK;"
    aget v16, v2, v9

    .line 213
    .restart local v16    # "evictedValue":I
    aput-object v4, v1, v9

    .line 214
    aput v6, v2, v9

    .line 215
    move/from16 v15, v16

    goto :goto_1

    .line 205
    .end local v14    # "evictedKey":Ljava/lang/Object;, "TK;"
    .end local v16    # "evictedValue":I
    :cond_1
    move-object v14, v8

    .line 206
    .restart local v14    # "evictedKey":Ljava/lang/Object;, "TK;"
    aget v16, v2, v7

    .line 207
    .restart local v16    # "evictedValue":I
    aput-object v4, v1, v7

    .line 208
    aput v6, v2, v7

    .line 209
    move/from16 v15, v16

    .line 225
    .end local v16    # "evictedValue":I
    .local v15, "evictedValue":I
    :goto_1
    move-object/from16 p2, v4

    .end local v4    # "insertKey":Ljava/lang/Object;, "TK;"
    .local p2, "insertKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 226
    .local v4, "hashCode":I
    and-int v7, v4, v3

    .line 227
    aget-object v8, v1, v7

    .line 228
    if-nez v8, :cond_3

    .line 229
    aput-object v14, v1, v7

    .line 230
    aput v15, v2, v7

    .line 231
    move/from16 v16, v3

    .end local v3    # "mask":I
    .local v16, "mask":I
    iget v3, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    move/from16 p3, v6

    .end local v6    # "insertValue":I
    .local p3, "insertValue":I
    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v6, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v3, v6, :cond_2

    iget v3, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    const/4 v6, 0x1

    shl-int/2addr v3, v6

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 232
    :cond_2
    return-void

    .line 235
    .end local v16    # "mask":I
    .end local p3    # "insertValue":I
    .restart local v3    # "mask":I
    .restart local v6    # "insertValue":I
    :cond_3
    move/from16 v16, v3

    move/from16 p3, v6

    .end local v3    # "mask":I
    .end local v6    # "insertValue":I
    .restart local v16    # "mask":I
    .restart local p3    # "insertValue":I
    invoke-direct {v0, v4}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash2(I)I

    move-result v9

    .line 236
    aget-object v10, v1, v9

    .line 237
    if-nez v10, :cond_5

    .line 238
    aput-object v14, v1, v9

    .line 239
    aput v15, v2, v9

    .line 240
    iget v3, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v6, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v3, v6, :cond_4

    iget v3, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    const/4 v6, 0x1

    shl-int/2addr v3, v6

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 241
    :cond_4
    return-void

    .line 244
    :cond_5
    invoke-direct {v0, v4}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash3(I)I

    move-result v11

    .line 245
    aget-object v12, v1, v11

    .line 246
    if-nez v12, :cond_7

    .line 247
    aput-object v14, v1, v11

    .line 248
    aput v15, v2, v11

    .line 249
    iget v3, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v6, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v3, v6, :cond_6

    iget v3, v0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    const/4 v6, 0x1

    shl-int/2addr v3, v6

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 250
    :cond_6
    return-void

    .line 253
    :cond_7
    add-int/lit8 v13, v13, 0x1

    if-ne v13, v5, :cond_8

    .line 259
    .end local v4    # "hashCode":I
    invoke-direct {v0, v14, v15}, Lcom/badlogic/gdx/utils/ObjectIntMap;->putStash(Ljava/lang/Object;I)V

    .line 260
    return-void

    .line 255
    .restart local v4    # "hashCode":I
    :cond_8
    move-object v3, v14

    .line 256
    .end local p2    # "insertKey":Ljava/lang/Object;, "TK;"
    .local v3, "insertKey":Ljava/lang/Object;, "TK;"
    move v6, v15

    .line 257
    .end local v4    # "hashCode":I
    .end local p3    # "insertValue":I
    .restart local v6    # "insertValue":I
    move-object v4, v3

    move/from16 v3, v16

    goto/16 :goto_0
.end method

.method private putResize(Ljava/lang/Object;I)V
    .locals 17
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 161
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    move-object/from16 v9, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v10

    .line 162
    .local v10, "hashCode":I
    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    and-int v11, v10, v0

    .line 163
    .local v11, "index1":I
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v12, v0, v11

    .line 164
    .local v12, "key1":Ljava/lang/Object;, "TK;"
    if-nez v12, :cond_1

    .line 165
    aput-object p1, v0, v11

    .line 166
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v0, v11

    .line 167
    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v1, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 168
    :cond_0
    return-void

    .line 171
    :cond_1
    invoke-direct {v9, v10}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash2(I)I

    move-result v13

    .line 172
    .local v13, "index2":I
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v14, v0, v13

    .line 173
    .local v14, "key2":Ljava/lang/Object;, "TK;"
    if-nez v14, :cond_3

    .line 174
    aput-object p1, v0, v13

    .line 175
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v0, v13

    .line 176
    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v1, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v0, v1, :cond_2

    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 177
    :cond_2
    return-void

    .line 180
    :cond_3
    invoke-direct {v9, v10}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash3(I)I

    move-result v15

    .line 181
    .local v15, "index3":I
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v16, v0, v15

    .line 182
    .local v16, "key3":Ljava/lang/Object;, "TK;"
    if-nez v16, :cond_5

    .line 183
    aput-object p1, v0, v15

    .line 184
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v0, v15

    .line 185
    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v1, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v0, v1, :cond_4

    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 186
    :cond_4
    return-void

    .line 189
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v3, v11

    move-object v4, v12

    move v5, v13

    move-object v6, v14

    move v7, v15

    move-object/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/ObjectIntMap;->push(Ljava/lang/Object;IILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 190
    return-void
.end method

.method private putStash(Ljava/lang/Object;I)V
    .locals 3
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 263
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashCapacity:I

    if-ne v0, v1, :cond_0

    .line 265
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 266
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->putResize(Ljava/lang/Object;I)V

    .line 267
    return-void

    .line 270
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    add-int/2addr v1, v0

    .line 271
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 272
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v2, v1

    .line 273
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    .line 274
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 275
    return-void
.end method

.method private resize(I)V
    .locals 7
    .param p1, "newSize"    # I

    .line 469
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v0, v1

    .line 471
    .local v0, "oldEndIndex":I
    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    .line 472
    int-to-float v1, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    .line 473
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    .line 474
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->hashShift:I

    .line 475
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

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashCapacity:I

    .line 476
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

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->pushIterations:I

    .line 478
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 479
    .local v1, "oldKeyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 481
    .local v2, "oldValueTable":[I
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashCapacity:I

    add-int v4, p1, v3

    new-array v4, v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    iput-object v4, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 482
    add-int/2addr v3, p1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 484
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 485
    .local v3, "oldSize":I
    const/4 v4, 0x0

    iput v4, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 486
    iput v4, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    .line 487
    if-lez v3, :cond_1

    .line 488
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 489
    aget-object v5, v1, v4

    .line 490
    .local v5, "key":Ljava/lang/Object;, "TK;"
    if-eqz v5, :cond_0

    aget v6, v2, v4

    invoke-direct {p0, v5, v6}, Lcom/badlogic/gdx/utils/ObjectIntMap;->putResize(Ljava/lang/Object;I)V

    .line 488
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 493
    .end local v4    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 411
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    if-nez v0, :cond_0

    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 413
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_1

    .line 414
    const/4 v1, 0x0

    aput-object v1, v0, v2

    move v1, v2

    goto :goto_0

    .line 415
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 416
    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    .line 417
    return-void
.end method

.method public clear(I)V
    .locals 1
    .param p1, "maximumCapacity"    # I

    .line 402
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    if-gt v0, p1, :cond_0

    .line 403
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->clear()V

    .line 404
    return-void

    .line 406
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 407
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 408
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 431
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 432
    .local v0, "hashCode":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    and-int/2addr v1, v0

    .line 433
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 434
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash2(I)I

    move-result v1

    .line 435
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 436
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash3(I)I

    move-result v1

    .line 437
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->containsKeyStash(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 440
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public containsValue(I)Z
    .locals 4
    .param p1, "value"    # I

    .line 422
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 423
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 424
    .local v1, "valueTable":[I
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    if-lez v2, :cond_1

    .line 425
    aget-object v2, v0, v3

    if-eqz v2, :cond_0

    aget v2, v1, v3

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    return v2

    .line 424
    :cond_0
    move v2, v3

    goto :goto_0

    .line 426
    .end local v3    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "additionalCapacity"    # I

    .line 463
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    if-ltz p1, :cond_1

    .line 464
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/2addr v0, p1

    .line 465
    .local v0, "sizeNeeded":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->loadFactor:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 466
    :cond_0
    return-void

    .line 463
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

.method public entries()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectIntMap$Entries<",
            "TK;>;"
        }
    .end annotation

    .line 576
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    return-object v0

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    if-nez v0, :cond_1

    .line 578
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    .line 579
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries2:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 582
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->reset()V

    .line 583
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->valid:Z

    .line 584
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries2:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->valid:Z

    .line 585
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    return-object v0

    .line 587
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries2:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->reset()V

    .line 588
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries2:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->valid:Z

    .line 589
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries1:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->valid:Z

    .line 590
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries2:Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 522
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 523
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/ObjectIntMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 524
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectIntMap;

    .line 525
    .local v1, "other":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    iget v3, v1, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    if-eq v3, v4, :cond_2

    return v2

    .line 526
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 527
    .local v3, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 528
    .local v4, "valueTable":[I
    const/4 v5, 0x0

    .local v5, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    iget v7, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v6, v7

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_5

    .line 529
    aget-object v7, v3, v5

    .line 530
    .local v7, "key":Ljava/lang/Object;, "TK;"
    if-eqz v7, :cond_4

    .line 531
    invoke-virtual {v1, v7, v2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v8

    .line 532
    .local v8, "otherValue":I
    if-nez v8, :cond_3

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/ObjectIntMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    return v2

    .line 533
    :cond_3
    aget v9, v4, v5

    .line 534
    .local v9, "value":I
    if-eq v8, v9, :cond_4

    return v2

    .line 528
    .end local v7    # "key":Ljava/lang/Object;, "TK;"
    .end local v8    # "otherValue":I
    .end local v9    # "value":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 537
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_5
    return v0
.end method

.method public findKey(I)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 453
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 454
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 455
    .local v1, "valueTable":[I
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    if-lez v2, :cond_1

    .line 456
    aget-object v2, v0, v3

    if-eqz v2, :cond_0

    aget v2, v1, v3

    if-ne v2, p1, :cond_0

    aget-object v2, v0, v3

    return-object v2

    .line 455
    :cond_0
    move v2, v3

    goto :goto_0

    .line 457
    .end local v3    # "i":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public get(Ljava/lang/Object;I)I
    .locals 3
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 279
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 280
    .local v0, "hashCode":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    and-int/2addr v1, v0

    .line 281
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 282
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash2(I)I

    move-result v1

    .line 283
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 284
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash3(I)I

    move-result v1

    .line 285
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->getStash(Ljava/lang/Object;I)I

    move-result v2

    return v2

    .line 288
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget v2, v2, v1

    return v2
.end method

.method public getAndIncrement(Ljava/lang/Object;II)I
    .locals 5
    .param p2, "defaultValue"    # I
    .param p3, "increment"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)I"
        }
    .end annotation

    .line 301
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 302
    .local v0, "hashCode":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    and-int/2addr v1, v0

    .line 303
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 304
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash2(I)I

    move-result v1

    .line 305
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 306
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash3(I)I

    move-result v1

    .line 307
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/ObjectIntMap;->getAndIncrementStash(Ljava/lang/Object;II)I

    move-result v2

    return v2

    .line 310
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget v3, v2, v1

    .line 311
    .local v3, "value":I
    add-int v4, v3, p3

    aput v4, v2, v1

    .line 312
    return v3
.end method

.method public hashCode()I
    .locals 7

    .line 506
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    const/4 v0, 0x0

    .line 507
    .local v0, "h":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 508
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 509
    .local v2, "valueTable":[I
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v4, v5

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 510
    aget-object v5, v1, v3

    .line 511
    .local v5, "key":Ljava/lang/Object;, "TK;"
    if-eqz v5, :cond_0

    .line 512
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    mul-int/lit8 v6, v6, 0x1f

    add-int/2addr v0, v6

    .line 514
    aget v6, v2, v3

    .line 515
    .local v6, "value":I
    add-int/2addr v0, v6

    .line 509
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 518
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 387
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectIntMap$Entries<",
            "TK;>;"
        }
    .end annotation

    .line 568
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 31
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->iterator()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectIntMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 620
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    return-object v0

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    if-nez v0, :cond_1

    .line 622
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    .line 623
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys2:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 626
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->reset()V

    .line 627
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->valid:Z

    .line 628
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys2:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->valid:Z

    .line 629
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    return-object v0

    .line 631
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys2:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->reset()V

    .line 632
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys2:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->valid:Z

    .line 633
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys1:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;->valid:Z

    .line 634
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keys2:Lcom/badlogic/gdx/utils/ObjectIntMap$Keys;

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 382
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(Ljava/lang/Object;I)V
    .locals 19
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    if-eqz v10, :cond_b

    .line 95
    iget-object v11, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 98
    .local v11, "keyTable":[Ljava/lang/Object;, "[TK;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v12

    .line 99
    .local v12, "hashCode":I
    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    and-int v13, v12, v0

    .line 100
    .local v13, "index1":I
    aget-object v14, v11, v13

    .line 101
    .local v14, "key1":Ljava/lang/Object;, "TK;"
    invoke-virtual {v10, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v0, v13

    .line 103
    return-void

    .line 106
    :cond_0
    invoke-direct {v9, v12}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash2(I)I

    move-result v15

    .line 107
    .local v15, "index2":I
    aget-object v8, v11, v15

    .line 108
    .local v8, "key2":Ljava/lang/Object;, "TK;"
    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v0, v15

    .line 110
    return-void

    .line 113
    :cond_1
    invoke-direct {v9, v12}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash3(I)I

    move-result v16

    .line 114
    .local v16, "index3":I
    aget-object v7, v11, v16

    .line 115
    .local v7, "key3":Ljava/lang/Object;, "TK;"
    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v0, v16

    .line 117
    return-void

    .line 121
    :cond_2
    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    .local v0, "i":I
    iget v1, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v1, v0

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 122
    aget-object v2, v11, v0

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 123
    iget-object v2, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v2, v0

    .line 124
    return-void

    .line 121
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_4
    if-nez v14, :cond_6

    .line 130
    aput-object v10, v11, v13

    .line 131
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v0, v13

    .line 132
    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v1, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v0, v1, :cond_5

    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 133
    :cond_5
    return-void

    .line 136
    :cond_6
    if-nez v8, :cond_8

    .line 137
    aput-object v10, v11, v15

    .line 138
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v0, v15

    .line 139
    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v1, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v0, v1, :cond_7

    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 140
    :cond_7
    return-void

    .line 143
    :cond_8
    if-nez v7, :cond_a

    .line 144
    aput-object v10, v11, v16

    .line 145
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aput p2, v0, v16

    .line 146
    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    iget v1, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->threshold:I

    if-lt v0, v1, :cond_9

    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 147
    :cond_9
    return-void

    .line 150
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move v3, v13

    move-object v4, v14

    move v5, v15

    move-object v6, v8

    move-object/from16 v17, v7

    .end local v7    # "key3":Ljava/lang/Object;, "TK;"
    .local v17, "key3":Ljava/lang/Object;, "TK;"
    move/from16 v7, v16

    move-object/from16 v18, v8

    .end local v8    # "key2":Ljava/lang/Object;, "TK;"
    .local v18, "key2":Ljava/lang/Object;, "TK;"
    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/ObjectIntMap;->push(Ljava/lang/Object;IILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 151
    return-void

    .line 94
    .end local v11    # "keyTable":[Ljava/lang/Object;, "[TK;"
    .end local v12    # "hashCode":I
    .end local v13    # "index1":I
    .end local v14    # "key1":Ljava/lang/Object;, "TK;"
    .end local v15    # "index2":I
    .end local v16    # "index3":I
    .end local v17    # "key3":Ljava/lang/Object;, "TK;"
    .end local v18    # "key2":Ljava/lang/Object;, "TK;"
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Lcom/badlogic/gdx/utils/ObjectIntMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectIntMap<",
            "+TK;>;)V"
        }
    .end annotation

    .line 154
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<+TK;>;"
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->entries()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;->iterator()Lcom/badlogic/gdx/utils/ObjectIntMap$Entries;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;

    .line 155
    .local v1, "entry":Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectIntMap$Entry<+TK;>;"
    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;->key:Ljava/lang/Object;

    iget v3, v1, Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;->value:I

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/utils/ObjectIntMap;->put(Ljava/lang/Object;I)V

    .end local v1    # "entry":Lcom/badlogic/gdx/utils/ObjectIntMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectIntMap$Entry<+TK;>;"
    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 4
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 328
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 329
    .local v0, "hashCode":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->mask:I

    and-int/2addr v1, v0

    .line 330
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 332
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget v2, v2, v1

    .line 333
    .local v2, "oldValue":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 334
    return v2

    .line 337
    .end local v2    # "oldValue":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash2(I)I

    move-result v1

    .line 338
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 340
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget v2, v2, v1

    .line 341
    .restart local v2    # "oldValue":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 342
    return v2

    .line 345
    .end local v2    # "oldValue":I
    :cond_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectIntMap;->hash3(I)I

    move-result v1

    .line 346
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 347
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 348
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget v2, v2, v1

    .line 349
    .restart local v2    # "oldValue":I
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 350
    return v2

    .line 353
    .end local v2    # "oldValue":I
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectIntMap;->removeStash(Ljava/lang/Object;I)I

    move-result v2

    return v2
.end method

.method removeStash(Ljava/lang/Object;I)I
    .locals 5
    .param p2, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 357
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 358
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 359
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 360
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget v3, v3, v1

    .line 361
    .local v3, "oldValue":I
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->removeStashIndex(I)V

    .line 362
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 363
    return v3

    .line 358
    .end local v3    # "oldValue":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return p2
.end method

.method removeStashIndex(I)V
    .locals 4
    .param p1, "index"    # I

    .line 371
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->stashSize:I

    .line 372
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    add-int/2addr v1, v0

    .line 373
    .local v1, "lastIndex":I
    if-ge p1, v1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v0, v1

    aput-object v2, v0, p1

    .line 375
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    aget v3, v2, v1

    aput v3, v2, p1

    .line 376
    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 378
    :cond_0
    return-void
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "maximumCapacity"    # I

    .line 393
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    if-ltz p1, :cond_2

    .line 394
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    if-le v0, p1, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    .line 395
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->capacity:I

    if-gt v0, p1, :cond_1

    return-void

    .line 396
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 397
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectIntMap;->resize(I)V

    .line 398
    return-void

    .line 393
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

    .line 541
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->size:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "{}"

    return-object v0

    .line 542
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 543
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 544
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 545
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->valueTable:[I

    .line 546
    .local v2, "valueTable":[I
    array-length v3, v1

    .line 547
    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    const/16 v5, 0x3d

    if-lez v3, :cond_2

    .line 548
    aget-object v3, v1, v4

    .line 549
    .local v3, "key":Ljava/lang/Object;, "TK;"
    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    .line 550
    :cond_1
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 551
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 552
    aget v6, v2, v4

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 555
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    :cond_2
    :goto_1
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .local v3, "i":I
    if-lez v4, :cond_4

    .line 556
    aget-object v4, v1, v3

    .line 557
    .local v4, "key":Ljava/lang/Object;, "TK;"
    if-nez v4, :cond_3

    goto :goto_2

    .line 558
    :cond_3
    const-string v6, ", "

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 559
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 560
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 561
    aget v6, v2, v3

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(I)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 562
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    nop

    .line 555
    :goto_2
    move v4, v3

    goto :goto_1

    .line 563
    :cond_4
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 564
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public values()Lcom/badlogic/gdx/utils/ObjectIntMap$Values;
    .locals 3

    .line 598
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectIntMap;, "Lcom/badlogic/gdx/utils/ObjectIntMap<TK;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    return-object v0

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    if-nez v0, :cond_1

    .line 600
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    .line 601
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectIntMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values2:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 604
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->reset()V

    .line 605
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->valid:Z

    .line 606
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values2:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->valid:Z

    .line 607
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    return-object v0

    .line 609
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values2:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->reset()V

    .line 610
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values2:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->valid:Z

    .line 611
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values1:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectIntMap$Values;->valid:Z

    .line 612
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectIntMap;->values2:Lcom/badlogic/gdx/utils/ObjectIntMap$Values;

    return-object v0
.end method
