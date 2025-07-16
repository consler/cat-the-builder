.class public abstract Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;
.super Ljava/lang/Object;
.source "AbstractLinkedMap.java"

# interfaces
.implements Lorg/apache/commons/collections/OrderedIterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractLinkedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "LinkIterator"
.end annotation


# instance fields
.field protected expectedModCount:I

.field protected last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

.field protected next:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

.field protected final parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/map/AbstractLinkedMap;)V
    .locals 1

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput-object p1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;

    .line 546
    iget-object v0, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 547
    iget p1, p1, Lorg/apache/commons/collections/map/AbstractLinkedMap;->modCount:I

    iput p1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->expectedModCount:I

    return-void
.end method


# virtual methods
.method protected currentEntry()Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    .locals 1

    .line 584
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 551
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 2

    .line 555
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected nextEntry()Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    .locals 2

    .line 559
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->expectedModCount:I

    if-ne v0, v1, :cond_1

    .line 562
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v1, :cond_0

    .line 565
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 566
    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 567
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    return-object v0

    .line 563
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method protected previousEntry()Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;
    .locals 2

    .line 571
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->expectedModCount:I

    if-ne v0, v1, :cond_1

    .line 574
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 575
    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;

    iget-object v1, v1, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v1, :cond_0

    .line 578
    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 579
    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    return-object v0

    .line 576
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No previous() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 572
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 588
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-eqz v0, :cond_1

    .line 591
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 594
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/map/AbstractLinkedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 595
    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 596
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;

    iget v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->expectedModCount:I

    return-void

    .line 592
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 589
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 600
    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    .line 601
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections/map/AbstractLinkedMap;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 605
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    if-eqz v0, :cond_0

    .line 606
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Iterator["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections/map/AbstractLinkedMap$LinkEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Iterator[]"

    return-object v0
.end method
