.class public abstract Lorg/apache/commons/collections4/list/AbstractLinkedList;
.super Ljava/lang/Object;
.source "AbstractLinkedList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;,
        Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubListIterator;,
        Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;,
        Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TE;>;"
    }
.end annotation


# instance fields
.field transient header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field transient modCount:I

.field transient size:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 77
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method protected constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->init()V

    .line 88
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addAll(Ljava/util/Collection;)Z

    .line 89
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 226
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 227
    .local v0, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addNodeBefore(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 228
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 220
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addLast(Ljava/lang/Object;)Z

    .line 221
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 237
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p2, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v1

    .line 238
    .local v1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 239
    .local v3, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addNodeBefore(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 240
    .end local v3    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 241
    :cond_0
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 232
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addFirst(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 343
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addNodeAfter(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 344
    const/4 v0, 0x1

    return v0
.end method

.method public addLast(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 348
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addNodeBefore(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 349
    const/4 v0, 0x1

    return v0
.end method

.method protected addNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 517
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "nodeToInsert":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    .local p2, "insertBeforeNode":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iput-object p2, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 518
    iget-object v0, p2, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object v0, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 519
    iget-object v0, p2, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object p1, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 520
    iput-object p1, p2, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 521
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    .line 522
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    .line 523
    return-void
.end method

.method protected addNodeAfter(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;TE;)V"
        }
    .end annotation

    .line 505
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->createNode(Ljava/lang/Object;)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 506
    .local v0, "newNode":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 507
    return-void
.end method

.method protected addNodeBefore(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;TE;)V"
        }
    .end annotation

    .line 489
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->createNode(Ljava/lang/Object;)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 490
    .local v0, "newNode":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 491
    return-void
.end method

.method public clear()V
    .locals 0

    .line 321
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeAllNodes()V

    .line 322
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 164
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->indexOf(Ljava/lang/Object;)I

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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 169
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 170
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 171
    const/4 v0, 0x0

    return v0

    .line 173
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 174
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method protected createHeaderNode()Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;"
        }
    .end annotation

    .line 462
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    invoke-direct {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;-><init>()V

    return-object v0
.end method

.method protected createNode(Ljava/lang/Object;)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;"
        }
    .end annotation

    .line 474
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    new-instance v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method protected createSubListIterator(Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<",
            "TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 600
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "subList":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->createSubListListIterator(Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected createSubListListIterator(Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;I)Ljava/util/ListIterator;
    .locals 1
    .param p2, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<",
            "TE;>;I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 611
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "subList":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubListIterator;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubListIterator;-><init>(Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;I)V

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

    .line 644
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->init()V

    .line 645
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 646
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 647
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->add(Ljava/lang/Object;)Z

    .line 646
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 649
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

    .line 626
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 627
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 628
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 629
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 630
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .line 375
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 376
    return v0

    .line 378
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 379
    return v2

    .line 381
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 382
    .local v1, "other":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 383
    return v2

    .line 385
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    .line 386
    .local v3, "it1":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 387
    .local v4, "it2":Ljava/util/ListIterator;, "Ljava/util/ListIterator<*>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 388
    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 389
    .local v5, "o1":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 390
    .local v6, "o2":Ljava/lang/Object;
    if-nez v5, :cond_3

    if-nez v6, :cond_4

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 391
    :cond_4
    return v2

    .line 393
    .end local v5    # "o1":Ljava/lang/Object;
    .end local v6    # "o2":Ljava/lang/Object;
    :cond_5
    :goto_1
    goto :goto_0

    .line 394
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 116
    .local v0, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 328
    .local v0, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_0

    .line 331
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 329
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public getLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 335
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 336
    .local v0, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_0

    .line 339
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 337
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method protected getNode(IZ)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    .locals 3
    .param p1, "index"    # I
    .param p2, "endMarkerAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 561
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    const-string v0, "Couldn\'t get the node: index ("

    if-ltz p1, :cond_6

    .line 565
    if-nez p2, :cond_1

    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 566
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") is the size of the list."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 569
    :cond_1
    :goto_0
    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    if-gt p1, v1, :cond_5

    .line 576
    div-int/lit8 v1, v1, 0x2

    if-ge p1, v1, :cond_3

    .line 578
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 579
    .local v0, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    const/4 v1, 0x0

    .local v1, "currentIndex":I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 580
    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 579
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v1    # "currentIndex":I
    :cond_2
    goto :goto_3

    .line 584
    .end local v0    # "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 585
    .restart local v0    # "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    .restart local v1    # "currentIndex":I
    :goto_2
    if-le v1, p1, :cond_4

    .line 586
    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 585
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 589
    .end local v1    # "currentIndex":I
    :cond_4
    :goto_3
    return-object v0

    .line 570
    .end local v0    # "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    :cond_5
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") greater than the size of the list ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 562
    :cond_6
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") less than zero."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public hashCode()I
    .locals 5

    .line 399
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    const/4 v0, 0x1

    .line 400
    .local v0, "hashCode":I
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 401
    .local v2, "e":Ljava/lang/Object;, "TE;"
    mul-int/lit8 v3, v0, 0x1f

    if-nez v2, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int v0, v3, v4

    .line 402
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 403
    :cond_1
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 140
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    const/4 v0, 0x0

    .line 141
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .local v1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eq v1, v2, :cond_1

    .line 142
    invoke-virtual {v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    return v0

    .line 145
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 141
    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    goto :goto_0

    .line 147
    .end local v1    # "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method protected init()V
    .locals 1

    .line 98
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->createHeaderNode()Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 99
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 110
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size()I

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

    .line 439
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
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

    .line 123
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 152
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    add-int/lit8 v0, v0, -0x1

    .line 153
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .local v1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eq v1, v2, :cond_1

    .line 154
    invoke-virtual {v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    return v0

    .line 157
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 153
    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    goto :goto_0

    .line 159
    .end local v1    # "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;-><init>(Lorg/apache/commons/collections4/list/AbstractLinkedList;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;-><init>(Lorg/apache/commons/collections4/list/AbstractLinkedList;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 248
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 249
    .local v0, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 250
    .local v1, "oldValue":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 251
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 256
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .local v0, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_1

    .line 257
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->isEqualValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 259
    const/4 v1, 0x1

    return v1

    .line 256
    :cond_0
    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    goto :goto_0

    .line 262
    .end local v0    # "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 276
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 277
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 278
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 279
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 280
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 281
    const/4 v0, 0x1

    goto :goto_0

    .line 284
    :cond_1
    return v0
.end method

.method protected removeAllNodes()V
    .locals 1

    .line 542
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 543
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 544
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    .line 545
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    .line 546
    return-void
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 353
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 354
    .local v0, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_0

    .line 357
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 358
    .local v1, "oldValue":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 359
    return-object v1

    .line 355
    .end local v1    # "oldValue":Ljava/lang/Object;, "TE;"
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 363
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 364
    .local v0, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_0

    .line 367
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 368
    .local v1, "oldValue":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 369
    return-object v1

    .line 365
    .end local v1    # "oldValue":Ljava/lang/Object;, "TE;"
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method protected removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 532
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v0, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object v1, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 533
    iget-object v0, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object v1, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 534
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    .line 535
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    .line 536
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 300
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 301
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 302
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 303
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 304
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 305
    const/4 v0, 0x1

    goto :goto_0

    .line 308
    :cond_1
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 313
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 314
    .local v0, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 315
    .local v1, "oldValue":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->updateNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    .line 316
    return-object v1
.end method

.method public size()I
    .locals 1

    .line 105
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndexInclusive"    # I
    .param p2, "toIndexExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 213
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;-><init>(Lorg/apache/commons/collections4/list/AbstractLinkedList;II)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 181
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

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

    .line 188
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    if-ge v0, v1, :cond_0

    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 190
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object p1, v1

    check-cast p1, [Ljava/lang/Object;

    .line 193
    .end local v0    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v0, 0x0

    .line 194
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .local v1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eq v1, v2, :cond_1

    .line 195
    invoke-virtual {v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v0

    .line 194
    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    .end local v1    # "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    :cond_1
    array-length v1, p1

    iget v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size:I

    if-le v1, v2, :cond_2

    .line 199
    const/4 v1, 0x0

    aput-object v1, p1, v2

    .line 201
    :cond_2
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 408
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 409
    const-string v0, "[]"

    return-object v0

    .line 411
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 412
    .local v0, "buf":Ljava/lang/StringBuilder;
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 415
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 416
    .local v2, "hasNext":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 417
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 418
    .local v3, "value":Ljava/lang/Object;
    if-ne v3, p0, :cond_1

    const-string v4, "(this Collection)"

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 419
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    .line 420
    if-eqz v2, :cond_2

    .line 421
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 424
    :cond_3
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected updateNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;TE;)V"
        }
    .end annotation

    .line 451
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->setValue(Ljava/lang/Object;)V

    .line 452
    return-void
.end method
