.class public Lorg/apache/commons/collections/iterators/SingletonIterator;
.super Ljava/lang/Object;
.source "SingletonIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# instance fields
.field private beforeFirst:Z

.field private object:Ljava/lang/Object;

.field private final removeAllowed:Z

.field private removed:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 54
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections/iterators/SingletonIterator;-><init>(Ljava/lang/Object;Z)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "removeAllowed"    # Z

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->beforeFirst:Z

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->removed:Z

    .line 67
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->object:Ljava/lang/Object;

    .line 68
    iput-boolean p2, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->removeAllowed:Z

    .line 69
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->beforeFirst:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->removed:Z

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

    .line 93
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->beforeFirst:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->removed:Z

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->beforeFirst:Z

    .line 97
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->object:Ljava/lang/Object;

    return-object v0

    .line 94
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 110
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->removeAllowed:Z

    if-eqz v0, :cond_1

    .line 111
    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->removed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->beforeFirst:Z

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->object:Ljava/lang/Object;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->removed:Z

    .line 120
    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/collections/iterators/SingletonIterator;->beforeFirst:Z

    .line 127
    return-void
.end method
