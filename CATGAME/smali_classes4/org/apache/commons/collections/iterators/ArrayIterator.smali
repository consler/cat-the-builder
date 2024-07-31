.class public Lorg/apache/commons/collections/iterators/ArrayIterator;
.super Ljava/lang/Object;
.source "ArrayIterator.java"

# interfaces
.implements Lorg/apache/commons/collections/ResettableIterator;


# instance fields
.field protected array:Ljava/lang/Object;

.field protected endIndex:I

.field protected index:I

.field protected startIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    .line 51
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

    .line 53
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    .line 51
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

    .line 53
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    .line 77
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/ArrayIterator;->setArray(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    .line 51
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

    .line 53
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    .line 92
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/ArrayIterator;->setArray(Ljava/lang/Object;)V

    .line 93
    const-string v0, "start"

    invoke-virtual {p0, p2, v0}, Lorg/apache/commons/collections/iterators/ArrayIterator;->checkBound(ILjava/lang/String;)V

    .line 94
    iput p2, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    .line 95
    iput p2, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;II)V
    .locals 2
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "startIndex"    # I
    .param p3, "endIndex"    # I

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    .line 51
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

    .line 53
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    .line 111
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/iterators/ArrayIterator;->setArray(Ljava/lang/Object;)V

    .line 112
    const-string v0, "start"

    invoke-virtual {p0, p2, v0}, Lorg/apache/commons/collections/iterators/ArrayIterator;->checkBound(ILjava/lang/String;)V

    .line 113
    const-string v0, "end"

    invoke-virtual {p0, p3, v0}, Lorg/apache/commons/collections/iterators/ArrayIterator;->checkBound(ILjava/lang/String;)V

    .line 114
    if-lt p3, p2, :cond_0

    .line 117
    iput p2, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    .line 118
    iput p3, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

    .line 119
    iput p2, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    .line 120
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "End index must not be less than start index."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected checkBound(ILjava/lang/String;)V
    .locals 3
    .param p1, "bound"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 130
    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

    const-string v1, "Attempt to make an ArrayIterator that "

    if-gt p1, v0, :cond_1

    .line 136
    if-ltz p1, :cond_0

    .line 142
    return-void

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "s before the start of the array. "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "s beyond the end of the array. "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getArray()Ljava/lang/Object;
    .locals 1

    .line 188
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->array:Ljava/lang/Object;

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .line 152
    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

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

    .line 163
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->array:Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 164
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() method is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 220
    iget v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    .line 221
    return-void
.end method

.method public setArray(Ljava/lang/Object;)V
    .locals 1
    .param p1, "array"    # Ljava/lang/Object;

    .line 210
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->endIndex:I

    .line 211
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->startIndex:I

    .line 212
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->array:Ljava/lang/Object;

    .line 213
    iput v0, p0, Lorg/apache/commons/collections/iterators/ArrayIterator;->index:I

    .line 214
    return-void
.end method
