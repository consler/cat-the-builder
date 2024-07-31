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
    .locals 3
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList<",
            "TE;>;II)V"
        }
    .end annotation

    .line 980
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<TE;>;"
    .local p1, "parent":Lorg/apache/commons/collections4/list/AbstractLinkedList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 981
    if-ltz p2, :cond_2

    .line 984
    invoke-virtual {p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->size()I

    move-result v0

    if-gt p3, v0, :cond_1

    .line 987
    if-gt p2, p3, :cond_0

    .line 990
    iput-object p1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    .line 991
    iput p2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->offset:I

    .line 992
    sub-int v0, p3, p2

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    .line 993
    iget v0, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    .line 994
    return-void

    .line 988
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 985
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 982
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fromIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 1011
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<TE;>;"
    .local p2, "obj":Ljava/lang/Object;, "TE;"
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 1012
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 1013
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->add(ILjava/lang/Object;)V

    .line 1014
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    .line 1015
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    .line 1016
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->modCount:I

    .line 1017
    return-void
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

    .line 1037
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<TE;>;"
    .local p2, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 1038
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1039
    .local v0, "cSize":I
    if-nez v0, :cond_0

    .line 1040
    const/4 v1, 0x0

    return v1

    .line 1043
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 1044
    iget-object v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v3, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v3, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->addAll(ILjava/util/Collection;)Z

    .line 1045
    iget-object v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v2, v2, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    iput v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    .line 1046
    iget v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    .line 1047
    iget v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->modCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->modCount:I

    .line 1048
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
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected checkModCount()V
    .locals 2

    .line 1093
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v0, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 1096
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
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 1061
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1062
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1063
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1064
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1066
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1004
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 1005
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 1006
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 1071
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    invoke-virtual {v0, p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->createSubListIterator(Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1076
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 1077
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 1078
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->createSubListListIterator(Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected rangeCheck(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "beyond"    # I

    .line 1087
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<TE;>;"
    if-ltz p1, :cond_0

    if-ge p1, p2, :cond_0

    .line 1090
    return-void

    .line 1088
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\' out of bounds for size \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 1021
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 1022
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 1023
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 1024
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList;->modCount:I

    iput v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    .line 1025
    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    .line 1026
    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->modCount:I

    .line 1027
    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 1053
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<TE;>;"
    .local p2, "obj":Ljava/lang/Object;, "TE;"
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 1054
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 1055
    iget-object v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 998
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 999
    iget v0, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .param p1, "fromIndexInclusive"    # I
    .param p2, "toIndexExclusive"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 1083
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;

    iget-object v1, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections4/list/AbstractLinkedList;

    iget v2, p0, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int v3, p1, v2

    add-int/2addr v2, p2

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/collections4/list/AbstractLinkedList$LinkedSubList;-><init>(Lorg/apache/commons/collections4/list/AbstractLinkedList;II)V

    return-object v0
.end method
