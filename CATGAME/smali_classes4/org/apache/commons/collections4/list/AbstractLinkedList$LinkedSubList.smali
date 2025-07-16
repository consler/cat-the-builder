.class public Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;
.super Ljava/util/AbstractList;
.source "AbstractLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/list/AbstractLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LinkedSubList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList<",
        "TE;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field offset:I

.field parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/AbstractLinkedList<",
            "TE;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/list/AbstractLinkedList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList<",
            "TE;>;II)V"
        }
    .end annotation

    .line 980
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    if-ltz p2, :cond_2

    .line 984
    invoke-virtual {p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size()I

    move-result v0

    if-gt p3, v0, :cond_1

    if-gt p2, p3, :cond_0

    .line 990
    iput-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    .line 991
    iput p2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->offset:I

    sub-int/2addr p3, p2

    .line 992
    iput p3, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    .line 993
    iget p1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    iput p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    return-void

    .line 988
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fromIndex("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ") > toIndex("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 985
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "toIndex = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 982
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "fromIndex = "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1011
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 1012
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 1013
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->add(ILjava/lang/Object;)V

    .line 1014
    iget-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget p1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    iput p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    .line 1015
    iget p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    .line 1016
    iget p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->modCount:I

    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 1037
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 1038
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1043
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 1044
    iget-object v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v3, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v3, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addAll(ILjava/util/Collection;)Z

    .line 1045
    iget-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget p1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    iput p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    .line 1046
    iget p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    .line 1047
    iget p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->modCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->modCount:I

    return v1
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

    .line 1032
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected checkModCount()V
    .locals 2

    .line 1093
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    if-ne v0, v1, :cond_0

    return-void

    .line 1094
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 2

    .line 1060
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 1061
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1062
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1063
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1064
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1004
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 1005
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 1006
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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

    .line 1070
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 1071
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    invoke-virtual {v0, p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->createSubListIterator(Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1076
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 1077
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 1078
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->createSubListListIterator(Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method protected rangeCheck(II)V
    .locals 2

    if-ltz p1, :cond_0

    if-ge p1, p2, :cond_0

    return-void

    .line 1088
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Index \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\' out of bounds for size \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1021
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 1022
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 1023
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 1024
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    .line 1025
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    .line 1026
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->modCount:I

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1053
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 1054
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 1055
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 998
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 999
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1083
    new-instance v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;

    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr p1, v2

    add-int/2addr p2, v2

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;-><init>(Lorg/apache/commons/collections4/list/AbstractLinkedList;II)V

    return-object v0
.end method
