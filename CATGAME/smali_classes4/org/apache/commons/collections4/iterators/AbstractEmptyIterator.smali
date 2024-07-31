.class abstract Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;
.super Ljava/lang/Object;
.source "AbstractEmptyIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 32
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;, "Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;, "Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() not supported for empty Iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 1

    .line 36
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;, "Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 44
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;, "Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 40
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;, "Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator<TE;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iterator contains no elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextIndex()I
    .locals 1

    .line 52
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;, "Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;, "Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator<TE;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Iterator contains no elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previousIndex()I
    .locals 1

    .line 56
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;, "Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator<TE;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public remove()V
    .locals 2

    .line 68
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;, "Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator<TE;>;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator contains no elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 0

    .line 73
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;, "Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator<TE;>;"
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator;, "Lorg/apache/commons/collections4/iterators/AbstractEmptyIterator<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Iterator contains no elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
