.class public Lorg/apache/commons/collections/iterators/ObjectArrayIterator;
.super Ljava/lang/Object;
.source "ObjectArrayIterator.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Lorg/apache/commons/collections/ResettableIterator;


# instance fields
.field protected array:[Ljava/lang/Object;

.field protected endIndex:I

.field protected index:I

.field protected startIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->startIndex:I

    .line 51
    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->endIndex:I

    .line 53
    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    .line 73
    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 1

    .line 86
    array-length v0, p1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;II)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->startIndex:I

    .line 51
    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->endIndex:I

    .line 53
    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    if-ltz p2, :cond_3

    .line 105
    array-length v0, p1

    if-gt p3, v0, :cond_2

    .line 108
    array-length v0, p1

    if-gt p2, v0, :cond_1

    if-lt p3, p2, :cond_0

    .line 114
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    .line 115
    iput p2, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->startIndex:I

    .line 116
    iput p3, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->endIndex:I

    .line 117
    iput p2, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    return-void

    .line 112
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "End index must not be less than start index"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Start index must not be greater than the array length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "End index must not be greater than the array length"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 103
    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "Start index must not be less than zero"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getArray()[Ljava/lang/Object;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    return-object v0
.end method

.method public getEndIndex()I
    .locals 1

    .line 206
    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->endIndex:I

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    .line 197
    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->startIndex:I

    return v0
.end method

.method public hasNext()Z
    .locals 2

    .line 129
    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    iget v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->endIndex:I

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

    .line 140
    invoke-virtual {p0}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    aget-object v0, v0, v1

    return-object v0

    .line 141
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove() method is not supported for an ObjectArrayIterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 213
    iget v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->startIndex:I

    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    return-void
.end method

.method public setArray([Ljava/lang/Object;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 185
    iput-object p1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->array:[Ljava/lang/Object;

    const/4 v0, 0x0

    .line 186
    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->startIndex:I

    .line 187
    array-length p1, p1

    iput p1, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->endIndex:I

    .line 188
    iput v0, p0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;->index:I

    return-void

    .line 183
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The array to iterate over has already been set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
