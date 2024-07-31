.class public Lorg/apache/commons/collections4/iterators/ArrayListIterator;
.super Lorg/apache/commons/collections4/iterators/ArrayIterator;
.source "ArrayListIterator.java"

# interfaces
.implements Lorg/apache/commons/collections4/ResettableListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/ArrayIterator<",
        "TE;>;",
        "Lorg/apache/commons/collections4/ResettableListIterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private lastItemIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;

    .line 63
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ArrayListIterator;, "Lorg/apache/commons/collections4/iterators/ArrayListIterator<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/iterators/ArrayIterator;-><init>(Ljava/lang/Object;)V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->lastItemIndex:I

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I

    .line 77
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ArrayListIterator;, "Lorg/apache/commons/collections4/iterators/ArrayListIterator<TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/iterators/ArrayIterator;-><init>(Ljava/lang/Object;I)V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->lastItemIndex:I

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 93
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ArrayListIterator;, "Lorg/apache/commons/collections4/iterators/ArrayListIterator<TE;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/collections4/iterators/ArrayIterator;-><init>(Ljava/lang/Object;II)V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->lastItemIndex:I

    .line 94
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 170
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ArrayListIterator;, "Lorg/apache/commons/collections4/iterators/ArrayListIterator<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add() method is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasPrevious()Z
    .locals 2

    .line 105
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ArrayListIterator;, "Lorg/apache/commons/collections4/iterators/ArrayListIterator<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->startIndex:I

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

    .line 133
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ArrayListIterator;, "Lorg/apache/commons/collections4/iterators/ArrayListIterator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->index:I

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->lastItemIndex:I

    .line 137
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->array:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 2

    .line 147
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ArrayListIterator;, "Lorg/apache/commons/collections4/iterators/ArrayListIterator<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->startIndex:I

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

    .line 117
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ArrayListIterator;, "Lorg/apache/commons/collections4/iterators/ArrayListIterator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->index:I

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->lastItemIndex:I

    .line 121
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->array:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 2

    .line 157
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ArrayListIterator;, "Lorg/apache/commons/collections4/iterators/ArrayListIterator<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->startIndex:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public reset()V
    .locals 1

    .line 205
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ArrayListIterator;, "Lorg/apache/commons/collections4/iterators/ArrayListIterator<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/ArrayIterator;->reset()V

    .line 206
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->lastItemIndex:I

    .line 207
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 193
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ArrayListIterator;, "Lorg/apache/commons/collections4/iterators/ArrayListIterator<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->lastItemIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->array:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ArrayListIterator;->lastItemIndex:I

    invoke-static {v0, v1, p1}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 198
    return-void

    .line 194
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must call next() or previous() before a call to set()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
