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

    .line 89
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;-><init>(I)V

    .line 90
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialSize"    # I

    .line 99
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 100
    if-lez p1, :cond_0

    .line 103
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    .line 105
    iput v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    .line 106
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;
    .param p1, "x1"    # I

    .line 66
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->increment(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;I)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;
    .param p1, "x1"    # I

    .line 66
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->decrement(I)I

    move-result v0

    return v0
.end method

.method private decrement(I)I
    .locals 1
    .param p1, "index"    # I

    .line 256
    add-int/lit8 p1, p1, -0x1

    .line 257
    if-gez p1, :cond_0

    .line 258
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    .line 260
    :cond_0
    return p1
.end method

.method private increment(I)I
    .locals 1
    .param p1, "index"    # I

    .line 242
    add-int/lit8 p1, p1, 0x1

    .line 243
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 244
    const/4 p1, 0x0

    .line 246
    :cond_0
    return p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
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

    .line 133
    .local v0, "size":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    .line 134
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 135
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    .line 138
    iput v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    .line 139
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
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

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 121
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 176
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

    .line 183
    .local v0, "tmp":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 185
    .local v2, "j":I
    iget v3, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    if-eq v3, v4, :cond_0

    .line 186
    iget-object v4, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    aget-object v5, v4, v3

    aput-object v5, v0, v2

    .line 187
    const/4 v5, 0x0

    aput-object v5, v4, v3

    .line 189
    add-int/lit8 v2, v2, 0x1

    .line 190
    invoke-direct {p0, v3}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->increment(I)I

    move-result v3

    goto :goto_0

    .line 192
    .end local v3    # "i":I
    :cond_0
    iput-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    .line 193
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    .line 194
    iput v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    .line 197
    .end local v0    # "tmp":[Ljava/lang/Object;
    .end local v2    # "j":I
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    aput-object p1, v0, v2

    .line 198
    invoke-direct {p0, v2}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->increment(I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    .line 199
    return v1

    .line 177
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempted to add null object to buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 228
    .local v2, "element":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 229
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 230
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->increment(I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    .line 232
    :cond_0
    return-object v2

    .line 224
    .end local v2    # "element":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 4

    .line 148
    const/4 v0, 0x0

    .line 150
    .local v0, "size":I
    iget v1, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->tail:I

    iget v2, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->head:I

    if-ge v1, v2, :cond_0

    .line 151
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/UnboundedFifoBuffer;->buffer:[Ljava/lang/Object;

    array-length v3, v3

    sub-int/2addr v3, v2

    add-int/2addr v3, v1

    .end local v0    # "size":I
    .local v3, "size":I
    goto :goto_0

    .line 153
    .end local v3    # "size":I
    .restart local v0    # "size":I
    :cond_0
    sub-int v3, v1, v2

    .line 156
    .end local v0    # "size":I
    .restart local v3    # "size":I
    :goto_0
    return v3
.end method
