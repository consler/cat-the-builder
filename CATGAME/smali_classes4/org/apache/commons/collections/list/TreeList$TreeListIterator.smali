.class Lorg/apache/commons/collections/list/TreeList$TreeListIterator;
.super Ljava/lang/Object;
.source "TreeList.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lorg/apache/commons/collections/OrderedIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/TreeList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TreeListIterator"
.end annotation


# instance fields
.field protected current:Lorg/apache/commons/collections/list/TreeList$AVLNode;

.field protected currentIndex:I

.field protected expectedModCount:I

.field protected next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

.field protected nextIndex:I

.field protected final parent:Lorg/apache/commons/collections/list/TreeList;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/list/TreeList;I)V
    .locals 1
    .param p1, "parent"    # Lorg/apache/commons/collections/list/TreeList;
    .param p2, "fromIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 811
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 812
    iput-object p1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections/list/TreeList;

    .line 813
    invoke-static {p1}, Lorg/apache/commons/collections/list/TreeList;->access$300(Lorg/apache/commons/collections/list/TreeList;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->expectedModCount:I

    .line 814
    invoke-static {p1}, Lorg/apache/commons/collections/list/TreeList;->access$400(Lorg/apache/commons/collections/list/TreeList;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/collections/list/TreeList;->access$400(Lorg/apache/commons/collections/list/TreeList;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 815
    iput p2, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    .line 816
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->currentIndex:I

    .line 817
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 906
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->checkModCount()V

    .line 907
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections/list/TreeList;

    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    invoke-virtual {v0, v1, p1}, Lorg/apache/commons/collections/list/TreeList;->add(ILjava/lang/Object;)V

    .line 908
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 909
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->currentIndex:I

    .line 910
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    .line 911
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->expectedModCount:I

    .line 912
    return-void
.end method

.method protected checkModCount()V
    .locals 2

    .line 827
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections/list/TreeList;

    invoke-static {v0}, Lorg/apache/commons/collections/list/TreeList;->access$500(Lorg/apache/commons/collections/list/TreeList;)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 830
    return-void

    .line 828
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 833
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections/list/TreeList;

    invoke-virtual {v1}, Lorg/apache/commons/collections/list/TreeList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 852
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    .line 837
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->checkModCount()V

    .line 838
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 841
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    if-nez v0, :cond_0

    .line 842
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections/list/TreeList;

    invoke-static {v0}, Lorg/apache/commons/collections/list/TreeList;->access$400(Lorg/apache/commons/collections/list/TreeList;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 844
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 845
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iput-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 846
    iget v2, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    iput v2, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->currentIndex:I

    .line 847
    invoke-virtual {v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->next()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 848
    return-object v0

    .line 839
    .end local v0    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No element at index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 872
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .line 856
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->checkModCount()V

    .line 857
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 860
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    if-nez v0, :cond_0

    .line 861
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections/list/TreeList;

    invoke-static {v0}, Lorg/apache/commons/collections/list/TreeList;->access$400(Lorg/apache/commons/collections/list/TreeList;)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->get(I)Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    goto :goto_0

    .line 863
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->previous()Lorg/apache/commons/collections/list/TreeList$AVLNode;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 865
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    invoke-virtual {v0}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 866
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    iput-object v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 867
    iget v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    iput v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->currentIndex:I

    .line 868
    return-object v0

    .line 858
    .end local v0    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Already at start of list."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 876
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 3

    .line 880
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->checkModCount()V

    .line 881
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->currentIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 884
    iget-object v2, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->parent:Lorg/apache/commons/collections/list/TreeList;

    invoke-virtual {v2, v0}, Lorg/apache/commons/collections/list/TreeList;->remove(I)Ljava/lang/Object;

    .line 885
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    iget v2, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->currentIndex:I

    if-eq v0, v2, :cond_0

    .line 887
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->nextIndex:I

    .line 891
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->next:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 892
    iput-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    .line 893
    iput v1, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->currentIndex:I

    .line 894
    iget v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->expectedModCount:I

    .line 895
    return-void

    .line 882
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 898
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->checkModCount()V

    .line 899
    iget-object v0, p0, Lorg/apache/commons/collections/list/TreeList$TreeListIterator;->current:Lorg/apache/commons/collections/list/TreeList$AVLNode;

    if-eqz v0, :cond_0

    .line 902
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/list/TreeList$AVLNode;->setValue(Ljava/lang/Object;)V

    .line 903
    return-void

    .line 900
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
