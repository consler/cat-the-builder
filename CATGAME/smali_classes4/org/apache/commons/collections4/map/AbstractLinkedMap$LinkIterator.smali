.class public abstract Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;
.super Ljava/lang/Object;
.source "AbstractLinkedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractLinkedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "LinkIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected expectedModCount:I

.field protected last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field protected next:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field protected final parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/map/AbstractLinkedMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 558
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator<TK;TV;>;"
    .local p1, "parent":Lorg/apache/commons/collections4/map/AbstractLinkedMap;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;

    .line 560
    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 561
    iget v0, p1, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->expectedModCount:I

    .line 562
    return-void
.end method


# virtual methods
.method protected currentEntry()Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 598
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 565
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

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

    .line 569
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected nextEntry()Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 573
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->expectedModCount:I

    if-ne v0, v1, :cond_1

    .line 576
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v1, :cond_0

    .line 579
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 580
    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 581
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    return-object v0

    .line 577
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "No next() entry in the iteration"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 574
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method protected previousEntry()Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 585
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->expectedModCount:I

    if-ne v0, v1, :cond_1

    .line 588
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->before:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 589
    .local v0, "previous":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<TK;TV;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;

    iget-object v1, v1, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eq v0, v1, :cond_0

    .line 592
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 593
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 594
    return-object v0

    .line 590
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    const-string v2, "No previous() entry in the iteration"

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 586
    .end local v0    # "previous":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry<TK;TV;>;"
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 602
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eqz v0, :cond_1

    .line 605
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 608
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 610
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->expectedModCount:I

    .line 611
    return-void

    .line 606
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 603
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called once after next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 614
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator<TK;TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 615
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->parent:Lorg/apache/commons/collections4/map/AbstractLinkedMap;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap;->header:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iget-object v0, v0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->after:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->next:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    .line 616
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 620
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;, "Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    if-eqz v0, :cond_0

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Iterator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkIterator;->last:Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;

    invoke-virtual {v1}, Lorg/apache/commons/collections4/map/AbstractLinkedMap$LinkEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 623
    :cond_0
    const-string v0, "Iterator[]"

    return-object v0
.end method
