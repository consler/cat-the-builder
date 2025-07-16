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

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x0

    const/16 v2, 0x64

    .line 83
    invoke-direct {p0, v2, v0, v1}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IFZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    .line 93
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IFZ)V

    return-void
.end method

.method public constructor <init>(IFZ)V
    .locals 0

    .line 161
    invoke-direct {p0, p1, p1, p2, p3}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IIFZ)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    .line 106
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IIF)V

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IIFZ)V

    return-void
.end method

.method public constructor <init>(IIFZ)V
    .locals 0

    .line 181
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;-><init>(IF)V

    const/4 p3, 0x1

    if-lt p1, p3, :cond_1

    if-gt p2, p1, :cond_0

    .line 188
    iput p1, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    .line 189
    iput-boolean p4, p0, Lorg/apache/commons/collections4/map/LRUMap;->scanUntilRemovable:Z

    return-void

    .line 186
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "LRUMap initial size must not be greather than max size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 183
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "LRUMap max size must be greater than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(IZ)V
    .locals 1

    const/high16 v0, 0x3f400000    # 0.75f

    .line 118
    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IFZ)V

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

    const/4 v0, 0x0

    .line 202
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(Ljava/util/Map;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;Z)V"
        }
    .end annotation

    .line 217
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1, p2}, Lorg/apache/commons/collections4/map/LRUMap;-><init>(IFZ)V

    .line 218
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LRUMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 503
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 504
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LRUMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 492
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LRUMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method protected addMapping(IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITK;TV;)V"
        }
    .end annotation

    move-object v6, p0

    move-object v4, p3

    move-object/from16 v5, p4

    .line 321
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LRUMap;->isFull()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 322
    iget-object v0, v6, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 324
    iget-boolean v1, v6, Lorg/apache/commons/collections4/map/LRUMap;->scanUntilRemovable:Z

    const-string v2, " This should not occur if your keys are immutable, and you have used synchronization properly."

    const-string v3, " maxSize="

    const-string v7, " size="

    const-string v8, " value="

    const-string v9, " key="

    const-string v10, " header.before="

    if-eqz v1, :cond_3

    .line 325
    :goto_0
    iget-object v1, v6, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/LRUMap;->removeLRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    .line 330
    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 333
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v11, "Entry.after=null, header.after="

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v6, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v11, v11, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, v6, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v10, v10, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v6, Lorg/apache/commons/collections4/map/LRUMap;->size:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v6, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/LRUMap;->removeLRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)Z

    move-result v1

    :goto_2
    move-object v11, v0

    if-eqz v1, :cond_5

    if-eqz v11, :cond_4

    move-object v0, p0

    move-object v1, v11

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    .line 349
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/collections4/map/LRUMap;->reuseMapping(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 344
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v11, "reuse=null, header.after="

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v6, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v11, v11, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v10, v6, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v10, v10, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v6, Lorg/apache/commons/collections4/map/LRUMap;->size:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v6, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 351
    :cond_5
    invoke-super/range {p0 .. p4}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 354
    :cond_6
    invoke-super/range {p0 .. p4}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->addMapping(IILjava/lang/Object;Ljava/lang/Object;)V

    :goto_3
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
    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/LRUMap;->clone()Lorg/apache/commons/collections4/map/LRUMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;
    .locals 1

    .line 66
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
    invoke-super {p0}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->clone()Lorg/apache/commons/collections4/map/AbstractHashedMap;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/collections4/map/LRUMap;

    return-object v0
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 528
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    .line 529
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 515
    iget v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 516
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 233
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/map/LRUMap;->get(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z)TV;"
        }
    .end annotation

    .line 250
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LRUMap;->getEntry(Ljava/lang/Object;)Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p2, :cond_1

    .line 255
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/map/LRUMap;->moveToMRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)V

    .line 257
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public isFull()Z
    .locals 2

    .line 449
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
    iget-boolean v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->scanUntilRemovable:Z

    return v0
.end method

.method public maxSize()I
    .locals 1

    .line 459
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
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Entry.before is null. This should not occur if your keys are immutable, and you have used synchronization properly."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 283
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eq p1, v0, :cond_2

    :goto_0
    return-void

    .line 284
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Can\'t move header to MRU This should not occur if your keys are immutable, and you have used synchronization properly."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected removeLRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method protected reuseMapping(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;IILjava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;IITK;TV;)V"
        }
    .end annotation

    const-string v0, " This should not occur if your keys are immutable, and you have used synchronization properly."

    const-string v1, " maxSize="

    const-string v2, " size="

    const-string v3, " value="

    const-string v4, " key="

    const/4 v5, 0x1

    .line 375
    :try_start_0
    iget v6, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->hashCode:I

    iget-object v7, p0, Lorg/apache/commons/collections4/map/LRUMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v7, v7

    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/collections4/map/LRUMap;->hashIndex(II)I

    move-result v6

    .line 376
    iget-object v7, p0, Lorg/apache/commons/collections4/map/LRUMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    .line 377
    aget-object v7, v7, v6

    const/4 v8, 0x0

    :goto_0
    if-eq v7, p1, :cond_0

    if-eqz v7, :cond_0

    .line 381
    iget-object v8, v7, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->next:Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    move-object v9, v8

    move-object v8, v7

    move-object v7, v9

    goto :goto_0

    :cond_0
    if-eqz v7, :cond_1

    .line 391
    iget v7, p0, Lorg/apache/commons/collections4/map/LRUMap;->modCount:I

    add-int/2addr v7, v5

    iput v7, p0, Lorg/apache/commons/collections4/map/LRUMap;->modCount:I

    .line 392
    invoke-virtual {p0, p1, v6, v8}, Lorg/apache/commons/collections4/map/LRUMap;->removeEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;ILorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;)V

    .line 393
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/collections4/map/LRUMap;->reuseEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;IILjava/lang/Object;Ljava/lang/Object;)V

    .line 394
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections4/map/LRUMap;->addEntry(Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;I)V

    return-void

    .line 384
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Entry.next=null, data[removeIndex]="

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v7, p0, Lorg/apache/commons/collections4/map/LRUMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v6, v7, v6

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v6, " previous="

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v6, p0, Lorg/apache/commons/collections4/map/LRUMap;->size:I

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget v6, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :catch_0
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v6, "NPE, entry="

    invoke-direct {p3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v6, " entryIsHeader="

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v6, p0, Lorg/apache/commons/collections4/map/LRUMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-ne p1, v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Lorg/apache/commons/collections4/map/LRUMap;->size:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Lorg/apache/commons/collections4/map/LRUMap;->maxSize:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
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
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/map/LRUMap;->moveToMRU(Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;)V

    .line 301
    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
