.class public Lorg/apache/commons/collections/iterators/SingletonListIterator;
.super Ljava/lang/Object;
.source "SingletonListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lorg/apache/commons/collections/ResettableListIterator;


# instance fields
.field private beforeFirst:Z

.field private nextCalled:Z

.field private object:Ljava/lang/Object;

.field private removed:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->nextCalled:Z

    .line 38
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    .line 48
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1

    .line 151
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "add() is not supported by this iterator"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasNext()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 70
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    .line 104
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->nextCalled:Z

    .line 109
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 80
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1

    .line 122
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    .line 126
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    return-object v0

    .line 123
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 91
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove()V
    .locals 1

    .line 137
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->nextCalled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    return-void

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    .line 172
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    const/4 v0, 0x0

    .line 173
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->nextCalled:Z

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1

    .line 162
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->nextCalled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_0

    .line 165
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    return-void

    .line 163
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
