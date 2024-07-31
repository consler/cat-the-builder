.class Lcom/google/common/collect/CompactHashSet;
.super Ljava/util/AbstractSet;
.source "CompactHashSet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field transient elements:[Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient entries:[I
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private transient metadata:I

.field private transient size:I

.field private transient table:Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 164
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 165
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashSet;->init(I)V

    .line 166
    return-void
.end method

.method constructor <init>(I)V
    .locals 0
    .param p1, "expectedSize"    # I

    .line 173
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 174
    invoke-virtual {p0, p1}, Lcom/google/common/collect/CompactHashSet;->init(I)V

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/google/common/collect/CompactHashSet;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/common/collect/CompactHashSet;

    .line 71
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    return v0
.end method

.method public static create()Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 76
    new-instance v0, Lcom/google/common/collect/CompactHashSet;

    invoke-direct {v0}, Lcom/google/common/collect/CompactHashSet;-><init>()V

    return-object v0
.end method

.method public static create(Ljava/util/Collection;)Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 87
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-static {v0}, Lcom/google/common/collect/CompactHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;

    move-result-object v0

    .line 88
    .local v0, "set":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {v0, p0}, Lcom/google/common/collect/CompactHashSet;->addAll(Ljava/util/Collection;)Z

    .line 89
    return-object v0
.end method

