.class public Lcom/esotericsoftware/kryo/util/ObjectIntMap;
.super Ljava/lang/Object;
.source "ObjectIntMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;,
        Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;,
        Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;,
        Lcom/esotericsoftware/kryo/util/ObjectIntMap$MapIterator;,
        Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entry<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field keyTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field loadFactor:F

.field protected mask:I

.field protected shift:I

.field public size:I

.field threshold:I

.field valueTable:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    .line 74
    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_0

    .line 89
    iput p2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->loadFactor:F

    .line 91
    invoke-static {p1, p2}, Lcom/esotericsoftware/kryo/util/ObjectMap;->tableSize(IF)I

    move-result p1

    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 92
    iput p2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->threshold:I

    add-int/lit8 p2, p1, -0x1

    .line 93
    iput p2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->mask:I

    int-to-long v0, p2

    .line 94
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    iput p2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->shift:I

    .line 96
    new-array p2, p1, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 97
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadFactor must be > 0 and < 1: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/esotericsoftware/kryo/util/ObjectIntMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/ObjectIntMap<",
            "+TK;>;)V"
        }
    .end annotation

    .line 102
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;-><init>(IF)V

    .line 103
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget p1, p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    iput p1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    return-void
.end method

.method private putResize(Ljava/lang/Object;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 165
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->place(Ljava/lang/Object;)I

    move-result v1

    .line 166
    :goto_0
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 167
    aput-object p1, v0, v1

    .line 168
    iget-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    aput p2, p1, v1

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 165
    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->mask:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method private toString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 345
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "{}"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1

    .line 346
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p2, :cond_2

    const/16 v1, 0x7b

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    :cond_2
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 349
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    .line 350
    array-length v3, v1

    :goto_1
    add-int/lit8 v4, v3, -0x1

    const/16 v5, 0x3d

    if-lez v3, :cond_4

    .line 352
    aget-object v3, v1, v4

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_1

    .line 354
    :cond_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 356
    aget v3, v2, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    add-int/lit8 v3, v4, -0x1

    if-lez v4, :cond_6

    .line 360
    aget-object v4, v1, v3

    if-nez v4, :cond_5

    goto :goto_3

    .line 362
    :cond_5
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    aget v4, v2, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_3
    move v4, v3

    goto :goto_2

    :cond_6
    if-eqz p2, :cond_7

    const/16 p1, 0x7d

    .line 367
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 368
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 248
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 249
    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    .line 250
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public clear(I)V
    .locals 1

    .line 238
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->tableSize(IF)I

    move-result p1

    .line 239
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    if-gt v0, p1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->clear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 243
    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    .line 244
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->resize(I)V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 264
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->locateKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(I)Z
    .locals 5

    .line 256
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 257
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    .line 258
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_1

    .line 259
    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    aget v4, v1, v2

    if-ne v4, p1, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public ensureCapacity(I)V
    .locals 1

    .line 283
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->loadFactor:F

    invoke-static {v0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->tableSize(IF)I

    move-result p1

    .line 284
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->resize(I)V

    :cond_0
    return-void
.end method

.method public entries()Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries<",
            "TK;>;"
        }
    .end annotation

    .line 377
    new-instance v0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;-><init>(Lcom/esotericsoftware/kryo/util/ObjectIntMap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 320
    :cond_0
    instance-of v1, p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 321
    :cond_1
    check-cast p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;

    .line 322
    iget v1, p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    iget v3, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    if-eq v1, v3, :cond_2

    return v2

    .line 323
    :cond_2
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 324
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    .line 325
    array-length v4, v1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_5

    .line 326
    aget-object v6, v1, v5

    if-eqz v6, :cond_4

    .line 328
    invoke-virtual {p1, v6, v2}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->get(Ljava/lang/Object;I)I

    move-result v7

    if-nez v7, :cond_3

    .line 329
    invoke-virtual {p1, v6}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    return v2

    .line 330
    :cond_3
    aget v6, v3, v5

    if-eq v7, v6, :cond_4

    return v2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public findKey(I)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 272
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    .line 273
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 274
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 275
    aget v4, v1, v2

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/Object;I)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 176
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->locateKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    iget-object p2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    aget p2, p2, p1

    :goto_0
    return p2
.end method

.method public getAndIncrement(Ljava/lang/Object;II)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;II)I"
        }
    .end annotation

    .line 183
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 185
    iget-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    aget p2, p1, v0

    add-int/2addr p3, p2

    .line 186
    aput p3, p1, v0

    return p2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 190
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 191
    iget-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    add-int/2addr p3, p2

    aput p3, p1, v0

    .line 192
    iget p1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    iget p3, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->threshold:I

    if-lt p1, p3, :cond_1

    array-length p1, v1

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->resize(I)V

    :cond_1
    return p2
