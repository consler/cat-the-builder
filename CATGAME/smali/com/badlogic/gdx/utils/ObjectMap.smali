.class public Lcom/badlogic/gdx/utils/ObjectMap;
.super Ljava/lang/Object;
.source "ObjectMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/ObjectMap$Keys;,
        Lcom/badlogic/gdx/utils/ObjectMap$Values;,
        Lcom/badlogic/gdx/utils/ObjectMap$Entries;,
        Lcom/badlogic/gdx/utils/ObjectMap$MapIterator;,
        Lcom/badlogic/gdx/utils/ObjectMap$Entry;
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

.field static final dummy:Ljava/lang/Object;


# instance fields
.field capacity:I

.field entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

.field entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

.field private hashShift:I

.field keyTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

.field keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

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

.field values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

.field values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 57
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(IF)V

    .line 58
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 63
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(IF)V

    .line 64
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 69
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
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
    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    .line 75
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    .line 76
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->loadFactor:F

    .line 78
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    .line 79
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

    .line 80
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->hashShift:I

    .line 81
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashCapacity:I

    .line 82
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    div-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->pushIterations:I

    .line 84
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 85
    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

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

.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<+TK;+TV;>;"
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectMap;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;-><init>(IF)V

    .line 91
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    .line 92
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    .line 95
    return-void
.end method

