.class public Lcom/badlogic/gdx/utils/Bits;
.super Ljava/lang/Object;
.source "Bits.java"


# instance fields
.field bits:[J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4
    .param p1, "nbits"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 36
    ushr-int/lit8 v0, p1, 0x6

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/Bits;->checkCapacity(I)V

    .line 37
    return-void
.end method

.method private checkCapacity(I)V
    .locals 4
    .param p1, "len"    # I

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v1, v0

    if-lt p1, v1, :cond_0

    .line 89
    add-int/lit8 v1, p1, 0x1

    new-array v1, v1, [J

    .line 90
    .local v1, "newBits":[J
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iput-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 93
    .end local v1    # "newBits":[J
    :cond_0
    return-void
.end method


# virtual methods
.method public and(Lcom/badlogic/gdx/utils/Bits;)V
    .locals 8
    .param p1, "other"    # Lcom/badlogic/gdx/utils/Bits;

    .line 214
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v0, v0

    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 215
    .local v0, "commonWords":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-le v0, v1, :cond_0

    .line 216
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v3, v2, v1

    iget-object v5, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v6, v5, v1

    and-long/2addr v3, v6

    aput-wide v3, v2, v1

    .line 215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 219
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v2, v1

    if-le v2, v0, :cond_1

    .line 220
    move v2, v0

    .local v2, "i":I
    array-length v1, v1

    .local v1, "s":I
    :goto_1
    if-le v1, v2, :cond_1

    .line 221
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 224
    .end local v1    # "s":I
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public andNot(Lcom/badlogic/gdx/utils/Bits;)V
    .locals 9
    .param p1, "other"    # Lcom/badlogic/gdx/utils/Bits;

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v1, v1

    .local v1, "j":I
    iget-object v2, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v2, v2

    .local v2, "k":I
    :goto_0
    if-ge v0, v1, :cond_0

    if-ge v0, v2, :cond_0

    .line 231
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v4, v3, v0

    iget-object v6, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v7, v6, v0

    not-long v6, v7

    and-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 233
    .end local v0    # "i":I
    .end local v1    # "j":I
    .end local v2    # "k":I
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 5

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 106
    .local v0, "bits":[J
    array-length v1, v0

    .line 107
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 108
    const-wide/16 v3, 0x0

    aput-wide v3, v0, v2

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 110
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public clear(I)V
    .locals 7
    .param p1, "index"    # I

    .line 98
    ushr-int/lit8 v0, p1, 0x6

    .line 99
    .local v0, "word":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v2, v1

    if-lt v0, v2, :cond_0

    return-void

    .line 100
    :cond_0
    aget-wide v2, v1, v0

    const-wide/16 v4, 0x1

    and-int/lit8 v6, p1, 0x3f

    shl-long/2addr v4, v6

    not-long v4, v4

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 101
    return-void
.end method

.method public containsAll(Lcom/badlogic/gdx/utils/Bits;)Z
    .locals 11
    .param p1, "other"    # Lcom/badlogic/gdx/utils/Bits;

    .line 296
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 297
    .local v0, "bits":[J
    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 298
    .local v1, "otherBits":[J
    array-length v2, v1

    .line 299
    .local v2, "otherBitsLength":I
    array-length v3, v0

    .line 301
    .local v3, "bitsLength":I
    move v4, v3

    .local v4, "i":I
    :goto_0
    const/4 v5, 0x0

    if-ge v4, v2, :cond_1

    .line 302
    aget-wide v6, v1, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 303
    return v5

    .line 301
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 306
    .end local v4    # "i":I
    :cond_1
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    .restart local v4    # "i":I
    :goto_1
    if-ltz v4, :cond_3

    .line 307
    aget-wide v7, v0, v4

    aget-wide v9, v1, v4

    and-long/2addr v7, v9

    aget-wide v9, v1, v4

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    .line 308
    return v5

    .line 306
    :cond_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 311
    .end local v4    # "i":I
    :cond_3
    return v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "obj"    # Ljava/lang/Object;

    .line 326
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 327
    return v0

    .line 328
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 329
    return v1

    .line 330
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 331
    return v1

    .line 333
    :cond_2
    move-object v2, p1

    check-cast v2, Lcom/badlogic/gdx/utils/Bits;

    .line 334
    .local v2, "other":Lcom/badlogic/gdx/utils/Bits;
    iget-object v3, v2, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 336
    .local v3, "otherBits":[J
    iget-object v4, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v4, v4

    array-length v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 337
    .local v4, "commonWords":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-le v4, v5, :cond_4

    .line 338
    iget-object v6, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v7, v6, v5

    aget-wide v9, v3, v5

    cmp-long v6, v7, v9

    if-eqz v6, :cond_3

    .line 339
    return v1

    .line 337
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 342
    .end local v5    # "i":I
    :cond_4
    iget-object v5, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v5, v5

    array-length v6, v3

    if-ne v5, v6, :cond_5

    .line 343
    return v0

    .line 345
    :cond_5
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Bits;->length()I

    move-result v5

    invoke-virtual {v2}, Lcom/badlogic/gdx/utils/Bits;->length()I

    move-result v6

    if-ne v5, v6, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    return v0
.end method

.method public flip(I)V
    .locals 7
    .param p1, "index"    # I

    .line 82
    ushr-int/lit8 v0, p1, 0x6

    .line 83
    .local v0, "word":I
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/Bits;->checkCapacity(I)V

    .line 84
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v2, v1, v0

    and-int/lit8 v4, p1, 0x3f

    const-wide/16 v5, 0x1

    shl-long v4, v5, v4

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 85
    return-void
.end method

.method public get(I)Z
    .locals 7
    .param p1, "index"    # I

    .line 43
    ushr-int/lit8 v0, p1, 0x6

    .line 44
    .local v0, "word":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v2, v1

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    return v3

    .line 45
    :cond_0
    aget-wide v4, v1, v0

    const-wide/16 v1, 0x1

    and-int/lit8 v6, p1, 0x3f

    shl-long/2addr v1, v6

    and-long/2addr v1, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public getAndClear(I)Z
    .locals 10
    .param p1, "index"    # I

    .line 53
    ushr-int/lit8 v0, p1, 0x6

    .line 54
    .local v0, "word":I
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v2, v1

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    return v3

    .line 55
    :cond_0
    aget-wide v4, v1, v0

    .line 56
    .local v4, "oldBits":J
    aget-wide v6, v1, v0

    const-wide/16 v8, 0x1

    and-int/lit8 v2, p1, 0x3f

    shl-long/2addr v8, v2

    not-long v8, v8

    and-long/2addr v6, v8

    aput-wide v6, v1, v0

    .line 57
    aget-wide v6, v1, v0

    cmp-long v1, v6, v4

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public getAndSet(I)Z
    .locals 9
    .param p1, "index"    # I

    .line 65
    ushr-int/lit8 v0, p1, 0x6

    .line 66
    .local v0, "word":I
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/Bits;->checkCapacity(I)V

    .line 67
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v2, v1, v0

    .line 68
    .local v2, "oldBits":J
    aget-wide v4, v1, v0

    and-int/lit8 v6, p1, 0x3f

    const-wide/16 v7, 0x1

    shl-long v6, v7, v6

    or-long/2addr v4, v6

    aput-wide v4, v1, v0

    .line 69
    aget-wide v4, v1, v0

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 9

    .line 316
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Bits;->length()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x6

    .line 317
    .local v0, "word":I
    const/4 v1, 0x0

    .line 318
    .local v1, "hash":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 319
    mul-int/lit8 v3, v1, 0x7f

    iget-object v4, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v5, v4, v2

    aget-wide v7, v4, v2

    const/16 v4, 0x20

    ushr-long/2addr v7, v4

    xor-long v4, v5, v7

    long-to-int v4, v4

    add-int v1, v3, v4

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 321
    .end local v2    # "i":I
    :cond_0
    return v1
.end method

.method public intersects(Lcom/badlogic/gdx/utils/Bits;)Z
    .locals 8
    .param p1, "other"    # Lcom/badlogic/gdx/utils/Bits;

    .line 280
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 281
    .local v0, "bits":[J
    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 282
    .local v1, "otherBits":[J
    array-length v2, v0

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 283
    aget-wide v4, v0, v2

    aget-wide v6, v1, v2

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 284
    return v3

    .line 282
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 287
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public isEmpty()Z
    .locals 7

    .line 143
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 144
    .local v0, "bits":[J
    array-length v1, v0

    .line 145
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 146
    aget-wide v3, v0, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 147
    const/4 v3, 0x0

    return v3

    .line 145
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public length()I
    .locals 10

    .line 122
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 123
    .local v0, "bits":[J
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "word":I
    :goto_0
    if-ltz v1, :cond_2

    .line 124
    aget-wide v2, v0, v1

    .line 125
    .local v2, "bitsAtWord":J
    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    .line 126
    const/16 v6, 0x3f

    .local v6, "bit":I
    :goto_1
    if-ltz v6, :cond_1

    .line 127
    const-wide/16 v7, 0x1

    and-int/lit8 v9, v6, 0x3f

    shl-long/2addr v7, v9

    and-long/2addr v7, v2

    cmp-long v7, v7, v4

    if-eqz v7, :cond_0

    .line 128
    shl-int/lit8 v4, v1, 0x6

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    return v4

    .line 126
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 123
    .end local v2    # "bitsAtWord":J
    .end local v6    # "bit":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 133
    .end local v1    # "word":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public nextClearBit(I)I
    .locals 13
    .param p1, "fromIndex"    # I

    .line 185
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 186
    .local v0, "bits":[J
    ushr-int/lit8 v1, p1, 0x6

    .line 187
    .local v1, "word":I
    array-length v2, v0

    .line 188
    .local v2, "bitsLength":I
    if-lt v1, v2, :cond_0

    array-length v3, v0

    shl-int/lit8 v3, v3, 0x6

    return v3

    .line 189
    :cond_0
    aget-wide v3, v0, v1

    .line 190
    .local v3, "bitsAtWord":J
    and-int/lit8 v5, p1, 0x3f

    .local v5, "i":I
    :goto_0
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x1

    const/16 v10, 0x40

    if-ge v5, v10, :cond_2

    .line 191
    and-int/lit8 v10, v5, 0x3f

    shl-long/2addr v8, v10

    and-long/2addr v8, v3

    cmp-long v6, v8, v6

    if-nez v6, :cond_1

    .line 192
    shl-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v5

    return v6

    .line 190
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 195
    .end local v5    # "i":I
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_6

    .line 196
    if-nez v1, :cond_3

    .line 197
    shl-int/lit8 v5, v1, 0x6

    return v5

    .line 199
    :cond_3
    aget-wide v3, v0, v1

    .line 200
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v10, :cond_5

    .line 201
    and-int/lit8 v11, v5, 0x3f

    shl-long v11, v8, v11

    and-long/2addr v11, v3

    cmp-long v11, v11, v6

    if-nez v11, :cond_4

    .line 202
    shl-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v5

    return v6

    .line 200
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v5    # "i":I
    :cond_5
    goto :goto_1

    .line 206
    :cond_6
    array-length v5, v0

    shl-int/lit8 v5, v5, 0x6

    return v5
.end method

.method public nextSetBit(I)I
    .locals 14
    .param p1, "fromIndex"    # I

    .line 156
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    .line 157
    .local v0, "bits":[J
    ushr-int/lit8 v1, p1, 0x6

    .line 158
    .local v1, "word":I
    array-length v2, v0

    .line 159
    .local v2, "bitsLength":I
    const/4 v3, -0x1

    if-lt v1, v2, :cond_0

    return v3

    .line 160
    :cond_0
    aget-wide v4, v0, v1

    .line 161
    .local v4, "bitsAtWord":J
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    const-wide/16 v9, 0x1

    const/16 v11, 0x40

    if-eqz v8, :cond_2

    .line 162
    and-int/lit8 v8, p1, 0x3f

    .local v8, "i":I
    :goto_0
    if-ge v8, v11, :cond_2

    .line 163
    and-int/lit8 v12, v8, 0x3f

    shl-long v12, v9, v12

    and-long/2addr v12, v4

    cmp-long v12, v12, v6

    if-eqz v12, :cond_1

    .line 164
    shl-int/lit8 v3, v1, 0x6

    add-int/2addr v3, v8

    return v3

    .line 162
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 168
    .end local v8    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_4

    .line 169
    if-eqz v1, :cond_2

    .line 170
    aget-wide v4, v0, v1

    .line 171
    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    .line 172
    const/4 v8, 0x0

    .restart local v8    # "i":I
    :goto_1
    if-ge v8, v11, :cond_2

    .line 173
    and-int/lit8 v12, v8, 0x3f

    shl-long v12, v9, v12

    and-long/2addr v12, v4

    cmp-long v12, v12, v6

    if-eqz v12, :cond_3

    .line 174
    shl-int/lit8 v3, v1, 0x6

    add-int/2addr v3, v8

    return v3

    .line 172
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 180
    .end local v8    # "i":I
    :cond_4
    return v3
.end method

.method public notEmpty()Z
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/badlogic/gdx/utils/Bits;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public numBits()I
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public or(Lcom/badlogic/gdx/utils/Bits;)V
    .locals 8
    .param p1, "other"    # Lcom/badlogic/gdx/utils/Bits;

    .line 240
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v0, v0

    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 241
    .local v0, "commonWords":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-le v0, v1, :cond_0

    .line 242
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v3, v2, v1

    iget-object v5, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v6, v5, v1

    or-long/2addr v3, v6

    aput-wide v3, v2, v1

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 246
    array-length v1, v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/Bits;->checkCapacity(I)V

    .line 247
    move v1, v0

    .restart local v1    # "i":I
    iget-object v2, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v2, v2

    .local v2, "s":I
    :goto_1
    if-le v2, v1, :cond_1

    .line 248
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    iget-object v4, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v5, v4, v1

    aput-wide v5, v3, v1

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 251
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_1
    return-void
.end method

.method public set(I)V
    .locals 7
    .param p1, "index"    # I

    .line 75
    ushr-int/lit8 v0, p1, 0x6

    .line 76
    .local v0, "word":I
    invoke-direct {p0, v0}, Lcom/badlogic/gdx/utils/Bits;->checkCapacity(I)V

    .line 77
    iget-object v1, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v2, v1, v0

    and-int/lit8 v4, p1, 0x3f

    const-wide/16 v5, 0x1

    shl-long v4, v5, v4

    or-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 78
    return-void
.end method

.method public xor(Lcom/badlogic/gdx/utils/Bits;)V
    .locals 8
    .param p1, "other"    # Lcom/badlogic/gdx/utils/Bits;

    .line 261
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v0, v0

    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 263
    .local v0, "commonWords":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-le v0, v1, :cond_0

    .line 264
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v3, v2, v1

    iget-object v5, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v6, v5, v1

    xor-long/2addr v3, v6

    aput-wide v3, v2, v1

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 267
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 268
    array-length v1, v1

    invoke-direct {p0, v1}, Lcom/badlogic/gdx/utils/Bits;->checkCapacity(I)V

    .line 269
    move v1, v0

    .restart local v1    # "i":I
    iget-object v2, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    array-length v2, v2

    .local v2, "s":I
    :goto_1
    if-le v2, v1, :cond_1

    .line 270
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    iget-object v4, p1, Lcom/badlogic/gdx/utils/Bits;->bits:[J

    aget-wide v5, v4, v1

    aput-wide v5, v3, v1

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 273
    .end local v1    # "i":I
    .end local v2    # "s":I
    :cond_1
    return-void
.end method
