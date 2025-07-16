.class public Lorg/apache/commons/collections/iterators/LoopingListIterator;
.super Ljava/lang/Object;
.source "LoopingListIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/ResettableListIterator;


# instance fields
.field private iterator:Ljava/util/ListIterator;

.field private list:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 63
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->list:Ljava/util/List;

    .line 64
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/LoopingListIterator;->reset()V

    return-void

    .line 61
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "The list must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/LoopingListIterator;->reset()V

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 89
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "There are no elements for this iterator to loop on"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextIndex()I
    .locals 2

    .line 110
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 117
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    return v0

    .line 111
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "There are no elements for this iterator to loop on"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .line 143
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 149
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    return-object v0

    .line 155
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 144
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "There are no elements for this iterator to loop on"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previousIndex()I
    .locals 2

    .line 171
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 178
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    return v0

    .line 172
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "There are no elements for this iterator to loop on"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 243
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    .line 236
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->iterator:Ljava/util/ListIterator;

    invoke-interface {v0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public size()I
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/LoopingListIterator;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
