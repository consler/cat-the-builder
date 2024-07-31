.class public Lorg/apache/commons/collections/BoundedFifoBuffer;
.super Ljava/util/AbstractCollection;
.source "BoundedFifoBuffer.java"

# interfaces
.implements Lorg/apache/commons/collections/Buffer;
.implements Lorg/apache/commons/collections/BoundedCollection;


# instance fields
.field private final m_elements:[Ljava/lang/Object;

.field private m_end:I

.field private m_full:Z

.field private m_start:I

.field private final maxElements:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/BoundedFifoBuffer;-><init>(I)V

    .line 70
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .line 79
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    .line 60
    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_end:I

    .line 61
    iput-boolean v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_full:Z

    .line 80
    if-lez p1, :cond_0

    .line 83
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_elements:[Ljava/lang/Object;

    .line 84
    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->maxElements:I

    .line 85
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .param p1, "coll"    # Ljava/util/Collection;

    .line 96
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/BoundedFifoBuffer;-><init>(I)V

    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->addAll(Ljava/util/Collection;)Z

    .line 98
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/BoundedFifoBuffer;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/BoundedFifoBuffer;

    .line 55
    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/BoundedFifoBuffer;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/BoundedFifoBuffer;

    .line 55
    iget-boolean v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_full:Z

    return v0
.end method

.method static synthetic access$102(Lorg/apache/commons/collections/BoundedFifoBuffer;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections/BoundedFifoBuffer;
    .param p1, "x1"    # Z

    .line 55
    iput-boolean p1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_full:Z

    return p1
.end method

.method static synthetic access$200(Lorg/apache/commons/collections/BoundedFifoBuffer;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/BoundedFifoBuffer;

    .line 55
    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_end:I

    return v0
.end method

.method static synthetic access$202(Lorg/apache/commons/collections/BoundedFifoBuffer;I)I
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections/BoundedFifoBuffer;
    .param p1, "x1"    # I

    .line 55
    iput p1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_end:I

    return p1
.end method

.method static synthetic access$300(Lorg/apache/commons/collections/BoundedFifoBuffer;I)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/BoundedFifoBuffer;
    .param p1, "x1"    # I

    .line 55
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->increment(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/apache/commons/collections/BoundedFifoBuffer;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/BoundedFifoBuffer;

    .line 55
    iget-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_elements:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/commons/collections/BoundedFifoBuffer;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/BoundedFifoBuffer;

    .line 55
    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->maxElements:I

    return v0
.end method

.method static synthetic access$600(Lorg/apache/commons/collections/BoundedFifoBuffer;I)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/BoundedFifoBuffer;
    .param p1, "x1"    # I

    .line 55
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/BoundedFifoBuffer;->decrement(I)I

    move-result v0

    return v0
.end method

.method private decrement(I)I
    .locals 1
    .param p1, "index"    # I

    .line 247
    add-int/lit8 p1, p1, -0x1

    .line 248
    if-gez p1, :cond_0

    .line 249
    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->maxElements:I

    add-int/lit8 p1, v0, -0x1

    .line 251
    :cond_0
    return p1
.end method

.method private increment(I)I
    .locals 1
    .param p1, "index"    # I

    .line 233
    add-int/lit8 p1, p1, 0x1

    .line 234
    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->maxElements:I

    if-lt p1, v0, :cond_0

    .line 235
    const/4 p1, 0x0

    .line 237
    :cond_0
    return p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "element"    # Ljava/lang/Object;

    .line 165
    if-eqz p1, :cond_3

    .line 169
    iget-boolean v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_full:Z

    if-nez v0, :cond_2

    .line 173
    iget-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_end:I

    aput-object p1, v0, v1

    .line 175
    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->maxElements:I

    if-lt v2, v0, :cond_0

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_end:I

    .line 179
    :cond_0
    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_end:I

    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 180
    iput-boolean v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_full:Z

    .line 183
    :cond_1
    return v2

    .line 170
    :cond_2
    new-instance v0, Lorg/apache/commons/collections/BufferOverflowException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "The buffer cannot hold more than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->maxElements:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v2, " objects."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/BufferOverflowException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempted to add null object to buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 2

    .line 150
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_full:Z

    .line 151
    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    .line 152
    iput v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_end:I

    .line 153
    iget-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 154
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .line 193
    invoke-virtual {p0}, Lorg/apache/commons/collections/BoundedFifoBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    aget-object v0, v0, v1

    return-object v0

    .line 194
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 125
    invoke-virtual {p0}, Lorg/apache/commons/collections/BoundedFifoBuffer;->size()I

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

    .line 134
    invoke-virtual {p0}, Lorg/apache/commons/collections/BoundedFifoBuffer;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->maxElements:I

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

    .line 260
    new-instance v0, Lorg/apache/commons/collections/BoundedFifoBuffer$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/BoundedFifoBuffer$1;-><init>(Lorg/apache/commons/collections/BoundedFifoBuffer;)V

    return-object v0
.end method

.method public maxSize()I
    .locals 1

    .line 143
    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->maxElements:I

    return v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 5

    .line 207
    invoke-virtual {p0}, Lorg/apache/commons/collections/BoundedFifoBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 211
    iget-object v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    aget-object v2, v0, v1

    .line 213
    .local v2, "element":Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 214
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    const/4 v4, 0x0

    aput-object v4, v0, v1

    .line 216
    iget v0, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->maxElements:I

    const/4 v1, 0x0

    if-lt v3, v0, :cond_0

    .line 217
    iput v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    .line 220
    :cond_0
    iput-boolean v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_full:Z

    .line 223
    :cond_1
    return-object v2

    .line 208
    .end local v2    # "element":Ljava/lang/Object;
    :cond_2
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 4

    .line 106
    const/4 v0, 0x0

    .line 108
    .local v0, "size":I
    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_end:I

    iget v2, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_start:I

    if-ge v1, v2, :cond_0

    .line 109
    iget v3, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->maxElements:I

    sub-int/2addr v3, v2

    add-int/2addr v3, v1

    .end local v0    # "size":I
    .local v3, "size":I
    goto :goto_1

    .line 110
    .end local v3    # "size":I
    .restart local v0    # "size":I
    :cond_0
    if-ne v1, v2, :cond_2

    .line 111
    iget-boolean v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->m_full:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/apache/commons/collections/BoundedFifoBuffer;->maxElements:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v3, v1

    .end local v0    # "size":I
    .restart local v3    # "size":I
    goto :goto_1

    .line 113
    .end local v3    # "size":I
    .restart local v0    # "size":I
    :cond_2
    sub-int v3, v1, v2

    .line 116
    .end local v0    # "size":I
    .restart local v3    # "size":I
    :goto_1
    return v3
.end method