.end method

.method public hashCode()I
    .locals 7

    .line 308
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    .line 309
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 310
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    .line 311
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 312
    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    .line 313
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    aget v6, v2, v4

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 224
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries<",
            "TK;>;"
        }
    .end annotation

    .line 372
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->entries()Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->iterator()Lcom/esotericsoftware/kryo/util/ObjectIntMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 387
    new-instance v0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Keys;-><init>(Lcom/esotericsoftware/kryo/util/ObjectIntMap;)V

    return-object v0
.end method

.method locateKey(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 130
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 131
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->place(Ljava/lang/Object;)I

    move-result v1

    .line 132
    :goto_0
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1

    .line 134
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 131
    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->mask:I

    and-int/2addr v1, v2

    goto :goto_0

    .line 129
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notEmpty()Z
    .locals 1

    .line 219
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected place(Ljava/lang/Object;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 123
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long/2addr v0, v2

    iget p1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->shift:I

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public put(Ljava/lang/Object;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)V"
        }
    .end annotation

    .line 140
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 142
    iget-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    aput p2, p1, v0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 146
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 147
    iget-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    aput p2, p1, v0

    .line 148
    iget p1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    iget p2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->threshold:I

    if-lt p1, p2, :cond_1

    array-length p1, v1

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->resize(I)V

    :cond_1
    return-void
.end method

.method public putAll(Lcom/esotericsoftware/kryo/util/ObjectIntMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/ObjectIntMap<",
            "+TK;>;)V"
        }
    .end annotation

    .line 152
    iget v0, p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->ensureCapacity(I)V

    .line 153
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 154
    iget-object p1, p1, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    .line 156
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 157
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 158
    aget v4, p1, v2

    invoke-virtual {p0, v3, v4}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->put(Ljava/lang/Object;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/Object;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I)I"
        }
    .end annotation

    .line 197
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->locateKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    return p2

    .line 199
    :cond_0
    iget-object p2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 200
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    .line 201
    aget v1, v0, p1

    .line 202
    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->mask:I

    add-int/lit8 v3, p1, 0x1

    :goto_0
    and-int/2addr v3, v2

    .line 203
    aget-object v4, p2, v3

    if-eqz v4, :cond_2

    .line 204
    invoke-virtual {p0, v4}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->place(Ljava/lang/Object;)I

    move-result v5

    sub-int v6, v3, v5

    and-int/2addr v6, v2

    sub-int v5, p1, v5

    and-int/2addr v5, v2

    if-le v6, v5, :cond_1

    .line 206
    aput-object v4, p2, p1

    .line 207
    aget v4, v0, v3

    aput v4, v0, p1

    move p1, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 212
    aput-object v0, p2, p1

    .line 213
    iget p1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    return v1
.end method

.method final resize(I)V
    .locals 5

    .line 288
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v1, p1

    .line 289
    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->threshold:I

    add-int/lit8 v1, p1, -0x1

    .line 290
    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->mask:I

    int-to-long v1, v1

    .line 291
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->shift:I

    .line 293
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 294
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    .line 296
    new-array v3, p1, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    .line 297
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->valueTable:[I

    .line 299
    iget p1, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->size:I

    if-lez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 301
    aget-object v3, v1, p1

    if-eqz v3, :cond_0

    .line 302
    aget v4, v2, p1

    invoke-direct {p0, v3, v4}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->putResize(Ljava/lang/Object;I)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public shrink(I)V
    .locals 3

    if-ltz p1, :cond_1

    .line 232
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->tableSize(IF)I

    move-result p1

    .line 233
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    if-le v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->resize(I)V

    :cond_0
    return-void

    .line 231
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maximumCapacity must be >= 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, ", "

    const/4 v1, 0x1

    .line 341
    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 337
    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public values()Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;
    .locals 1

    .line 382
    new-instance v0, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/util/ObjectIntMap$Values;-><init>(Lcom/esotericsoftware/kryo/util/ObjectIntMap;)V

    return-object v0
.end method
