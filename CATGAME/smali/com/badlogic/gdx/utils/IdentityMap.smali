.class public Lcom/badlogic/gdx/utils/IdentityMap;
.super Ljava/lang/Object;
.source "IdentityMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/IdentityMap$Keys;,
        Lcom/badlogic/gdx/utils/IdentityMap$Values;,
        Lcom/badlogic/gdx/utils/IdentityMap$Entries;,
        Lcom/badlogic/gdx/utils/IdentityMap$MapIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/badlogic/gdx/utils/ObjectMap$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field private static final PRIME1:I = -0x41e0eb4f

.field private static final PRIME2:I = -0x4b47d1c7

.field private static final PRIME3:I = -0x312e3dbf


# instance fields
.field capacity:I

.field private entries1:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

.field private entries2:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

.field private hashShift:I

.field keyTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private keys1:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

.field private keys2:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

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

.field private values1:Lcom/badlogic/gdx/utils/IdentityMap$Values;

.field private values2:Lcom/badlogic/gdx/utils/IdentityMap$Values;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;-><init>(IF)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 61
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/IdentityMap;-><init>(IF)V

    .line 62
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 67
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
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
    iput p1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    .line 73
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    .line 74
    iput p2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->loadFactor:F

    .line 76
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    .line 77
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->hashShift:I

    .line 79
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    .line 80
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    div-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->pushIterations:I

    .line 82
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 83
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

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

.method public constructor <init>(Lcom/badlogic/gdx/utils/IdentityMap;)V
    .locals 4
    .param p1, "map"    # Lcom/badlogic/gdx/utils/IdentityMap;

    .line 88
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    iget v0, p1, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IdentityMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/IdentityMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;-><init>(IF)V

    .line 89
    iget v0, p1, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    .line 90
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iget-object v0, p1, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    iget v0, p1, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 93
    return-void
.end method

