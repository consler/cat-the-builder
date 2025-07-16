.class public Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;
.super Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;
.source "CursorableLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/CursorableLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cursor"
.end annotation


# instance fields
.field currentRemovedByAnother:Z

.field nextIndexValid:Z

.field valid:Z


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/list/CursorableLinkedList;I)V
    .locals 0

    .line 410
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList;I)V

    const/4 p1, 0x1

    .line 400
    iput-boolean p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    const/4 p2, 0x0

    .line 402
    iput-boolean p2, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    .line 411
    iput-boolean p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->valid:Z

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 0

    .line 448
    invoke-super {p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->add(Ljava/lang/Object;)V

    .line 451
    iget-object p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object p1, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    return-void
.end method

.method protected checkModCount()V
    .locals 2

    .line 538
    iget-boolean v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->valid:Z

    if-eqz v0, :cond_0

    return-void

    .line 539
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    const-string v1, "Cursor closed"

    invoke-direct {v0, v1}, Ljava/util/ConcurrentModificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1

    .line 552
    iget-boolean v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->valid:Z

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    check-cast v0, Lorg/apache/commons/collections/list/CursorableLinkedList;

    invoke-virtual {v0, p0}, Lorg/apache/commons/collections/list/CursorableLinkedList;->unregisterCursor(Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;)V

    const/4 v0, 0x0

    .line 554
    iput-boolean v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->valid:Z

    :cond_0
    return-void
.end method

.method public nextIndex()I
    .locals 3

    .line 465
    iget-boolean v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    if-nez v0, :cond_2

    .line 466
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne v0, v1, :cond_0

    .line 467
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndex:I

    goto :goto_1

    .line 470
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    const/4 v1, 0x0

    .line 471
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 473
    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    goto :goto_0

    .line 475
    :cond_1
    iput v1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndex:I

    :goto_1
    const/4 v0, 0x1

    .line 477
    iput-boolean v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    .line 479
    :cond_2
    iget v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndex:I

    return v0
.end method

.method protected nodeChanged(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 0

    return-void
.end method

.method protected nodeInserted(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 2

    .line 525
    iget-object v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne v0, v1, :cond_0

    .line 526
    iput-object p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    goto :goto_0

    .line 527
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne v0, p1, :cond_1

    .line 528
    iput-object p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 530
    iput-boolean p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    :goto_0
    return-void
.end method

.method protected nodeRemoved(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V
    .locals 4

    .line 497
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne p1, v0, :cond_0

    .line 499
    iget-object p1, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 500
    iput-object v1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 501
    iput-boolean v2, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    goto :goto_0

    .line 502
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    .line 505
    iget-object p1, p1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 506
    iput-boolean v3, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    goto :goto_0

    .line 507
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne p1, v0, :cond_2

    .line 510
    iput-object v1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 511
    iput-boolean v2, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    .line 512
    iget p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndex:I

    sub-int/2addr p1, v2

    iput p1, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndex:I

    goto :goto_0

    .line 514
    :cond_2
    iput-boolean v3, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->nextIndexValid:Z

    .line 515
    iput-boolean v3, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    :goto_0
    return-void
.end method

.method public remove()V
    .locals 2

    .line 428
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 434
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->checkModCount()V

    .line 435
    iget-object v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->getLastNodeReturned()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    :goto_0
    const/4 v0, 0x0

    .line 437
    iput-boolean v0, p0, Lorg/apache/commons/collections/list/CursorableLinkedList$Cursor;->currentRemovedByAnother:Z

    return-void
.end method
