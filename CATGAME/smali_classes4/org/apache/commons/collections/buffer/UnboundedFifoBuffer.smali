.class public Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;
.super Ljava/util/AbstractCollection;
.source "UnboundedFifoBuffer.java"

# interfaces
.implements Lorg/apache/commons/collections/Buffer;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x3055f5f8fc9939abL


# instance fields
.field protected transient buffer:[Ljava/lang/Object;

.field protected transient head:I

.field protected transient tail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 89
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 99
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 103
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 104
    iput p1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    .line 105
    iput p1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    return-void

    .line 101
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The size must be greater than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->increment(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->decrement(I)I

    move-result p0

    return p0
.end method

.method private decrement(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    .line 258
    iget-object p1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method private increment(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 243
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 131
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 132
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 133
    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 135
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_0
    iput v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    .line 138
    iput v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 117
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 118
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 7

    if-eqz p1, :cond_2

    .line 180
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 182
    array-length v0, v2

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 185
    iget v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    iget v5, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    if-eq v2, v5, :cond_0

    .line 186
    iget-object v5, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    aget-object v6, v5, v2

    aput-object v6, v0, v4

    const/4 v6, 0x0

    .line 187
    aput-object v6, v5, v2

    add-int/lit8 v4, v4, 0x1

    .line 190
    invoke-direct {p0, v2}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->increment(I)I

    move-result v2

    goto :goto_0

    .line 192
    :cond_0
    iput-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    .line 193
    iput v3, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    .line 194
    iput v4, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    .line 197
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    aput-object p1, v0, v2

    .line 198
    invoke-direct {p0, v2}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->increment(I)I

    move-result p1

    iput p1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    return v1

    .line 177
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Attempted to add null object to buffer"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .line 209
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    aget-object v0, v0, v1

    return-object v0

    .line 210
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 165
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 269
    new-instance v0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer$1;-><init>(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;)V

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 4

    .line 223
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 229
    aput-object v3, v0, v1

    .line 230
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->increment(I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    :cond_0
    return-object v2

    .line 224
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 3

    .line 150
    iget v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    iget v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    if-ge v0, v1, :cond_0

    .line 151
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    array-length v2, v2

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    sub-int v2, v0, v1

    :goto_0
    return v2
.end method
