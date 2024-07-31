.class public Lorg/apache/commons/collections/map/LRUMap;
.super Lorg/apache/commons/collections/map/AbstractLinkedMap;
.source "LRUMap.java"

# interfaces
.implements Lorg/apache/commons/collections/BoundedMap;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field protected static final DEFAULT_MAX_SIZE:I = 0x64

.field private static final serialVersionUID:J = -0x87eab066ef95b52L


# instance fields
.field private transient maxSize:I

.field private scanUntilRemovable:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 76
    const/16 v0, 0x64

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/collections/map/LRUMap;-><init>(IFZ)V

    .line 77
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .line 86
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/map/LRUMap;-><init>(IF)V

    .line 87
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "maxSize"    # I
    .param p2, "loadFactor"    # F

    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections/map/LRUMap;-><init>(IFZ)V

    .line 112
    return-void
.end method

.method public constructor <init>(IFZ)V
    .locals 2
    .param p1, "maxSize"    # I
    .param p2, "loadFactor"    # F
    .param p3, "scanUntilRemovable"    # Z

    .line 126
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/16 v1, 0x10

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    invoke-direct {p0, v1, p2}, Lorg/apache/commons/collections/map/AbstractLinkedMap;-><init>(IF)V

    .line 127
    if-lt p1, v0, :cond_1

    .line 130
    iput p1, p0, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    .line 131
    iput-boolean p3, p0, Lorg/apache/commons/collections/map/LRUMap;->scanUntilRemovable:Z

    .line 132
    return-void

    .line 128
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LRUMap max size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "maxSize"    # I
    .param p2, "scanUntilRemovable"    # Z

    .line 98
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/collections/map/LRUMap;-><init>(IFZ)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1, "map"    # Ljava/util/Map;

    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/map/LRUMap;-><init>(Ljava/util/Map;Z)V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 2
    .param p1, "map"    # Ljava/util/Map;
    .param p2, "scanUntilRemovable"    # Z

    .line 159
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/collections/map/LRUMap;-><init>(IFZ)V

    .line 160
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/LRUMap;->putAll(Ljava/util/Map;)V

    .line 161
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 411
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 412
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/LRUMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 413
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 404
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/LRUMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 405
    return-void
.end method


