.class Lcom/google/common/collect/CompactHashMap;
.super Ljava/util/AbstractMap;
.source "CompactHashMap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/CompactHashMap$ValuesView;,
        Lcom/google/common/collect/CompactHashMap$MapEntry;,
        Lcom/google/common/collect/CompactHashMap$EntrySetView;,
        Lcom/google/common/collect/CompactHashMap$KeySetView;,
        Lcom/google/common/collect/CompactHashMap$Itr;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field static final HASH_FLOODING_FPP:D = 0.001

.field private static final MAX_HASH_BUCKET_LENGTH:I = 0x9

.field private static final NOT_FOUND:Ljava/lang/Object;


# instance fields
.field transient entries:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private transient entrySetView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient keySetView:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field transient keys:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private transient metadata:I

.field private transient size:I

.field private transient table:Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field transient values:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private transient valuesView:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 181
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 182
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap;->init(I)V

    .line 183
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "expectedSize"    # I

    .line 190
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 191
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashMap;->init(I)V

    .line 192
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/CompactHashMap;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;

    .line 76
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    return v0
.end method

.method static synthetic access$100(Lcom/google/common/collect/CompactHashMap;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 76
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->removeHelper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    .line 76
    sget-object v0, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/common/collect/CompactHashMap;Ljava/lang/Object;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 76
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/common/collect/CompactHashMap;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;

    .line 76
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/common/collect/CompactHashMap;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;

    .line 76
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$710(Lcom/google/common/collect/CompactHashMap;)I
    .locals 2
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashMap;

    .line 76
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    return v0
.end method

.method public static create()Lcom/google/common/collect/CompactHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 87
    new-instance v0, Lcom/google/common/collect/CompactHashMap;

    invoke-direct {v0}, Lcom/google/common/collect/CompactHashMap;-><init>()V

    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactHashMap;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactHashMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/google/common/collect/CompactHashMap;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap;-><init>(I)V

    return-object v0
.end method

.method private hashTableMask()I
    .locals 2

    .line 264
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    return v0
.end method

.method private indexOf(Ljava/lang/Object;)I
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 417
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 418
    return v1

    .line 420
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 421
    .local v0, "hash":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v2

    .line 422
    .local v2, "mask":I
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    and-int v4, v0, v2

    invoke-static {v3, v4}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v3

    .line 423
    .local v3, "next":I
    if-nez v3, :cond_1

    .line 424
    return v1

    .line 426
    :cond_1
    invoke-static {v0, v2}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v4

    .line 428
    .local v4, "hashPrefix":I
    :goto_0
    add-int/lit8 v5, v3, -0x1

    .line 429
    .local v5, "entryIndex":I
    iget-object v6, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    aget v6, v6, v5

    .line 430
    .local v6, "entry":I
    invoke-static {v6, v2}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v7

    if-ne v7, v4, :cond_2

    iget-object v7, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v7, v7, v5

    .line 431
    invoke-static {p1, v7}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 432
    return v5

    .line 434
    :cond_2
    invoke-static {v6, v2}, Lcom/google/common/collect/CompactHashing;->getNext(II)I

    move-result v3

    .line 435
    .end local v5    # "entryIndex":I
    .end local v6    # "entry":I
    if-nez v3, :cond_3

    .line 436
    return v1

    .line 435
    :cond_3
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 923
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 924
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 925
    .local v0, "elementCount":I
    if-ltz v0, :cond_1

    .line 928
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap;->init(I)V

    .line 929
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 930
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 931
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 932
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/CompactHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 934
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 926
    :cond_1
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private removeHelper(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 475
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    sget-object v0, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    return-object v0

    .line 478
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v0

    .line 479
    .local v0, "mask":I
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    iget-object v6, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    const/4 v7, 0x0

    .line 480
    move-object v1, p1

    move v3, v0

    invoke-static/range {v1 .. v7}, Lcom/google/common/collect/CompactHashing;->remove(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v1

    .line 482
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 483
    sget-object v2, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    return-object v2

    .line 486
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 488
    .local v2, "oldValue":Ljava/lang/Object;
    invoke-virtual {p0, v1, v0}, Lcom/google/common/collect/CompactHashMap;->moveLastEntry(II)V

    .line 489
    iget v3, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 490
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->incrementModCount()V

    .line 492
    return-object v2
.end method

.method private resizeMeMaybe(I)V
    .locals 4
    .param p1, "newSize"    # I

    .line 358
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    array-length v0, v0

    .line 359
    .local v0, "entriesSize":I
    if-le p1, v0, :cond_0

    .line 361
    const v1, 0x3fffffff    # 1.9999999f

    ushr-int/lit8 v2, v0, 0x1

    .line 362
    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v0

    or-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 363
    .local v1, "newCapacity":I
    if-eq v1, v0, :cond_0

    .line 364
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashMap;->resizeEntries(I)V

    .line 367
    .end local v1    # "newCapacity":I
    :cond_0
    return-void
.end method

.method private resizeTable(IIII)I
    .locals 14
    .param p1, "mask"    # I
    .param p2, "newCapacity"    # I
    .param p3, "targetHash"    # I
    .param p4, "targetEntryIndex"    # I

    .line 381
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    move-object v0, p0

    move v1, p1

    invoke-static/range {p2 .. p2}, Lcom/google/common/collect/CompactHashing;->createTable(I)Ljava/lang/Object;

    move-result-object v2

    .line 382
    .local v2, "newTable":Ljava/lang/Object;
    add-int/lit8 v3, p2, -0x1

    .line 384
    .local v3, "newMask":I
    if-eqz p4, :cond_0

    .line 386
    and-int v4, p3, v3

    add-int/lit8 v5, p4, 0x1

    invoke-static {v2, v4, v5}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    .line 389
    :cond_0
    iget-object v4, v0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    .line 390
    .local v4, "table":Ljava/lang/Object;
    iget-object v5, v0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    .line 393
    .local v5, "entries":[I
    const/4 v6, 0x0

    .local v6, "tableIndex":I
    :goto_0
    if-gt v6, v1, :cond_2

    .line 394
    invoke-static {v4, v6}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v7

    .line 395
    .local v7, "next":I
    :goto_1
    if-eqz v7, :cond_1

    .line 396
    add-int/lit8 v8, v7, -0x1

    .line 397
    .local v8, "entryIndex":I
    aget v9, v5, v8

    .line 400
    .local v9, "entry":I
    invoke-static {v9, p1}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v10

    or-int/2addr v10, v6

    .line 402
    .local v10, "hash":I
    and-int v11, v10, v3

    .line 403
    .local v11, "newTableIndex":I
    invoke-static {v2, v11}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v12

    .line 404
    .local v12, "newNext":I
    invoke-static {v2, v11, v7}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    .line 405
    invoke-static {v10, v12, v3}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v13

    aput v13, v5, v8

    .line 407
    invoke-static {v9, p1}, Lcom/google/common/collect/CompactHashing;->getNext(II)I

    move-result v7

    .line 408
    .end local v8    # "entryIndex":I
    .end local v9    # "entry":I
    .end local v10    # "hash":I
    .end local v11    # "newTableIndex":I
    .end local v12    # "newNext":I
    goto :goto_1

    .line 393
    .end local v7    # "next":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 411
    .end local v6    # "tableIndex":I
    :cond_2
    iput-object v2, v0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    .line 412
    invoke-direct {p0, v3}, Lcom/google/common/collect/CompactHashMap;->setHashTableMask(I)V

    .line 413
    return v3
.end method

.method private setHashTableMask(I)V
    .locals 3
    .param p1, "mask"    # I

    .line 257
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    .line 258
    .local v0, "hashTableBits":I
    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    .line 259
    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    .line 260
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 911
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 912
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 913
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->entrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 914
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 915
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 916
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 917
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 918
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 919
    :cond_0
    return-void
.end method


# virtual methods
.method accessEntry(I)V
    .locals 0
    .param p1, "index"    # I

    .line 277
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    return-void
.end method

.method adjustAfterRemove(II)I
    .locals 1
    .param p1, "indexBeforeRemove"    # I
    .param p2, "indexRemoved"    # I

    .line 552
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method allocArrays()I
    .locals 3

    .line 211
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    const-string v1, "Arrays already allocated"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 213
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    .line 214
    .local v0, "expectedSize":I
    invoke-static {v0}, Lcom/google/common/collect/CompactHashing;->tableSize(I)I

    move-result v1

    .line 215
    .local v1, "buckets":I
    invoke-static {v1}, Lcom/google/common/collect/CompactHashing;->createTable(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    .line 216
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/google/common/collect/CompactHashMap;->setHashTableMask(I)V

    .line 218
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    .line 219
    new-array v2, v0, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 220
    new-array v2, v0, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    .line 222
    return v0
.end method

.method public clear()V
    .locals 6

    .line 891
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    return-void

    .line 894
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->incrementModCount()V

    .line 895
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 896
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 897
    nop

    .line 898
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v3

    const/4 v4, 0x3

    const v5, 0x3fffffff    # 1.9999999f

    invoke-static {v3, v4, v5}, Lcom/google/common/primitives/Ints;->constrainToRange(III)I

    move-result v3

    iput v3, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    .line 899
    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    .line 900
    iput v2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    goto :goto_0

    .line 902
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-static {v3, v2, v4, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 903
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    iget v4, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-static {v3, v2, v4, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 904
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-static {v1}, Lcom/google/common/collect/CompactHashing;->tableClear(Ljava/lang/Object;)V

    .line 905
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    iget v3, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    invoke-static {v1, v2, v3, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 906
    iput v2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 908
    :goto_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 441
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 442
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 808
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 809
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 810
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 812
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v1, v2, :cond_2

    .line 813
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 814
    const/4 v2, 0x1

    return v2

    .line 812
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 817
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method convertToHashFloodingResistantImplementation()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 243
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashMap;->createHashFloodingResistantDelegate(I)Ljava/util/Map;

    move-result-object v0

    .line 244
    .local v0, "newDelegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->firstEntryIndex()I

    move-result v1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 245
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashMap;->getSuccessor(I)I

    move-result v1

    goto :goto_0

    .line 247
    .end local v1    # "i":I
    :cond_0
    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    .line 248
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    .line 249
    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 250
    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    .line 251
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->incrementModCount()V

    .line 252
    return-object v0
.end method

.method createEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 664
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CompactHashMap$EntrySetView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$EntrySetView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method createHashFloodingResistantDelegate(I)Ljava/util/Map;
    .locals 2
    .param p1, "tableSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 236
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p1, v1}, Ljava/util/LinkedHashMap;-><init>(IF)V

    return-object v0
.end method

.method createKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 608
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CompactHashMap$KeySetView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$KeySetView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method createValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 828
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/CompactHashMap$ValuesView;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashMap$ValuesView;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v0
.end method

.method delegateOrNull()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 229
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 230
    check-cast v0, Ljava/util/Map;

    return-object v0

    .line 232
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 660
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entrySetView:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->createEntrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entrySetView:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method entrySetIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 727
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 728
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 729
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 731
    :cond_0
    new-instance v1, Lcom/google/common/collect/CompactHashMap$2;

    invoke-direct {v1, p0}, Lcom/google/common/collect/CompactHashMap$2;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v1
.end method

.method firstEntryIndex()I
    .locals 1

    .line 539
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 448
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 449
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 450
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 452
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 453
    .local v1, "index":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 454
    const/4 v2, 0x0

    return-object v2

    .line 456
    :cond_1
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashMap;->accessEntry(I)V

    .line 457
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    return-object v2
.end method

.method getSuccessor(I)I
    .locals 2
    .param p1, "entryIndex"    # I

    .line 543
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method incrementModCount()V
    .locals 1

    .line 268
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    .line 269
    return-void
.end method

.method init(I)V
    .locals 3
    .param p1, "expectedSize"    # I

    .line 196
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    const/4 v0, 0x1

    if-ltz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Expected size must be >= 0"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 199
    const v1, 0x3fffffff    # 1.9999999f

    invoke-static {p1, v0, v1}, Lcom/google/common/primitives/Ints;->constrainToRange(III)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/CompactHashMap;->metadata:I

    .line 200
    return-void
.end method

.method insertEntry(ILjava/lang/Object;Ljava/lang/Object;II)V
    .locals 2
    .param p1, "entryIndex"    # I
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p4, "hash"    # I
    .param p5, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;II)V"
        }
    .end annotation

    .line 351
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    const/4 v1, 0x0

    invoke-static {p4, v1, p5}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v1

    aput v1, v0, p1

    .line 352
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 353
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aput-object p3, v0, p1

    .line 354
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 803
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v0

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 604
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keySetView:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->createKeySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keySetView:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method keySetIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 643
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 644
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 645
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 647
    :cond_0
    new-instance v1, Lcom/google/common/collect/CompactHashMap$1;

    invoke-direct {v1, p0}, Lcom/google/common/collect/CompactHashMap$1;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v1
.end method

.method moveLastEntry(II)V
    .locals 9
    .param p1, "dstIndex"    # I
    .param p2, "mask"    # I

    .line 499
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 500
    .local v0, "srcIndex":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ge p1, v0, :cond_1

    .line 502
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aget-object v4, v3, v0

    .line 503
    .local v4, "key":Ljava/lang/Object;
    aput-object v4, v3, p1

    .line 504
    iget-object v5, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v6, v5, v0

    aput-object v6, v5, p1

    .line 505
    aput-object v2, v3, v0

    .line 506
    aput-object v2, v5, v0

    .line 509
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    aget v3, v2, v0

    aput v3, v2, p1

    .line 510
    aput v1, v2, v0

    .line 513
    invoke-static {v4}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    and-int v3, v1, p2

    .line 514
    .local v3, "tableIndex":I
    iget-object v1, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v1

    .line 515
    .local v1, "next":I
    add-int/lit8 v5, v0, 0x1

    .line 516
    .local v5, "srcNext":I
    if-ne v1, v5, :cond_0

    .line 518
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    add-int/lit8 v6, p1, 0x1

    invoke-static {v2, v3, v6}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    goto :goto_0

    .line 524
    :cond_0
    add-int/lit8 v2, v1, -0x1

    .line 525
    .local v2, "entryIndex":I
    iget-object v6, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    aget v6, v6, v2

    .line 526
    .local v6, "entry":I
    invoke-static {v6, p2}, Lcom/google/common/collect/CompactHashing;->getNext(II)I

    move-result v1

    .line 527
    if-ne v1, v5, :cond_0

    .line 529
    iget-object v7, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    add-int/lit8 v8, p1, 0x1

    invoke-static {v6, v8, p2}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v8

    aput v8, v7, v2

    .line 531
    .end local v1    # "next":I
    .end local v2    # "entryIndex":I
    .end local v3    # "tableIndex":I
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "srcNext":I
    .end local v6    # "entry":I
    :goto_0
    goto :goto_1

    .line 532
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    aput-object v2, v3, p1

    .line 533
    iget-object v3, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aput-object v2, v3, p1

    .line 534
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    aput v1, v2, p1

    .line 536
    :goto_1
    return-void
.end method

.method needsAllocArrays()Z
    .locals 1

    .line 205
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 283
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->allocArrays()I

    .line 286
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v9

    .line 287
    .local v9, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v9, :cond_1

    .line 288
    invoke-interface {v9, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 290
    :cond_1
    iget-object v10, v6, Lcom/google/common/collect/CompactHashMap;->entries:[I

    .line 291
    .local v10, "entries":[I
    iget-object v11, v6, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 292
    .local v11, "keys":[Ljava/lang/Object;
    iget-object v12, v6, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    .line 294
    .local v12, "values":[Ljava/lang/Object;
    iget v13, v6, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 295
    .local v13, "newEntryIndex":I
    add-int/lit8 v14, v13, 0x1

    .line 296
    .local v14, "newSize":I
    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v15

    .line 297
    .local v15, "hash":I
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v0

    .line 298
    .local v0, "mask":I
    and-int v5, v15, v0

    .line 299
    .local v5, "tableIndex":I
    iget-object v1, v6, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v1

    .line 300
    .local v1, "next":I
    if-nez v1, :cond_3

    .line 301
    if-le v14, v0, :cond_2

    .line 303
    invoke-static {v0}, Lcom/google/common/collect/CompactHashing;->newCapacity(I)I

    move-result v2

    invoke-direct {v6, v0, v2, v15, v13}, Lcom/google/common/collect/CompactHashMap;->resizeTable(IIII)I

    move-result v0

    move/from16 v16, v0

    move/from16 v18, v1

    move/from16 v17, v5

    goto :goto_1

    .line 305
    :cond_2
    iget-object v2, v6, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    add-int/lit8 v3, v13, 0x1

    invoke-static {v2, v5, v3}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    move/from16 v16, v0

    move/from16 v18, v1

    move/from16 v17, v5

    goto :goto_1

    .line 310
    :cond_3
    invoke-static {v15, v0}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v2

    .line 311
    .local v2, "hashPrefix":I
    const/4 v3, 0x0

    .line 313
    .local v3, "bucketLength":I
    :goto_0
    add-int/lit8 v4, v1, -0x1

    .line 314
    .local v4, "entryIndex":I
    move/from16 v16, v1

    .end local v1    # "next":I
    .local v16, "next":I
    aget v1, v10, v4

    .line 315
    .local v1, "entry":I
    move/from16 v17, v5

    .end local v5    # "tableIndex":I
    .local v17, "tableIndex":I
    invoke-static {v1, v0}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v5

    if-ne v5, v2, :cond_4

    aget-object v5, v11, v4

    .line 316
    invoke-static {v7, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 319
    aget-object v5, v12, v4

    .line 321
    .local v5, "oldValue":Ljava/lang/Object;, "TV;"
    aput-object v8, v12, v4

    .line 322
    invoke-virtual {v6, v4}, Lcom/google/common/collect/CompactHashMap;->accessEntry(I)V

    .line 323
    return-object v5

    .line 325
    .end local v5    # "oldValue":Ljava/lang/Object;, "TV;"
    :cond_4
    invoke-static {v1, v0}, Lcom/google/common/collect/CompactHashing;->getNext(II)I

    move-result v5

    .line 326
    .end local v16    # "next":I
    .local v5, "next":I
    add-int/lit8 v3, v3, 0x1

    .line 327
    if-nez v5, :cond_7

    .line 329
    move/from16 v16, v2

    .end local v2    # "hashPrefix":I
    .local v16, "hashPrefix":I
    const/16 v2, 0x9

    if-lt v3, v2, :cond_5

    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->convertToHashFloodingResistantImplementation()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 333
    :cond_5
    if-le v14, v0, :cond_6

    .line 335
    invoke-static {v0}, Lcom/google/common/collect/CompactHashing;->newCapacity(I)I

    move-result v2

    invoke-direct {v6, v0, v2, v15, v13}, Lcom/google/common/collect/CompactHashMap;->resizeTable(IIII)I

    move-result v0

    move/from16 v16, v0

    move/from16 v18, v5

    goto :goto_1

    .line 337
    :cond_6
    add-int/lit8 v2, v13, 0x1

    invoke-static {v1, v2, v0}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v2

    aput v2, v10, v4

    move/from16 v16, v0

    move/from16 v18, v5

    .line 340
    .end local v0    # "mask":I
    .end local v1    # "entry":I
    .end local v3    # "bucketLength":I
    .end local v4    # "entryIndex":I
    .end local v5    # "next":I
    .local v16, "mask":I
    .local v18, "next":I
    :goto_1
    invoke-direct {v6, v14}, Lcom/google/common/collect/CompactHashMap;->resizeMeMaybe(I)V

    .line 341
    move-object/from16 v0, p0

    move v1, v13

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/google/common/collect/CompactHashMap;->insertEntry(ILjava/lang/Object;Ljava/lang/Object;II)V

    .line 342
    iput v14, v6, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/CompactHashMap;->incrementModCount()V

    .line 344
    const/4 v0, 0x0

    return-object v0

    .line 327
    .end local v16    # "mask":I
    .end local v18    # "next":I
    .restart local v0    # "mask":I
    .restart local v1    # "entry":I
    .restart local v2    # "hashPrefix":I
    .restart local v3    # "bucketLength":I
    .restart local v4    # "entryIndex":I
    .restart local v5    # "next":I
    :cond_7
    move/from16 v16, v2

    .end local v2    # "hashPrefix":I
    .local v16, "hashPrefix":I
    move v1, v5

    move/from16 v5, v17

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 465
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 466
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 467
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 469
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/CompactHashMap;->removeHelper(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 470
    .local v1, "oldValue":Ljava/lang/Object;
    sget-object v2, Lcom/google/common/collect/CompactHashMap;->NOT_FOUND:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    return-object v2
.end method

.method resizeEntries(I)V
    .locals 1
    .param p1, "newCapacity"    # I

    .line 374
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    .line 375
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->keys:[Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    .line 377
    return-void
.end method

.method public size()I
    .locals 2

    .line 797
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 798
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    :goto_0
    return v1
.end method

.method public trimToSize()V
    .locals 5

    .line 868
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    return-void

    .line 871
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 872
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_1

    .line 873
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashMap;->createHashFloodingResistantDelegate(I)Ljava/util/Map;

    move-result-object v1

    .line 874
    .local v1, "newDelegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 875
    iput-object v1, p0, Lcom/google/common/collect/CompactHashMap;->table:Ljava/lang/Object;

    .line 876
    return-void

    .line 878
    .end local v1    # "newDelegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_1
    iget v1, p0, Lcom/google/common/collect/CompactHashMap;->size:I

    .line 879
    .local v1, "size":I
    iget-object v2, p0, Lcom/google/common/collect/CompactHashMap;->entries:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 880
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashMap;->resizeEntries(I)V

    .line 882
    :cond_2
    invoke-static {v1}, Lcom/google/common/collect/CompactHashing;->tableSize(I)I

    move-result v2

    .line 883
    .local v2, "minimumTableSize":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashMap;->hashTableMask()I

    move-result v3

    .line 884
    .local v3, "mask":I
    if-ge v2, v3, :cond_3

    .line 885
    const/4 v4, 0x0

    invoke-direct {p0, v3, v2, v4, v4}, Lcom/google/common/collect/CompactHashMap;->resizeTable(IIII)I

    .line 887
    :cond_3
    return-void
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 824
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashMap;->valuesView:Ljava/util/Collection;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->createValues()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashMap;->valuesView:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method

.method valuesIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 850
    .local p0, "this":Lcom/google/common/collect/CompactHashMap;, "Lcom/google/common/collect/CompactHashMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashMap;->delegateOrNull()Ljava/util/Map;

    move-result-object v0

    .line 851
    .local v0, "delegate":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 852
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1

    .line 854
    :cond_0
    new-instance v1, Lcom/google/common/collect/CompactHashMap$3;

    invoke-direct {v1, p0}, Lcom/google/common/collect/CompactHashMap$3;-><init>(Lcom/google/common/collect/CompactHashMap;)V

    return-object v1
.end method
