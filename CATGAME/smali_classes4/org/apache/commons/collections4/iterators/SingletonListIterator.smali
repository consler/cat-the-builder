.class public Lorg/apache/commons/collections4/iterators/SingletonListIterator;
.super Ljava/lang/Object;
.source "SingletonListIterator.java"

# interfaces
.implements Lorg/apache/commons/collections4/ResettableListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/ResettableListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private beforeFirst:Z

.field private nextCalled:Z

.field private object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private removed:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->beforeFirst:Z

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->nextCalled:Z

    .line 33
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->removed:Z

    .line 43
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 154
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "add() is not supported by this iterator"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasNext()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->beforeFirst:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->removed:Z

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

    .line 67
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->beforeFirst:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->removed:Z

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 104
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->beforeFirst:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->beforeFirst:Z

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->nextCalled:Z

    .line 109
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 78
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->beforeFirst:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 123
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->beforeFirst:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->beforeFirst:Z

    .line 127
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    return-object v0

    .line 124
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 90
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->beforeFirst:Z

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

    .line 139
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->nextCalled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 143
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->removed:Z

    return-void

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    .line 177
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->beforeFirst:Z

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->nextCalled:Z

    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 166
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->nextCalled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->removed:Z

    if-nez v0, :cond_0

    .line 169
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/SingletonListIterator;->object:Ljava/lang/Object;

    return-void

    .line 167
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