# virtual methods
.method protected addMapping(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 15
    .param p1, "hashIndex"    # I
    .param p2, "hashCode"    # I
    .param p3, "key"    # Ljava/lang/Object;
    .param p4, "value"    # Ljava/lang/Object;

    .line 237
    move-object v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual {p0}, Lorg/apache/commons/collections/map/LRUMap;->isFull()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 238
    iget-object v0, v6, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 239
    .local v0, "reuse":Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    const/4 v1, 0x0

    .line 240
    .local v1, "removeLRUEntry":Z
    iget-boolean v2, v6, Lorg/apache/commons/collections/map/LRUMap;->scanUntilRemovable:Z

    const-string v3, " If so, then please report this to commons-dev@jakarta.apache.org as a bug."

    const-string v4, " Please check that your keys are immutable, and that you have used synchronization properly."

    const-string v5, " maxSize="

    const-string v9, " size="

    const-string v10, " value="

    const-string v11, " key="

    const-string v12, " header.before"

    if-eqz v2, :cond_3

    .line 241
    :goto_0
    iget-object v2, v6, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/LRUMap;->removeLRU(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 243
    const/4 v1, 0x1

    .line 244
    goto :goto_1

    .line 246
    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    goto :goto_0

    .line 248
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    move-object v13, v0

    move v14, v1

    goto :goto_2

    .line 249
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuffer;

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    const-string v14, "Entry.after=null, header.after"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v14, v6, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v14, v14, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v12, v6, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v12, v12, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v9, v6, Lorg/apache/commons/collections/map/LRUMap;->size:I

    invoke-virtual {v13, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v5, v6, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    invoke-virtual {v13, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 256
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/LRUMap;->removeLRU(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;)Z

    move-result v1

    move-object v13, v0

    move v14, v1

    .line 259
    .end local v0    # "reuse":Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    .end local v1    # "removeLRUEntry":Z
    .local v13, "reuse":Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    .local v14, "removeLRUEntry":Z
    :goto_2
    if-eqz v14, :cond_5

    .line 260
    if-eqz v13, :cond_4

    .line 267
    move-object v0, p0

    move-object v1, v13

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/collections/map/LRUMap;->reuseMapping(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 261
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "reuse=null, header.after="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v6, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v6, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, v2, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, v6, Lorg/apache/commons/collections/map/LRUMap;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, v6, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_5
    invoke-super/range {p0 .. p4}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 271
    .end local v13    # "reuse":Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    .end local v14    # "removeLRUEntry":Z
    :goto_3
    goto :goto_4

    .line 272
    :cond_6
    invoke-super/range {p0 .. p4}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 274
    :goto_4
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1

    .line 396
    invoke-super {p0}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 427
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    .line 428
    invoke-super {p0, p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 429
    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    iget v0, p0, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 420
    invoke-super {p0, p1}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 421
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 174
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/LRUMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 175
    .local v0, "entry":Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    if-nez v0, :cond_0

    .line 176
    const/4 v1, 0x0

    return-object v1

    .line 178
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/LRUMap;->moveToMRU(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;)V

    .line 179
    invoke-virtual {v0}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isFull()Z
    .locals 2

    .line 366
    iget v0, p0, Lorg/apache/commons/collections/map/LRUMap;->size:I

    iget v1, p0, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScanUntilRemovable()Z
    .locals 1

    .line 386
    iget-boolean v0, p0, Lorg/apache/commons/collections/map/LRUMap;->scanUntilRemovable:Z

    return v0
.end method

.method public maxSize()I
    .locals 1

    .line 375
    iget v0, p0, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    return v0
.end method

.method protected moveToMRU(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;)V
    .locals 2
    .param p1, "entry"    # Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 191
    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v1, :cond_0

    .line 192
    iget v0, p0, Lorg/apache/commons/collections/map/LRUMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/map/LRUMap;->modCount:I

    .line 194
    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 195
    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 197
    iget-object v0, p0, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 198
    iget-object v0, p0, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 199
    iget-object v0, p0, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object p1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 200
    iget-object v0, p0, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object p1, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-eq p1, v0, :cond_1

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t move header to MRU (please report this to commons-dev@jakarta.apache.org)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected removeLRU(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;)Z
    .locals 1
    .param p1, "entry"    # Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method protected reuseMapping(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 17
    .param p1, "entry"    # Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    .param p2, "hashIndex"    # I
    .param p3, "hashCode"    # I
    .param p4, "key"    # Ljava/lang/Object;
    .param p5, "value"    # Ljava/lang/Object;

    .line 292
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-string v5, " If so, then please report this to commons-dev@jakarta.apache.org as a bug."

    const-string v6, " Please check that your keys are immutable, and that you have used synchronization properly."

    const-string v7, " maxSize="

    const-string v8, " size="

    const-string v9, " value="

    const-string v10, " key="

    const/4 v11, 0x1

    :try_start_0
    iget v0, v2, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->hashCode:I

    iget-object v12, v1, Lorg/apache/commons/collections/map/LRUMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    array-length v12, v12

    invoke-virtual {v1, v0, v12}, Lorg/apache/commons/collections/map/LRUMap;->hashIndex(II)I

    move-result v0

    .line 293
    .local v0, "removeIndex":I
    iget-object v12, v1, Lorg/apache/commons/collections/map/LRUMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    .line 294
    .local v12, "tmp":[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    aget-object v13, v12, v0

    .line 295
    .local v13, "loop":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    const/4 v14, 0x0

    .line 296
    .local v14, "previous":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :goto_0
    if-eq v13, v2, :cond_0

    if-eqz v13, :cond_0

    .line 297
    move-object v14, v13

    .line 298
    iget-object v15, v13, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    move-object v13, v15

    goto :goto_0

    .line 300
    :cond_0
    if-eqz v13, :cond_1

    .line 309
    iget v15, v1, Lorg/apache/commons/collections/map/LRUMap;->modCount:I

    add-int/2addr v15, v11

    iput v15, v1, Lorg/apache/commons/collections/map/LRUMap;->modCount:I

    .line 310
    invoke-virtual {v1, v2, v0, v14}, Lorg/apache/commons/collections/map/LRUMap;->removeEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;)V

    .line 311
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections/map/LRUMap;->reuseEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;IILjava/lang/Object;Ljava/lang/Object;)V

    .line 312
    invoke-virtual/range {p0 .. p2}, Lorg/apache/commons/collections/map/LRUMap;->addEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;I)V

    .line 319
    .end local v0    # "removeIndex":I
    .end local v12    # "tmp":[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .end local v13    # "loop":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .end local v14    # "previous":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    nop

    .line 320
    return-void

    .line 301
    .restart local v0    # "removeIndex":I
    .restart local v12    # "tmp":[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .restart local v13    # "loop":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .restart local v14    # "previous":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    :cond_1
    new-instance v15, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v16, v12

    .end local v12    # "tmp":[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .local v16, "tmp":[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    const-string v12, "Entry.next=null, data[removeIndex]="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v12, v1, Lorg/apache/commons/collections/map/LRUMap;->data:[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;

    aget-object v12, v12, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v12, " previous="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v12, v1, Lorg/apache/commons/collections/map/LRUMap;->size:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v12, v1, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v15, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "entry":Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    .end local p2    # "hashIndex":I
    .end local p3    # "hashCode":I
    .end local p4    # "key":Ljava/lang/Object;
    .end local p5    # "value":Ljava/lang/Object;
    throw v15
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v0    # "removeIndex":I
    .end local v13    # "loop":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .end local v14    # "previous":Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .end local v16    # "tmp":[Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .restart local p1    # "entry":Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    .restart local p2    # "hashIndex":I
    .restart local p3    # "hashCode":I
    .restart local p4    # "key":Ljava/lang/Object;
    .restart local p5    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 314
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "NPE, entry="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v13, " entryIsHeader="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v13, v1, Lorg/apache/commons/collections/map/LRUMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-ne v2, v13, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v8, v1, Lorg/apache/commons/collections/map/LRUMap;->size:I

    invoke-virtual {v12, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v7, v1, Lorg/apache/commons/collections/map/LRUMap;->maxSize:I

    invoke-virtual {v12, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v11, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method protected updateEntry(Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V
    .locals 1
    .param p1, "entry"    # Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 217
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/map/LRUMap;->moveToMRU(Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;)V

    .line 218
    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/map/AbstractHashedMap$HashEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void
.end method
