.class public Lorg/apache/commons/collections/ReferenceMap;
.super Ljava/util/AbstractMap;
.source "ReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/ReferenceMap$WeakRef;,
        Lorg/apache/commons/collections/ReferenceMap$SoftRef;,
        Lorg/apache/commons/collections/ReferenceMap$KeyIterator;,
        Lorg/apache/commons/collections/ReferenceMap$ValueIterator;,
        Lorg/apache/commons/collections/ReferenceMap$EntryIterator;,
        Lorg/apache/commons/collections/ReferenceMap$Entry;
    }
.end annotation


# static fields
.field public static final HARD:I = 0x0

.field public static final SOFT:I = 0x1

.field public static final WEAK:I = 0x2

.field private static final serialVersionUID:J = -0x2ec6c8098723be00L


# instance fields
.field private transient entrySet:Ljava/util/Set;

.field private transient keySet:Ljava/util/Set;

.field private keyType:I

.field private loadFactor:F

.field private volatile transient modCount:I

.field private purgeValues:Z

.field private transient queue:Ljava/lang/ref/ReferenceQueue;

.field private transient size:I

.field private transient table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

.field private transient threshold:I

.field private valueType:I

.field private transient values:Ljava/util/Collection;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 204
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/collections/ReferenceMap;-><init>(II)V

    .line 205
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "keyType"    # I
    .param p2, "valueType"    # I

    .line 233
    const/16 v0, 0x10

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/collections/ReferenceMap;-><init>(IIIF)V

    .line 234
    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 2
    .param p1, "keyType"    # I
    .param p2, "valueType"    # I
    .param p3, "capacity"    # I
    .param p4, "loadFactor"    # F

    .line 273
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/ReferenceMap;->purgeValues:Z

    .line 153
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 275
    const-string v0, "keyType"

    invoke-static {v0, p1}, Lorg/apache/commons/collections/ReferenceMap;->verify(Ljava/lang/String;I)V

    .line 276
    const-string v0, "valueType"

    invoke-static {v0, p2}, Lorg/apache/commons/collections/ReferenceMap;->verify(Ljava/lang/String;I)V

    .line 278
    if-lez p3, :cond_2

    .line 281
    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-lez v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p4, v0

    if-gez v0, :cond_1

    .line 285
    iput p1, p0, Lorg/apache/commons/collections/ReferenceMap;->keyType:I

    .line 286
    iput p2, p0, Lorg/apache/commons/collections/ReferenceMap;->valueType:I

    .line 288
    const/4 v0, 0x1

    .line 289
    .local v0, "v":I
    :goto_0
    if-ge v0, p3, :cond_0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 291
    :cond_0
    new-array v1, v0, [Lorg/apache/commons/collections/ReferenceMap$Entry;

    iput-object v1, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 292
    iput p4, p0, Lorg/apache/commons/collections/ReferenceMap;->loadFactor:F

    .line 293
    int-to-float v1, v0

    mul-float/2addr v1, p4

    float-to-int v1, v1

    iput v1, p0, Lorg/apache/commons/collections/ReferenceMap;->threshold:I

    .line 294
    return-void

    .line 282
    .end local v0    # "v":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Load factor must be greater than 0 and less than 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "capacity must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IIIFZ)V
    .locals 0
    .param p1, "keyType"    # I
    .param p2, "valueType"    # I
    .param p3, "capacity"    # I
    .param p4, "loadFactor"    # F
    .param p5, "purgeValues"    # Z

    .line 256
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections/ReferenceMap;-><init>(IIIF)V

    .line 257
    iput-boolean p5, p0, Lorg/apache/commons/collections/ReferenceMap;->purgeValues:Z

    .line 258
    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0
    .param p1, "keyType"    # I
    .param p2, "valueType"    # I
    .param p3, "purgeValues"    # Z

    .line 219
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/ReferenceMap;-><init>(II)V

    .line 220
    iput-boolean p3, p0, Lorg/apache/commons/collections/ReferenceMap;->purgeValues:Z

    .line 221
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/ReferenceMap;Ljava/lang/Object;)Lorg/apache/commons/collections/ReferenceMap$Entry;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/ReferenceMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 85
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/ReferenceMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/ReferenceMap$Entry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/commons/collections/ReferenceMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/ReferenceMap;

    .line 85
    iget v0, p0, Lorg/apache/commons/collections/ReferenceMap;->keyType:I

    return v0
.end method

