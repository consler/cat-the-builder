.class public Lorg/apache/commons/collections4/iterators/ArrayIterator;
.super Ljava/lang/Object;
.source "ArrayIterator.java"

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
.field final array:Ljava/lang/Object;

.field final endIndex:I

.field index:I

.field final startIndex:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;

    .line 60
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ArrayIterator;, "Lorg/apache/commons/collections4/iterators/ArrayIterator<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/collections4/iterators/ArrayIterator;-><init>(Ljava/lang/Object;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I

    .line 74
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ArrayIterator;, "Lorg/apache/commons/collections4/iterators/ArrayIterator<TE;>;"
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections4/iterators/ArrayIterator;-><init>(Ljava/lang/Object;II)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 3
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 89
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ArrayIterator;, "Lorg/apache/commons/collections4/iterators/ArrayIterator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ArrayIterator;->index:I

    .line 91
    iput-object p1, p0, Lorg/apache/commons/collections4/iterators/ArrayIterator;->array:Ljava/lang/Object;

    .line 92
    iput p2, p0, Lorg/apache/commons/collections4/iterators/ArrayIterator;->startIndex:I

    .line 93
    iput p3, p0, Lorg/apache/commons/collections4/iterators/ArrayIterator;->endIndex:I

    .line 94
    iput p2, p0, Lorg/apache/commons/collections4/iterators/ArrayIterator;->index:I

    .line 96
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 97
    .local v0, "len":I
    const-string v1, "start"

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/commons/collections4/iterators/ArrayIterator;->checkBound(IILjava/lang/String;)V

    .line 98
    const-string v1, "end"

    invoke-virtual {p0, p3, v0, v1}, Lorg/apache/commons/collections4/iterators/ArrayIterator;->checkBound(IILjava/lang/String;)V

    .line 99
    if-lt p3, p2, :cond_0

    .line 102
    return-void

    .line 100
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "End index must not be less than start index."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected checkBound(IILjava/lang/String;)V
    .locals 3
    .param p1, "bound"    # I
    .param p2, "len"    # I
    .param p3, "type"    # Ljava/lang/String;

    .line 113
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ArrayIterator;, "Lorg/apache/commons/collections4/iterators/ArrayIterator<TE;>;"
    const-string v0, "Attempt to make an ArrayIterator that "

    if-gt p1, p2, :cond_1

    .line 119
    if-ltz p1, :cond_0

    .line 125
    return-void

    .line 120
    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "s before the start of the array. "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "s beyond the end of the array. "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getArray()Ljava/lang/Object;
    .locals 1

    .line 173
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ArrayIterator;, "Lorg/apache/commons/collections4/iterators/ArrayIterator<TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ArrayIterator;->array:Ljava/lang/Object;

    return-object v0
.end method

.method public getEndIndex()I
    .locals 1

    .line 193
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ArrayIterator;, "Lorg/apache/commons/collections4/iterators/ArrayIterator<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ArrayIterator;->endIndex:I

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    .line 183
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ArrayIterator;, "Lorg/apache/commons/collections4/iterators/ArrayIterator<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ArrayIterator;->startIndex:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 136
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ArrayIterator;, "Lorg/apache/commons/collections4/iterators/ArrayIterator<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ArrayIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ArrayIterator;->endIndex:I

    if-ge v0, v1, :cond_0

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

    .line 149
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ArrayIterator;, "Lorg/apache/commons/collections4/iterators/ArrayIterator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/ArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lorg/apache/commons/collections4/iterators/ArrayIterator;->array:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections4/iterators/ArrayIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections4/iterators/ArrayIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 162
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ArrayIterator;, "Lorg/apache/commons/collections4/iterators/ArrayIterator<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() method is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 201
    .local p0, "this":Lorg/apache/commons/collections4/iterators/ArrayIterator;, "Lorg/apache/commons/collections4/iterators/ArrayIterator<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/iterators/ArrayIterator;->startIndex:I

    iput v0, p0, Lorg/apache/commons/collections4/iterators/ArrayIterator;->index:I

    .line 202
    return-void
.end method
