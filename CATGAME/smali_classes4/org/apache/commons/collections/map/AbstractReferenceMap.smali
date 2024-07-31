.class public abstract Lorg/apache/commons/collections/map/AbstractReferenceMap;
.super Lorg/apache/commons/collections/map/AbstractHashedMap;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/map/AbstractReferenceMap$WeakRef;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$SoftRef;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceMapIterator;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceValuesIterator;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceKeySetIterator;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceValues;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceKeySet;,
        Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySet;
    }
.end annotation


# static fields
.field public static final HARD:I = 0x0

.field public static final SOFT:I = 0x1

.field public static final WEAK:I = 0x2


# instance fields
.field protected keyType:I

.field protected purgeValues:Z

.field private transient queue:Ljava/lang/ref/ReferenceQueue;

.field protected valueType:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>()V

    .line 125
    return-void
.end method

.method protected constructor <init>(IIIFZ)V
    .locals 1
    .param p1, "keyType"    # I
    .param p2, "valueType"    # I
    .param p3, "capacity"    # I
    .param p4, "loadFactor"    # F
    .param p5, "purgeValues"    # Z

    .line 143
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/collections/map/AbstractHashedMap;-><init>(IF)V

    .line 144
    const-string v0, "keyType"

    invoke-static {v0, p1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->verify(Ljava/lang/String;I)V

    .line 145
    const-string v0, "valueType"

    invoke-static {v0, p2}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->verify(Ljava/lang/String;I)V

    .line 146
    iput p1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    .line 147
    iput p2, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    .line 148
    iput-boolean p5, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeValues:Z

    .line 149
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/map/AbstractReferenceMap;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/map/AbstractReferenceMap;

    .line 85
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private static verify(Ljava/lang/String;I)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "type"    # I

    .line 167
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 170
    return-void

    .line 168
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


# virtual methods
.method public clear()V
    .locals 1

    .line 277
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->clear()V

    .line 278
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 200
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeBeforeRead()V

    .line 201
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 202
    .local v0, "entry":Ljava/util/Map$Entry;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 203
    return v1

    .line 205
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 215
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeBeforeRead()V

    .line 216
    if-nez p1, :cond_0

    .line 217
    const/4 v0, 0x0

    return v0

    .line 219
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected createEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .locals 7
    .param p1, "next"    # Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .param p2, "hashCode"    # I
    .param p3, "key"    # Ljava/lang/Object;
    .param p4, "value"    # Ljava/lang/Object;

    .line 447
    new-instance v6, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;-><init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method protected createEntrySetIterator()Ljava/util/Iterator;
    .locals 1

    .line 456
    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySetIterator;-><init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected createKeySetIterator()Ljava/util/Iterator;
    .locals 1

    .line 465
    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceKeySetIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceKeySetIterator;-><init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected createValuesIterator()Ljava/util/Iterator;
    .locals 1

    .line 474
    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceValuesIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceValuesIterator;-><init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 962
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    .line 963
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    .line 964
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeValues:Z

    .line 965
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->loadFactor:F

    .line 966
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 967
    .local v0, "capacity":I
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->init()V

    .line 968
    new-array v1, v0, [Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 970
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 971
    .local v1, "key":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 972
    nop

    .line 977
    .end local v1    # "key":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    iget v2, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->loadFactor:F

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->calculateThreshold(IF)I

    move-result v1

    iput v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->threshold:I

    .line 979
    return-void

    .line 974
    .restart local v1    # "key":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 975
    .local v2, "value":Ljava/lang/Object;
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "value":Ljava/lang/Object;
    goto :goto_0
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 931
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 932
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->valueType:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 933
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeValues:Z

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    .line 934
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->loadFactor:F

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 935
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 936
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->mapIterator()Lorg/apache/commons/collections/MapIterator;

    move-result-object v0

    .local v0, "it":Lorg/apache/commons/collections/MapIterator;
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 937
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 938
    invoke-interface {v0}, Lorg/apache/commons/collections/MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 940
    .end local v0    # "it":Lorg/apache/commons/collections/MapIterator;
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 942
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1

    .line 300
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntrySet;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    .line 303
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->entrySet:Lorg/apache/commons/collections/map/AbstractHashedMap$EntrySet;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 229
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeBeforeRead()V

    .line 230
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    .line 231
    .local v0, "entry":Ljava/util/Map$Entry;
    if-nez v0, :cond_0

    .line 232
    const/4 v1, 0x0

    return-object v1

    .line 234
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 402
    if-nez p1, :cond_0

    .line 403
    const/4 v0, 0x0

    return-object v0

    .line 405
    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    return-object v0
.end method

.method protected hashEntry(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 418
    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    xor-int/2addr v0, v1

    return v0
.end method

.method protected init()V
    .locals 1

    .line 155
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 156
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 189
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeBeforeRead()V

    .line 190
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method protected isEqualKey(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key1"    # Ljava/lang/Object;
    .param p2, "key2"    # Ljava/lang/Object;

    .line 433
    iget v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keyType:I

    if-lez v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    move-object p2, v0

    .line 434
    if-eq p1, p2, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    if-nez v0, :cond_0

    .line 313
    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceKeySet;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceKeySet;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    .line 315
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->keySet:Lorg/apache/commons/collections/map/AbstractHashedMap$KeySet;

    return-object v0
.end method

.method public mapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .line 289
    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceMapIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceMapIterator;-><init>(Lorg/apache/commons/collections/map/AbstractReferenceMap;)V

    return-object v0
.end method

.method protected purge()V
    .locals 2

    .line 358
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .line 359
    .local v0, "ref":Ljava/lang/ref/Reference;
    :goto_0
    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purge(Ljava/lang/ref/Reference;)V

    .line 361
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_0

    .line 363
    :cond_0
    return-void
.end method

.method protected purge(Ljava/lang/ref/Reference;)V
    .locals 6
    .param p1, "ref"    # Ljava/lang/ref/Reference;

    .line 374
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 375
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->hashIndex(II)I

    move-result v1

    .line 376
    .local v1, "index":I
    const/4 v2, 0x0

    .line 377
    .local v2, "previous":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    iget-object v3, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v3, v3, v1

    .line 378
    .local v3, "entry":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eqz v3, :cond_2

    .line 379
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;

    invoke-virtual {v4, p1}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceEntry;->purge(Ljava/lang/ref/Reference;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 380
    if-nez v2, :cond_0

    .line 381
    iget-object v4, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iget-object v5, v3, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aput-object v5, v4, v1

    goto :goto_1

    .line 383
    :cond_0
    iget-object v4, v3, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    iput-object v4, v2, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 385
    :goto_1
    iget v4, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->size:I

    .line 386
    return-void

    .line 388
    :cond_1
    move-object v2, v3

    .line 389
    iget-object v3, v3, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    goto :goto_0

    .line 392
    :cond_2
    return-void
.end method

.method protected purgeBeforeRead()V
    .locals 0

    .line 337
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purge()V

    .line 338
    return-void
.end method

.method protected purgeBeforeWrite()V
    .locals 0

    .line 346
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purge()V

    .line 347
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 248
    if-eqz p1, :cond_1

    .line 251
    if-eqz p2, :cond_0

    .line 255
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeBeforeWrite()V

    .line 256
    invoke-super {p0, p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null values not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "null keys not allowed"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 266
    if-nez p1, :cond_0

    .line 267
    const/4 v0, 0x0

    return-object v0

    .line 269
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeBeforeWrite()V

    .line 270
    invoke-super {p0, p1}, Lorg/apache/commons/collections/map/AbstractHashedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 179
    invoke-virtual {p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap;->purgeBeforeRead()V

    .line 180
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractHashedMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .line 324
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    if-nez v0, :cond_0

    .line 325
    new-instance v0, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceValues;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/map/AbstractReferenceMap$ReferenceValues;-><init>(Lorg/apache/commons/collections/map/AbstractHashedMap;)V

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    .line 327
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractReferenceMap;->values:Lorg/apache/commons/collections/map/AbstractHashedMap$Values;

    return-object v0
.end method