.method private containsKeyStash(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 463
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 464
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 465
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    return v3

    .line 464
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 466
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

    .line 317
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 318
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 319
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    return-object v3

    .line 318
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return-object p2
.end method

.method private hash2(I)I
    .locals 2
    .param p1, "h"    # I

    .line 525
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const v0, -0x4b47d1c7

    mul-int/2addr p1, v0

    .line 526
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private hash3(I)I
    .locals 2
    .param p1, "h"    # I

    .line 530
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const v0, -0x312e3dbf

    mul-int/2addr p1, v0

    .line 531
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

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

    .line 204
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "insertKey":Ljava/lang/Object;, "TK;"
    .local p2, "insertValue":Ljava/lang/Object;, "TV;"
    .local p4, "key1":Ljava/lang/Object;, "TK;"
    .local p6, "key2":Ljava/lang/Object;, "TK;"
    .local p8, "key3":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 205
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, v0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 206
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget v3, v0, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

    .line 211
    .local v3, "mask":I
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, v0, Lcom/badlogic/gdx/utils/ObjectMap;->pushIterations:I

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    move v13, v4

    move-object/from16 v4, p1

    .line 214
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

    .line 228
    move-object v14, v12

    .line 229
    .local v14, "evictedKey":Ljava/lang/Object;, "TK;"
    aget-object v16, v2, v11

    .line 230
    .local v16, "evictedValue":Ljava/lang/Object;, "TV;"
    aput-object v4, v1, v11

    .line 231
    aput-object v6, v2, v11

    move-object/from16 v15, v16

    goto :goto_1

    .line 222
    .end local v14    # "evictedKey":Ljava/lang/Object;, "TK;"
    .end local v16    # "evictedValue":Ljava/lang/Object;, "TV;"
    :cond_0
    move-object v14, v10

    .line 223
    .restart local v14    # "evictedKey":Ljava/lang/Object;, "TK;"
    aget-object v16, v2, v9

    .line 224
    .restart local v16    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput-object v4, v1, v9

    .line 225
    aput-object v6, v2, v9

    .line 226
    move-object/from16 v15, v16

    goto :goto_1

    .line 216
    .end local v14    # "evictedKey":Ljava/lang/Object;, "TK;"
    .end local v16    # "evictedValue":Ljava/lang/Object;, "TV;"
    :cond_1
    move-object v14, v8

    .line 217
    .restart local v14    # "evictedKey":Ljava/lang/Object;, "TK;"
    aget-object v16, v2, v7

    .line 218
    .restart local v16    # "evictedValue":Ljava/lang/Object;, "TV;"
    aput-object v4, v1, v7

    .line 219
    aput-object v6, v2, v7

    .line 220
    move-object/from16 v15, v16

    .line 236
    .end local v16    # "evictedValue":Ljava/lang/Object;, "TV;"
    .local v15, "evictedValue":Ljava/lang/Object;, "TV;"
    :goto_1
    move-object/from16 p2, v4

    .end local v4    # "insertKey":Ljava/lang/Object;, "TK;"
    .local p2, "insertKey":Ljava/lang/Object;, "TK;"
    invoke-virtual {v14}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 237
    .local v4, "hashCode":I
    and-int v7, v4, v3

    .line 238
    aget-object v8, v1, v7

    .line 239
    if-nez v8, :cond_3

    .line 240
    aput-object v14, v1, v7

    .line 241
    aput-object v15, v2, v7

    .line 242
    move/from16 v16, v3

    .end local v3    # "mask":I
    .local v16, "mask":I
    iget v3, v0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    move-object/from16 p3, v6

    .end local v6    # "insertValue":Ljava/lang/Object;, "TV;"
    .local p3, "insertValue":Ljava/lang/Object;, "TV;"
    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    iget v6, v0, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    if-lt v3, v6, :cond_2

    iget v3, v0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    const/4 v6, 0x1

    shl-int/2addr v3, v6

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    .line 243
    :cond_2
    return-void

    .line 246
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
    invoke-direct {v0, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->hash2(I)I

    move-result v9

    .line 247
    aget-object v10, v1, v9

    .line 248
    if-nez v10, :cond_5

    .line 249
    aput-object v14, v1, v9

    .line 250
    aput-object v15, v2, v9

    .line 251
    iget v3, v0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    iget v6, v0, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    if-lt v3, v6, :cond_4

    iget v3, v0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    const/4 v6, 0x1

    shl-int/2addr v3, v6

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    .line 252
    :cond_4
    return-void

    .line 255
    :cond_5
    invoke-direct {v0, v4}, Lcom/badlogic/gdx/utils/ObjectMap;->hash3(I)I

    move-result v11

    .line 256
    aget-object v12, v1, v11

    .line 257
    if-nez v12, :cond_7

    .line 258
    aput-object v14, v1, v11

    .line 259
    aput-object v15, v2, v11

    .line 260
    iget v3, v0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v6, v3, 0x1

    iput v6, v0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    iget v6, v0, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    if-lt v3, v6, :cond_6

    iget v3, v0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    const/4 v6, 0x1

    shl-int/2addr v3, v6

    invoke-direct {v0, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    .line 261
    :cond_6
    return-void

    .line 264
    :cond_7
    add-int/lit8 v13, v13, 0x1

    if-ne v13, v5, :cond_8

    .line 270
    .end local v4    # "hashCode":I
    invoke-direct {v0, v14, v15}, Lcom/badlogic/gdx/utils/ObjectMap;->putStash(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 271
    return-void

    .line 266
    .restart local v4    # "hashCode":I
    :cond_8
    move-object v3, v14

    .line 267
    .end local p2    # "insertKey":Ljava/lang/Object;, "TK;"
    .local v3, "insertKey":Ljava/lang/Object;, "TK;"
    move-object v6, v15

    .line 268
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

    .line 172
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v9, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v10

    .line 173
    .local v10, "hashCode":I
    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

    and-int v11, v10, v0

    .line 174
    .local v11, "index1":I
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v12, v0, v11

    .line 175
    .local v12, "key1":Ljava/lang/Object;, "TK;"
    if-nez v12, :cond_1

    .line 176
    aput-object p1, v0, v11

    .line 177
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v11

    .line 178
    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v9, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    iget v1, v9, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    .line 179
    :cond_0
    return-void

    .line 182
    :cond_1
    invoke-direct {v9, v10}, Lcom/badlogic/gdx/utils/ObjectMap;->hash2(I)I

    move-result v13

    .line 183
    .local v13, "index2":I
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v14, v0, v13

    .line 184
    .local v14, "key2":Ljava/lang/Object;, "TK;"
    if-nez v14, :cond_3

    .line 185
    aput-object p1, v0, v13

    .line 186
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v13

    .line 187
    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v9, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    iget v1, v9, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    if-lt v0, v1, :cond_2

    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    .line 188
    :cond_2
    return-void

    .line 191
    :cond_3
    invoke-direct {v9, v10}, Lcom/badlogic/gdx/utils/ObjectMap;->hash3(I)I

    move-result v15

    .line 192
    .local v15, "index3":I
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v16, v0, v15

    .line 193
    .local v16, "key3":Ljava/lang/Object;, "TK;"
    if-nez v16, :cond_5

    .line 194
    aput-object p1, v0, v15

    .line 195
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v15

    .line 196
    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v9, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    iget v1, v9, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    if-lt v0, v1, :cond_4

    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    .line 197
    :cond_4
    return-void

    .line 200
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

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/ObjectMap;->push(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 201
    return-void
.end method

.method private putStash(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 274
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashCapacity:I

    if-ne v0, v1, :cond_0

    .line 276
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    .line 277
    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->putResize(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 278
    return-void

    .line 281
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    add-int/2addr v1, v0

    .line 282
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 283
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 284
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    .line 285
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    .line 286
    return-void
.end method

.method private resize(I)V
    .locals 7
    .param p1, "newSize"    # I

    .line 498
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int/2addr v0, v1

    .line 500
    .local v0, "oldEndIndex":I
    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    .line 501
    int-to-float v1, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    .line 502
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

    .line 503
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->hashShift:I

    .line 504
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

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashCapacity:I

    .line 505
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

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->pushIterations:I

    .line 507
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 508
    .local v1, "oldKeyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 510
    .local v2, "oldValueTable":[Ljava/lang/Object;, "[TV;"
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashCapacity:I

    add-int v4, p1, v3

    new-array v4, v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    iput-object v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 511
    add-int/2addr v3, p1

    new-array v3, v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 513
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    .line 514
    .local v3, "oldSize":I
    const/4 v4, 0x0

    iput v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    .line 515
    iput v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    .line 516
    if-lez v3, :cond_1

    .line 517
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 518
    aget-object v5, v1, v4

    .line 519
    .local v5, "key":Ljava/lang/Object;, "TK;"
    if-eqz v5, :cond_0

    aget-object v6, v2, v4

    invoke-direct {p0, v5, v6}, Lcom/badlogic/gdx/utils/ObjectMap;->putResize(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 517
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 522
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method private toString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "braces"    # Z

    .line 597
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const-string/jumbo v0, "{}"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0

    .line 598
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 599
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    if-eqz p2, :cond_2

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 600
    :cond_2
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 601
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 602
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    array-length v3, v1

    .line 603
    .local v3, "i":I
    :goto_1
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    const/16 v5, 0x3d

    if-lez v3, :cond_4

    .line 604
    aget-object v3, v1, v4

    .line 605
    .local v3, "key":Ljava/lang/Object;, "TK;"
    if-nez v3, :cond_3

    move v3, v4

    goto :goto_1

    .line 606
    :cond_3
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 607
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 608
    aget-object v6, v2, v4

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 611
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    :cond_4
    :goto_2
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "i":I
    .local v3, "i":I
    if-lez v4, :cond_6

    .line 612
    aget-object v4, v1, v3

    .line 613
    .local v4, "key":Ljava/lang/Object;, "TK;"
    if-nez v4, :cond_5

    goto :goto_3

    .line 614
    :cond_5
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 615
    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 616
    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 617
    aget-object v6, v2, v3

    invoke-virtual {v0, v6}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 618
    .end local v4    # "key":Ljava/lang/Object;, "TK;"
    nop

    .line 611
    :goto_3
    move v4, v3

    goto :goto_2

    .line 619
    :cond_6
    if-eqz p2, :cond_7

    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 620
    :cond_7
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 418
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-nez v0, :cond_0

    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 420
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 421
    .local v1, "valueTable":[Ljava/lang/Object;, "[TV;"
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    if-lez v2, :cond_1

    .line 422
    const/4 v2, 0x0

    aput-object v2, v0, v3

    .line 423
    aput-object v2, v1, v3

    move v2, v3

    goto :goto_0

    .line 425
    .end local v3    # "i":I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    .line 426
    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    .line 427
    return-void
.end method

.method public clear(I)V
    .locals 1
    .param p1, "maximumCapacity"    # I

    .line 407
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    if-gt v0, p1, :cond_0

    .line 408
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap;->clear()V

    .line 409
    return-void

    .line 411
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    .line 412
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    .line 413
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 450
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 451
    .local v0, "hashCode":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

    and-int/2addr v1, v0

    .line 452
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 453
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->hash2(I)I

    move-result v1

    .line 454
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 455
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->hash3(I)I

    move-result v1

    .line 456
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->containsKeyStash(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 459
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "identity"    # Z

    .line 434
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 435
    .local v0, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 436
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 437
    .local v2, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    add-int/lit8 v4, v3, -0x1

    .end local v3    # "i":I
    .local v4, "i":I
    if-lez v3, :cond_1

    .line 438
    aget-object v3, v2, v4

    if-eqz v3, :cond_0

    aget-object v3, v0, v4

    if-nez v3, :cond_0

    return v1

    .line 437
    :cond_0
    move v3, v4

    goto :goto_0

    .line 439
    .end local v2    # "keyTable":[Ljava/lang/Object;, "[TK;"
    .end local v4    # "i":I
    :cond_1
    goto :goto_3

    :cond_2
    if-eqz p2, :cond_5

    .line 440
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "i":I
    :goto_1
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    if-lez v2, :cond_4

    .line 441
    aget-object v2, v0, v3

    if-ne v2, p1, :cond_3

    return v1

    :cond_3
    move v2, v3

    goto :goto_1

    .end local v3    # "i":I
    :cond_4
    goto :goto_3

    .line 443
    :cond_5
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_2
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .restart local v3    # "i":I
    if-lez v2, :cond_7

    .line 444
    aget-object v2, v0, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    return v1

    :cond_6
    move v2, v3

    goto :goto_2

    .line 446
    .end local v3    # "i":I
    :cond_7
    :goto_3
    const/4 v1, 0x0

    return v1
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "additionalCapacity"    # I

    .line 492
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    if-ltz p1, :cond_1

    .line 493
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/2addr v0, p1

    .line 494
    .local v0, "sizeNeeded":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->loadFactor:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    .line 495
    :cond_0
    return-void

    .line 492
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

.method public entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Entries<",
            "TK;TV;>;"
        }
    .end annotation

    .line 632
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    return-object v0

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    if-nez v0, :cond_1

    .line 634
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    .line 635
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    .line 637
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 638
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->reset()V

    .line 639
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    .line 640
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    .line 641
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    return-object v0

    .line 643
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->reset()V

    .line 644
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    .line 645
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries1:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Entries;->valid:Z

    .line 646
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->entries2:Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 553
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 554
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/ObjectMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 555
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap;

    .line 556
    .local v1, "other":Lcom/badlogic/gdx/utils/ObjectMap;
    iget v3, v1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-eq v3, v4, :cond_2

    return v2

    .line 557
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 558
    .local v3, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 559
    .local v4, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v5, 0x0

    .local v5, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v7, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int/2addr v6, v7

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_5

    .line 560
    aget-object v7, v3, v5

    .line 561
    .local v7, "key":Ljava/lang/Object;, "TK;"
    if-eqz v7, :cond_4

    .line 562
    aget-object v8, v4, v5

    .line 563
    .local v8, "value":Ljava/lang/Object;, "TV;"
    if-nez v8, :cond_3

    .line 564
    sget-object v9, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {v1, v7, v9}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    return v2

    .line 566
    :cond_3
    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    return v2

    .line 559
    .end local v7    # "key":Ljava/lang/Object;, "TK;"
    .end local v8    # "value":Ljava/lang/Object;, "TV;"
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 570
    .end local v5    # "i":I
    .end local v6    # "n":I
    :cond_5
    return v0
.end method

.method public equalsIdentity(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 575
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 576
    :cond_0
    instance-of v1, p1, Lcom/badlogic/gdx/utils/IdentityMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 577
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/badlogic/gdx/utils/IdentityMap;

    .line 578
    .local v1, "other":Lcom/badlogic/gdx/utils/IdentityMap;
    iget v3, v1, Lcom/badlogic/gdx/utils/IdentityMap;->size:I

    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-eq v3, v4, :cond_2

    return v2

    .line 579
    :cond_2
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 580
    .local v3, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 581
    .local v4, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v5, 0x0

    .local v5, "i":I
    iget v6, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v7, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int/2addr v6, v7

    .local v6, "n":I
    :goto_0
    if-ge v5, v6, :cond_4

    .line 582
    aget-object v7, v3, v5

    .line 583
    .local v7, "key":Ljava/lang/Object;, "TK;"
    if-eqz v7, :cond_3

    aget-object v8, v4, v5

    sget-object v9, Lcom/badlogic/gdx/utils/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {v1, v7, v9}, Lcom/badlogic/gdx/utils/IdentityMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v8, v9, :cond_3

    return v2

    .line 581
    .end local v7    # "key":Ljava/lang/Object;, "TK;"
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 585
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

    .line 474
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 475
    .local v0, "valueTable":[Ljava/lang/Object;, "[TV;"
    if-nez p1, :cond_2

    .line 476
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 477
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    if-lez v2, :cond_1

    .line 478
    aget-object v2, v1, v3

    if-eqz v2, :cond_0

    aget-object v2, v0, v3

    if-nez v2, :cond_0

    aget-object v2, v1, v3

    return-object v2

    .line 477
    :cond_0
    move v2, v3

    goto :goto_0

    .line 479
    .end local v1    # "keyTable":[Ljava/lang/Object;, "[TK;"
    .end local v3    # "i":I
    :cond_1
    goto :goto_3

    :cond_2
    if-eqz p2, :cond_5

    .line 480
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int/2addr v1, v2

    .local v1, "i":I
    :goto_1
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    if-lez v1, :cond_4

    .line 481
    aget-object v1, v0, v2

    if-ne v1, p1, :cond_3

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v1, v1, v2

    return-object v1

    :cond_3
    move v1, v2

    goto :goto_1

    .end local v2    # "i":I
    :cond_4
    goto :goto_3

    .line 483
    :cond_5
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int/2addr v1, v2

    .restart local v1    # "i":I
    :goto_2
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    if-lez v1, :cond_7

    .line 484
    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v1, v1, v2

    return-object v1

    :cond_6
    move v1, v2

    goto :goto_2

    .line 486
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

    .line 290
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 291
    .local v0, "hashCode":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

    and-int/2addr v1, v0

    .line 292
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->hash2(I)I

    move-result v1

    .line 294
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 295
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->hash3(I)I

    move-result v1

    .line 296
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/badlogic/gdx/utils/ObjectMap;->getStash(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 299
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

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

    .line 304
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 305
    .local v0, "hashCode":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

    and-int/2addr v1, v0

    .line 306
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 307
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->hash2(I)I

    move-result v1

    .line 308
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 309
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->hash3(I)I

    move-result v1

    .line 310
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/badlogic/gdx/utils/ObjectMap;->getStash(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    return-object v2
.end method

.method public hashCode()I
    .locals 8

    .line 535
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 536
    .local v0, "h":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 537
    .local v1, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 538
    .local v2, "valueTable":[Ljava/lang/Object;, "[TV;"
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int/2addr v4, v5

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 539
    aget-object v5, v1, v3

    .line 540
    .local v5, "key":Ljava/lang/Object;, "TK;"
    if-eqz v5, :cond_0

    .line 541
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v6

    mul-int/lit8 v6, v6, 0x1f

    add-int/2addr v0, v6

    .line 543
    aget-object v6, v2, v3

    .line 544
    .local v6, "value":Ljava/lang/Object;, "TV;"
    if-eqz v6, :cond_0

    .line 545
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    add-int/2addr v0, v7

    .line 538
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 549
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 391
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Entries<",
            "TK;TV;>;"
        }
    .end annotation

    .line 624
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap;->entries()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 34
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/badlogic/gdx/utils/ObjectMap$Keys;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 676
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    return-object v0

    .line 677
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    if-nez v0, :cond_1

    .line 678
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    .line 679
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    .line 681
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 682
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->reset()V

    .line 683
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    .line 684
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    .line 685
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    return-object v0

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->reset()V

    .line 688
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    .line 689
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys1:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Keys;->valid:Z

    .line 690
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keys2:Lcom/badlogic/gdx/utils/ObjectMap$Keys;

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 386
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

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

    .line 99
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    if-eqz v10, :cond_b

    .line 100
    iget-object v11, v9, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 103
    .local v11, "keyTable":[Ljava/lang/Object;, "[TK;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v12

    .line 104
    .local v12, "hashCode":I
    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

    and-int v13, v12, v0

    .line 105
    .local v13, "index1":I
    aget-object v14, v11, v13

    .line 106
    .local v14, "key1":Ljava/lang/Object;, "TK;"
    invoke-virtual {v10, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v0, v13

    .line 108
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    aput-object p2, v0, v13

    .line 109
    return-object v1

    .line 112
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-direct {v9, v12}, Lcom/badlogic/gdx/utils/ObjectMap;->hash2(I)I

    move-result v15

    .line 113
    .local v15, "index2":I
    aget-object v8, v11, v15

    .line 114
    .local v8, "key2":Ljava/lang/Object;, "TK;"
    invoke-virtual {v10, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v0, v15

    .line 116
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    aput-object p2, v0, v15

    .line 117
    return-object v1

    .line 120
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-direct {v9, v12}, Lcom/badlogic/gdx/utils/ObjectMap;->hash3(I)I

    move-result v16

    .line 121
    .local v16, "index3":I
    aget-object v7, v11, v16

    .line 122
    .local v7, "key3":Ljava/lang/Object;, "TK;"
    invoke-virtual {v10, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, v0, v16

    .line 124
    .restart local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    aput-object p2, v0, v16

    .line 125
    return-object v1

    .line 129
    .end local v1    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    .local v0, "i":I
    iget v1, v9, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int/2addr v1, v0

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_4

    .line 130
    aget-object v2, v11, v0

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    iget-object v2, v9, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v2, v0

    .line 132
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    aput-object p2, v2, v0

    .line 133
    return-object v3

    .line 129
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_4
    const/16 v17, 0x0

    if-nez v14, :cond_6

    .line 139
    aput-object v10, v11, v13

    .line 140
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v13

    .line 141
    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v9, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    iget v1, v9, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    if-lt v0, v1, :cond_5

    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    .line 142
    :cond_5
    return-object v17

    .line 145
    :cond_6
    if-nez v8, :cond_8

    .line 146
    aput-object v10, v11, v15

    .line 147
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v15

    .line 148
    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v9, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    iget v1, v9, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    if-lt v0, v1, :cond_7

    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    .line 149
    :cond_7
    return-object v17

    .line 152
    :cond_8
    if-nez v7, :cond_a

    .line 153
    aput-object v10, v11, v16

    .line 154
    iget-object v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, v0, v16

    .line 155
    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v9, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    iget v1, v9, Lcom/badlogic/gdx/utils/ObjectMap;->threshold:I

    if-lt v0, v1, :cond_9

    iget v0, v9, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v9, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    .line 156
    :cond_9
    return-object v17

    .line 159
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

    invoke-direct/range {v0 .. v8}, Lcom/badlogic/gdx/utils/ObjectMap;->push(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 160
    return-object v17

    .line 99
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

.method public putAll(Lcom/badlogic/gdx/utils/ObjectMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 164
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "map":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<+TK;+TV;>;"
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->ensureCapacity(I)V

    .line 165
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectMap;->iterator()Lcom/badlogic/gdx/utils/ObjectMap$Entries;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;

    .line 166
    .local v1, "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<+TK;+TV;>;"
    iget-object v2, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->key:Ljava/lang/Object;

    iget-object v3, v1, Lcom/badlogic/gdx/utils/ObjectMap$Entry;->value:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/badlogic/gdx/utils/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 167
    .end local v1    # "entry":Lcom/badlogic/gdx/utils/ObjectMap$Entry;, "Lcom/badlogic/gdx/utils/ObjectMap$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 325
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 326
    .local v0, "hashCode":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->mask:I

    and-int/2addr v1, v0

    .line 327
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 328
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 329
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v4, v2, v1

    .line 330
    .local v4, "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v3, v2, v1

    .line 331
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    .line 332
    return-object v4

    .line 335
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->hash2(I)I

    move-result v1

    .line 336
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 337
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 338
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v4, v2, v1

    .line 339
    .restart local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v3, v2, v1

    .line 340
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    .line 341
    return-object v4

    .line 344
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->hash3(I)I

    move-result v1

    .line 345
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 346
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 347
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v4, v2, v1

    .line 348
    .restart local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v3, v2, v1

    .line 349
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    .line 350
    return-object v4

    .line 353
    .end local v4    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_2
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->removeStash(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 357
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 358
    .local v0, "keyTable":[Ljava/lang/Object;, "[TK;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

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
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v3, v3, v1

    .line 361
    .local v3, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->removeStashIndex(I)V

    .line 362
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    .line 363
    return-object v3

    .line 358
    .end local v3    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method removeStashIndex(I)V
    .locals 5
    .param p1, "index"    # I

    .line 371
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->stashSize:I

    .line 372
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    add-int/2addr v1, v0

    .line 373
    .local v1, "lastIndex":I
    const/4 v0, 0x0

    if-ge p1, v1, :cond_0

    .line 374
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object v3, v2, v1

    aput-object v3, v2, p1

    .line 375
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v4, v3, v1

    aput-object v4, v3, p1

    .line 376
    aput-object v0, v2, v1

    .line 377
    aput-object v0, v3, v1

    goto :goto_0

    .line 379
    :cond_0
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object v0, v2, p1

    .line 380
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object v0, v2, p1

    .line 382
    :goto_0
    return-void
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "maximumCapacity"    # I

    .line 397
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    if-ltz p1, :cond_2

    .line 398
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    if-le v0, p1, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectMap;->size:I

    .line 399
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->capacity:I

    if-gt v0, p1, :cond_1

    return-void

    .line 400
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 401
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectMap;->resize(I)V

    .line 402
    return-void

    .line 397
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
    .locals 2

    .line 593
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const-string v0, ", "

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectMap;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "separator"    # Ljava/lang/String;

    .line 589
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/ObjectMap;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lcom/badlogic/gdx/utils/ObjectMap$Values;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectMap$Values<",
            "TV;>;"
        }
    .end annotation

    .line 654
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectMap;, "Lcom/badlogic/gdx/utils/ObjectMap<TK;TV;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    return-object v0

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    if-nez v0, :cond_1

    .line 656
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    .line 657
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;-><init>(Lcom/badlogic/gdx/utils/ObjectMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    .line 659
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 660
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->reset()V

    .line 661
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    .line 662
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    .line 663
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    return-object v0

    .line 665
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectMap$Values;->reset()V

    .line 666
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    .line 667
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values1:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectMap$Values;->valid:Z

    .line 668
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectMap;->values2:Lcom/badlogic/gdx/utils/ObjectMap$Values;

    return-object v0
.end method
