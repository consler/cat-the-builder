.class public abstract Lorg/apache/commons/collections/list/AbstractLinkedList;
.super Ljava/lang/Object;
.source "AbstractLinkedList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;,
        Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubListIterator;,
        Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;,
        Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    }
.end annotation


# instance fields
.field protected transient header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

.field protected transient modCount:I

.field protected transient size:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method protected constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .param p1, "coll"    # Ljava/util/Collection;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->init()V

    .line 90
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addAll(Ljava/util/Collection;)Z

    .line 91
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 208
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 209
    .local v0, "node":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNodeBefore(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 210
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 203
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addLast(Ljava/lang/Object;)Z

    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "coll"    # Ljava/util/Collection;

    .line 217
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v1

    .line 218
    .local v1, "node":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "itr":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 219
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 220
    .local v3, "value":Ljava/lang/Object;
    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNodeBefore(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 221
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 222
    .end local v2    # "itr":Ljava/util/Iterator;
    :cond_0
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "coll"    # Ljava/util/Collection;

    .line 213
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNodeAfter(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 298
    const/4 v0, 0x1

    return v0
.end method

.method public addLast(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 302
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNodeBefore(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method protected addNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 1
    .param p1, "nodeToInsert"    # Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .param p2, "insertBeforeNode"    # Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 468
    iput-object p2, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 469
    iget-object v0, p2, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 470
    iget-object v0, p2, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object p1, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 471
    iput-object p1, p2, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 472
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    .line 473
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    .line 474
    return-void
.end method

.method protected addNodeAfter(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .locals 2
    .param p1, "node"    # Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .param p2, "value"    # Ljava/lang/Object;

    .line 456
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createNode(Ljava/lang/Object;)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 457
    .local v0, "newNode":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    iget-object v1, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 458
    return-void
.end method

.method protected addNodeBefore(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .locals 1
    .param p1, "node"    # Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .param p2, "value"    # Ljava/lang/Object;

    .line 440
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createNode(Ljava/lang/Object;)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 441
    .local v0, "newNode":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 442
    return-void
.end method

.method public clear()V
    .locals 0

    .line 276
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeAllNodes()V

    .line 277
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 154
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .param p1, "coll"    # Ljava/util/Collection;

    .line 158
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 159
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    const/4 v1, 0x0

    return v1

    .line 164
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method protected createHeaderNode()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .locals 1

    .line 414
    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-direct {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;-><init>()V

    return-object v0
.end method

.method protected createNode(Ljava/lang/Object;)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 425
    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createSubListIterator(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;)Ljava/util/Iterator;
    .locals 1
    .param p1, "subList"    # Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;

    .line 549
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createSubListListIterator(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected createSubListListIterator(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "subList"    # Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;
    .param p2, "fromIndex"    # I

    .line 559
    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubListIterator;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubListIterator;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)V

    return-object v0
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 584
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->init()V

    .line 585
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 586
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 587
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->add(Ljava/lang/Object;)Z

    .line 586
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 589
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 571
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 572
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "itr":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 575
    .end local v0    # "itr":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 328
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 329
    return v0

    .line 331
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 332
    return v2

    .line 334
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 335
    .local v1, "other":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 336
    return v2

    .line 338
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 339
    .local v3, "it1":Ljava/util/ListIterator;
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 340
    .local v4, "it2":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 341
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 342
    .local v5, "o1":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 343
    .local v6, "o2":Ljava/lang/Object;
    if-nez v5, :cond_3

    if-nez v6, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 344
    :cond_4
    return v2

    .line 345
    .end local v5    # "o1":Ljava/lang/Object;
    .end local v6    # "o2":Ljava/lang/Object;
    :cond_5
    :goto_1
    goto :goto_0

    .line 346
    :cond_6
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    move v0, v2

    :goto_2
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .line 113
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 114
    .local v0, "node":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2

    .line 281
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 282
    .local v0, "node":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_0

    .line 285
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 283
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public getLast()Ljava/lang/Object;
    .locals 2

    .line 289
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 290
    .local v0, "node":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_0

    .line 293
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 291
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method protected getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .locals 3
    .param p1, "index"    # I
    .param p2, "endMarkerAllowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 511
    const-string v0, "Couldn\'t get the node: index ("

    if-ltz p1, :cond_6

    .line 515
    if-nez p2, :cond_1

    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 516
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ") is the size of the list."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 519
    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    if-gt p1, v1, :cond_5

    .line 526
    div-int/lit8 v1, v1, 0x2

    if-ge p1, v1, :cond_3

    .line 528
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 529
    .local v0, "node":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    const/4 v1, 0x0

    .local v1, "currentIndex":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 530
    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 529
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "currentIndex":I
    :cond_2
    goto :goto_3

    .line 534
    .end local v0    # "node":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 535
    .restart local v0    # "node":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    .restart local v1    # "currentIndex":I
    :goto_2
    if-le v1, p1, :cond_4

    .line 536
    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 535
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 539
    .end local v1    # "currentIndex":I
    :cond_4
    :goto_3
    return-object v0

    .line 520
    .end local v0    # "node":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    :cond_5
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ") greater than the size of the "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "list ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ")."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 512
    :cond_6
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ") less than zero."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hashCode()I
    .locals 5

    .line 350
    const/4 v0, 0x1

    .line 351
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 352
    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 354
    .local v2, "obj":Ljava/lang/Object;
    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int v0, v3, v4

    .line 355
    .end local v2    # "obj":Ljava/lang/Object;
    goto :goto_0

    .line 356
    :cond_1
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .local v1, "node":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v1, v2, :cond_1

    .line 134
    invoke-virtual {v1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 135
    return v0

    .line 137
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 133
    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    goto :goto_0

    .line 139
    .end local v1    # "node":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method protected init()V
    .locals 1

    .line 100
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createHeaderNode()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 101
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 109
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value1"    # Ljava/lang/Object;
    .param p2, "value2"    # Ljava/lang/Object;

    .line 391
    if-eq p1, p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 119
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 143
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    add-int/lit8 v0, v0, -0x1

    .line 144
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .local v1, "node":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v1, v2, :cond_1

    .line 145
    invoke-virtual {v1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    return v0

    .line 148
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 144
    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    goto :goto_0

    .line 150
    .end local v1    # "node":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2

    .line 123
    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "fromIndex"    # I

    .line 127
    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .line 227
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 228
    .local v0, "node":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 229
    .local v1, "oldValue":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 230
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .local v0, "node":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_1

    .line 235
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 237
    const/4 v1, 0x1

    return v1

    .line 234
    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    goto :goto_0

    .line 240
    .end local v0    # "node":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .param p1, "coll"    # Ljava/util/Collection;

    .line 244
    const/4 v0, 0x0

    .line 245
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 246
    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 249
    const/4 v0, 0x1

    goto :goto_0

    .line 252
    :cond_1
    return v0
.end method

.method protected removeAllNodes()V
    .locals 1

    .line 493
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 494
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 495
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    .line 496
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    .line 497
    return-void
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2

    .line 307
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 308
    .local v0, "node":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_0

    .line 311
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 312
    .local v1, "oldValue":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 313
    return-object v1

    .line 309
    .end local v1    # "oldValue":Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2

    .line 317
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 318
    .local v0, "node":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_0

    .line 321
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 322
    .local v1, "oldValue":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 323
    return-object v1

    .line 319
    .end local v1    # "oldValue":Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method protected removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 2
    .param p1, "node"    # Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 483
    iget-object v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v1, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 484
    iget-object v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v1, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 485
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    .line 486
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    .line 487
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .param p1, "coll"    # Ljava/util/Collection;

    .line 257
    const/4 v0, 0x0

    .line 258
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 259
    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 262
    const/4 v0, 0x1

    goto :goto_0

    .line 265
    :cond_1
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 270
    .local v0, "node":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 271
    .local v1, "oldValue":Ljava/lang/Object;
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->updateNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 272
    return-object v1
.end method

.method public size()I
    .locals 1

    .line 105
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndexInclusive"    # I
    .param p2, "toIndexExclusive"    # I

    .line 198
    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList;II)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 169
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p1, "array"    # [Ljava/lang/Object;

    .line 174
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    if-ge v0, v1, :cond_0

    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 176
    .local v0, "componentType":Ljava/lang/Class;
    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object p1, v1

    check-cast p1, [Ljava/lang/Object;

    .line 179
    .end local v0    # "componentType":Ljava/lang/Class;
    :cond_0
    const/4 v0, 0x0

    .line 180
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .local v1, "node":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v1, v2, :cond_1

    .line 181
    invoke-virtual {v1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v0

    .line 180
    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "node":Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    :cond_1
    array-length v1, p1

    iget v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    if-le v1, v2, :cond_2

    .line 185
    const/4 v1, 0x0

    aput-object v1, p1, v2

    .line 187
    :cond_2
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 360
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 361
    const-string v0, "[]"

    return-object v0

    .line 363
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 364
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 367
    .local v1, "it":Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 368
    .local v2, "hasNext":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 369
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 370
    .local v3, "value":Ljava/lang/Object;
    if-ne v3, p0, :cond_1

    const-string v4, "(this Collection)"

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 371
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 372
    if-eqz v2, :cond_2

    .line 373
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 376
    :cond_3
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected updateNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .locals 0
    .param p1, "node"    # Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .param p2, "value"    # Ljava/lang/Object;

    .line 403
    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->setValue(Ljava/lang/Object;)V

    .line 404
    return-void
.end method
