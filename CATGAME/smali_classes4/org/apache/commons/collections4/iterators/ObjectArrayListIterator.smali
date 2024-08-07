.class public Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;
.super Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;
.source "ObjectArrayListIterator.java"

# interfaces
.implements Lorg/apache/commons/collections4/ResettableListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/ObjectArrayIterator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/ResettableListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private lastItemIndex:I


# direct methods
.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;, "Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;)V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->lastItemIndex:I

    .line 59
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 1
    .param p2, "start"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;I)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;, "Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;I)V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->lastItemIndex:I

    .line 72
    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 1
    .param p2, "start"    # I
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;II)V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;, "Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;II)V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->lastItemIndex:I

    .line 87
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

    .line 161
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;, "Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() method is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasPrevious()Z
    .locals 2

    .line 99
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;, "Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->index:I

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->getStartIndex()I

    move-result v1

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;, "Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->index:I

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->lastItemIndex:I

    .line 129
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->array:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->index:I

    aget-object v0, v0, v1

    return-object v0

    .line 126
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 2

    .line 139
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;, "Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->index:I

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->getStartIndex()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;, "Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->index:I

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->lastItemIndex:I

    .line 114
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->array:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->index:I

    aget-object v0, v0, v1

    return-object v0

    .line 111
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 2

    .line 149
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;, "Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->index:I

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->getStartIndex()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public reset()V
    .locals 1

    .line 195
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;, "Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/ObjectArrayIterator;->reset()V

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->lastItemIndex:I

    .line 197
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 183
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;, "Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator<TE;>;"
    .local p1, "obj":Ljava/lang/Object;, "TE;"
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->lastItemIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->array:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ObjectArrayListIterator;->lastItemIndex:I

    aput-object p1, v0, v1

    .line 188
    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must call next() or previous() before a call to set()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
