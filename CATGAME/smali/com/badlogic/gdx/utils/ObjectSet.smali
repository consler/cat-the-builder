.class public Lcom/badlogic/gdx/utils/ObjectSet;
.super Ljava/lang/Object;
.source "ObjectSet.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final PRIME1:I = -0x41e0eb4f

.field private static final PRIME2:I = -0x4b47d1c7

.field private static final PRIME3:I = -0x312e3dbf


# instance fields
.field capacity:I

.field private hashShift:I

.field private iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

.field private iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

.field keyTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

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

    .line 53
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(IF)V

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 59
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(IF)V

    .line 60
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 65
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
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
    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    .line 71
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    .line 72
    iput p2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->loadFactor:F

    .line 74
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    .line 75
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    .line 76
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->hashShift:I

    .line 77
    const/4 v0, 0x3

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashCapacity:I

    .line 78
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v2, v2

    div-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->pushIterations:I

    .line 80
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashCapacity:I

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 81
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

.method public constructor <init>(Lcom/badlogic/gdx/utils/ObjectSet;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "+TT;>;)V"
        }
    .end annotation

    .line 85
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "set":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<+TT;>;"
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    int-to-float v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectSet;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Lcom/badlogic/gdx/utils/ObjectSet;->loadFactor:F

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>(IF)V

    .line 86
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    .line 87
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 89
    return-void
.end method

