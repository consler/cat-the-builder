.class public Lcom/esotericsoftware/kryo/util/ObjectMap;
.super Ljava/lang/Object;
.source "ObjectMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;,
        Lcom/esotericsoftware/kryo/util/ObjectMap$Values;,
        Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;,
        Lcom/esotericsoftware/kryo/util/ObjectMap$MapIterator;,
        Lcom/esotericsoftware/kryo/util/ObjectMap$Entry;
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
        "Lcom/esotericsoftware/kryo/util/ObjectMap$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# static fields
.field static final dummy:Ljava/lang/Object;


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

.field valueTable:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/esotericsoftware/kryo/util/ObjectMap;->dummy:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0x33

    const v1, 0x3f4ccccd    # 0.8f

    .line 71
    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/util/ObjectMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const v0, 0x3f4ccccd    # 0.8f

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-gez v0, :cond_0

    .line 86
    iput p2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->loadFactor:F

    .line 88
    invoke-static {p1, p2}, Lcom/esotericsoftware/kryo/util/ObjectMap;->tableSize(IF)I

    move-result p1

    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 89
    iput p2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->threshold:I

    add-int/lit8 p2, p1, -0x1

    .line 90
    iput p2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->mask:I

    int-to-long v0, p2

    .line 91
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result p2

    iput p2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->shift:I

    .line 93
    new-array p2, p1, [Ljava/lang/Object;

    iput-object p2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 94
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    return-void

    .line 85
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

.method public constructor <init>(Lcom/esotericsoftware/kryo/util/ObjectMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/ObjectMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 99
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/util/ObjectMap;-><init>(IF)V

    .line 100
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget p1, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    iput p1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    return-void
.end method

.method public static nextPowerOfTwo(I)I
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 p0, p0, -0x1

    shr-int/lit8 v1, p0, 0x1

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x2

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x4

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x8

    or-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x10

    or-int/2addr p0, v1

    add-int/2addr p0, v0

    return p0
.end method

.method private putResize(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 165
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->place(Ljava/lang/Object;)I

    move-result v1

    .line 166
    :goto_0
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    .line 167
    aput-object p1, v0, v1

    .line 168
    iget-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, p1, v1

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 165
    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->mask:I

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method public static tableSize(IF)I
    .locals 2

    if-ltz p0, :cond_1

    int-to-float v0, p0

    div-float/2addr v0, p1

    float-to-double v0, v0

    .line 428
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    const/4 v0, 0x2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->nextPowerOfTwo(I)I

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    if-gt p1, v0, :cond_0

    return p1

    .line 429
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The required capacity is too large: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 427
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "capacity must be >= 0: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private toString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    .line 379
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    const-string p1, "{}"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1

    .line 380
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    if-eqz p2, :cond_2

    const/16 v1, 0x7b

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    :cond_2
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 383
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 384
    array-length v3, v1

    :goto_1
    add-int/lit8 v4, v3, -0x1

    const/16 v5, 0x3d

    const-string v6, "(this)"

    if-lez v3, :cond_6

    .line 386
    aget-object v3, v1, v4

    if-nez v3, :cond_3

    move v3, v4

    goto :goto_1

    :cond_3
    if-ne v3, p0, :cond_4

    move-object v3, v6

    .line 388
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 390
    aget-object v3, v2, v4

    if-ne v3, p0, :cond_5

    move-object v3, v6

    .line 391
    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_2
    add-int/lit8 v3, v4, -0x1

    if-lez v4, :cond_a

    .line 395
    aget-object v4, v1, v3

    if-nez v4, :cond_7

    goto :goto_3

    .line 397
    :cond_7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v4, p0, :cond_8

    move-object v4, v6

    .line 398
    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 400
    aget-object v4, v2, v3

    if-ne v4, p0, :cond_9

    move-object v4, v6

    .line 401
    :cond_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3
    move v4, v3

    goto :goto_2

    :cond_a
    if-eqz p2, :cond_b

    const/16 p1, 0x7d

    .line 403
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 404
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 241
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 242
    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    .line 243
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public clear(I)V
    .locals 1

    .line 231
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->tableSize(IF)I

    move-result p1

    .line 232
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    if-gt v0, p1, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->clear()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 236
    iput v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    .line 237
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->resize(I)V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .line 268
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->locateKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 254
    iget-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 255
    array-length p2, v0

    sub-int/2addr p2, v1

    :goto_0
    if-ltz p2, :cond_5

    .line 256
    aget-object v2, p1, p2

    if-eqz v2, :cond_0

    aget-object v2, v0, p2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 258
    array-length p2, v0

    sub-int/2addr p2, v1

    :goto_1
    if-ltz p2, :cond_5

    .line 259
    aget-object v2, v0, p2

    if-ne v2, p1, :cond_2

    return v1

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 261
    :cond_3
    array-length p2, v0

    sub-int/2addr p2, v1

    :goto_2
    if-ltz p2, :cond_5

    .line 262
    aget-object v2, v0, p2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v1

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public ensureCapacity(I)V
    .locals 1

    .line 295
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->loadFactor:F

    invoke-static {v0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->tableSize(IF)I

    move-result p1

    .line 296
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->resize(I)V

    :cond_0
    return-void
.end method

.method public entries()Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectMap$Entries<",
            "TK;TV;>;"
        }
    .end annotation

    .line 413
    new-instance v0, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;-><init>(Lcom/esotericsoftware/kryo/util/ObjectMap;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 336
    :cond_0
    instance-of v1, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 337
    :cond_1
    check-cast p1, Lcom/esotericsoftware/kryo/util/ObjectMap;

    .line 338
    iget v1, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    iget v3, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    if-eq v1, v3, :cond_2

    return v2

    .line 339
    :cond_2
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 340
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 341
    array-length v4, v1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_5

    .line 342
    aget-object v6, v1, v5

    if-eqz v6, :cond_4

    .line 344
    aget-object v7, v3, v5

    if-nez v7, :cond_3

    .line 346
    sget-object v7, Lcom/esotericsoftware/kryo/util/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {p1, v6, v7}, Lcom/esotericsoftware/kryo/util/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    return v2

    .line 348
    :cond_3
    invoke-virtual {p1, v6}, Lcom/esotericsoftware/kryo/util/ObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    return v2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public equalsIdentity(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 358
    :cond_0
    instance-of v1, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 359
    :cond_1
    check-cast p1, Lcom/esotericsoftware/kryo/util/ObjectMap;

    .line 360
    iget v1, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    iget v3, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    if-eq v1, v3, :cond_2

    return v2

    .line 361
    :cond_2
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 362
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 363
    array-length v4, v1

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_4

    .line 364
    aget-object v6, v1, v5

    if-eqz v6, :cond_3

    .line 365
    aget-object v7, v3, v5

    sget-object v8, Lcom/esotericsoftware/kryo/util/ObjectMap;->dummy:Ljava/lang/Object;

    invoke-virtual {p1, v6, v8}, Lcom/esotericsoftware/kryo/util/ObjectMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v7, v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public findKey(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)TK;"
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    if-nez p1, :cond_1

    .line 279
    iget-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 280
    array-length p2, v0

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_5

    .line 281
    aget-object v1, p1, p2

    if-eqz v1, :cond_0

    aget-object v2, v0, p2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 283
    array-length p2, v0

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_5

    .line 284
    aget-object v1, v0, p2

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object p1, p1, p2

    return-object p1

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 286
    :cond_3
    array-length p2, v0

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_5

    .line 287
    aget-object v1, v0, p2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    aget-object p1, p1, p2

    return-object p1

    :cond_4
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TK;>(TT;)TV;"
        }
    .end annotation

    .line 177
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->locateKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 183
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->locateKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iget-object p2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object p2, p2, p1

    :goto_0
    return-object p2
.end method

.method public hashCode()I
    .locals 6

    .line 320
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    .line 321
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 322
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 323
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    .line 324
    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    .line 326
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v0, v5

    .line 327
    aget-object v5, v2, v4

    if-eqz v5, :cond_0

    .line 328
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    add-int/2addr v0, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 217
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectMap$Entries<",
            "TK;TV;>;"
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->entries()Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->iterator()Lcom/esotericsoftware/kryo/util/ObjectMap$Entries;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectMap$Keys<",
            "TK;>;"
        }
    .end annotation

    .line 423
    new-instance v0, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$Keys;-><init>(Lcom/esotericsoftware/kryo/util/ObjectMap;)V

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

    .line 127
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 128
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->place(Ljava/lang/Object;)I

    move-result v1

    .line 129
    :goto_0
    aget-object v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1

    .line 131
    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 128
    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->mask:I

    and-int/2addr v1, v2

    goto :goto_0

    .line 126
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public notEmpty()Z
    .locals 1

    .line 212
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

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

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    int-to-long v0, p1

    const-wide v2, -0x61c8864680b583ebL

    mul-long/2addr v0, v2

    iget p1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->shift:I

    ushr-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 138
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->locateKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 140
    iget-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    aget-object v1, p1, v0

    .line 141
    aput-object p2, p1, v0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 145
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 146
    iget-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    aput-object p2, p1, v0

    .line 147
    iget p1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    iget p2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->threshold:I

    if-lt p1, p2, :cond_1

    array-length p1, v1

    shl-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->resize(I)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public putAll(Lcom/esotericsoftware/kryo/util/ObjectMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/esotericsoftware/kryo/util/ObjectMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 152
    iget v0, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->ensureCapacity(I)V

    .line 153
    iget-object v0, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 154
    iget-object p1, p1, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 156
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 157
    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 158
    aget-object v4, p1, v2

    invoke-virtual {p0, v3, v4}, Lcom/esotericsoftware/kryo/util/ObjectMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .line 189
    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->locateKey(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return-object v0

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 192
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 193
    aget-object v3, v2, p1

    .line 194
    iget v4, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->mask:I

    add-int/lit8 v5, p1, 0x1

    :goto_0
    and-int/2addr v5, v4

    .line 195
    aget-object v6, v1, v5

    if-eqz v6, :cond_2

    .line 196
    invoke-virtual {p0, v6}, Lcom/esotericsoftware/kryo/util/ObjectMap;->place(Ljava/lang/Object;)I

    move-result v7

    sub-int v8, v5, v7

    and-int/2addr v8, v4

    sub-int v7, p1, v7

    and-int/2addr v7, v4

    if-le v8, v7, :cond_1

    .line 198
    aput-object v6, v1, p1

    .line 199
    aget-object v6, v2, v5

    aput-object v6, v2, p1

    move p1, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 204
    :cond_2
    aput-object v0, v1, p1

    .line 205
    aput-object v0, v2, p1

    .line 206
    iget p1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    return-object v3
.end method

.method final resize(I)V
    .locals 5

    .line 300
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    int-to-float v1, p1

    .line 301
    iget v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->threshold:I

    add-int/lit8 v1, p1, -0x1

    .line 302
    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->mask:I

    int-to-long v1, v1

    .line 303
    invoke-static {v1, v2}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    iput v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->shift:I

    .line 305
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 306
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 308
    new-array v3, p1, [Ljava/lang/Object;

    iput-object v3, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    .line 309
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->valueTable:[Ljava/lang/Object;

    .line 311
    iget p1, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->size:I

    if-lez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 313
    aget-object v3, v1, p1

    if-eqz v3, :cond_0

    .line 314
    aget-object v4, v2, p1

    invoke-direct {p0, v3, v4}, Lcom/esotericsoftware/kryo/util/ObjectMap;->putResize(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public shrink(I)V
    .locals 3

    if-ltz p1, :cond_1

    .line 225
    iget v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->loadFactor:F

    invoke-static {p1, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->tableSize(IF)I

    move-result p1

    .line 226
    iget-object v0, p0, Lcom/esotericsoftware/kryo/util/ObjectMap;->keyTable:[Ljava/lang/Object;

    array-length v0, v0

    if-le v0, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->resize(I)V

    :cond_0
    return-void

    .line 224
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

    .line 375
    invoke-direct {p0, v0, v1}, Lcom/esotericsoftware/kryo/util/ObjectMap;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 371
    invoke-direct {p0, p1, v0}, Lcom/esotericsoftware/kryo/util/ObjectMap;->toString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public values()Lcom/esotericsoftware/kryo/util/ObjectMap$Values;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/esotericsoftware/kryo/util/ObjectMap$Values<",
            "TV;>;"
        }
    .end annotation

    .line 418
    new-instance v0, Lcom/esotericsoftware/kryo/util/ObjectMap$Values;

    invoke-direct {v0, p0}, Lcom/esotericsoftware/kryo/util/ObjectMap$Values;-><init>(Lcom/esotericsoftware/kryo/util/ObjectMap;)V

    return-object v0
.end method
