.class public Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;
.super Ljava/lang/Object;
.source "AbstractLinkedList.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lorg/apache/commons/collections/OrderedIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/AbstractLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LinkedListIterator"
.end annotation


# instance fields
.field protected current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

.field protected expectedModCount:I

.field protected next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

.field protected nextIndex:I

.field protected final parent:Lorg/apache/commons/collections/list/AbstractLinkedList;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/list/AbstractLinkedList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 747
    iput-object p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    .line 748
    iget v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    const/4 v0, 0x1

    .line 749
    invoke-virtual {p1, p2, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->getNode(IZ)Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 750
    iput p2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2

    .line 842
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->checkModCount()V

    .line 843
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addNodeBefore(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 844
    iput-object p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 845
    iget p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    .line 846
    iget p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    return-void
.end method

.method protected checkModCount()V
    .locals 2

    .line 761
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    return-void

    .line 762
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method protected getLastNodeReturned()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 774
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eqz v0, :cond_0

    return-object v0

    .line 775
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 781
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

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

    .line 797
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList;->header:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 785
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->checkModCount()V

    .line 786
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 790
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 791
    iget-object v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 792
    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    return-object v0

    .line 787
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "No element at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 813
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .line 801
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->checkModCount()V

    .line 802
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 806
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 807
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 808
    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    return-object v0

    .line 803
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Already at start of list."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 818
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .line 822
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->checkModCount()V

    .line 823
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    if-ne v0, v1, :cond_0

    .line 825
    iget-object v0, v1, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    iput-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->next:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 826
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->getLastNodeReturned()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    goto :goto_0

    .line 829
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->getLastNodeReturned()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections/list/AbstractLinkedList$Node;)V

    .line 830
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->nextIndex:I

    :goto_0
    const/4 v0, 0x0

    .line 832
    iput-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->current:Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    .line 833
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->expectedModCount:I

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    .line 837
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->checkModCount()V

    .line 838
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedListIterator;->getLastNodeReturned()Lorg/apache/commons/collections/list/AbstractLinkedList$Node;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$Node;->setValue(Ljava/lang/Object;)V

    return-void
.end method