.method private addResize(Ljava/lang/Object;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 167
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    move-object/from16 v8, p0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v9

    .line 168
    .local v9, "hashCode":I
    iget v0, v8, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    and-int v10, v9, v0

    .line 169
    .local v10, "index1":I
    iget-object v0, v8, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v11, v0, v10

    .line 170
    .local v11, "key1":Ljava/lang/Object;, "TT;"
    if-nez v11, :cond_1

    .line 171
    aput-object p1, v0, v10

    .line 172
    iget v0, v8, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v8, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v1, v8, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt v0, v1, :cond_0

    iget v0, v8, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v8, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    .line 173
    :cond_0
    return-void

    .line 176
    :cond_1
    invoke-direct {v8, v9}, Lcom/badlogic/gdx/utils/ObjectSet;->hash2(I)I

    move-result v12

    .line 177
    .local v12, "index2":I
    iget-object v0, v8, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v13, v0, v12

    .line 178
    .local v13, "key2":Ljava/lang/Object;, "TT;"
    if-nez v13, :cond_3

    .line 179
    aput-object p1, v0, v12

    .line 180
    iget v0, v8, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v8, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v1, v8, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt v0, v1, :cond_2

    iget v0, v8, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v8, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    .line 181
    :cond_2
    return-void

    .line 184
    :cond_3
    invoke-direct {v8, v9}, Lcom/badlogic/gdx/utils/ObjectSet;->hash3(I)I

    move-result v14

    .line 185
    .local v14, "index3":I
    iget-object v0, v8, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v15, v0, v14

    .line 186
    .local v15, "key3":Ljava/lang/Object;, "TT;"
    if-nez v15, :cond_5

    .line 187
    aput-object p1, v0, v14

    .line 188
    iget v0, v8, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v8, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v1, v8, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt v0, v1, :cond_4

    iget v0, v8, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v8, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    .line 189
    :cond_4
    return-void

    .line 192
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move-object v3, v11

    move v4, v12

    move-object v5, v13

    move v6, v14

    move-object v7, v15

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/utils/ObjectSet;->push(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 193
    return-void
.end method

.method private addStash(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 254
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashCapacity:I

    if-ne v0, v1, :cond_0

    .line 256
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    .line 257
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->addResize(Ljava/lang/Object;)V

    .line 258
    return-void

    .line 261
    :cond_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    add-int/2addr v1, v0

    .line 262
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 263
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    .line 264
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 265
    return-void
.end method

.method private getKeyStash(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 389
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 390
    .local v0, "keyTable":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 391
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v0, v1

    return-object v3

    .line 390
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private hash2(I)I
    .locals 2
    .param p1, "h"    # I

    .line 436
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    const v0, -0x4b47d1c7

    mul-int/2addr p1, v0

    .line 437
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private hash3(I)I
    .locals 2
    .param p1, "h"    # I

    .line 441
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    const v0, -0x312e3dbf

    mul-int/2addr p1, v0

    .line 442
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->hashShift:I

    ushr-int v0, p1, v0

    xor-int/2addr v0, p1

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    and-int/2addr v0, v1

    return v0
.end method

.method private push(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 16
    .param p2, "index1"    # I
    .param p4, "index2"    # I
    .param p6, "index3"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITT;ITT;ITT;)V"
        }
    .end annotation

    .line 196
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "insertKey":Ljava/lang/Object;, "TT;"
    .local p3, "key1":Ljava/lang/Object;, "TT;"
    .local p5, "key2":Ljava/lang/Object;, "TT;"
    .local p7, "key3":Ljava/lang/Object;, "TT;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 197
    .local v1, "keyTable":[Ljava/lang/Object;, "[TT;"
    iget v2, v0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    .line 201
    .local v2, "mask":I
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, v0, Lcom/badlogic/gdx/utils/ObjectSet;->pushIterations:I

    move/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move v11, v3

    move-object/from16 v3, p1

    .line 204
    .end local p1    # "insertKey":Ljava/lang/Object;, "TT;"
    .end local p2    # "index1":I
    .end local p3    # "key1":Ljava/lang/Object;, "TT;"
    .end local p4    # "index2":I
    .end local p5    # "key2":Ljava/lang/Object;, "TT;"
    .end local p6    # "index3":I
    .end local p7    # "key3":Ljava/lang/Object;, "TT;"
    .local v3, "insertKey":Ljava/lang/Object;, "TT;"
    .local v4, "pushIterations":I
    .local v5, "index1":I
    .local v6, "key1":Ljava/lang/Object;, "TT;"
    .local v7, "index2":I
    .local v8, "key2":Ljava/lang/Object;, "TT;"
    .local v9, "index3":I
    .local v10, "key3":Ljava/lang/Object;, "TT;"
    .local v11, "i":I
    :goto_0
    const/4 v12, 0x2

    invoke-static {v12}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_1

    if-eq v12, v13, :cond_0

    .line 214
    move-object v12, v10

    .line 215
    .local v12, "evictedKey":Ljava/lang/Object;, "TT;"
    aput-object v3, v1, v9

    goto :goto_1

    .line 210
    .end local v12    # "evictedKey":Ljava/lang/Object;, "TT;"
    :cond_0
    move-object v12, v8

    .line 211
    .restart local v12    # "evictedKey":Ljava/lang/Object;, "TT;"
    aput-object v3, v1, v7

    .line 212
    goto :goto_1

    .line 206
    .end local v12    # "evictedKey":Ljava/lang/Object;, "TT;"
    :cond_1
    move-object v12, v6

    .line 207
    .restart local v12    # "evictedKey":Ljava/lang/Object;, "TT;"
    aput-object v3, v1, v5

    .line 208
    nop

    .line 220
    :goto_1
    invoke-virtual {v12}, Ljava/lang/Object;->hashCode()I

    move-result v14

    .line 221
    .local v14, "hashCode":I
    and-int v5, v14, v2

    .line 222
    aget-object v6, v1, v5

    .line 223
    if-nez v6, :cond_3

    .line 224
    aput-object v12, v1, v5

    .line 225
    iget v15, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v13, v15, 0x1

    iput v13, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v13, v0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt v15, v13, :cond_2

    iget v13, v0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    const/4 v15, 0x1

    shl-int/2addr v13, v15

    invoke-direct {v0, v13}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    .line 226
    :cond_2
    return-void

    .line 229
    :cond_3
    invoke-direct {v0, v14}, Lcom/badlogic/gdx/utils/ObjectSet;->hash2(I)I

    move-result v7

    .line 230
    aget-object v8, v1, v7

    .line 231
    if-nez v8, :cond_5

    .line 232
    aput-object v12, v1, v7

    .line 233
    iget v13, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v15, v13, 0x1

    iput v15, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v15, v0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt v13, v15, :cond_4

    iget v13, v0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    const/4 v15, 0x1

    shl-int/2addr v13, v15

    invoke-direct {v0, v13}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    .line 234
    :cond_4
    return-void

    .line 237
    :cond_5
    invoke-direct {v0, v14}, Lcom/badlogic/gdx/utils/ObjectSet;->hash3(I)I

    move-result v9

    .line 238
    aget-object v10, v1, v9

    .line 239
    if-nez v10, :cond_7

    .line 240
    aput-object v12, v1, v9

    .line 241
    iget v13, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v15, v13, 0x1

    iput v15, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v15, v0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt v13, v15, :cond_6

    iget v13, v0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    const/4 v15, 0x1

    shl-int/2addr v13, v15

    invoke-direct {v0, v13}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    .line 242
    :cond_6
    return-void

    .line 245
    :cond_7
    add-int/lit8 v11, v11, 0x1

    if-ne v11, v4, :cond_8

    .line 250
    .end local v14    # "hashCode":I
    invoke-direct {v0, v12}, Lcom/badlogic/gdx/utils/ObjectSet;->addStash(Ljava/lang/Object;)V

    .line 251
    return-void

    .line 247
    .restart local v14    # "hashCode":I
    :cond_8
    move-object v3, v12

    .line 248
    .end local v14    # "hashCode":I
    goto :goto_0
.end method

.method private resize(I)V
    .locals 5
    .param p1, "newSize"    # I

    .line 411
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int/2addr v0, v1

    .line 413
    .local v0, "oldEndIndex":I
    iput p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    .line 414
    int-to-float v1, p1

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    .line 415
    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    .line 416
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->hashShift:I

    .line 417
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

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashCapacity:I

    .line 418
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

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->pushIterations:I

    .line 420
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 422
    .local v1, "oldKeyTable":[Ljava/lang/Object;, "[TT;"
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashCapacity:I

    add-int/2addr v2, p1

    new-array v2, v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 424
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 425
    .local v2, "oldSize":I
    const/4 v3, 0x0

    iput v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 426
    iput v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    .line 427
    if-lez v2, :cond_1

    .line 428
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 429
    aget-object v4, v1, v3

    .line 430
    .local v4, "key":Ljava/lang/Object;, "TT;"
    if-eqz v4, :cond_0

    invoke-direct {p0, v4}, Lcom/badlogic/gdx/utils/ObjectSet;->addResize(Ljava/lang/Object;)V

    .line 428
    .end local v4    # "key":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 433
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method public static varargs with([Ljava/lang/Object;)Lcom/badlogic/gdx/utils/ObjectSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "TT;>;"
        }
    .end annotation

    .line 509
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/ObjectSet;-><init>()V

    .line 510
    .local v0, "set":Lcom/badlogic/gdx/utils/ObjectSet;
    invoke-virtual {v0, p0}, Lcom/badlogic/gdx/utils/ObjectSet;->addAll([Ljava/lang/Object;)V

    .line 511
    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 94
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    if-eqz v9, :cond_b

    .line 95
    iget-object v10, v8, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 98
    .local v10, "keyTable":[Ljava/lang/Object;, "[TT;"
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v11

    .line 99
    .local v11, "hashCode":I
    iget v0, v8, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    and-int v12, v11, v0

    .line 100
    .local v12, "index1":I
    aget-object v13, v10, v12

    .line 101
    .local v13, "key1":Ljava/lang/Object;, "TT;"
    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 103
    :cond_0
    invoke-direct {v8, v11}, Lcom/badlogic/gdx/utils/ObjectSet;->hash2(I)I

    move-result v14

    .line 104
    .local v14, "index2":I
    aget-object v15, v10, v14

    .line 105
    .local v15, "key2":Ljava/lang/Object;, "TT;"
    invoke-virtual {v9, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 107
    :cond_1
    invoke-direct {v8, v11}, Lcom/badlogic/gdx/utils/ObjectSet;->hash3(I)I

    move-result v16

    .line 108
    .local v16, "index3":I
    aget-object v7, v10, v16

    .line 109
    .local v7, "key3":Ljava/lang/Object;, "TT;"
    invoke-virtual {v9, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 112
    :cond_2
    iget v0, v8, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    .local v0, "i":I
    iget v2, v8, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int/2addr v2, v0

    .local v2, "n":I
    :goto_0
    if-ge v0, v2, :cond_4

    .line 113
    aget-object v3, v10, v0

    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v1

    .line 112
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "i":I
    .end local v2    # "n":I
    :cond_4
    const/16 v17, 0x1

    if-nez v13, :cond_6

    .line 117
    aput-object v9, v10, v12

    .line 118
    iget v0, v8, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v8, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v1, v8, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt v0, v1, :cond_5

    iget v0, v8, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v8, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    .line 119
    :cond_5
    return v17

    .line 122
    :cond_6
    if-nez v15, :cond_8

    .line 123
    aput-object v9, v10, v14

    .line 124
    iget v0, v8, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v8, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v1, v8, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt v0, v1, :cond_7

    iget v0, v8, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v8, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    .line 125
    :cond_7
    return v17

    .line 128
    :cond_8
    if-nez v7, :cond_a

    .line 129
    aput-object v9, v10, v16

    .line 130
    iget v0, v8, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v8, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v1, v8, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt v0, v1, :cond_9

    iget v0, v8, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    shl-int/lit8 v0, v0, 0x1

    invoke-direct {v8, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    .line 131
    :cond_9
    return v17

    .line 134
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v12

    move-object v3, v13

    move v4, v14

    move-object v5, v15

    move/from16 v6, v16

    move-object/from16 v18, v7

    .end local v7    # "key3":Ljava/lang/Object;, "TT;"
    .local v18, "key3":Ljava/lang/Object;, "TT;"
    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/utils/ObjectSet;->push(Ljava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;ILjava/lang/Object;)V

    .line 135
    return v17

    .line 94
    .end local v10    # "keyTable":[Ljava/lang/Object;, "[TT;"
    .end local v11    # "hashCode":I
    .end local v12    # "index1":I
    .end local v13    # "key1":Ljava/lang/Object;, "TT;"
    .end local v14    # "index2":I
    .end local v15    # "key2":Ljava/lang/Object;, "TT;"
    .end local v16    # "index3":I
    .end local v18    # "key3":Ljava/lang/Object;, "TT;"
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+TT;>;)V"
        }
    .end annotation

    .line 139
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+TT;>;"
    iget-object v0, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->addAll([Ljava/lang/Object;II)V

    .line 140
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/Array;II)V
    .locals 3
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/Array<",
            "+TT;>;II)V"
        }
    .end annotation

    .line 143
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "array":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<+TT;>;"
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-gt v0, v1, :cond_0

    .line 145
    iget-object v0, p1, Lcom/badlogic/gdx/utils/Array;->items:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0, p2, p3}, Lcom/badlogic/gdx/utils/ObjectSet;->addAll([Ljava/lang/Object;II)V

    .line 146
    return-void

    .line 144
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

    iget v2, p1, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Lcom/badlogic/gdx/utils/ObjectSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/utils/ObjectSet<",
            "TT;>;)V"
        }
    .end annotation

    .line 159
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "set":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    iget v0, p1, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->ensureCapacity(I)V

    .line 160
    invoke-virtual {p1}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 161
    .local v1, "key":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    .end local v1    # "key":Ljava/lang/Object;, "TT;"
    :cond_0
    return-void
.end method

.method public varargs addAll([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .line 149
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->addAll([Ljava/lang/Object;II)V

    .line 150
    return-void
.end method

.method public addAll([Ljava/lang/Object;II)V
    .locals 3
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)V"
        }
    .end annotation

    .line 153
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, p3}, Lcom/badlogic/gdx/utils/ObjectSet;->ensureCapacity(I)V

    .line 154
    move v0, p2

    .local v0, "i":I
    add-int v1, v0, p3

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 155
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/ObjectSet;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .line 350
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-nez v0, :cond_0

    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 352
    .local v0, "keyTable":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "i":I
    .local v2, "i":I
    if-lez v1, :cond_1

    .line 353
    const/4 v1, 0x0

    aput-object v1, v0, v2

    move v1, v2

    goto :goto_0

    .line 354
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 355
    iput v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    .line 356
    return-void
.end method

.method public clear(I)V
    .locals 1
    .param p1, "maximumCapacity"    # I

    .line 339
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    if-gt v0, p1, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet;->clear()V

    .line 341
    return-void

    .line 343
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 344
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    .line 345
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 359
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 360
    .local v0, "hashCode":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    and-int/2addr v1, v0

    .line 361
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 362
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->hash2(I)I

    move-result v1

    .line 363
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 364
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->hash3(I)I

    move-result v1

    .line 365
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->getKeyStash(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 368
    :cond_1
    return v3
.end method

.method public ensureCapacity(I)V
    .locals 3
    .param p1, "additionalCapacity"    # I

    .line 405
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    if-ltz p1, :cond_1

    .line 406
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    add-int/2addr v0, p1

    .line 407
    .local v0, "sizeNeeded":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->threshold:I

    if-lt v0, v1, :cond_0

    int-to-float v1, v0

    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->loadFactor:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    .line 408
    :cond_0
    return-void

    .line 405
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

    .line 453
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    instance-of v0, p1, Lcom/badlogic/gdx/utils/ObjectSet;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 454
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/badlogic/gdx/utils/ObjectSet;

    .line 455
    .local v0, "other":Lcom/badlogic/gdx/utils/ObjectSet;
    iget v2, v0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-eq v2, v3, :cond_1

    return v1

    .line 456
    :cond_1
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 457
    .local v2, "keyTable":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .local v3, "i":I
    iget v4, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget v5, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int/2addr v4, v5

    .local v4, "n":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 458
    aget-object v5, v2, v3

    if-eqz v5, :cond_2

    aget-object v5, v2, v3

    invoke-virtual {v0, v5}, Lcom/badlogic/gdx/utils/ObjectSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    return v1

    .line 457
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 459
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public first()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 396
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 397
    .local v0, "keyTable":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 398
    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    aget-object v3, v0, v1

    return-object v3

    .line 397
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 399
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ObjectSet is empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 373
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 374
    .local v0, "hashCode":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    and-int/2addr v1, v0

    .line 375
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 376
    .local v2, "found":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 377
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->hash2(I)I

    move-result v1

    .line 378
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 379
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 380
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->hash3(I)I

    move-result v1

    .line 381
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v2, v3, v1

    .line 382
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->getKeyStash(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 385
    :cond_0
    return-object v2
.end method

.method public hashCode()I
    .locals 5

    .line 446
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    const/4 v0, 0x0

    .line 447
    .local v0, "h":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int/2addr v2, v3

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 448
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 447
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 449
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 323
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator<",
            "TT;>;"
        }
    .end annotation

    .line 491
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    sget-boolean v0, Lcom/badlogic/gdx/utils/Collections;->allocateIterators:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectSet;)V

    return-object v0

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    if-nez v0, :cond_1

    .line 493
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    .line 494
    new-instance v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;-><init>(Lcom/badlogic/gdx/utils/ObjectSet;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    iget-boolean v0, v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 497
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->reset()V

    .line 498
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    .line 499
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    .line 500
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    return-object v0

    .line 502
    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->reset()V

    .line 503
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    iput-boolean v2, v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    .line 504
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator1:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    iput-boolean v1, v0, Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;->valid:Z

    .line 505
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->iterator2:Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 34
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/ObjectSet;->iterator()Lcom/badlogic/gdx/utils/ObjectSet$ObjectSetIterator;

    move-result-object v0

    return-object v0
.end method

.method public notEmpty()Z
    .locals 1

    .line 318
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 269
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 270
    .local v0, "hashCode":I
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->mask:I

    and-int/2addr v1, v0

    .line 271
    .local v1, "index":I
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 273
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 274
    return v4

    .line 277
    :cond_0
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->hash2(I)I

    move-result v1

    .line 278
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 280
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 281
    return v4

    .line 284
    :cond_1
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/ObjectSet;->hash3(I)I

    move-result v1

    .line 285
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 286
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aput-object v3, v2, v1

    .line 287
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 288
    return v4

    .line 291
    :cond_2
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->removeStash(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method removeStash(Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 295
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 296
    .local v0, "keyTable":[Ljava/lang/Object;, "[TT;"
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    .local v1, "i":I
    iget v2, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int/2addr v2, v1

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 297
    aget-object v3, v0, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->removeStashIndex(I)V

    .line 299
    iget v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 300
    return v4

    .line 296
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method removeStashIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .line 308
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->stashSize:I

    .line 309
    iget v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    add-int/2addr v1, v0

    .line 310
    .local v1, "lastIndex":I
    if-ge p1, v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    aget-object v2, v0, v1

    aput-object v2, v0, p1

    .line 312
    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 314
    :cond_0
    return-void
.end method

.method public shrink(I)V
    .locals 3
    .param p1, "maximumCapacity"    # I

    .line 329
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    if-ltz p1, :cond_2

    .line 330
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-le v0, p1, :cond_0

    iget p1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    .line 331
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->capacity:I

    if-gt v0, p1, :cond_1

    return-void

    .line 332
    :cond_1
    invoke-static {p1}, Lcom/badlogic/gdx/math/MathUtils;->nextPowerOfTwo(I)I

    move-result p1

    .line 333
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/ObjectSet;->resize(I)V

    .line 334
    return-void

    .line 329
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

    .line 463
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ObjectSet;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "separator"    # Ljava/lang/String;

    .line 467
    .local p0, "this":Lcom/badlogic/gdx/utils/ObjectSet;, "Lcom/badlogic/gdx/utils/ObjectSet<TT;>;"
    iget v0, p0, Lcom/badlogic/gdx/utils/ObjectSet;->size:I

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 468
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 469
    .local v0, "buffer":Lcom/badlogic/gdx/utils/StringBuilder;
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ObjectSet;->keyTable:[Ljava/lang/Object;

    .line 470
    .local v1, "keyTable":[Ljava/lang/Object;, "[TT;"
    array-length v2, v1

    .line 471
    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v2, -0x1

    .end local v2    # "i":I
    .local v3, "i":I
    if-lez v2, :cond_2

    .line 472
    aget-object v2, v1, v3

    .line 473
    .local v2, "key":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    .line 474
    :cond_1
    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 477
    .end local v2    # "key":Ljava/lang/Object;, "TT;"
    :cond_2
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .local v2, "i":I
    if-lez v3, :cond_4

    .line 478
    aget-object v3, v1, v2

    .line 479
    .local v3, "key":Ljava/lang/Object;, "TT;"
    if-nez v3, :cond_3

    goto :goto_2

    .line 480
    :cond_3
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 481
    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 482
    .end local v3    # "key":Ljava/lang/Object;, "TT;"
    nop

    .line 477
    :goto_2
    move v3, v2

    goto :goto_1

    .line 483
    :cond_4
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
