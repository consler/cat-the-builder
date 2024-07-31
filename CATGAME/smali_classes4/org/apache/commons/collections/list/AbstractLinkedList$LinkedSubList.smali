.class public Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;
.super Ljava/util/AbstractList;
.source "AbstractLinkedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/list/AbstractLinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LinkedSubList"
.end annotation


# instance fields
.field expectedModCount:I

.field offset:I

.field parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

.field size:I


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/list/AbstractLinkedList;II)V
    .locals 3
    .param p1, "parent"    # Lorg/apache/commons/collections/list/AbstractLinkedList;
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I

    .line 904
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 905
    if-ltz p2, :cond_2

    .line 908
    invoke-virtual {p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->size()I

    move-result v0

    if-gt p3, v0, :cond_1

    .line 911
    if-gt p2, p3, :cond_0

    .line 914
    iput-object p1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    .line 915
    iput p2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->offset:I

    .line 916
    sub-int v0, p3, p2

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    .line 917
    iget v0, p1, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    .line 918
    return-void

    .line 912
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "fromIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ") > toIndex("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 909
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "toIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "fromIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 932
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 933
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 934
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->add(ILjava/lang/Object;)V

    .line 935
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    .line 936
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    .line 937
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->modCount:I

    .line 938
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "coll"    # Ljava/util/Collection;

    .line 955
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 956
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 957
    .local v0, "cSize":I
    if-nez v0, :cond_0

    .line 958
    const/4 v1, 0x0

    return v1

    .line 961
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 962
    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v3, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr v3, p1

    invoke-virtual {v2, v3, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->addAll(ILjava/util/Collection;)Z

    .line 963
    iget-object v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v2, v2, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    iput v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    .line 964
    iget v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/2addr v2, v0

    iput v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    .line 965
    iget v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->modCount:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->modCount:I

    .line 966
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "coll"    # Ljava/util/Collection;

    .line 951
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method protected checkModCount()V
    .locals 2

    .line 1006
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v0, v0, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 1009
    return-void

    .line 1007
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 2

    .line 976
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 977
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 978
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 979
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 980
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 982
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .line 926
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 927
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 928
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 985
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 986
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    invoke-virtual {v0, p0}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createSubListIterator(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I

    .line 990
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 991
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 992
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->createSubListListIterator(Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected rangeCheck(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "beyond"    # I

    .line 1000
    if-ltz p1, :cond_0

    if-ge p1, p2, :cond_0

    .line 1003
    return-void

    .line 1001
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Index \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "\' out of bounds for size \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .line 941
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 942
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 943
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/list/AbstractLinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 944
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v1, v1, Lorg/apache/commons/collections/list/AbstractLinkedList;->modCount:I

    iput v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->expectedModCount:I

    .line 945
    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    .line 946
    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->modCount:I

    .line 947
    return-object v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 970
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->rangeCheck(II)V

    .line 971
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 972
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, p2}, Lorg/apache/commons/collections/list/AbstractLinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 921
    invoke-virtual {p0}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->checkModCount()V

    .line 922
    iget v0, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 4
    .param p1, "fromIndexInclusive"    # I
    .param p2, "toIndexExclusive"    # I

    .line 996
    new-instance v0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;

    iget-object v1, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->parent:Lorg/apache/commons/collections/list/AbstractLinkedList;

    iget v2, p0, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;->offset:I

    add-int v3, p1, v2

    add-int/2addr v2, p2

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/commons/collections/list/AbstractLinkedList$LinkedSubList;-><init>(Lorg/apache/commons/collections/list/AbstractLinkedList;II)V

    return-object v0
.end method
