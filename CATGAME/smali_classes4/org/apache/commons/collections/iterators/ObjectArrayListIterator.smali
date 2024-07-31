.class public Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;
.super Lorg/apache/commons/collections/iterators/ObjectArrayIterator;
.source "ObjectArrayListIterator.java"

# interfaces
.implements Ljava/util/ListIterator;
.implements Lorg/apache/commons/collections/ResettableListIterator;


# instance fields
.field protected lastItemIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->lastItemIndex:I

    .line 63
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .param p1, "array"    # [Ljava/lang/Object;

    .line 73
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->lastItemIndex:I

    .line 74
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 1
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "start"    # I

    .line 86
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;I)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->lastItemIndex:I

    .line 87
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 1
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;II)V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->lastItemIndex:I

    .line 102
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 170
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() method is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasPrevious()Z
    .locals 2

    .line 113
    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->startIndex:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 137
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->index:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->lastItemIndex:I

    .line 141
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->array:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->index:I

    aget-object v0, v0, v1

    return-object v0

    .line 138
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 2

    .line 150
    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->startIndex:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .line 123
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->index:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->lastItemIndex:I

    .line 127
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->array:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->index:I

    aget-object v0, v0, v1

    return-object v0

    .line 124
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 2

    .line 159
    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->startIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public reset()V
    .locals 1

    .line 202
    invoke-super {p0}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->reset()V

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->lastItemIndex:I

    .line 204
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 191
    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->lastItemIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 195
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->array:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;->lastItemIndex:I

    aput-object p1, v0, v1

    .line 196
    return-void

    .line 192
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must call next() or previous() before a call to set()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