.method static synthetic access$400(Lorg/apache/commons/collections/ReferenceMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/ReferenceMap;

    .line 85
    iget v0, p0, Lorg/apache/commons/collections/ReferenceMap;->valueType:I

    return v0
.end method

.method static synthetic access$500(Lorg/apache/commons/collections/ReferenceMap;ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/ReferenceMap;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # I

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections/ReferenceMap;->toReference(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/commons/collections/ReferenceMap;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/ReferenceMap;

    .line 85
    iget-boolean v0, p0, Lorg/apache/commons/collections/ReferenceMap;->purgeValues:Z

    return v0
.end method

.method static synthetic access$700(Lorg/apache/commons/collections/ReferenceMap;)[Lorg/apache/commons/collections/ReferenceMap$Entry;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/ReferenceMap;

    .line 85
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/commons/collections/ReferenceMap;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/ReferenceMap;

    .line 85
    iget v0, p0, Lorg/apache/commons/collections/ReferenceMap;->modCount:I

    return v0
.end method

.method private getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/ReferenceMap$Entry;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;

    .line 378
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 379
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 380
    .local v1, "hash":I
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/ReferenceMap;->indexFor(I)I

    move-result v2

    .line 381
    .local v2, "index":I
    iget-object v3, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    aget-object v3, v3, v2

    .local v3, "entry":Lorg/apache/commons/collections/ReferenceMap$Entry;
    :goto_0
    if-eqz v3, :cond_2

    .line 382
    iget v4, v3, Lorg/apache/commons/collections/ReferenceMap$Entry;->hash:I

    if-ne v4, v1, :cond_1

    invoke-virtual {v3}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 383
    return-object v3

    .line 381
    :cond_1
    iget-object v3, v3, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    goto :goto_0

    .line 386
    .end local v3    # "entry":Lorg/apache/commons/collections/ReferenceMap$Entry;
    :cond_2
    return-object v0
.end method

.method private indexFor(I)I
    .locals 1
    .param p1, "hash"    # I

    .line 396
    shl-int/lit8 v0, p1, 0xf

    not-int v0, v0

    add-int/2addr p1, v0

    .line 397
    ushr-int/lit8 v0, p1, 0xa

    xor-int/2addr p1, v0

    .line 398
    shl-int/lit8 v0, p1, 0x3

    add-int/2addr p1, v0

    .line 399
    ushr-int/lit8 v0, p1, 0x6

    xor-int/2addr p1, v0

    .line 400
    shl-int/lit8 v0, p1, 0xb

    not-int v0, v0

    add-int/2addr p1, v0

    .line 401
    ushr-int/lit8 v0, p1, 0x10

    xor-int/2addr p1, v0

    .line 402
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    return v0
.end method

.method private purge()V
    .locals 2

    .line 446
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .line 447
    .local v0, "ref":Ljava/lang/ref/Reference;
    :goto_0
    if-eqz v0, :cond_0

    .line 448
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/ReferenceMap;->purge(Ljava/lang/ref/Reference;)V

    .line 449
    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_0

    .line 451
    :cond_0
    return-void
.end method

.method private purge(Ljava/lang/ref/Reference;)V
    .locals 6
    .param p1, "ref"    # Ljava/lang/ref/Reference;

    .line 458
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 459
    .local v0, "hash":I
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/ReferenceMap;->indexFor(I)I

    move-result v1

    .line 460
    .local v1, "index":I
    const/4 v2, 0x0

    .line 461
    .local v2, "previous":Lorg/apache/commons/collections/ReferenceMap$Entry;
    iget-object v3, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    aget-object v3, v3, v1

    .line 462
    .local v3, "entry":Lorg/apache/commons/collections/ReferenceMap$Entry;
    :goto_0
    if-eqz v3, :cond_2

    .line 463
    invoke-virtual {v3, p1}, Lorg/apache/commons/collections/ReferenceMap$Entry;->purge(Ljava/lang/ref/Reference;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 464
    if-nez v2, :cond_0

    iget-object v4, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    iget-object v5, v3, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    aput-object v5, v4, v1

    goto :goto_1

    .line 465
    :cond_0
    iget-object v4, v3, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    iput-object v4, v2, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 466
    :goto_1
    iget v4, p0, Lorg/apache/commons/collections/ReferenceMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/commons/collections/ReferenceMap;->size:I

    .line 467
    return-void

    .line 469
    :cond_1
    move-object v2, v3

    .line 470
    iget-object v3, v3, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    goto :goto_0

    .line 473
    :cond_2
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "inp"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 336
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 337
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [Lorg/apache/commons/collections/ReferenceMap$Entry;

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 338
    array-length v0, v0

    int-to-float v0, v0

    iget v1, p0, Lorg/apache/commons/collections/ReferenceMap;->loadFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/apache/commons/collections/ReferenceMap;->threshold:I

    .line 339
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 340
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 341
    .local v0, "key":Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 343
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections/ReferenceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 345
    .end local v1    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 346
    :cond_0
    return-void
.end method

.method private resize()V
    .locals 6

    .line 414
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 415
    .local v0, "old":[Lorg/apache/commons/collections/ReferenceMap$Entry;
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lorg/apache/commons/collections/ReferenceMap$Entry;

    iput-object v1, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 417
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 418
    aget-object v2, v0, v1

    .line 419
    .local v2, "next":Lorg/apache/commons/collections/ReferenceMap$Entry;
    :goto_1
    if-eqz v2, :cond_0

    .line 420
    move-object v3, v2

    .line 421
    .local v3, "entry":Lorg/apache/commons/collections/ReferenceMap$Entry;
    iget-object v2, v2, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 422
    iget v4, v3, Lorg/apache/commons/collections/ReferenceMap$Entry;->hash:I

    invoke-direct {p0, v4}, Lorg/apache/commons/collections/ReferenceMap;->indexFor(I)I

    move-result v4

    .line 423
    .local v4, "index":I
    iget-object v5, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    aget-object v5, v5, v4

    iput-object v5, v3, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 424
    iget-object v5, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    aput-object v3, v5, v4

    .line 425
    .end local v3    # "entry":Lorg/apache/commons/collections/ReferenceMap$Entry;
    .end local v4    # "index":I
    goto :goto_1

    .line 426
    :cond_0
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 417
    .end local v2    # "next":Lorg/apache/commons/collections/ReferenceMap$Entry;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 428
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    array-length v1, v1

    int-to-float v1, v1

    iget v2, p0, Lorg/apache/commons/collections/ReferenceMap;->loadFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lorg/apache/commons/collections/ReferenceMap;->threshold:I

    .line 429
    return-void
.end method

.method private toReference(ILjava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # I
    .param p2, "referent"    # Ljava/lang/Object;
    .param p3, "hash"    # I

    .line 361
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 364
    new-instance v0, Lorg/apache/commons/collections/ReferenceMap$WeakRef;

    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p3, p2, v1}, Lorg/apache/commons/collections/ReferenceMap$WeakRef;-><init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0

    .line 363
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/ReferenceMap$SoftRef;

    iget-object v1, p0, Lorg/apache/commons/collections/ReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p3, p2, v1}, Lorg/apache/commons/collections/ReferenceMap$SoftRef;-><init>(ILjava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0

    .line 362
    :cond_2
    return-object p2
.end method

.method private static verify(Ljava/lang/String;I)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 299
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 303
    return-void

    .line 300
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " must be HARD, SOFT, WEAK."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 314
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 319
    invoke-virtual {p0}, Lorg/apache/commons/collections/ReferenceMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 321
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 322
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 323
    .end local v1    # "entry":Ljava/util/Map$Entry;
    goto :goto_0

    .line 324
    .end local v0    # "iter":Ljava/util/Iterator;
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 325
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 596
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 597
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/ReferenceMap;->size:I

    .line 598
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 599
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 504
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap;->purge()V

    .line 505
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/ReferenceMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/ReferenceMap$Entry;

    move-result-object v0

    .line 506
    .local v0, "entry":Lorg/apache/commons/collections/ReferenceMap$Entry;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 507
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .line 608
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->entrySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 609
    return-object v0

    .line 611
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/ReferenceMap$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/ReferenceMap$1;-><init>(Lorg/apache/commons/collections/ReferenceMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->entrySet:Ljava/util/Set;

    .line 655
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 518
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap;->purge()V

    .line 519
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/ReferenceMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/ReferenceMap$Entry;

    move-result-object v0

    .line 520
    .local v0, "entry":Lorg/apache/commons/collections/ReferenceMap$Entry;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 521
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 493
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap;->purge()V

    .line 494
    iget v0, p0, Lorg/apache/commons/collections/ReferenceMap;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .line 665
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->keySet:Ljava/util/Set;

    if-eqz v0, :cond_0

    return-object v0

    .line 666
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/ReferenceMap$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/ReferenceMap$2;-><init>(Lorg/apache/commons/collections/ReferenceMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->keySet:Ljava/util/Set;

    .line 701
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 537
    if-eqz p1, :cond_4

    .line 538
    if-eqz p2, :cond_3

    .line 540
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap;->purge()V

    .line 541
    iget v0, p0, Lorg/apache/commons/collections/ReferenceMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/apache/commons/collections/ReferenceMap;->threshold:I

    if-le v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap;->resize()V

    .line 543
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 544
    .local v0, "hash":I
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/ReferenceMap;->indexFor(I)I

    move-result v1

    .line 545
    .local v1, "index":I
    iget-object v2, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    aget-object v2, v2, v1

    move-object v8, v2

    .line 546
    .local v8, "entry":Lorg/apache/commons/collections/ReferenceMap$Entry;
    :goto_0
    if-eqz v8, :cond_2

    .line 547
    iget v2, v8, Lorg/apache/commons/collections/ReferenceMap$Entry;->hash:I

    if-ne v0, v2, :cond_1

    invoke-virtual {v8}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 548
    invoke-virtual {v8}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 549
    .local v2, "result":Ljava/lang/Object;
    invoke-virtual {v8, p2}, Lorg/apache/commons/collections/ReferenceMap$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    return-object v2

    .line 552
    .end local v2    # "result":Ljava/lang/Object;
    :cond_1
    iget-object v8, v8, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    goto :goto_0

    .line 554
    :cond_2
    iget v2, p0, Lorg/apache/commons/collections/ReferenceMap;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/collections/ReferenceMap;->size:I

    .line 555
    iget v2, p0, Lorg/apache/commons/collections/ReferenceMap;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/commons/collections/ReferenceMap;->modCount:I

    .line 556
    iget v2, p0, Lorg/apache/commons/collections/ReferenceMap;->keyType:I

    invoke-direct {p0, v2, p1, v0}, Lorg/apache/commons/collections/ReferenceMap;->toReference(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    .line 557
    iget v2, p0, Lorg/apache/commons/collections/ReferenceMap;->valueType:I

    invoke-direct {p0, v2, p2, v0}, Lorg/apache/commons/collections/ReferenceMap;->toReference(ILjava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2

    .line 558
    iget-object v9, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    new-instance v10, Lorg/apache/commons/collections/ReferenceMap$Entry;

    aget-object v7, v9, v1

    move-object v2, v10

    move-object v3, p0

    move-object v4, p1

    move v5, v0

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/collections/ReferenceMap$Entry;-><init>(Lorg/apache/commons/collections/ReferenceMap;Ljava/lang/Object;ILjava/lang/Object;Lorg/apache/commons/collections/ReferenceMap$Entry;)V

    aput-object v10, v9, v1

    .line 559
    const/4 v2, 0x0

    return-object v2

    .line 538
    .end local v0    # "hash":I
    .end local v1    # "index":I
    .end local v8    # "entry":Lorg/apache/commons/collections/ReferenceMap$Entry;
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null values not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null keys not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;

    .line 571
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 572
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap;->purge()V

    .line 573
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 574
    .local v1, "hash":I
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/ReferenceMap;->indexFor(I)I

    move-result v2

    .line 575
    .local v2, "index":I
    const/4 v3, 0x0

    .line 576
    .local v3, "previous":Lorg/apache/commons/collections/ReferenceMap$Entry;
    iget-object v4, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    aget-object v4, v4, v2

    .line 577
    .local v4, "entry":Lorg/apache/commons/collections/ReferenceMap$Entry;
    :goto_0
    if-eqz v4, :cond_3

    .line 578
    iget v5, v4, Lorg/apache/commons/collections/ReferenceMap$Entry;->hash:I

    if-ne v1, v5, :cond_2

    invoke-virtual {v4}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 579
    if-nez v3, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->table:[Lorg/apache/commons/collections/ReferenceMap$Entry;

    iget-object v5, v4, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    aput-object v5, v0, v2

    goto :goto_1

    .line 580
    :cond_1
    iget-object v0, v4, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    iput-object v0, v3, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    .line 581
    :goto_1
    iget v0, p0, Lorg/apache/commons/collections/ReferenceMap;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/ReferenceMap;->size:I

    .line 582
    iget v0, p0, Lorg/apache/commons/collections/ReferenceMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/ReferenceMap;->modCount:I

    .line 583
    invoke-virtual {v4}, Lorg/apache/commons/collections/ReferenceMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 585
    :cond_2
    move-object v3, v4

    .line 586
    iget-object v4, v4, Lorg/apache/commons/collections/ReferenceMap$Entry;->next:Lorg/apache/commons/collections/ReferenceMap$Entry;

    goto :goto_0

    .line 588
    :cond_3
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 482
    invoke-direct {p0}, Lorg/apache/commons/collections/ReferenceMap;->purge()V

    .line 483
    iget v0, p0, Lorg/apache/commons/collections/ReferenceMap;->size:I

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .line 711
    iget-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->values:Ljava/util/Collection;

    if-eqz v0, :cond_0

    return-object v0

    .line 712
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/ReferenceMap$3;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/ReferenceMap$3;-><init>(Lorg/apache/commons/collections/ReferenceMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/ReferenceMap;->values:Ljava/util/Collection;

    .line 737
    return-object v0
.end method
