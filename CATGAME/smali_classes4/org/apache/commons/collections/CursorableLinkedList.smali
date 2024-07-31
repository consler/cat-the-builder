.class public Lorg/apache/commons/collections/CursorableLinkedList;
.super Ljava/lang/Object;
.source "CursorableLinkedList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/CursorableLinkedList$Cursor;,
        Lorg/apache/commons/collections/CursorableLinkedList$ListIter;,
        Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7aa12cb4b4f67ac1L


# instance fields
.field protected transient _cursors:Ljava/util/List;

.field protected transient _head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

.field protected transient _modCount:I

.field protected transient _size:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 930
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    .line 944
    new-instance v1, Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    iput-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 947
    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    .line 953
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

    .line 1107
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 916
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 917
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    .line 918
    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    .line 919
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

    .line 920
    new-instance v0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 921
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 922
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 923
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections/CursorableLinkedList;->add(Ljava/lang/Object;)Z

    .line 922
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 925
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 906
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 907
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 908
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .line 909
    .local v0, "cur":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_0
    if-eqz v0, :cond_0

    .line 910
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 911
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    goto :goto_0

    .line 913
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .line 88
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-ne p1, v0, :cond_0

    .line 89
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 91
    :cond_0
    if-ltz p1, :cond_3

    if-gt p1, v0, :cond_3

    .line 94
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .line 95
    .local v0, "succ":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_0
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    .line 96
    .local v1, "pred":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_1
    invoke-virtual {p0, v1, v0, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 98
    .end local v0    # "succ":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .end local v1    # "pred":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_2
    return-void

    .line 92
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " < 0 or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 4
    .param p1, "index"    # I
    .param p2, "c"    # Ljava/util/Collection;

    .line 154
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x0

    return v0

    .line 156
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-eq v0, p1, :cond_4

    if-nez v0, :cond_1

    goto :goto_2

    .line 159
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .line 160
    .local v0, "succ":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    if-nez v0, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    .line 161
    .local v1, "pred":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 162
    .local v2, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v3}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    goto :goto_1

    .line 165
    :cond_3
    const/4 v3, 0x1

    return v3

    .line 157
    .end local v0    # "succ":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .end local v1    # "pred":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-virtual {p0, p2}, Lorg/apache/commons/collections/CursorableLinkedList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 4
    .param p1, "c"    # Ljava/util/Collection;

    .line 118
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x0

    return v0

    .line 121
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 122
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    goto :goto_0

    .line 125
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public addFirst(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 177
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public addLast(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 189
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method protected broadcastListableChanged(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .locals 3
    .param p1, "elt"    # Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 859
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 860
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 861
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 862
    .local v1, "ref":Ljava/lang/ref/WeakReference;
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 863
    .local v2, "cursor":Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    if-nez v2, :cond_0

    .line 864
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 866
    :cond_0
    invoke-virtual {v2, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->listableChanged(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 868
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;
    .end local v2    # "cursor":Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    :goto_1
    goto :goto_0

    .line 869
    :cond_1
    return-void
.end method

.method protected broadcastListableInserted(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .locals 3
    .param p1, "elt"    # Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 893
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 894
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 895
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 896
    .local v1, "ref":Ljava/lang/ref/WeakReference;
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 897
    .local v2, "cursor":Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    if-nez v2, :cond_0

    .line 898
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 900
    :cond_0
    invoke-virtual {v2, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->listableInserted(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 902
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;
    .end local v2    # "cursor":Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    :goto_1
    goto :goto_0

    .line 903
    :cond_1
    return-void
.end method

.method protected broadcastListableRemoved(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .locals 3
    .param p1, "elt"    # Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 876
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 877
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 878
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 879
    .local v1, "ref":Ljava/lang/ref/WeakReference;
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 880
    .local v2, "cursor":Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    if-nez v2, :cond_0

    .line 881
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 883
    :cond_0
    invoke-virtual {v2, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->listableRemoved(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 885
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;
    .end local v2    # "cursor":Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    :goto_1
    goto :goto_0

    .line 886
    :cond_1
    return-void
.end method

.method public clear()V
    .locals 2

    .line 207
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 208
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 212
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 224
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .local v0, "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v1, 0x0

    .local v1, "past":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_0
    if-eqz v0, :cond_3

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    if-eq v1, v2, :cond_3

    .line 225
    if-nez p1, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 227
    :cond_1
    const/4 v2, 0x1

    return v2

    .line 224
    :cond_2
    move-object v1, v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    goto :goto_0

    .line 230
    .end local v0    # "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .end local v1    # "past":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .param p1, "c"    # Ljava/util/Collection;

    .line 242
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 243
    .local v0, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/CursorableLinkedList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    const/4 v1, 0x0

    return v1

    .line 248
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public cursor()Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    .locals 2

    .line 277
    new-instance v0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;-><init>(Lorg/apache/commons/collections/CursorableLinkedList;I)V

    return-object v0
.end method

.method public cursor(I)Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    .locals 1
    .param p1, "i"    # I

    .line 297
    new-instance v0, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;-><init>(Lorg/apache/commons/collections/CursorableLinkedList;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 315
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 316
    return v0

    .line 317
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 318
    return v2

    .line 320
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 321
    .local v1, "it":Ljava/util/Iterator;
    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    .local v3, "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v4, 0x0

    .local v4, "past":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_0
    if-eqz v3, :cond_5

    iget-object v5, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v5}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v5

    if-eq v4, v5, :cond_5

    .line 322
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 321
    :cond_3
    move-object v4, v3

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    goto :goto_0

    .line 323
    :cond_4
    :goto_1
    return v2

    .line 326
    .end local v3    # "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .end local v4    # "past":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    xor-int/2addr v0, v2

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 339
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 2

    .line 347
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public getLast()Ljava/lang/Object;
    .locals 2

    .line 358
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method protected getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .locals 3
    .param p1, "index"    # I

    .line 778
    if-ltz p1, :cond_3

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-ge p1, v0, :cond_3

    .line 781
    div-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_1

    .line 782
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .line 783
    .local v0, "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 784
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .line 783
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 786
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 788
    .end local v0    # "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .line 789
    .restart local v0    # "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    iget v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-le v1, p1, :cond_2

    .line 790
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .line 789
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 792
    .end local v1    # "i":I
    :cond_2
    return-object v0

    .line 779
    .end local v0    # "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " < 0 or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 5

    .line 386
    const/4 v0, 0x1

    .line 387
    .local v0, "hash":I
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    .local v1, "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v2, 0x0

    .local v2, "past":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 388
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_1
    add-int v0, v3, v4

    .line 387
    move-object v2, v1

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    goto :goto_0

    .line 390
    .end local v1    # "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .end local v2    # "past":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :cond_1
    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 405
    const/4 v0, 0x0

    .line 409
    .local v0, "ndx":I
    if-nez p1, :cond_1

    .line 410
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    .local v1, "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v2, 0x0

    .local v2, "past":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_0
    if-eqz v1, :cond_3

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 411
    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 412
    return v0

    .line 414
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 410
    move-object v2, v1

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    goto :goto_0

    .line 418
    .end local v1    # "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .end local v2    # "past":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    .restart local v1    # "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v2, 0x0

    .restart local v2    # "past":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_1
    if-eqz v1, :cond_3

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 419
    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 420
    return v0

    .line 422
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 418
    move-object v2, v1

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    goto :goto_1

    .line 425
    .end local v1    # "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .end local v2    # "past":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method protected insertListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .locals 2
    .param p1, "before"    # Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .param p2, "after"    # Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .param p3, "value"    # Ljava/lang/Object;

    .line 728
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    .line 729
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    .line 730
    new-instance v0, Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;-><init>(Lorg/apache/commons/collections/CursorableLinkedList$Listable;Lorg/apache/commons/collections/CursorableLinkedList$Listable;Ljava/lang/Object;)V

    .line 731
    .local v0, "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    if-eqz p1, :cond_0

    .line 732
    invoke-virtual {p1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_0

    .line 734
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 737
    :goto_0
    if-eqz p2, :cond_1

    .line 738
    invoke-virtual {p2, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    goto :goto_1

    .line 740
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1, v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 742
    :goto_1
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/CursorableLinkedList;->broadcastListableInserted(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 743
    return-object v0
.end method

.method protected invalidateCursors()V
    .locals 3

    .line 840
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 841
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 842
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 843
    .local v1, "ref":Ljava/lang/ref/WeakReference;
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 844
    .local v2, "cursor":Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    if-eqz v2, :cond_0

    .line 846
    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;->invalidate()V

    .line 847
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 849
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 850
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;
    .end local v2    # "cursor":Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    goto :goto_0

    .line 851
    :cond_1
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 433
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 441
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/CursorableLinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 456
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    add-int/lit8 v0, v0, -0x1

    .line 460
    .local v0, "ndx":I
    if-nez p1, :cond_1

    .line 461
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    .local v1, "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v2, 0x0

    .local v2, "past":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_0
    if-eqz v1, :cond_3

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 462
    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 463
    return v0

    .line 465
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 461
    move-object v2, v1

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    goto :goto_0

    .line 468
    .end local v1    # "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .end local v2    # "past":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    .restart local v1    # "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v2, 0x0

    .restart local v2    # "past":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_1
    if-eqz v1, :cond_3

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 469
    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 470
    return v0

    .line 472
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 468
    move-object v2, v1

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    goto :goto_1

    .line 475
    .end local v1    # "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .end local v2    # "past":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    .line 483
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/CursorableLinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .param p1, "index"    # I

    .line 491
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-gt p1, v0, :cond_0

    .line 494
    new-instance v0, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList$ListIter;-><init>(Lorg/apache/commons/collections/CursorableLinkedList;I)V

    return-object v0

    .line 492
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " < 0 or > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected registerCursor(Lorg/apache/commons/collections/CursorableLinkedList$Cursor;)V
    .locals 3
    .param p1, "cur"    # Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 803
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 804
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 805
    .local v1, "ref":Ljava/lang/ref/WeakReference;
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 806
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 808
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;
    :cond_0
    goto :goto_0

    .line 810
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I

    .line 533
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .line 534
    .local v0, "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v1

    .line 535
    .local v1, "ret":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/CursorableLinkedList;->removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 536
    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 508
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .local v0, "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v1, 0x0

    .local v1, "past":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 509
    const/4 v2, 0x1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 510
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/CursorableLinkedList;->removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 511
    return v2

    .line 512
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 513
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/CursorableLinkedList;->removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 514
    return v2

    .line 508
    :cond_1
    move-object v1, v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    goto :goto_0

    .line 517
    .end local v0    # "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .end local v1    # "past":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .param p1, "c"    # Ljava/util/Collection;

    .line 548
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-nez v0, :cond_0

    goto :goto_1

    .line 551
    :cond_0
    const/4 v0, 0x0

    .line 552
    .local v0, "changed":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 553
    .local v1, "it":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 554
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 555
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 556
    const/4 v0, 0x1

    goto :goto_0

    .line 559
    :cond_2
    return v0

    .line 549
    .end local v0    # "changed":Z
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 2

    .line 567
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0

    .line 569
    .local v0, "val":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/CursorableLinkedList;->removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 570
    return-object v0

    .line 572
    .end local v0    # "val":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 2

    .line 580
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v0

    .line 582
    .local v0, "val":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/collections/CursorableLinkedList;->removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 583
    return-object v0

    .line 585
    .end local v0    # "val":Ljava/lang/Object;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method protected removeListable(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V
    .locals 2
    .param p1, "elt"    # Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    .line 752
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_modCount:I

    .line 753
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    .line 754
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 755
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 757
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 758
    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 760
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v0}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 761
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setPrev(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 763
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 764
    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setNext(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 766
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->broadcastListableRemoved(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 767
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .param p1, "c"    # Ljava/util/Collection;

    .line 600
    const/4 v0, 0x0

    .line 601
    .local v0, "changed":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections/CursorableLinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 602
    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 603
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 604
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 605
    const/4 v0, 0x1

    goto :goto_0

    .line 608
    :cond_1
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;

    .line 627
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/CursorableLinkedList;->getListableAt(I)Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v0

    .line 628
    .local v0, "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    invoke-virtual {v0, p2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 629
    .local v1, "val":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/commons/collections/CursorableLinkedList;->broadcastListableChanged(Lorg/apache/commons/collections/CursorableLinkedList$Listable;)V

    .line 630
    return-object v1
.end method

.method public size()I
    .locals 1

    .line 638
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "i"    # I
    .param p2, "j"    # I

    .line 708
    if-ltz p1, :cond_1

    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-gt p2, v0, :cond_1

    if-gt p1, p2, :cond_1

    .line 710
    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    .line 711
    return-object p0

    .line 713
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/CursorableSubList;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/CursorableSubList;-><init>(Lorg/apache/commons/collections/CursorableLinkedList;II)V

    return-object v0

    .line 709
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 6

    .line 649
    iget v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 650
    .local v0, "array":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 651
    .local v1, "i":I
    iget-object v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    .local v2, "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v3, 0x0

    .local v3, "past":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_0
    if-eqz v2, :cond_0

    iget-object v4, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v4}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v4

    if-eq v3, v4, :cond_0

    .line 652
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v1

    .line 651
    move-object v3, v2

    invoke-virtual {v2}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v2

    move v1, v4

    goto :goto_0

    .line 654
    .end local v2    # "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .end local v3    # "past":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .param p1, "a"    # [Ljava/lang/Object;

    .line 673
    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-ge v0, v1, :cond_0

    .line 674
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    check-cast p1, [Ljava/lang/Object;

    .line 676
    :cond_0
    const/4 v0, 0x0

    .line 677
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    .local v1, "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v2, 0x0

    .local v2, "past":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 678
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p1, v0

    .line 677
    move-object v2, v1

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    move v0, v3

    goto :goto_0

    .line 680
    .end local v1    # "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .end local v2    # "past":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .end local v3    # "i":I
    .restart local v0    # "i":I
    :cond_1
    array-length v1, p1

    iget v2, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_size:I

    if-le v1, v2, :cond_2

    .line 681
    const/4 v1, 0x0

    aput-object v1, p1, v2

    .line 683
    :cond_2
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 691
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 692
    .local v0, "buf":Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 693
    iget-object v1, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    .local v1, "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    const/4 v2, 0x0

    .local v2, "past":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->prev()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 694
    iget-object v3, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_head:Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    invoke-virtual {v3}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v3

    if-eq v3, v1, :cond_0

    .line 695
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 697
    :cond_0
    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->value()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 693
    move-object v2, v1

    invoke-virtual {v1}, Lorg/apache/commons/collections/CursorableLinkedList$Listable;->next()Lorg/apache/commons/collections/CursorableLinkedList$Listable;

    move-result-object v1

    goto :goto_0

    .line 699
    .end local v1    # "elt":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    .end local v2    # "past":Lorg/apache/commons/collections/CursorableLinkedList$Listable;
    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 700
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected unregisterCursor(Lorg/apache/commons/collections/CursorableLinkedList$Cursor;)V
    .locals 3
    .param p1, "cur"    # Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 818
    iget-object v0, p0, Lorg/apache/commons/collections/CursorableLinkedList;->_cursors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 819
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 820
    .local v1, "ref":Ljava/lang/ref/WeakReference;
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/collections/CursorableLinkedList$Cursor;

    .line 821
    .local v2, "cursor":Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    if-nez v2, :cond_0

    .line 825
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 827
    :cond_0
    if-ne v2, p1, :cond_1

    .line 828
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 829
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 830
    goto :goto_2

    .line 832
    .end local v1    # "ref":Ljava/lang/ref/WeakReference;
    .end local v2    # "cursor":Lorg/apache/commons/collections/CursorableLinkedList$Cursor;
    :cond_1
    :goto_1
    goto :goto_0

    .line 833
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_2
    :goto_2
    return-void
.end method
