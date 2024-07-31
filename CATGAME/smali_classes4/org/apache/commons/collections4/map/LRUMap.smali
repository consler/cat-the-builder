.class public Lorg/apache/commons/collections4/map/LRUMap;
.super Lorg/apache/commons/collections4/map/AbstractLinkedMap;
.source "LRUMap.java"

# interfaces
.implements Lorg/apache/commons/collections4/BoundedMap;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/map/AbstractLinkedMap<",
        "TK;TV;>;",
        "Lorg/apache/commons/collections4/BoundedMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_MAX_SIZE:I = 0x64

.field private static final serialVersionUID:J = -0x87eab066ef95b52L


# instance fields
.field private transient maxSize:I

.field private scanUntilRemovable:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 83
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    const/16 v0, 0x64

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IFZ)V

    .line 84
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .line 93
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IF)V

    .line 94
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "maxSize"    # I
    .param p2, "loadFactor"    # F

    .line 131
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IFZ)V

    .line 132
    return-void
.end method

.method public constructor <init>(IFZ)V
    .locals 0
    .param p1, "maxSize"    # I
    .param p2, "loadFactor"    # F
    .param p3, "scanUntilRemovable"    # Z

    .line 161
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    invoke-direct {p0, p1, p1, p2, p3}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IIFZ)V

    .line 162
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "maxSize"    # I
    .param p2, "initialSize"    # I

    .line 106
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IIF)V

    .line 107
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .param p1, "maxSize"    # I
    .param p2, "initialSize"    # I
    .param p3, "loadFactor"    # F

    .line 147
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IIFZ)V

    .line 148
    return-void
.end method

.method public constructor <init>(IIFZ)V
    .locals 2
    .param p1, "maxSize"    # I
    .param p2, "initialSize"    # I
    .param p3, "loadFactor"    # F
    .param p4, "scanUntilRemovable"    # Z

    .line 181
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;-><init>(IF)V

    .line 182
    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 185
    if-gt p2, p1, :cond_0

    .line 188
    iput p1, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    .line 189
    iput-boolean p4, p0, Lorg/apache/commons/collections4/map/LRUMap;->scanUntilRemovable:Z

    .line 190
    return-void

    .line 186
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LRUMap initial size must not be greather than max size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
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

    .line 118
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    const/high16 v0, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IFZ)V

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 202
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(Ljava/util/Map;Z)V

    .line 203
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 2
    .param p2, "scanUntilRemovable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;Z)V"
        }
    .end annotation

    .line 217
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IFZ)V

    .line 218
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LRUMap;->putAll(Ljava/util/Map;)V

    .line 219
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

    .line 503
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 504
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LRUMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 505
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

    .line 491
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 492
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LRUMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 493
    return-void
.end method


# virtual methods
.method protected addMapping(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 14
    .param p1, "hashIndex"    # I
    .param p2, "hashCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITK;TV;)V"
        }
    .end annotation

    .line 321
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    .local p3, "key":Ljava/lang/Object;, "TK;"
    .local p4, "value":Ljava/lang/Object;, "TV;"
    move-object v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LRUMap;->isFull()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 322
    iget-object v0, v6, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 323
    .local v0, "reuse":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<TK;TV;>;"
    const/4 v1, 0x0

    .line 324
    .local v1, "removeLRUEntry":Z
    iget-boolean v2, v6, Lorg/apache/commons/collections4/map/LRUMap;->scanUntilRemovable:Z

    const-string v3, " This should not occur if your keys are immutable, and you have used synchronization properly."

    const-string v4, " maxSize="

    const-string v5, " size="

    const-string v9, " value="

    const-string v10, " key="

    const-string v11, " header.before="

    if-eqz v2, :cond_3

    .line 325
    :goto_0
    iget-object v2, v6, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/LRUMap;->removeLRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    const/4 v1, 0x1

    .line 328
    goto :goto_1

    .line 330
    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    goto :goto_0

    .line 332
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    move-object v12, v0

    move v13, v1

    goto :goto_2

    .line 333
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Entry.after=null, header.after="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v6, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v13, v13, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v6, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v11, v11, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v6, Lorg/apache/commons/collections4/map/LRUMap;->size:I

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v6, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 339
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/LRUMap;->removeLRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)Z

    move-result v1

    move-object v12, v0

    move v13, v1

    .line 342
    .end local v0    # "reuse":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<TK;TV;>;"
    .end local v1    # "removeLRUEntry":Z
    .local v12, "reuse":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<TK;TV;>;"
    .local v13, "removeLRUEntry":Z
    :goto_2
    if-eqz v13, :cond_5

    .line 343
    if-eqz v12, :cond_4

    .line 349
    move-object v0, p0

    move-object v1, v12

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/collections4/map/LRUMap;->reuseMapping(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 344
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reuse=null, header.after="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lorg/apache/commons/collections4/map/LRUMap;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_5
    invoke-super/range {p0 .. p4}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 353
    .end local v12    # "reuse":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<TK;TV;>;"
    .end local v13    # "removeLRUEntry":Z
    :goto_3
    goto :goto_4

    .line 354
    :cond_6
    invoke-super/range {p0 .. p4}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    .line 356
    :goto_4
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 66
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LRUMap;->clone()Lorg/apache/commons/collections4/map/LRUMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 1

    .line 66
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LRUMap;->clone()Lorg/apache/commons/collections4/map/LRUMap;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/commons/collections4/map/LRUMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/LRUMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 481
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/LRUMap;

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

    .line 528
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    .line 529
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 530
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

    .line 515
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 516
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 517
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/map/LRUMap;->get(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "updateToMRU"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)TV;"
        }
    .end annotation

    .line 250
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LRUMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    move-result-object v0

    .line 251
    .local v0, "entry":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 252
    const/4 v1, 0x0

    return-object v1

    .line 254
    :cond_0
    if-eqz p2, :cond_1

    .line 255
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/LRUMap;->moveToMRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)V

    .line 257
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public isFull()Z
    .locals 2

    .line 449
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->size:I

    iget v1, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

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

    .line 470
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->scanUntilRemovable:Z

    return v0
