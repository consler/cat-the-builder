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
    .param p1, "object"    # Ljava/lang/Object;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->nextCalled:Z

    .line 38
    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    .line 48
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    .line 49
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 151
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() is not supported by this iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    .line 108
    const/4 v0, 0x1

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

    .line 125
    const/4 v0, 0x1

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

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    .line 143
    return-void

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->beforeFirst:Z

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->nextCalled:Z

    .line 174
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 162
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->nextCalled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_0

    .line 165
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    .line 166
    return-void

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