.method private containsKeyStash(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 445
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 446
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 447
    aget-object v3, v0, v1

    if-ne v3, p1, :cond_0

    const/4 v3, 0x1

    return v3

    .line 446
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private getStash(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 306
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 307
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 308
    aget-object v3, v0, v1

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    return-object v3

    .line 307
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 309
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return-object p2
.end method

.method private hash2(I)I
    .locals 2
    .param p1, "h"    # I

    .line 507
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const v0, -0x4b47d1c7

    mul-int/2addr p1, v0

    .line 508
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private hash3(I)I
    .locals 2
    .param p1, "h"    # I

    .line 512
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const v0, -0x312e3dbf

    mul-int/2addr p1, v0

    .line 513
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private push(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 17
    .param p3, "index1"    # I
    .param p5, "index2"    # I
    .param p7, "index3"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;ITK;ITK;ITK;)V"
        }
    .end annotation

    .line 195
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "insertKey":Ljava/lang/Object;, "TK;"
    .local p2, "insertValue":Ljava/lang/Object;, "TV;"
    .local p4, "key1":Ljava/lang/Object;, "TK;"
    .local p6, "key2":Ljava/lang/Object;, "TK;"
    .local p8, "key3":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 196
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, v0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 197
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget v3, v0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    .line 202
    .local v3, "mask":I
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, v0, Lcom/badlogic/gdx/utils/IdentityMap;->pushIterations:I

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    move v13, v4

    move-object/from16 v4, p1

    .line 205
    .end local p1    # "insertKey":Ljava/lang/Object;, "TK;"
    .end local p2    # "insertValue":Ljava/lang/Object;, "TV;"
    .end local p3    # "index1":I
    .end local p4    # "key1":Ljava/lang/Object;, "TK;"
    .end local p5    # "index2":I
    .end local p6    # "key2":Ljava/lang/Object;, "TK;"
    .end local p7    # "index3":I
    .end local p8    # "key3":Ljava/lang/Object;, "TK;"
    .local v4, "insertKey":Ljava/lang/Object;, "TK;"
    .local v5, "pushIterations":I
    .local v6, "insertValue":Ljava/lang/Object;, "TV;"
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

    .line 219
    move-object v14, v12

    .line 220
    .local v14, "evictedKey":Ljava/lang/Object;, "TK;"
    aget-object v16, v2, v11

    .line 221
    .local v16, "evictedValue":Ljava/lang/Object;, "TV;"
    aput-object v4, v1, v11

    .line 222
    aput-object v6, v2, v11

    move-object/from16 v15, v16

    goto :goto_1

    .line 213
    .end local v14    # "evictedKey":Ljava/lang/Object;, "TK;"
    .end local v16    # "evictedValue":Ljava/lang/Object;, "TV;"
    :cond_0
    move-object v14, v10

    .line 214
    .restart local v14    # "evictedKey":Ljava/lang/Object;, "TK;"
    aget-object v16, v2, v9

    .line 215
    .restart local v16    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput-object v4, v1, v9

    .line 216
    aput-object v6, v2, v9

    .line 217
    move-object/from16 v15, v16

    goto :goto_1

    .line 207
    .end local v14    # "evictedKey":Ljava/lang/Object;, "TK;"
    .end local v16    # "evictedValue":Ljava/lang/Object;, "TV;"
    :cond_1
    move-object v14, v8

    .line 208
    .restart local v14    # "evictedKey":Ljava/lang/Object;, "TK;"
    aget-object v16, v2, v7

    .line 209
    .restart local v16    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput-object v4, v1, v7

    .line 210
    aput-object v6, v2, v7

    .line 211
    move-object/from16 v15, v16

    .line 227
    .end local v16    # "evictedValue":Ljava/lang/Object;, "TV;"
    .local v15, "evictedValue":Ljava/lang/Object;, "TV;"
    :goto_1
    move-object/from16 p2, v4

    .end local v4    # "insertKey":Ljava/lang/Object;, "TK;"
    .local p2, "insertKey":Ljava/lang/Object;, "TK;"
    invoke-static {v14}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    .line 228
    .local v4, "hashCode":I
    and-int v7, v4, v3

    .line 229
    aget-object v8, v1, v7

    .line 230
    if-nez v8, :cond_3

    .line 231
    aput-object v14, v1, v7

    .line 232
    aput-object v15, v2, v7

    .line 233
    move/from16 v16, v3

    .end local v3    # "mask":I
    .local v16, "mask":I
    iget v3, v0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    move-object/from16 p3, v6

    .end local v6    # "insertValue":Ljava/lang/Object;, "TV;"
    .local p3, "insertValue":Ljava/lang/Object;, "TV;"
    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v6, v0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v3, v6, :cond_2

    iget v3, v0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    const/4 v6, 0x1

    shl-int/2addr v3, v6

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 234
    :cond_2
    return-void

    .line 237
    .end local v16    # "mask":I
    .end local p3    # "insertValue":Ljava/lang/Object;, "TV;"
    .restart local v3    # "mask":I
    .restart local v6    # "insertValue":Ljava/lang/Object;, "TV;"
    :cond_3
    move/from16 v16, v3

    move-object/from16 p3, v6

    .end local v3    # "mask":I
    .end local v6    # "insertValue":Ljava/lang/Object;, "TV;"
    .restart local v16    # "mask":I
    .restart local p3    # "insertValue":Ljava/lang/Object;, "TV;"
    invoke-direct {v0, v4}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(I)I

    move-result v9

    .line 238
    aget-object v10, v1, v9

    .line 239
    if-nez v10, :cond_5

    .line 240
    aput-object v14, v1, v9

    .line 241
    aput-object v15, v2, v9

    .line 242
    iget v3, v0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v6, v0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v3, v6, :cond_4

    iget v3, v0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    const/4 v6, 0x1

    shl-int/2addr v3, v6

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 243
    :cond_4
    return-void

    .line 246
    :cond_5
    invoke-direct {v0, v4}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(I)I

    move-result v11

    .line 247
    aget-object v12, v1, v11

    .line 248
    if-nez v12, :cond_7

    .line 249
    aput-object v14, v1, v11

    .line 250
    aput-object v15, v2, v11

    .line 251
    iget v3, v0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v6, v0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v3, v6, :cond_6

    iget v3, v0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    const/4 v6, 0x1

    shl-int/2addr v3, v6

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 252
    :cond_6
    return-void

    .line 255
    :cond_7
    add-int/lit8 v13, v13, 0x1

    if-ne v13, v5, :cond_8

    .line 261
    .end local v4    # "hashCode":I
    invoke-direct {v0, v14, v15}, Lcom/badlogic/gdx/utils/IdentityMap;->putStash(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    return-void

    .line 257
    .restart local v4    # "hashCode":I
    :cond_8
    move-object v3, v14

    .line 258
    .end local p2    # "insertKey":Ljava/lang/Object;, "TK;"
    .local v3, "insertKey":Ljava/lang/Object;, "TK;"
    move-object v6, v15

    .line 259
    .end local v4    # "hashCode":I
    .end local p3    # "insertValue":Ljava/lang/Object;, "TV;"
    .restart local v6    # "insertValue":Ljava/lang/Object;, "TV;"
    move-object v4, v3

    move/from16 v3, v16

    goto/16 :goto_0
.end method

.method private putResize(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 163
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v9, p0

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v10

    .line 164
    .local v10, "hashCode":I
    iget v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int v11, v10, v0

    .line 165
    .local v11, "index1":I
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v12, v0, v11

    .line 166
    .local v12, "key1":Ljava/lang/Object;, "TK;"
    if-nez v12, :cond_1

    .line 167
    aput-object p1, v0, v11

    .line 168
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v11

    .line 169
    iget v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v9, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, v9, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 170
    :cond_0
    return-void

    .line 173
    :cond_1
    invoke-direct {v9, v10}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(I)I

    move-result v13

    .line 174
    .local v13, "index2":I
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v14, v0, v13

    .line 175
    .local v14, "key2":Ljava/lang/Object;, "TK;"
    if-nez v14, :cond_3

    .line 176
    aput-object p1, v0, v13

    .line 177
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v13

    .line 178
    iget v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v9, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, v9, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_2

    iget v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 179
    :cond_2
    return-void

    .line 182
    :cond_3
    invoke-direct {v9, v10}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(I)I

    move-result v15

    .line 183
    .local v15, "index3":I
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v16, v0, v15

    .line 184
    .local v16, "key3":Ljava/lang/Object;, "TK;"
    if-nez v16, :cond_5

    .line 185
    aput-object p1, v0, v15

    .line 186
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v15

    .line 187
    iget v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v9, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, v9, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_4

    iget v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 188
    :cond_4
    return-void

    .line 191
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v11

    move-object v4, v12

    move v5, v13

    move-object v6, v14

    move v7, v15

    move-object/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IdentityMap;->push(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 192
    return-void
.end method

.method private putStash(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 265
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    if-ne v0, v1, :cond_0

    .line 267
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 268
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/IdentityMap;->putResize(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 269
    return-void

    .line 272
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    add-int/2addr v1, v0

    .line 273
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 274
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 275
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    .line 276
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 277
    return-void
.end method

.method private resize(I)V
    .locals 7
    .param p1, "newSize"    # I

    .line 480
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v0, v1

    .line 482
    .local v0, "oldEndIndex":I
    iput p1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    .line 483
    int-to-float v1, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    .line 484
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    .line 485
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->hashShift:I

    .line 486
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

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    .line 487
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

    iput v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->pushIterations:I

    .line 489
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 490
    .local v1, "oldKeyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 492
    .local v2, "oldValueTable":[Ljava/lang/Object;, "[TV;"
    iget v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashCapacity:I

    add-int v4, p1, v3

    new-array v4, v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    iput-object v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 493
    add-int/2addr v3, p1

    new-array v3, v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 495
    iget v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 496
    .local v3, "oldSize":I
    const/4 v4, 0x0

    iput v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 497
    iput v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    .line 498
    if-lez v3, :cond_1

    .line 499
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 500
    aget-object v5, v1, v4

    .line 501
    .local v5, "key":Ljava/lang/Object;, "TK;"
    if-eqz v5, :cond_0

    aget-object v6, v2, v4

    invoke-direct {p0, v5, v6}, Lcom/badlogic/gdx/utils/IdentityMap;->putResize(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 499
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 504
    .end local v4    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 400
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    if-nez v0, :cond_0

    return-void

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 402
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 403
    .local v1, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    if-lez v2, :cond_1

    .line 404
    const/4 v2, 0x0

    aput-object v2, v0, v3

    .line 405
    aput-object v2, v1, v3

    move v2, v3

    goto :goto_0

    .line 407
    .end local v3    # "i":I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 408
    iput v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    .line 409
    return-void
.end method

.method public clear(I)V
    .locals 1
    .param p1, "maximumCapacity"    # I

    .line 391
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    if-gt v0, p1, :cond_0

    .line 392
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IdentityMap;->clear()V

    .line 393
    return-void

    .line 395
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 396
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 397
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 432
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 433
    .local v0, "hashCode":I
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int/2addr v1, v0

    .line 434
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq p1, v2, :cond_0

    .line 435
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(I)I

    move-result v1

    .line 436
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq p1, v2, :cond_0

    .line 437
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(I)I

    move-result v1

    .line 438
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq p1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IdentityMap;->containsKeyStash(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 441
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "identity"    # Z

    .line 416
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 417
    .local v0, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 418
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 419
    .local v2, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    if-lez v3, :cond_1

    .line 420
    aget-object v3, v2, v4

    if-eqz v3, :cond_0

    aget-object v3, v0, v4

    if-nez v3, :cond_0

    return v1

    .line 419
    :cond_0
    move v3, v4

    goto :goto_0

    .line 421
    .end local v2    # "keyTable":[Ljava/lang/Object;, "[TK;"
    .end local v4    # "i":I
    :cond_1
    goto :goto_3

    :cond_2
    if-eqz p2, :cond_5

    .line 422
    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "i":I
    :goto_1
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    if-lez v2, :cond_4

    .line 423
    aget-object v2, v0, v3

    if-ne v2, p1, :cond_3

    return v1

    :cond_3
    move v2, v3

    goto :goto_1

    .end local v3    # "i":I
    :cond_4
    goto :goto_3

    .line 425
    :cond_5
    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_2
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    if-lez v2, :cond_7

    .line 426
    aget-object v2, v0, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v1

    :cond_6
    move v2, v3

    goto :goto_2

    .line 428
    .end local v3    # "i":I
    :cond_7
    :goto_3
    const/4 v1, 0x0

    return v1
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "additionalCapacity"    # I

    .line 474
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    if-ltz p1, :cond_1

    .line 475
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/2addr v0, p1

    .line 476
    .local v0, "sizeNeeded":I
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->loadFactor:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 477
    :cond_0
    return-void

    .line 474
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

.method public entries()Lcom/badlogic/gdx/utils/IdentityMap$Entries;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IdentityMap$Entries<",
            "TK;TV;>;"
        }
    .end annotation

    .line 606
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IdentityMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    return-object v0

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries1:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    if-nez v0, :cond_1

    .line 608
    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IdentityMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries1:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    .line 609
    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IdentityMap$Entries;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries2:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries1:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 612
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries1:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->reset()V

    .line 613
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries1:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->valid:Z

    .line 614
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries2:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->valid:Z

    .line 615
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries1:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    return-object v0

    .line 617
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries2:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->reset()V

    .line 618
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries2:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->valid:Z

    .line 619
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries1:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IdentityMap$Entries;->valid:Z

    .line 620
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->entries2:Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 535
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 536
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/IdentityMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 537
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/IdentityMap;

    .line 538
    .local v1, "other":Lcom/badlogic/gdx/utils/IdentityMap;
    iget v3, v1, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    if-eq v3, v4, :cond_2

    return v2

    .line 539
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 540
    .local v3, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 541
    .local v4, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v5, 0x0

    .local v5, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v7, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v6, v7

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_5

    .line 542
    aget-object v7, v3, v5

    .line 543
    .local v7, "key":Ljava/lang/Object;, "TK;"
    if-eqz v7, :cond_4

    .line 544
    aget-object v8, v4, v5

    .line 545
    .local v8, "value":Ljava/lang/Object;, "TV;"
    if-nez v8, :cond_3

    .line 546
    sget-object v9, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {v1, v7, v9}, Lcom/badlogic/gdx/utils/IdentityMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    return v2

    .line 548
    :cond_3
    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/IdentityMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    return v2

    .line 541
    .end local v7    # "key":Ljava/lang/Object;, "TK;"
    .end local v8    # "value":Ljava/lang/Object;, "TV;"
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 552
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_5
    return v0
.end method

.method public equalsIdentity(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 557
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 558
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/IdentityMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 559
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/IdentityMap;

    .line 560
    .local v1, "other":Lcom/badlogic/gdx/utils/IdentityMap;
    iget v3, v1, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    if-eq v3, v4, :cond_2

    return v2

    .line 561
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 562
    .local v3, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 563
    .local v4, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v5, 0x0

    .local v5, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v7, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v6, v7

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_4

    .line 564
    aget-object v7, v3, v5

    .line 565
    .local v7, "key":Ljava/lang/Object;, "TK;"
    if-eqz v7, :cond_3

    aget-object v8, v4, v5

    sget-object v9, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {v1, v7, v9}, Lcom/badlogic/gdx/utils/IdentityMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v8, v9, :cond_3

    return v2

    .line 563
    .end local v7    # "key":Ljava/lang/Object;, "TK;"
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 567
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_4
    return v0
.end method

.method public findKey(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "identity"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)TK;"
        }
    .end annotation

    .line 456
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 457
    .local v0, "valueTable":[Ljava/lang/Object;, "[TV;"
    if-nez p1, :cond_2

    .line 458
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 459
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    if-lez v2, :cond_1

    .line 460
    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    aget-object v2, v0, v3

    if-nez v2, :cond_0

    aget-object v2, v1, v3

    return-object v2

    .line 459
    :cond_0
    move v2, v3

    goto :goto_0

    .line 461
    .end local v1    # "keyTable":[Ljava/lang/Object;, "[TK;"
    .end local v3    # "i":I
    :cond_1
    goto :goto_3

    :cond_2
    if-eqz p2, :cond_5

    .line 462
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v1, v2

    .local v1, "i":I
    :goto_1
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    if-lez v1, :cond_4

    .line 463
    aget-object v1, v0, v2

    if-ne v1, p1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v1, v1, v2

    return-object v1

    :cond_3
    move v1, v2

    goto :goto_1

    .end local v2    # "i":I
    :cond_4
    goto :goto_3

    .line 465
    :cond_5
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v1, v2

    .restart local v1    # "i":I
    :goto_2
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    if-lez v1, :cond_7

    .line 466
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v1, v1, v2

    return-object v1

    :cond_6
    move v1, v2

    goto :goto_2

    .line 468
    .end local v2    # "i":I
    :cond_7
    :goto_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 280
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 281
    .local v0, "hashCode":I
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int/2addr v1, v0

    .line 282
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq p1, v2, :cond_0

    .line 283
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(I)I

    move-result v1

    .line 284
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq p1, v2, :cond_0

    .line 285
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(I)I

    move-result v1

    .line 286
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq p1, v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/badlogic/gdx/utils/IdentityMap;->getStash(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 289
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    return-object v2
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 293
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 294
    .local v0, "hashCode":I
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int/2addr v1, v0

    .line 295
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq p1, v2, :cond_0

    .line 296
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(I)I

    move-result v1

    .line 297
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq p1, v2, :cond_0

    .line 298
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(I)I

    move-result v1

    .line 299
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq p1, v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/IdentityMap;->getStash(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 302
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    return-object v2
.end method

.method public hashCode()I
    .locals 8

    .line 517
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 518
    .local v0, "h":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 519
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 520
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v4, v5

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 521
    aget-object v5, v1, v3

    .line 522
    .local v5, "key":Ljava/lang/Object;, "TK;"
    if-eqz v5, :cond_0

    .line 523
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    mul-int/lit8 v6, v6, 0x1f

    add-int/2addr v0, v6

    .line 525
    aget-object v6, v2, v3

    .line 526
    .local v6, "value":Ljava/lang/Object;, "TV;"
    if-eqz v6, :cond_0

    .line 527
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    add-int/2addr v0, v7

    .line 520
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 531
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 376
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

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
            "Lcom/badlogic/gdx/utils/ObjectMap$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 598
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/IdentityMap;->entries()Lcom/badlogic/gdx/utils/IdentityMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/IdentityMap$Keys;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IdentityMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 650
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IdentityMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    return-object v0

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys1:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    if-nez v0, :cond_1

    .line 652
    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IdentityMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys1:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    .line 653
    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IdentityMap$Keys;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys2:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys1:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 656
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys1:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->reset()V

    .line 657
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys1:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->valid:Z

    .line 658
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys2:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->valid:Z

    .line 659
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys1:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    return-object v0

    .line 661
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys2:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->reset()V

    .line 662
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys2:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->valid:Z

    .line 663
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys1:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IdentityMap$Keys;->valid:Z

    .line 664
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keys2:Lcom/badlogic/gdx/utils/IdentityMap$Keys;

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 371
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 96
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    if-eqz v10, :cond_b

    .line 97
    iget-object v11, v9, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 100
    .local v11, "keyTable":[Ljava/lang/Object;, "[TK;"
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v12

    .line 101
    .local v12, "hashCode":I
    iget v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int v13, v12, v0

    .line 102
    .local v13, "index1":I
    aget-object v14, v11, v13

    .line 103
    .local v14, "key1":Ljava/lang/Object;, "TK;"
    if-ne v14, v10, :cond_0

    .line 104
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v0, v13

    .line 105
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    aput-object p2, v0, v13

    .line 106
    return-object v1

    .line 109
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-direct {v9, v12}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(I)I

    move-result v15

    .line 110
    .local v15, "index2":I
    aget-object v8, v11, v15

    .line 111
    .local v8, "key2":Ljava/lang/Object;, "TK;"
    if-ne v8, v10, :cond_1

    .line 112
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v0, v15

    .line 113
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    aput-object p2, v0, v15

    .line 114
    return-object v1

    .line 117
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-direct {v9, v12}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(I)I

    move-result v16

    .line 118
    .local v16, "index3":I
    aget-object v7, v11, v16

    .line 119
    .local v7, "key3":Ljava/lang/Object;, "TK;"
    if-ne v7, v10, :cond_2

    .line 120
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v0, v16

    .line 121
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    aput-object p2, v0, v16

    .line 122
    return-object v1

    .line 126
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    iget v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    .local v0, "i":I
    iget v1, v9, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v1, v0

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 127
    aget-object v2, v11, v0

    if-ne v2, v10, :cond_3

    .line 128
    iget-object v2, v9, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v2, v0

    .line 129
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    aput-object p2, v2, v0

    .line 130
    return-object v3

    .line 126
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_4
    const/16 v17, 0x0

    if-nez v14, :cond_6

    .line 136
    aput-object v10, v11, v13

    .line 137
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v13

    .line 138
    iget v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v9, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, v9, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_5

    iget v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 139
    :cond_5
    return-object v17

    .line 142
    :cond_6
    if-nez v8, :cond_8

    .line 143
    aput-object v10, v11, v15

    .line 144
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v15

    .line 145
    iget v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v9, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, v9, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_7

    iget v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 146
    :cond_7
    return-object v17

    .line 149
    :cond_8
    if-nez v7, :cond_a

    .line 150
    aput-object v10, v11, v16

    .line 151
    iget-object v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v16

    .line 152
    iget v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v9, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v1, v9, Lcom/badlogic/gdx/utils/IdentityMap;->threshold:I

    if-lt v0, v1, :cond_9

    iget v0, v9, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 153
    :cond_9
    return-object v17

    .line 156
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v13

    move-object v4, v14

    move v5, v15

    move-object v6, v8

    move-object/from16 v18, v7

    .end local v7    # "key3":Ljava/lang/Object;, "TK;"
    .local v18, "key3":Ljava/lang/Object;, "TK;"
    move/from16 v7, v16

    move-object/from16 v19, v8

    .end local v8    # "key2":Ljava/lang/Object;, "TK;"
    .local v19, "key2":Ljava/lang/Object;, "TK;"
    move-object/from16 v8, v18

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/IdentityMap;->push(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 157
    return-object v17

    .line 96
    .end local v11    # "keyTable":[Ljava/lang/Object;, "[TK;"
    .end local v12    # "hashCode":I
    .end local v13    # "index1":I
    .end local v14    # "key1":Ljava/lang/Object;, "TK;"
    .end local v15    # "index2":I
    .end local v16    # "index3":I
    .end local v18    # "key3":Ljava/lang/Object;, "TK;"
    .end local v19    # "key2":Ljava/lang/Object;, "TK;"
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 313
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 314
    .local v0, "hashCode":I
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->mask:I

    and-int/2addr v1, v0

    .line 315
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v3, v2, v1

    const/4 v4, 0x0

    if-ne v3, p1, :cond_0

    .line 316
    aput-object v4, v2, v1

    .line 317
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v2, v1

    .line 318
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v4, v2, v1

    .line 319
    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 320
    return-object v3

    .line 323
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash2(I)I

    move-result v1

    .line 324
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v3, v2, v1

    if-ne v3, p1, :cond_1

    .line 325
    aput-object v4, v2, v1

    .line 326
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v2, v1

    .line 327
    .restart local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v4, v2, v1

    .line 328
    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 329
    return-object v3

    .line 332
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/IdentityMap;->hash3(I)I

    move-result v1

    .line 333
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v3, v2, v1

    if-ne v3, p1, :cond_2

    .line 334
    aput-object v4, v2, v1

    .line 335
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v2, v1

    .line 336
    .restart local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v4, v2, v1

    .line 337
    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 338
    return-object v3

    .line 341
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/IdentityMap;->removeStash(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method removeStash(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 345
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 346
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 347
    aget-object v3, v0, v1

    if-ne v3, p1, :cond_0

    .line 348
    iget-object v3, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    .line 349
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/IdentityMap;->removeStashIndex(I)V

    .line 350
    iget v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 351
    return-object v3

    .line 346
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method removeStashIndex(I)V
    .locals 4
    .param p1, "index"    # I

    .line 359
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->stashSize:I

    .line 360
    iget v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    add-int/2addr v1, v0

    .line 361
    .local v1, "lastIndex":I
    const/4 v0, 0x0

    if-ge p1, v1, :cond_0

    .line 362
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    aget-object v3, v2, v1

    aput-object v3, v2, p1

    .line 363
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v2, v1

    aput-object v3, v2, p1

    .line 364
    aput-object v0, v2, v1

    goto :goto_0

    .line 366
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    aput-object v0, v2, p1

    .line 367
    :goto_0
    return-void
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "maximumCapacity"    # I

    .line 382
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    if-ltz p1, :cond_2

    .line 383
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    if-le v0, p1, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    .line 384
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->capacity:I

    if-gt v0, p1, :cond_1

    return-void

    .line 385
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 386
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/IdentityMap;->resize(I)V

    .line 387
    return-void

    .line 382
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

    .line 571
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 572
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 573
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 574
    iget-object v1, p0, Lcom/badlogic/gdx/utils/IdentityMap;->keyTable:[Ljava/lang/Object;

    .line 575
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/IdentityMap;->valueTable:[Ljava/lang/Object;

    .line 576
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    array-length v3, v1

    .line 577
    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    const/16 v5, 0x3d

    if-lez v3, :cond_2

    .line 578
    aget-object v3, v1, v4

    .line 579
    .local v3, "key":Ljava/lang/Object;, "TK;"
    if-nez v3, :cond_1

    move v3, v4

    goto :goto_0

    .line 580
    :cond_1
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 581
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 582
    aget-object v6, v2, v4

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 585
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    :cond_2
    :goto_1
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .local v3, "i":I
    if-lez v4, :cond_4

    .line 586
    aget-object v4, v1, v3

    .line 587
    .local v4, "key":Ljava/lang/Object;, "TK;"
    if-nez v4, :cond_3

    goto :goto_2

    .line 588
    :cond_3
    const-string v6, ", "

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 589
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 590
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 591
    aget-object v6, v2, v3

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 592
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    nop

    .line 585
    :goto_2
    move v4, v3

    goto :goto_1

    .line 593
    :cond_4
    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 594
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public values()Lcom/badlogic/gdx/utils/IdentityMap$Values;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/IdentityMap$Values<",
            "TV;>;"
        }
    .end annotation

    .line 628
    .local p0, "this":Lcom/badlogic/gdx/utils/IdentityMap;, "Lcom/badlogic/gdx/utils/IdentityMap<TK;TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IdentityMap$Values;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    return-object v0

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values1:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    if-nez v0, :cond_1

    .line 630
    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IdentityMap$Values;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values1:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    .line 631
    new-instance v0, Lcom/badlogic/gdx/utils/IdentityMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/IdentityMap$Values;-><init>(Lcom/badlogic/gdx/utils/IdentityMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values2:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    .line 633
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values1:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/IdentityMap$Values;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 634
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values1:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IdentityMap$Values;->reset()V

    .line 635
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values1:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IdentityMap$Values;->valid:Z

    .line 636
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values2:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IdentityMap$Values;->valid:Z

    .line 637
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values1:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    return-object v0

    .line 639
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values2:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/IdentityMap$Values;->reset()V

    .line 640
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values2:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/IdentityMap$Values;->valid:Z

    .line 641
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values1:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/IdentityMap$Values;->valid:Z

    .line 642
    iget-object v0, p0, Lcom/badlogic/gdx/utils/IdentityMap;->values2:Lcom/badlogic/gdx/utils/IdentityMap$Values;

    return-object v0
.end method