.end method

.method public maxSize()I
    .locals 1

    .line 459
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    iget v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    return v0
.end method

.method protected moveToMRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 269
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    .local p1, "entry":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<TK;TV;>;"
    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v1, :cond_1

    .line 270
    iget v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->modCount:I

    .line 272
    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v1, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 277
    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v1, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 279
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 280
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 281
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object p1, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 282
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object p1, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    goto :goto_0

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entry.before is null. This should not occur if your keys are immutable, and you have used synchronization properly."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eq p1, v0, :cond_2

    .line 287
    :goto_0
    return-void

    .line 284
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t move header to MRU This should not occur if your keys are immutable, and you have used synchronization properly."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected removeLRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 438
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    .local p1, "entry":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method

.method protected reuseMapping(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 16
    .param p2, "hashIndex"    # I
    .param p3, "hashCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;IITK;TV;)V"
        }
    .end annotation

    .line 375
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    .local p1, "entry":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<TK;TV;>;"
    .local p4, "key":Ljava/lang/Object;, "TK;"
    .local p5, "value":Ljava/lang/Object;, "TV;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-string v5, " This should not occur if your keys are immutable, and you have used synchronization properly."

    const-string v6, " maxSize="

    const-string v7, " size="

    const-string v8, " value="

    const-string v9, " key="

    const/4 v10, 0x1

    :try_start_0
    iget v0, v2, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->hashCode:I

    iget-object v11, v1, Lorg/apache/commons/collections4/map/LRUMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v11, v11

    invoke-virtual {v1, v0, v11}, Lorg/apache/commons/collections4/map/LRUMap;->hashIndex(II)I

    move-result v0

    .line 376
    .local v0, "removeIndex":I
    iget-object v11, v1, Lorg/apache/commons/collections4/map/LRUMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 377
    .local v11, "tmp":[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    aget-object v12, v11, v0

    .line 378
    .local v12, "loop":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    const/4 v13, 0x0

    .line 379
    .local v13, "previous":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    :goto_0
    if-eq v12, v2, :cond_0

    if-eqz v12, :cond_0

    .line 380
    move-object v13, v12

    .line 381
    iget-object v14, v12, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-object v12, v14

    goto :goto_0

    .line 383
    :cond_0
    if-eqz v12, :cond_1

    .line 391
    iget v14, v1, Lorg/apache/commons/collections4/map/LRUMap;->modCount:I

    add-int/2addr v14, v10

    iput v14, v1, Lorg/apache/commons/collections4/map/LRUMap;->modCount:I

    .line 392
    invoke-virtual {v1, v2, v0, v13}, Lorg/apache/commons/collections4/map/LRUMap;->removeEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    .line 393
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/LRUMap;->reuseEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;IILjava/lang/Object;Ljava/lang/Object;)V

    .line 394
    invoke-virtual/range {p0 .. p2}, Lorg/apache/commons/collections4/map/LRUMap;->addEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;I)V

    .line 400
    .end local v0    # "removeIndex":I
    .end local v11    # "tmp":[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    .end local v12    # "loop":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    .end local v13    # "previous":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    nop

    .line 401
    return-void

    .line 384
    .restart local v0    # "removeIndex":I
    .restart local v11    # "tmp":[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    .restart local v12    # "loop":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    .restart local v13    # "previous":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    :cond_1
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Entry.next=null, data[removeIndex]="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lorg/apache/commons/collections4/map/LRUMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v10, v10, v0

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " previous="

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lorg/apache/commons/collections4/map/LRUMap;->size:I

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v14, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "entry":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<TK;TV;>;"
    .end local p2    # "hashIndex":I
    .end local p3    # "hashCode":I
    .end local p4    # "key":Ljava/lang/Object;, "TK;"
    .end local p5    # "value":Ljava/lang/Object;, "TV;"
    throw v14
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    .end local v0    # "removeIndex":I
    .end local v11    # "tmp":[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    .end local v12    # "loop":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    .end local v13    # "previous":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    .restart local p1    # "entry":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<TK;TV;>;"
    .restart local p2    # "hashIndex":I
    .restart local p3    # "hashCode":I
    .restart local p4    # "key":Ljava/lang/Object;, "TK;"
    .restart local p5    # "value":Ljava/lang/Object;, "TV;"
    :catch_0
    move-exception v0

    .line 396
    .local v0, "ex":Ljava/lang/NullPointerException;
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NPE, entry="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " entryIsHeader="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-ne v2, v12, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    :goto_1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lorg/apache/commons/collections4/map/LRUMap;->size:I

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method protected updateEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<",
            "TK;TV;>;TV;)V"
        }
    .end annotation

    .line 300
    .local p0, "this":Lorg/apache/commons/collections4/map/LRUMap;, "Lorg/apache/commons/collections4/map/LRUMap<TK;TV;>;"
    .local p1, "entry":Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;, "Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry<TK;TV;>;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/LRUMap;->moveToMRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)V

    .line 301
    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    return-void
.end method