.method public static varargs create([Ljava/lang/Object;)Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 101
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    invoke-static {v0}, Lcom/google/common/collect/CompactHashSet;->createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;

    move-result-object v0

    .line 102
    .local v0, "set":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 103
    return-object v0
.end method

.method public static createWithExpectedSize(I)Lcom/google/common/collect/CompactHashSet;
    .locals 1
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/CompactHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 116
    new-instance v0, Lcom/google/common/collect/CompactHashSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashSet;-><init>(I)V

    return-object v0
.end method

.method private hashTableMask()I
    .locals 2

    .line 216
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    return v0
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

    .line 559
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 560
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 561
    .local v0, "elementCount":I
    if-ltz v0, :cond_1

    .line 564
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashSet;->init(I)V

    .line 565
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 566
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 567
    .local v2, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Lcom/google/common/collect/CompactHashSet;->add(Ljava/lang/Object;)Z

    .line 565
    .end local v2    # "element":Ljava/lang/Object;, "TE;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 569
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 562
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

.method private resizeMeMaybe(I)V
    .locals 4
    .param p1, "newSize"    # I

    .line 282
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    array-length v0, v0

    .line 283
    .local v0, "entriesSize":I
    if-le p1, v0, :cond_0

    .line 285
    const v1, 0x3fffffff    # 1.9999999f

    ushr-int/lit8 v2, v0, 0x1

    .line 286
    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v0

    or-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 287
    .local v1, "newCapacity":I
    if-eq v1, v0, :cond_0

    .line 288
    invoke-virtual {p0, v1}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    .line 291
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

    .line 304
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    move-object v0, p0

    move v1, p1

    invoke-static/range {p2 .. p2}, Lcom/google/common/collect/CompactHashing;->createTable(I)Ljava/lang/Object;

    move-result-object v2

    .line 305
    .local v2, "newTable":Ljava/lang/Object;
    add-int/lit8 v3, p2, -0x1

    .line 307
    .local v3, "newMask":I
    if-eqz p4, :cond_0

    .line 309
    and-int v4, p3, v3

    add-int/lit8 v5, p4, 0x1

    invoke-static {v2, v4, v5}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    .line 312
    :cond_0
    iget-object v4, v0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    .line 313
    .local v4, "table":Ljava/lang/Object;
    iget-object v5, v0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    .line 316
    .local v5, "entries":[I
    const/4 v6, 0x0

    .local v6, "tableIndex":I
    :goto_0
    if-gt v6, v1, :cond_2

    .line 317
    invoke-static {v4, v6}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v7

    .line 318
    .local v7, "next":I
    :goto_1
    if-eqz v7, :cond_1

    .line 319
    add-int/lit8 v8, v7, -0x1

    .line 320
    .local v8, "entryIndex":I
    aget v9, v5, v8

    .line 323
    .local v9, "entry":I
    invoke-static {v9, p1}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v10

    or-int/2addr v10, v6

    .line 325
    .local v10, "hash":I
    and-int v11, v10, v3

    .line 326
    .local v11, "newTableIndex":I
    invoke-static {v2, v11}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v12

    .line 327
    .local v12, "newNext":I
    invoke-static {v2, v11, v7}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    .line 328
    invoke-static {v10, v12, v3}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v13

    aput v13, v5, v8

    .line 330
    invoke-static {v9, p1}, Lcom/google/common/collect/CompactHashing;->getNext(II)I

    move-result v7

    .line 331
    .end local v8    # "entryIndex":I
    .end local v9    # "entry":I
    .end local v10    # "hash":I
    .end local v11    # "newTableIndex":I
    .end local v12    # "newNext":I
    goto :goto_1

    .line 316
    .end local v7    # "next":I
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 334
    .end local v6    # "tableIndex":I
    :cond_2
    iput-object v2, v0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    .line 335
    invoke-direct {p0, v3}, Lcom/google/common/collect/CompactHashSet;->setHashTableMask(I)V

    .line 336
    return v3
.end method

.method private setHashTableMask(I)V
    .locals 3
    .param p1, "mask"    # I

    .line 209
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    .line 210
    .local v0, "hashTableBits":I
    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    .line 211
    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    .line 212
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 550
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 551
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 552
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->firstEntryIndex()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 553
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 552
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashSet;->getSuccessor(I)I

    move-result v0

    goto :goto_0

    .line 555
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 226
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    .local p1, "object":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->allocArrays()I

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    .line 230
    .local v0, "entries":[I
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 232
    .local v1, "elements":[Ljava/lang/Object;
    iget v2, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 233
    .local v2, "newEntryIndex":I
    add-int/lit8 v3, v2, 0x1

    .line 234
    .local v3, "newSize":I
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v4

    .line 235
    .local v4, "hash":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v5

    .line 236
    .local v5, "mask":I
    and-int v6, v4, v5

    .line 237
    .local v6, "tableIndex":I
    iget-object v7, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    invoke-static {v7, v6}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v7

    .line 238
    .local v7, "next":I
    if-nez v7, :cond_2

    .line 239
    if-le v3, v5, :cond_1

    .line 241
    invoke-static {v5}, Lcom/google/common/collect/CompactHashing;->newCapacity(I)I

    move-result v8

    invoke-direct {p0, v5, v8, v4, v2}, Lcom/google/common/collect/CompactHashSet;->resizeTable(IIII)I

    move-result v5

    goto :goto_1

    .line 243
    :cond_1
    iget-object v8, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    add-int/lit8 v9, v2, 0x1

    invoke-static {v8, v6, v9}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    goto :goto_1

    .line 248
    :cond_2
    invoke-static {v4, v5}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v8

    .line 250
    .local v8, "hashPrefix":I
    :goto_0
    add-int/lit8 v9, v7, -0x1

    .line 251
    .local v9, "entryIndex":I
    aget v10, v0, v9

    .line 252
    .local v10, "entry":I
    invoke-static {v10, v5}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v11

    if-ne v11, v8, :cond_3

    aget-object v11, v1, v9

    .line 253
    invoke-static {p1, v11}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 254
    const/4 v11, 0x0

    return v11

    .line 256
    :cond_3
    invoke-static {v10, v5}, Lcom/google/common/collect/CompactHashing;->getNext(II)I

    move-result v7

    .line 257
    if-nez v7, :cond_5

    .line 258
    if-le v3, v5, :cond_4

    .line 260
    invoke-static {v5}, Lcom/google/common/collect/CompactHashing;->newCapacity(I)I

    move-result v11

    invoke-direct {p0, v5, v11, v4, v2}, Lcom/google/common/collect/CompactHashSet;->resizeTable(IIII)I

    move-result v5

    goto :goto_1

    .line 262
    :cond_4
    add-int/lit8 v11, v2, 0x1

    invoke-static {v10, v11, v5}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v11

    aput v11, v0, v9

    .line 265
    .end local v8    # "hashPrefix":I
    .end local v9    # "entryIndex":I
    .end local v10    # "entry":I
    :goto_1
    invoke-direct {p0, v3}, Lcom/google/common/collect/CompactHashSet;->resizeMeMaybe(I)V

    .line 266
    invoke-virtual {p0, v2, p1, v4, v5}, Lcom/google/common/collect/CompactHashSet;->insertEntry(ILjava/lang/Object;II)V

    .line 267
    iput v3, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 268
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->incrementModCount()V

    .line 269
    const/4 v8, 0x1

    return v8

    .line 257
    .restart local v8    # "hashPrefix":I
    .restart local v9    # "entryIndex":I
    .restart local v10    # "entry":I
    :cond_5
    goto :goto_0
.end method

.method adjustAfterRemove(II)I
    .locals 1
    .param p1, "indexBeforeRemove"    # I
    .param p2, "indexRemoved"    # I

    .line 438
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method allocArrays()I
    .locals 3

    .line 194
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const-string v1, "Arrays already allocated"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 196
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    .line 197
    .local v0, "expectedSize":I
    invoke-static {v0}, Lcom/google/common/collect/CompactHashing;->tableSize(I)I

    move-result v1

    .line 198
    .local v1, "buckets":I
    invoke-static {v1}, Lcom/google/common/collect/CompactHashing;->createTable(I)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    .line 199
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/google/common/collect/CompactHashSet;->setHashTableMask(I)V

    .line 201
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    .line 202
    new-array v2, v0, [Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 204
    return v0
.end method

.method public clear()V
    .locals 4

    .line 539
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    return-void

    .line 542
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->incrementModCount()V

    .line 543
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 544
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/CompactHashing;->tableClear(Ljava/lang/Object;)V

    .line 545
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v0, v3, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    .line 546
    iput v3, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 547
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 341
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 342
    return v1

    .line 344
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 345
    .local v0, "hash":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v2

    .line 346
    .local v2, "mask":I
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    and-int v4, v0, v2

    invoke-static {v3, v4}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v3

    .line 347
    .local v3, "next":I
    if-nez v3, :cond_1

    .line 348
    return v1

    .line 350
    :cond_1
    invoke-static {v0, v2}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v4

    .line 352
    .local v4, "hashPrefix":I
    :goto_0
    add-int/lit8 v5, v3, -0x1

    .line 353
    .local v5, "entryIndex":I
    iget-object v6, p0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    aget v6, v6, v5

    .line 354
    .local v6, "entry":I
    invoke-static {v6, v2}, Lcom/google/common/collect/CompactHashing;->getHashPrefix(II)I

    move-result v7

    if-ne v7, v4, :cond_2

    iget-object v7, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v7, v7, v5

    .line 355
    invoke-static {p1, v7}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 356
    const/4 v1, 0x1

    return v1

    .line 358
    :cond_2
    invoke-static {v6, v2}, Lcom/google/common/collect/CompactHashing;->getNext(II)I

    move-result v3

    .line 359
    .end local v5    # "entryIndex":I
    .end local v6    # "entry":I
    if-nez v3, :cond_3

    .line 360
    return v1

    .line 359
    :cond_3
    goto :goto_0
.end method

.method firstEntryIndex()I
    .locals 1

    .line 425
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getSuccessor(I)I
    .locals 2
    .param p1, "entryIndex"    # I

    .line 429
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

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

    .line 220
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    .line 221
    return-void
.end method

.method init(I)V
    .locals 3
    .param p1, "expectedSize"    # I

    .line 179
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    const/4 v0, 0x1

    if-ltz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Expected size must be >= 0"

    invoke-static {v1, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 182
    const v1, 0x3fffffff    # 1.9999999f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/CompactHashSet;->metadata:I

    .line 183
    return-void
.end method

.method insertEntry(ILjava/lang/Object;II)V
    .locals 2
    .param p1, "entryIndex"    # I
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3, "hash"    # I
    .param p4, "mask"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;II)V"
        }
    .end annotation

    .line 276
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    .local p2, "object":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    const/4 v1, 0x0

    invoke-static {p3, v1, p4}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v1

    aput v1, v0, p1

    .line 277
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 278
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 495
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

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
            "TE;>;"
        }
    .end annotation

    .line 443
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/CompactHashSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/CompactHashSet$1;-><init>(Lcom/google/common/collect/CompactHashSet;)V

    return-object v0
.end method

.method moveLastEntry(II)V
    .locals 9
    .param p1, "dstIndex"    # I
    .param p2, "mask"    # I

    .line 388
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 389
    .local v0, "srcIndex":I
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ge p1, v0, :cond_1

    .line 391
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aget-object v4, v3, v0

    .line 392
    .local v4, "object":Ljava/lang/Object;
    aput-object v4, v3, p1

    .line 393
    aput-object v2, v3, v0

    .line 396
    iget-object v2, p0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    aget v3, v2, v0

    aput v3, v2, p1

    .line 397
    aput v1, v2, v0

    .line 400
    invoke-static {v4}, Lcom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v1

    and-int v3, v1, p2

    .line 401
    .local v3, "tableIndex":I
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/google/common/collect/CompactHashing;->tableGet(Ljava/lang/Object;I)I

    move-result v1

    .line 402
    .local v1, "next":I
    add-int/lit8 v5, v0, 0x1

    .line 403
    .local v5, "srcNext":I
    if-ne v1, v5, :cond_0

    .line 405
    iget-object v2, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    add-int/lit8 v6, p1, 0x1

    invoke-static {v2, v3, v6}, Lcom/google/common/collect/CompactHashing;->tableSet(Ljava/lang/Object;II)V

    goto :goto_0

    .line 411
    :cond_0
    add-int/lit8 v2, v1, -0x1

    .line 412
    .local v2, "entryIndex":I
    iget-object v6, p0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    aget v6, v6, v2

    .line 413
    .local v6, "entry":I
    invoke-static {v6, p2}, Lcom/google/common/collect/CompactHashing;->getNext(II)I

    move-result v1

    .line 414
    if-ne v1, v5, :cond_0

    .line 416
    iget-object v7, p0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    add-int/lit8 v8, p1, 0x1

    invoke-static {v6, v8, p2}, Lcom/google/common/collect/CompactHashing;->maskCombine(III)I

    move-result v8

    aput v8, v7, v2

    .line 418
    .end local v1    # "next":I
    .end local v2    # "entryIndex":I
    .end local v3    # "tableIndex":I
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "srcNext":I
    .end local v6    # "entry":I
    :goto_0
    goto :goto_1

    .line 419
    :cond_1
    iget-object v3, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    aput-object v2, v3, p1

    .line 420
    iget-object v2, p0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    aput v1, v2, p1

    .line 422
    :goto_1
    return-void
.end method

.method needsAllocArrays()Z
    .locals 1

    .line 188
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 366
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 367
    return v1

    .line 369
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v0

    .line 370
    .local v0, "mask":I
    const/4 v3, 0x0

    iget-object v5, p0, Lcom/google/common/collect/CompactHashSet;->table:Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    iget-object v7, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    const/4 v8, 0x0

    .line 371
    move-object v2, p1

    move v4, v0

    invoke-static/range {v2 .. v8}, Lcom/google/common/collect/CompactHashing;->remove(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result v2

    .line 373
    .local v2, "index":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 374
    return v1

    .line 377
    :cond_1
    invoke-virtual {p0, v2, v0}, Lcom/google/common/collect/CompactHashSet;->moveLastEntry(II)V

    .line 378
    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 379
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->incrementModCount()V

    .line 381
    return v3
.end method

.method resizeEntries(I)V
    .locals 1
    .param p1, "newCapacity"    # I

    .line 298
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    .line 299
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    .line 300
    return-void
.end method

.method public size()I
    .locals 1

    .line 490
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    .line 500
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 509
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 510
    array-length v0, p1

    if-lez v0, :cond_0

    .line 511
    const/4 v0, 0x0

    aput-object v0, p1, v1

    .line 513
    :cond_0
    return-object p1

    .line 515
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    invoke-static {v0, v1, v2, p1}, Lcom/google/common/collect/ObjectArrays;->toArrayImpl([Ljava/lang/Object;II[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public trimToSize()V
    .locals 4

    .line 523
    .local p0, "this":Lcom/google/common/collect/CompactHashSet;, "Lcom/google/common/collect/CompactHashSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/CompactHashSet;->needsAllocArrays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    return-void

    .line 526
    :cond_0
    iget v0, p0, Lcom/google/common/collect/CompactHashSet;->size:I

    .line 527
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/common/collect/CompactHashSet;->entries:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 528
    invoke-virtual {p0, v0}, Lcom/google/common/collect/CompactHashSet;->resizeEntries(I)V

    .line 530
    :cond_1
    invoke-static {v0}, Lcom/google/common/collect/CompactHashing;->tableSize(I)I

    move-result v1

    .line 531
    .local v1, "minimumTableSize":I
    invoke-direct {p0}, Lcom/google/common/collect/CompactHashSet;->hashTableMask()I

    move-result v2

    .line 532
    .local v2, "mask":I
    if-ge v1, v2, :cond_2

    .line 533
    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3, v3}, Lcom/google/common/collect/CompactHashSet;->resizeTable(IIII)I

    .line 535
    :cond_2
    return-void
.end method
