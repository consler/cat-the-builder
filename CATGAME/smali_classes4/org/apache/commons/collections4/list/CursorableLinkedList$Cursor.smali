.class public Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;
.super Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;
.source "CursorableLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/CursorableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cursor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field currentRemovedByAnother:Z

.field nextIndexValid:Z

.field valid:Z


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/list/CursorableLinkedList;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/CursorableLinkedList<",
            "TE;>;I)V"
        }
    .end annotation

    .line 425
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;-><init>(Lorg/apache/commons/collections4/list/AbstractLinkedList;I)V

    const/4 p1, 0x1

    .line 414
    iput-boolean p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    const/4 p2, 0x0

    .line 416
    iput-boolean p2, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    .line 426
    iput-boolean p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->valid:Z

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 465
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->add(Ljava/lang/Object;)V

    .line 468
    iget-object p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object p1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    return-void
.end method

.method protected checkModCount()V
    .locals 2

    .line 557
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->valid:Z

    if-eqz v0, :cond_0

    return-void

    .line 558
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Cursor closed"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 571
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->valid:Z

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    check-cast v0, Lorg/apache/commons/collections4/list/CursorableLinkedList;

    invoke-virtual {v0, p0}, Lorg/apache/commons/collections4/list/CursorableLinkedList;->unregisterCursor(Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;)V

    const/4 v0, 0x0

    .line 573
    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->valid:Z

    :cond_0
    return-void
.end method

.method public bridge synthetic hasNext()Z
    .locals 1

    .line 410
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hasPrevious()Z
    .locals 1

    .line 410
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 410
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextIndex()I
    .locals 3

    .line 483
    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    if-nez v0, :cond_2

    .line 484
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-ne v0, v1, :cond_0

    .line 485
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndex:I

    goto :goto_1

    .line 488
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    const/4 v1, 0x0

    .line 489
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-eq v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 491
    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    goto :goto_0

    .line 493
    :cond_1
    iput v1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndex:I

    :goto_1
    const/4 v0, 0x1

    .line 495
    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    .line 497
    :cond_2
    iget v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndex:I

    return v0
.end method

.method protected nodeChanged(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    return-void
.end method

.method protected nodeInserted(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 543
    iget-object v0, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-ne v0, v1, :cond_0

    .line 544
    iput-object p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    goto :goto_0

    .line 545
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-ne v0, p1, :cond_1

    .line 546
    iput-object p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 548
    iput-boolean p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    :goto_0
    return-void
.end method

.method protected nodeRemoved(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-ne p1, v0, :cond_0

    .line 517
    iget-object p1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 518
    iput-object v1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 519
    iput-boolean v2, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    goto :goto_0

    .line 520
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 523
    iget-object p1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 524
    iput-boolean v3, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    goto :goto_0

    .line 525
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-ne p1, v0, :cond_2

    .line 528
    iput-object v1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 529
    iput-boolean v2, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    .line 530
    iget p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndex:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndex:I

    goto :goto_0

    .line 532
    :cond_2
    iput-boolean v3, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    .line 533
    iput-boolean v3, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    :goto_0
    return-void
.end method

.method public bridge synthetic previous()Ljava/lang/Object;
    .locals 1

    .line 410
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic previousIndex()I
    .locals 1

    .line 410
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->previousIndex()I

    move-result v0

    return v0
.end method

.method public remove()V
    .locals 2

    .line 444
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->checkModCount()V

    .line 451
    iget-object v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->getLastNodeReturned()Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    :goto_0
    const/4 v0, 0x0

    .line 453
    iput-boolean v0, p0, Lorg/apache/commons/collections4/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 410
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
