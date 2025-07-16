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

    return-void
.end method

.method protected constructor <init>(Ljava/util/Collection;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->init()V

    .line 90
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 208
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object p1

    .line 209
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNodeBefore(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0

    .line 203
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addLast(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2

    const/4 v0, 0x1

    .line 217
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object p1

    .line 218
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 220
    invoke-virtual {p0, p1, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNodeBefore(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1

    .line 213
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public addFirst(Ljava/lang/Object;)Z
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNodeAfter(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method public addLast(Ljava/lang/Object;)Z
    .locals 1

    .line 302
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNodeBefore(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected addNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 1

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
    iget p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    .line 473
    iget p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    return-void
.end method

.method protected addNodeAfter(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .locals 0

    .line 456
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createNode(Ljava/lang/Object;)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object p2

    .line 457
    iget-object p1, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    return-void
.end method

.method protected addNodeBefore(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .locals 0

    .line 440
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createNode(Ljava/lang/Object;)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object p2

    .line 441
    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    return-void
.end method

.method public clear()V
    .locals 0

    .line 276
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeAllNodes()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .line 154
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    .line 158
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 159
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
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

    .line 425
    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createSubListIterator(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;)Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    .line 549
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createSubListListIterator(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method protected createSubListListIterator(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)Ljava/util/ListIterator;
    .locals 1

    .line 559
    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubListIterator;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubListIterator;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)V

    return-object v0
.end method

.method protected doReadObject(Ljava/io/ObjectInputStream;)V
    .locals 3
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

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 587
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected doWriteObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
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

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 573
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 331
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 334
    :cond_1
    check-cast p1, Ljava/util/List;

    .line 335
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 338
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 339
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 340
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 341
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 342
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_4

    if-nez v4, :cond_5

    goto :goto_0

    .line 343
    :cond_4
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_5
    return v2

    .line 346
    :cond_6
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    move v0, v2

    :goto_1
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2

    .line 281
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 282
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_0

    .line 285
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 283
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 2

    .line 289
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 290
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_0

    .line 293
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 291
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method protected getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    const-string v0, "Couldn\'t get the node: index ("

    if-ltz p1, :cond_6

    if-nez p2, :cond_1

    .line 515
    iget p2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 516
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ") is the size of the list."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 519
    :cond_1
    :goto_0
    iget p2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    if-gt p1, p2, :cond_5

    .line 526
    div-int/lit8 v0, p2, 0x2

    if-ge p1, v0, :cond_2

    .line 528
    iget-object p2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object p2, p2, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_4

    .line 530
    iget-object p2, p2, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 534
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    :goto_2
    if-le p2, p1, :cond_3

    .line 536
    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_3
    move-object p2, v0

    :cond_4
    return-object p2

    .line 520
    :cond_5
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ") greater than the size of the list ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ")."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 512
    :cond_6
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, ") less than zero."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public hashCode()I
    .locals 3

    .line 351
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    .line 352
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    mul-int/lit8 v1, v1, 0x1f

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 354
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    .line 133
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v2, :cond_1

    .line 134
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 133
    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method protected init()V
    .locals 1

    .line 100
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createHeaderNode()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

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
    .locals 0

    if-eq p1, p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
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

    .line 143
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    add-int/lit8 v0, v0, -0x1

    .line 144
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    :goto_0
    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v1, v2, :cond_1

    .line 145
    invoke-virtual {v1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
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

    .line 127
    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object p1

    .line 228
    invoke-virtual {p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 229
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    .line 234
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

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

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3

    .line 245
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 246
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected removeAllNodes()V
    .locals 1

    .line 493
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 494
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    const/4 v0, 0x0

    .line 495
    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    .line 496
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    return-void
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2

    .line 307
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 308
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_0

    .line 311
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 312
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    return-object v1

    .line 309
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2

    .line 317
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 318
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_0

    .line 321
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 322
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    return-object v1

    .line 319
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method protected removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 2

    .line 483
    iget-object v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v1, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 484
    iget-object v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object p1, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object p1, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 485
    iget p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    .line 486
    iget p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3

    .line 258
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 259
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 261
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 269
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object p1

    .line 270
    invoke-virtual {p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 271
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->updateNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 105
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1

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

    .line 174
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    if-ge v0, v1, :cond_0

    .line 175
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    .line 176
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v2, :cond_1

    .line 181
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    .line 180
    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_1
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList;->size:I

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    .line 185
    aput-object v0, p1, v1

    :cond_2
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 360
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[]"

    return-object v0

    .line 363
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "["

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 367
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 369
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_2

    const-string v2, "(this Collection)"

    .line 370
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 371
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v3, ", "

    .line 373
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    const-string v1, "]"

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .locals 0

    .line 403
    invoke-virtual {p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->setValue(Ljava/lang/Object;)V

    return-void
.end method
