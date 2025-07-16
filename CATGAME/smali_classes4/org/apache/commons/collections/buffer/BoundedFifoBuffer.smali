.class public Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;
.super Ljava/util/AbstractCollection;
.source "BoundedFifoBuffer.java"

# interfaces
.implements Lorg/apache/commons/collections/Buffer;
.implements Lorg/apache/commons/collections/BoundedCollection;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4dc46c34fcb35909L


# instance fields
.field private transient elements:[Ljava/lang/Object;

.field private transient end:I

.field private transient full:Z

.field private final maxElements:I

.field private transient start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 97
    invoke-direct {p0, v0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 107
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I

    .line 84
    iput v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I

    .line 87
    iput-boolean v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->full:Z

    if-lez p1, :cond_0

    .line 111
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;

    .line 112
    array-length p1, p1

    iput p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    return-void

    .line 109
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The size must be greater than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1

    .line 124
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;-><init>(I)V

    .line 125
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I
    .locals 0

    .line 65
    iget p0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I

    return p0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->full:Z

    return p0
.end method

.method static synthetic access$102(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->full:Z

    return p1
.end method

.method static synthetic access$200(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I
    .locals 0

    .line 65
    iget p0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I

    return p0
.end method

.method static synthetic access$202(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;I)I
    .locals 0

    .line 65
    iput p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I

    return p1
.end method

.method static synthetic access$300(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;I)I
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->increment(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)[Ljava/lang/Object;
    .locals 0

    .line 65
    iget-object p0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$500(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)I
    .locals 0

    .line 65
    iget p0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    return p0
.end method

.method static synthetic access$600(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;I)I
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->decrement(I)I

    move-result p0

    return p0
.end method

.method private decrement(I)I
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-gez p1, :cond_0

    .line 316
    iget p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method private increment(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 301
    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

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

    .line 151
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 152
    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;

    .line 153
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 155
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_0
    iput v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I

    .line 158
    iget p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->full:Z

    if-eqz p1, :cond_2

    .line 160
    iput v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I

    goto :goto_2

    .line 162
    :cond_2
    iput v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I

    :goto_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 137
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 138
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3

    if-eqz p1, :cond_3

    .line 236
    iget-boolean v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->full:Z

    if-nez v0, :cond_2

    .line 240
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I

    aput-object p1, v0, v1

    .line 242
    iget p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    if-lt v2, p1, :cond_0

    const/4 p1, 0x0

    .line 243
    iput p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I

    .line 246
    :cond_0
    iget p1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I

    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 247
    iput-boolean v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->full:Z

    :cond_1
    return v1

    .line 237
    :cond_2
    new-instance p1, Lorg/apache/commons/collections/BufferOverflowException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "The buffer cannot hold more than "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " objects."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/apache/commons/collections/BufferOverflowException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 233
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Attempted to add null object to buffer"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->full:Z

    .line 218
    iput v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I

    .line 219
    iput v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I

    .line 220
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .line 260
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I

    aget-object v0, v0, v1

    return-object v0

    .line 261
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 192
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFull()Z
    .locals 2

    .line 201
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    .line 327
    new-instance v0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer$1;-><init>(Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;)V

    return-object v0
.end method

.method public maxSize()I
    .locals 1

    .line 210
    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    return v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 5

    .line 274
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I

    aget-object v2, v0, v1

    if-eqz v2, :cond_1

    add-int/lit8 v3, v1, 0x1

    .line 281
    iput v3, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I

    const/4 v4, 0x0

    aput-object v4, v0, v1

    .line 283
    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    const/4 v1, 0x0

    if-lt v3, v0, :cond_0

    .line 284
    iput v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I

    .line 287
    :cond_0
    iput-boolean v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->full:Z

    :cond_1
    return-object v2

    .line 275
    :cond_2
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 3

    .line 175
    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->end:I

    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->start:I

    if-ge v0, v1, :cond_0

    .line 176
    iget v2, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    sub-int/2addr v2, v1

    add-int/2addr v2, v0

    goto :goto_1

    :cond_0
    if-ne v0, v1, :cond_2

    .line 178
    iget-boolean v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->full:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedFifoBuffer;->maxElements:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_2
    sub-int v2, v0, v1

    :goto_1
    return v2
.end method
