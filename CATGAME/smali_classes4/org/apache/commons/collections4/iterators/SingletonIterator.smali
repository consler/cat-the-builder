.class public Lorg/apache/commons/collections4/iterators/SingletonIterator;
.super Ljava/lang/Object;
.source "SingletonIterator.java"

# interfaces
.implements Lorg/apache/commons/collections4/ResettableIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/collections4/ResettableIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private beforeFirst:Z

.field private object:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private final removeAllowed:Z

.field private removed:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 48
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/iterators/SingletonIterator;-><init>(Ljava/lang/Object;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->beforeFirst:Z

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->removed:Z

    .line 61
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->object:Ljava/lang/Object;

    .line 62
    iput-boolean p2, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->removeAllowed:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 75
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->beforeFirst:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->removed:Z

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

    .line 89
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->beforeFirst:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->removed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->beforeFirst:Z

    .line 93
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->object:Ljava/lang/Object;

    return-object v0

    .line 90
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 107
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->removeAllowed:Z

    if-eqz v0, :cond_1

    .line 108
    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->removed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->beforeFirst:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->object:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->removed:Z

    return-void

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    .line 123
    iput-boolean v0, p0, Lorg/apache/commons/collections4/iterators/SingletonIterator;->beforeFirst:Z

    return-void
.end method
