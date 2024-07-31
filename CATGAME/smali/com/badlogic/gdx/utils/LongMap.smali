.class public Lcom/badlogic/gdx/utils/LongMap;
.super Ljava/lang/Object;
.source "LongMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/LongMap$Keys;,
        Lcom/badlogic/gdx/utils/LongMap$Values;,
        Lcom/badlogic/gdx/utils/LongMap$Entries;,
        Lcom/badlogic/gdx/utils/LongMap$MapIterator;,
        Lcom/badlogic/gdx/utils/LongMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/LongMap$Entry<",
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

.field private entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

.field private entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

.field hasZeroValue:Z

.field private hashShift:I

.field keyTable:[J

.field private keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

.field private keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

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

.field private values1:Lcom/badlogic/gdx/utils/LongMap$Values;

.field private values2:Lcom/badlogic/gdx/utils/LongMap$Values;

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
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/LongMap;-><init>(IF)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 62
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/LongMap;-><init>(IF)V

    .line 63
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 68
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
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
    iput p1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .line 74
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    .line 75
    iput p2, p0, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    .line 77
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    .line 78
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    .line 79
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3f

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hashShift:I

    .line 80
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    .line 81
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    div-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->pushIterations:I

    .line 83
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 84
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

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

.method public constructor <init>(Lcom/badlogic/gdx/utils/LongMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/LongMap<",
            "+TV;>;)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<+TV;>;"
    iget v0, p1, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/LongMap;-><init>(IF)V

    .line 90
    iget v0, p1, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    .line 91
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iget v0, p1, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 94
    iget-object v0, p1, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 95
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 96
    return-void
.end method

.method private containsKeyStash(J)Z
    .locals 5
    .param p1, "key"    # J

    .line 484
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 485
    .local v0, "keyTable":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 486
    aget-wide v3, v0, v1

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    return v3

    .line 485
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 487
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private getStash(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .line 332
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 333
    .local v0, "keyTable":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 334
    aget-wide v3, v0, v1

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    return-object v3

    .line 333
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return-object p3
.end method

.method private hash2(J)I
    .locals 4
    .param p1, "h"    # J

    .line 549
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/32 v0, -0x4b47d1c7

    mul-long/2addr p1, v0

    .line 550
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hashShift:I

    ushr-long v0, p1, v0

    xor-long/2addr v0, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private hash3(J)I
    .locals 4
    .param p1, "h"    # J

    .line 554
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/32 v0, -0x312e3dbf

    mul-long/2addr p1, v0

    .line 555
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hashShift:I

    ushr-long v0, p1, v0

    xor-long/2addr v0, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v2, v2

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private push(JLjava/lang/Object;IJIJIJ)V
    .locals 23
    .param p1, "insertKey"    # J
    .param p4, "index1"    # I
    .param p5, "key1"    # J
    .param p7, "index2"    # I
    .param p8, "key2"    # J
    .param p10, "index3"    # I
    .param p11, "key3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;IJIJIJ)V"
        }
    .end annotation

    .line 216
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, "insertValue":Ljava/lang/Object;, "TV;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 217
    .local v1, "keyTable":[J
    iget-object v2, v0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 218
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget v3, v0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    .line 223
    .local v3, "mask":I
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, v0, Lcom/badlogic/gdx/utils/LongMap;->pushIterations:I

    move-wide/from16 v6, p1

    move/from16 v8, p4

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move-wide/from16 v12, p8

    move/from16 v14, p10

    move-wide/from16 v15, p11

    move/from16 v17, v4

    move-object/from16 v4, p3

    .line 226
    .end local p1    # "insertKey":J
    .end local p3    # "insertValue":Ljava/lang/Object;, "TV;"
    .end local p4    # "index1":I
    .end local p5    # "key1":J
    .end local p7    # "index2":I
    .end local p8    # "key2":J
    .end local p10    # "index3":I
    .end local p11    # "key3":J
    .local v4, "insertValue":Ljava/lang/Object;, "TV;"
    .local v5, "pushIterations":I
    .local v6, "insertKey":J
    .local v8, "index1":I
    .local v9, "key1":J
    .local v11, "index2":I
    .local v12, "key2":J
    .local v14, "index3":I
    .local v15, "key3":J
    .local v17, "i":I
    :goto_0
    const/16 v18, 0x2

    move/from16 v19, v5

    .end local v5    # "pushIterations":I
    .local v19, "pushIterations":I
    invoke-static/range {v18 .. v18}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v5

    const/4 v0, 0x1

    if-eqz v5, :cond_1

    if-eq v5, v0, :cond_0

    .line 240
    move-wide/from16 v20, v15

    .line 241
    .local v20, "evictedKey":J
    aget-object v5, v2, v14

    .line 242
    .local v5, "evictedValue":Ljava/lang/Object;, "TV;"
    aput-wide v6, v1, v14

    .line 243
    aput-object v4, v2, v14

    move-object/from16 v18, v1

    move-wide/from16 v0, v20

    goto :goto_1

    .line 234
    .end local v5    # "evictedValue":Ljava/lang/Object;, "TV;"
    .end local v20    # "evictedKey":J
    :cond_0
    move-wide/from16 v20, v12

    .line 235
    .restart local v20    # "evictedKey":J
    aget-object v5, v2, v11

    .line 236
    .restart local v5    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput-wide v6, v1, v11

    .line 237
    aput-object v4, v2, v11

    .line 238
    move-object/from16 v18, v1

    move-wide/from16 v0, v20

    goto :goto_1

    .line 228
    .end local v5    # "evictedValue":Ljava/lang/Object;, "TV;"
    .end local v20    # "evictedKey":J
    :cond_1
    move-wide/from16 v20, v9

    .line 229
    .restart local v20    # "evictedKey":J
    aget-object v5, v2, v8

    .line 230
    .restart local v5    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput-wide v6, v1, v8

    .line 231
    aput-object v4, v2, v8

    .line 232
    move-object/from16 v18, v1

    move-wide/from16 v0, v20

    .line 248
    .end local v1    # "keyTable":[J
    .end local v20    # "evictedKey":J
    .local v0, "evictedKey":J
    .local v18, "keyTable":[J
    :goto_1
    move-wide/from16 p2, v6

    .end local v6    # "insertKey":J
    .local p2, "insertKey":J
    int-to-long v6, v3

    and-long/2addr v6, v0

    long-to-int v8, v6

    .line 249
    aget-wide v9, v18, v8

    .line 250
    const-wide/16 v6, 0x0

    cmp-long v20, v9, v6

    if-nez v20, :cond_3

    .line 251
    aput-wide v0, v18, v8

    .line 252
    aput-object v5, v2, v8

    .line 253
    const/16 v20, 0x1

    move-object/from16 v6, p0

    iget v7, v6, Lcom/badlogic/gdx/utils/LongMap;->size:I

    move/from16 v21, v3

    .end local v3    # "mask":I
    .local v21, "mask":I
    add-int/lit8 v3, v7, 0x1

    iput v3, v6, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v3, v6, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v7, v3, :cond_2

    iget v3, v6, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v3, v3, 0x1

    invoke-direct {v6, v3}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 254
    :cond_2
    return-void

    .line 257
    .end local v21    # "mask":I
    .restart local v3    # "mask":I
    :cond_3
    const/16 v20, 0x1

    move/from16 v21, v3

    move-object/from16 v3, p0

    .end local v3    # "mask":I
    .restart local v21    # "mask":I
    invoke-direct {v3, v0, v1}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v11

    .line 258
    aget-wide v12, v18, v11

    .line 259
    cmp-long v22, v12, v6

    if-nez v22, :cond_5

    .line 260
    aput-wide v0, v18, v11

    .line 261
    aput-object v5, v2, v11

    .line 262
    iget v6, v3, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v3, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v7, v3, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v6, v7, :cond_4

    iget v6, v3, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v6, v6, 0x1

    invoke-direct {v3, v6}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 263
    :cond_4
    return-void

    .line 266
    :cond_5
    invoke-direct {v3, v0, v1}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v14

    .line 267
    aget-wide v15, v18, v14

    .line 268
    cmp-long v6, v15, v6

    if-nez v6, :cond_7

    .line 269
    aput-wide v0, v18, v14

    .line 270
    aput-object v5, v2, v14

    .line 271
    iget v6, v3, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v3, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v7, v3, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v6, v7, :cond_6

    iget v6, v3, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v6, v6, 0x1

    invoke-direct {v3, v6}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 272
    :cond_6
    return-void

    .line 275
    :cond_7
    add-int/lit8 v6, v17, 0x1

    move/from16 v7, v19

    .end local v17    # "i":I
    .end local v19    # "pushIterations":I
    .local v6, "i":I
    .local v7, "pushIterations":I
    if-ne v6, v7, :cond_8

    .line 281
    invoke-direct {v3, v0, v1, v5}, Lcom/badlogic/gdx/utils/LongMap;->putStash(JLjava/lang/Object;)V

    .line 282
    return-void

    .line 277
    :cond_8
    move-wide/from16 v19, v0

    .line 278
    .end local p2    # "insertKey":J
    .local v19, "insertKey":J
    move-object v4, v5

    .line 279
    move-object v0, v3

    move/from16 v17, v6

    move v5, v7

    move-object/from16 v1, v18

    move-wide/from16 v6, v19

    move/from16 v3, v21

    goto/16 :goto_0
.end method

.method private putResize(JLjava/lang/Object;)V
    .locals 24
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .line 178
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v13, p0

    move-object/from16 v14, p3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 179
    iput-object v14, v13, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 180
    iput-boolean v3, v13, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 181
    return-void

    .line 185
    :cond_0
    iget v2, v13, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v4, v2

    and-long v4, p1, v4

    long-to-int v15, v4

    .line 186
    .local v15, "index1":I
    iget-object v2, v13, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v16, v2, v15

    .line 187
    .local v16, "key1":J
    cmp-long v4, v16, v0

    if-nez v4, :cond_2

    .line 188
    aput-wide p1, v2, v15

    .line 189
    iget-object v0, v13, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object v14, v0, v15

    .line 190
    iget v0, v13, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v13, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v1, v13, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v0, v1, :cond_1

    iget v0, v13, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/2addr v0, v3

    invoke-direct {v13, v0}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 191
    :cond_1
    return-void

    .line 194
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v18

    .line 195
    .local v18, "index2":I
    iget-object v2, v13, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v19, v2, v18

    .line 196
    .local v19, "key2":J
    cmp-long v4, v19, v0

    if-nez v4, :cond_4

    .line 197
    aput-wide p1, v2, v18

    .line 198
    iget-object v0, v13, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object v14, v0, v18

    .line 199
    iget v0, v13, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v13, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v1, v13, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v0, v1, :cond_3

    iget v0, v13, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/2addr v0, v3

    invoke-direct {v13, v0}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 200
    :cond_3
    return-void

    .line 203
    :cond_4
    invoke-direct/range {p0 .. p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v21

    .line 204
    .local v21, "index3":I
    iget-object v2, v13, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v22, v2, v21

    .line 205
    .local v22, "key3":J
    cmp-long v0, v22, v0

    if-nez v0, :cond_6

    .line 206
    aput-wide p1, v2, v21

    .line 207
    iget-object v0, v13, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object v14, v0, v21

    .line 208
    iget v0, v13, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v13, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v1, v13, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v0, v1, :cond_5

    iget v0, v13, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/2addr v0, v3

    invoke-direct {v13, v0}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 209
    :cond_5
    return-void

    .line 212
    :cond_6
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move v4, v15

    move-wide/from16 v5, v16

    move/from16 v7, v18

    move-wide/from16 v8, v19

    move/from16 v10, v21

    move-wide/from16 v11, v22

    invoke-direct/range {v0 .. v12}, Lcom/badlogic/gdx/utils/LongMap;->push(JLjava/lang/Object;IJIJIJ)V

    .line 213
    return-void
.end method

.method private putStash(JLjava/lang/Object;)V
    .locals 3
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)V"
        }
    .end annotation

    .line 285
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    if-ne v0, v1, :cond_0

    .line 287
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 288
    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/LongMap;->putResize(JLjava/lang/Object;)V

    .line 289
    return-void

    .line 292
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    add-int/2addr v1, v0

    .line 293
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aput-wide p1, v2, v1

    .line 294
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 295
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    .line 296
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 297
    return-void
.end method

.method private resize(I)V
    .locals 9
    .param p1, "newSize"    # I

    .line 522
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/2addr v0, v1

    .line 524
    .local v0, "oldEndIndex":I
    iput p1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .line 525
    int-to-float v1, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    .line 526
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    .line 527
    int-to-long v1, p1

    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x3f

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->hashShift:I

    .line 528
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

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    .line 529
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

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->pushIterations:I

    .line 531
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 532
    .local v1, "oldKeyTable":[J
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 534
    .local v2, "oldValueTable":[Ljava/lang/Object;, "[TV;"
    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap;->stashCapacity:I

    add-int v4, p1, v3

    new-array v4, v4, [J

    iput-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 535
    add-int/2addr v3, p1

    new-array v3, v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 537
    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 538
    .local v3, "oldSize":I
    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    iput v4, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 539
    const/4 v4, 0x0

    iput v4, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    .line 540
    if-lez v3, :cond_1

    .line 541
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 542
    aget-wide v5, v1, v4

    .line 543
    .local v5, "key":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_0

    aget-object v7, v2, v4

    invoke-direct {p0, v5, v6, v7}, Lcom/badlogic/gdx/utils/LongMap;->putResize(JLjava/lang/Object;)V

    .line 541
    .end local v5    # "key":J
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 546
    .end local v4    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 7

    .line 436
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-nez v0, :cond_0

    return-void

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 438
    .local v0, "keyTable":[J
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 439
    .local v1, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    const/4 v4, 0x0

    if-lez v2, :cond_1

    .line 440
    const-wide/16 v5, 0x0

    aput-wide v5, v0, v3

    .line 441
    aput-object v4, v1, v3

    move v2, v3

    goto :goto_0

    .line 443
    .end local v3    # "i":I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 444
    iput v2, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    .line 445
    iput-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 446
    iput-boolean v2, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 447
    return-void
.end method

.method public clear(I)V
    .locals 1
    .param p1, "maximumCapacity"    # I

    .line 425
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    if-gt v0, p1, :cond_0

    .line 426
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap;->clear()V

    .line 427
    return-void

    .line 429
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 431
    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 432
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 433
    return-void
.end method

.method public containsKey(J)Z
    .locals 4
    .param p1, "key"    # J

    .line 471
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    return v0

    .line 472
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v0, v0

    and-long/2addr v0, p1

    long-to-int v0, v0

    .line 473
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-eqz v1, :cond_1

    .line 474
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v0

    .line 475
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-eqz v1, :cond_1

    .line 476
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v0

    .line 477
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->containsKeyStash(J)Z

    move-result v1

    return v1

    .line 480
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 9
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "identity"    # Z

    .line 452
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 453
    .local v0, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v1, 0x1

    if-nez p1, :cond_3

    .line 454
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-nez v2, :cond_0

    return v1

    .line 455
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 456
    .local v2, "keyTable":[J
    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    if-lez v3, :cond_2

    .line 457
    aget-wide v5, v2, v4

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_1

    aget-object v3, v0, v4

    if-nez v3, :cond_1

    return v1

    .line 456
    :cond_1
    move v3, v4

    goto :goto_0

    .line 458
    .end local v2    # "keyTable":[J
    .end local v4    # "i":I
    :cond_2
    goto :goto_3

    :cond_3
    if-eqz p2, :cond_7

    .line 459
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-ne p1, v2, :cond_4

    return v1

    .line 460
    :cond_4
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "i":I
    :goto_1
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    if-lez v2, :cond_6

    .line 461
    aget-object v2, v0, v3

    if-ne v2, p1, :cond_5

    return v1

    :cond_5
    move v2, v3

    goto :goto_1

    .end local v3    # "i":I
    :cond_6
    goto :goto_3

    .line 463
    :cond_7
    iget-boolean v2, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v1

    .line 464
    :cond_8
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_2
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    if-lez v2, :cond_a

    .line 465
    aget-object v2, v0, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    return v1

    :cond_9
    move v2, v3

    goto :goto_2

    .line 467
    .end local v3    # "i":I
    :cond_a
    :goto_3
    const/4 v1, 0x0

    return v1
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "additionalCapacity"    # I

    .line 516
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    if-ltz p1, :cond_1

    .line 517
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/2addr v0, p1

    .line 518
    .local v0, "sizeNeeded":I
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->loadFactor:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 519
    :cond_0
    return-void

    .line 516
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

.method public entries()Lcom/badlogic/gdx/utils/LongMap$Entries;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/LongMap$Entries<",
            "TV;>;"
        }
    .end annotation

    .line 661
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Entries;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    return-object v0

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    if-nez v0, :cond_1

    .line 663
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Entries;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    .line 664
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Entries;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

    .line 666
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 667
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Entries;->reset()V

    .line 668
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    .line 669
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    .line 670
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    return-object v0

    .line 672
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Entries;->reset()V

    .line 673
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    .line 674
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries1:Lcom/badlogic/gdx/utils/LongMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Entries;->valid:Z

    .line 675
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->entries2:Lcom/badlogic/gdx/utils/LongMap$Entries;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    .line 580
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 581
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/LongMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 582
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/LongMap;

    .line 583
    .local v1, "other":Lcom/badlogic/gdx/utils/LongMap;
    iget v3, v1, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-eq v3, v4, :cond_2

    return v2

    .line 584
    :cond_2
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eq v3, v4, :cond_3

    return v2

    .line 585
    :cond_3
    if-eqz v4, :cond_5

    .line 586
    iget-object v3, v1, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 587
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-eqz v3, :cond_5

    return v2

    .line 589
    :cond_4
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    .line 592
    :cond_5
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 593
    .local v3, "keyTable":[J
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 594
    .local v4, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v5, 0x0

    .local v5, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v7, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/2addr v6, v7

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_8

    .line 595
    aget-wide v7, v3, v5

    .line 596
    .local v7, "key":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-eqz v9, :cond_7

    .line 597
    aget-object v9, v4, v5

    .line 598
    .local v9, "value":Ljava/lang/Object;, "TV;"
    if-nez v9, :cond_6

    .line 599
    sget-object v10, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {v1, v7, v8, v10}, Lcom/badlogic/gdx/utils/LongMap;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_7

    return v2

    .line 601
    :cond_6
    invoke-virtual {v1, v7, v8}, Lcom/badlogic/gdx/utils/LongMap;->get(J)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    return v2

    .line 594
    .end local v7    # "key":J
    .end local v9    # "value":Ljava/lang/Object;, "TV;"
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 605
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_8
    return v0
.end method

.method public equalsIdentity(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    .line 610
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 611
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/LongMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 612
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/LongMap;

    .line 613
    .local v1, "other":Lcom/badlogic/gdx/utils/LongMap;
    iget v3, v1, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-eq v3, v4, :cond_2

    return v2

    .line 614
    :cond_2
    iget-boolean v3, v1, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    iget-boolean v4, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eq v3, v4, :cond_3

    return v2

    .line 615
    :cond_3
    if-eqz v4, :cond_4

    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    iget-object v4, v1, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-eq v3, v4, :cond_4

    return v2

    .line 616
    :cond_4
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 617
    .local v3, "keyTable":[J
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 618
    .local v4, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v5, 0x0

    .local v5, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v7, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/2addr v6, v7

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_6

    .line 619
    aget-wide v7, v3, v5

    .line 620
    .local v7, "key":J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-eqz v9, :cond_5

    aget-object v9, v4, v5

    sget-object v10, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {v1, v7, v8, v10}, Lcom/badlogic/gdx/utils/LongMap;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-eq v9, v10, :cond_5

    return v2

    .line 618
    .end local v7    # "key":J
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 622
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_6
    return v0
.end method

.method public findKey(Ljava/lang/Object;ZJ)J
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "identity"    # Z
    .param p3, "notFound"    # J

    .line 495
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 496
    .local v0, "valueTable":[Ljava/lang/Object;, "[TV;"
    const-wide/16 v1, 0x0

    if-nez p1, :cond_3

    .line 497
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-nez v3, :cond_0

    return-wide v1

    .line 498
    :cond_0
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 499
    .local v3, "keyTable":[J
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/2addr v4, v5

    .local v4, "i":I
    :goto_0
    add-int/lit8 v5, v4, -0x1

    .end local v4    # "i":I
    .local v5, "i":I
    if-lez v4, :cond_2

    .line 500
    aget-wide v6, v3, v5

    cmp-long v4, v6, v1

    if-eqz v4, :cond_1

    aget-object v4, v0, v5

    if-nez v4, :cond_1

    aget-wide v1, v3, v5

    return-wide v1

    .line 499
    :cond_1
    move v4, v5

    goto :goto_0

    .line 501
    .end local v3    # "keyTable":[J
    .end local v5    # "i":I
    :cond_2
    goto :goto_3

    :cond_3
    if-eqz p2, :cond_7

    .line 502
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-ne p1, v3, :cond_4

    return-wide v1

    .line 503
    :cond_4
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/2addr v1, v2

    .local v1, "i":I
    :goto_1
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_6

    .line 504
    aget-object v1, v0, v2

    if-ne v1, p1, :cond_5

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v3, v1, v2

    return-wide v3

    :cond_5
    move v1, v2

    goto :goto_1

    .end local v2    # "i":I
    :cond_6
    goto :goto_3

    .line 506
    :cond_7
    iget-boolean v3, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    return-wide v1

    .line 507
    :cond_8
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/2addr v1, v2

    .restart local v1    # "i":I
    :goto_2
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    if-lez v1, :cond_a

    .line 508
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v3, v1, v2

    return-wide v3

    :cond_9
    move v1, v2

    goto :goto_2

    .line 510
    .end local v2    # "i":I
    :cond_a
    :goto_3
    return-wide p3
.end method

.method public get(J)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .line 300
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 301
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-nez v0, :cond_0

    return-object v1

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    return-object v0

    .line 304
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v2, v0

    and-long/2addr v2, p1

    long-to-int v0, v2

    .line 305
    .local v0, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v3, v2, v0

    cmp-long v2, v3, p1

    if-eqz v2, :cond_2

    .line 306
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v0

    .line 307
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v3, v2, v0

    cmp-long v2, v3, p1

    if-eqz v2, :cond_2

    .line 308
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v0

    .line 309
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v3, v2, v0

    cmp-long v2, v3, p1

    if-eqz v2, :cond_2

    invoke-direct {p0, p1, p2, v1}, Lcom/badlogic/gdx/utils/LongMap;->getStash(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 312
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .line 316
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 317
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-nez v0, :cond_0

    return-object p3

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    return-object v0

    .line 320
    :cond_1
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v0, v0

    and-long/2addr v0, p1

    long-to-int v0, v0

    .line 321
    .local v0, "index":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-eqz v1, :cond_2

    .line 322
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v0

    .line 323
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-eqz v1, :cond_2

    .line 324
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v0

    .line 325
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/badlogic/gdx/utils/LongMap;->getStash(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 328
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public hashCode()I
    .locals 9

    .line 559
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const/4 v0, 0x0

    .line 560
    .local v0, "h":I
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 561
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 563
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 564
    .local v1, "keyTable":[J
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 565
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/2addr v4, v5

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 566
    aget-wide v5, v1, v3

    .line 567
    .local v5, "key":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-eqz v7, :cond_1

    .line 568
    const/16 v7, 0x20

    ushr-long v7, v5, v7

    xor-long/2addr v7, v5

    long-to-int v7, v7

    mul-int/lit8 v7, v7, 0x1f

    add-int/2addr v0, v7

    .line 570
    aget-object v7, v2, v3

    .line 571
    .local v7, "value":Ljava/lang/Object;, "TV;"
    if-eqz v7, :cond_1

    .line 572
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v8

    add-int/2addr v0, v8

    .line 565
    .end local v5    # "key":J
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 576
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_2
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 410
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

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
            "Lcom/badlogic/gdx/utils/LongMap$Entry<",
            "TV;>;>;"
        }
    .end annotation

    .line 653
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/LongMap;->entries()Lcom/badlogic/gdx/utils/LongMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/LongMap$Keys;
    .locals 3

    .line 705
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Keys;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    return-object v0

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    if-nez v0, :cond_1

    .line 707
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Keys;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    .line 708
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Keys;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

    .line 710
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/LongMap$Keys;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 711
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Keys;->reset()V

    .line 712
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Keys;->valid:Z

    .line 713
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Keys;->valid:Z

    .line 714
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    return-object v0

    .line 716
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Keys;->reset()V

    .line 717
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Keys;->valid:Z

    .line 718
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys1:Lcom/badlogic/gdx/utils/LongMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Keys;->valid:Z

    .line 719
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keys2:Lcom/badlogic/gdx/utils/LongMap$Keys;

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 405
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 26
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTV;)TV;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v13, p0

    move-object/from16 v14, p3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 100
    iget-object v0, v13, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 101
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object v14, v13, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 102
    iget-boolean v1, v13, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-nez v1, :cond_0

    .line 103
    iput-boolean v3, v13, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 104
    iget v1, v13, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/2addr v1, v3

    iput v1, v13, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 106
    :cond_0
    return-object v0

    .line 109
    .end local v0    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    iget-object v15, v13, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 112
    .local v15, "keyTable":[J
    iget v2, v13, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v4, v2

    and-long v4, p1, v4

    long-to-int v11, v4

    .line 113
    .local v11, "index1":I
    aget-wide v16, v15, v11

    .line 114
    .local v16, "key1":J
    cmp-long v2, v16, p1

    if-nez v2, :cond_2

    .line 115
    iget-object v0, v13, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v0, v11

    .line 116
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v14, v0, v11

    .line 117
    return-object v1

    .line 120
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v18

    .line 121
    .local v18, "index2":I
    aget-wide v19, v15, v18

    .line 122
    .local v19, "key2":J
    cmp-long v2, v19, p1

    if-nez v2, :cond_3

    .line 123
    iget-object v0, v13, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v0, v18

    .line 124
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v14, v0, v18

    .line 125
    return-object v1

    .line 128
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    invoke-direct/range {p0 .. p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v21

    .line 129
    .local v21, "index3":I
    aget-wide v22, v15, v21

    .line 130
    .local v22, "key3":J
    cmp-long v2, v22, p1

    if-nez v2, :cond_4

    .line 131
    iget-object v0, v13, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v0, v21

    .line 132
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v14, v0, v21

    .line 133
    return-object v1

    .line 137
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_4
    iget v2, v13, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .local v2, "i":I
    iget v4, v13, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/2addr v4, v2

    .local v4, "n":I
    :goto_0
    if-ge v2, v4, :cond_6

    .line 138
    aget-wide v5, v15, v2

    cmp-long v5, v5, p1

    if-nez v5, :cond_5

    .line 139
    iget-object v0, v13, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v0, v2

    .line 140
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v14, v0, v2

    .line 141
    return-object v1

    .line 137
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 146
    .end local v2    # "i":I
    .end local v4    # "n":I
    :cond_6
    cmp-long v2, v16, v0

    const/16 v24, 0x0

    if-nez v2, :cond_8

    .line 147
    aput-wide p1, v15, v11

    .line 148
    iget-object v0, v13, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object v14, v0, v11

    .line 149
    iget v0, v13, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v13, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v1, v13, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v0, v1, :cond_7

    iget v0, v13, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/2addr v0, v3

    invoke-direct {v13, v0}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 150
    :cond_7
    return-object v24

    .line 153
    :cond_8
    cmp-long v2, v19, v0

    if-nez v2, :cond_a

    .line 154
    aput-wide p1, v15, v18

    .line 155
    iget-object v0, v13, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object v14, v0, v18

    .line 156
    iget v0, v13, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v13, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v1, v13, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v0, v1, :cond_9

    iget v0, v13, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/2addr v0, v3

    invoke-direct {v13, v0}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 157
    :cond_9
    return-object v24

    .line 160
    :cond_a
    cmp-long v0, v22, v0

    if-nez v0, :cond_c

    .line 161
    aput-wide p1, v15, v21

    .line 162
    iget-object v0, v13, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object v14, v0, v21

    .line 163
    iget v0, v13, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v13, Lcom/badlogic/gdx/utils/LongMap;->size:I

    iget v1, v13, Lcom/badlogic/gdx/utils/LongMap;->threshold:I

    if-lt v0, v1, :cond_b

    iget v0, v13, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    shl-int/2addr v0, v3

    invoke-direct {v13, v0}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 164
    :cond_b
    return-object v24

    .line 167
    :cond_c
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move v4, v11

    move-wide/from16 v5, v16

    move/from16 v7, v18

    move-wide/from16 v8, v19

    move/from16 v10, v21

    move/from16 v25, v11

    .end local v11    # "index1":I
    .local v25, "index1":I
    move-wide/from16 v11, v22

    invoke-direct/range {v0 .. v12}, Lcom/badlogic/gdx/utils/LongMap;->push(JLjava/lang/Object;IJIJIJ)V

    .line 168
    return-object v24
.end method

.method public putAll(Lcom/badlogic/gdx/utils/LongMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/LongMap<",
            "+TV;>;)V"
        }
    .end annotation

    .line 172
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<+TV;>;"
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/LongMap;->entries()Lcom/badlogic/gdx/utils/LongMap$Entries;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Entries;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/LongMap$Entry;

    .line 173
    .local v1, "entry":Lcom/badlogic/gdx/utils/LongMap$Entry;, "Lcom/badlogic/gdx/utils/LongMap$Entry<+TV;>;"
    iget-wide v2, v1, Lcom/badlogic/gdx/utils/LongMap$Entry;->key:J

    iget-object v4, v1, Lcom/badlogic/gdx/utils/LongMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3, v4}, Lcom/badlogic/gdx/utils/LongMap;->put(JLjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 174
    .end local v1    # "entry":Lcom/badlogic/gdx/utils/LongMap$Entry;, "Lcom/badlogic/gdx/utils/LongMap$Entry<+TV;>;"
    :cond_0
    return-void
.end method

.method public remove(J)Ljava/lang/Object;
    .locals 7
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .line 339
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 340
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    if-nez v0, :cond_0

    return-object v3

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 342
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    iput-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->zeroValue:Ljava/lang/Object;

    .line 343
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/badlogic/gdx/utils/LongMap;->hasZeroValue:Z

    .line 344
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 345
    return-object v0

    .line 348
    .end local v0    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->mask:I

    int-to-long v4, v2

    and-long/2addr v4, p1

    long-to-int v2, v4

    .line 349
    .local v2, "index":I
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v5, v4, v2

    cmp-long v5, v5, p1

    if-nez v5, :cond_2

    .line 350
    aput-wide v0, v4, v2

    .line 351
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v0, v2

    .line 352
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v3, v0, v2

    .line 353
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 354
    return-object v1

    .line 357
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash2(J)I

    move-result v2

    .line 358
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v5, v4, v2

    cmp-long v5, v5, p1

    if-nez v5, :cond_3

    .line 359
    aput-wide v0, v4, v2

    .line 360
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v0, v2

    .line 361
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v3, v0, v2

    .line 362
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 363
    return-object v1

    .line 366
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->hash3(J)I

    move-result v2

    .line 367
    iget-object v4, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v5, v4, v2

    cmp-long v5, v5, p1

    if-nez v5, :cond_4

    .line 368
    aput-wide v0, v4, v2

    .line 369
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v0, v2

    .line 370
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v3, v0, v2

    .line 371
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 372
    return-object v1

    .line 375
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/badlogic/gdx/utils/LongMap;->removeStash(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method removeStash(J)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TV;"
        }
    .end annotation

    .line 379
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 380
    .local v0, "keyTable":[J
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 381
    aget-wide v3, v0, v1

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 382
    iget-object v3, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    .line 383
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/LongMap;->removeStashIndex(I)V

    .line 384
    iget v4, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 385
    return-object v3

    .line 380
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method removeStashIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .line 393
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/LongMap;->stashSize:I

    .line 394
    iget v1, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    add-int/2addr v1, v0

    .line 395
    .local v1, "lastIndex":I
    const/4 v0, 0x0

    if-ge p1, v1, :cond_0

    .line 396
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    aget-wide v3, v2, v1

    aput-wide v3, v2, p1

    .line 397
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v2, v1

    aput-object v3, v2, p1

    .line 398
    aput-object v0, v2, v1

    goto :goto_0

    .line 400
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    aput-object v0, v2, p1

    .line 401
    :goto_0
    return-void
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "maximumCapacity"    # I

    .line 416
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    if-ltz p1, :cond_2

    .line 417
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-le v0, p1, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    .line 418
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->capacity:I

    if-gt v0, p1, :cond_1

    return-void

    .line 419
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 420
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/LongMap;->resize(I)V

    .line 421
    return-void

    .line 416
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
    .locals 10

    .line 626
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/LongMap;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 627
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 628
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 629
    iget-object v1, p0, Lcom/badlogic/gdx/utils/LongMap;->keyTable:[J

    .line 630
    .local v1, "keyTable":[J
    iget-object v2, p0, Lcom/badlogic/gdx/utils/LongMap;->valueTable:[Ljava/lang/Object;

    .line 631
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    array-length v3, v1

    .line 632
    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    const/16 v5, 0x3d

    const-wide/16 v6, 0x0

    if-lez v3, :cond_2

    .line 633
    aget-wide v8, v1, v4

    .line 634
    .local v8, "key":J
    cmp-long v3, v8, v6

    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    .line 635
    :cond_1
    invoke-virtual {v0, v8, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 636
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 637
    aget-object v3, v2, v4

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 640
    .end local v8    # "key":J
    :cond_2
    :goto_1
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .restart local v3    # "i":I
    if-lez v4, :cond_4

    .line 641
    aget-wide v8, v1, v3

    .line 642
    .restart local v8    # "key":J
    cmp-long v4, v8, v6

    if-nez v4, :cond_3

    goto :goto_2

    .line 643
    :cond_3
    const-string v4, ", "

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 644
    invoke-virtual {v0, v8, v9}, Lcom/badlogic/gdx/utils/StringBuilder;->append(J)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 645
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 646
    aget-object v4, v2, v3

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 647
    .end local v8    # "key":J
    nop

    .line 640
    :goto_2
    move v4, v3

    goto :goto_1

    .line 648
    :cond_4
    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 649
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public values()Lcom/badlogic/gdx/utils/LongMap$Values;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/LongMap$Values<",
            "TV;>;"
        }
    .end annotation

    .line 683
    .local p0, "this":Lcom/badlogic/gdx/utils/LongMap;, "Lcom/badlogic/gdx/utils/LongMap<TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Values;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    return-object v0

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    if-nez v0, :cond_1

    .line 685
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Values;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    .line 686
    new-instance v0, Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/LongMap$Values;-><init>(Lcom/badlogic/gdx/utils/LongMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values2:Lcom/badlogic/gdx/utils/LongMap$Values;

    .line 688
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/LongMap$Values;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 689
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Values;->reset()V

    .line 690
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Values;->valid:Z

    .line 691
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values2:Lcom/badlogic/gdx/utils/LongMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Values;->valid:Z

    .line 692
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    return-object v0

    .line 694
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values2:Lcom/badlogic/gdx/utils/LongMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/LongMap$Values;->reset()V

    .line 695
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values2:Lcom/badlogic/gdx/utils/LongMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/LongMap$Values;->valid:Z

    .line 696
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values1:Lcom/badlogic/gdx/utils/LongMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/LongMap$Values;->valid:Z

    .line 697
    iget-object v0, p0, Lcom/badlogic/gdx/utils/LongMap;->values2:Lcom/badlogic/gdx/utils/LongMap$Values;

    return-object v0
.end method
