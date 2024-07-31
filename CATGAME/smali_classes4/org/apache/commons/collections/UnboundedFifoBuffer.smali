.class public Lorg/apache/commons/collections/UnboundedFifoBuffer;
.super Ljava/util/AbstractCollection;
.source "UnboundedFifoBuffer.java"

# interfaces
.implements Lorg/apache/commons/collections/Buffer;


# instance fields
.field protected m_buffer:[Ljava/lang/Object;

.field protected m_head:I

.field protected m_tail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/collections/UnboundedFifoBuffer;-><init>(I)V

    .line 71
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialSize"    # I

    .line 80
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 81
    if-lez p1, :cond_0

    .line 84
    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    .line 86
    iput v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    .line 87
    return-void

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/UnboundedFifoBuffer;I)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/UnboundedFifoBuffer;
    .param p1, "x1"    # I

    .line 55
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->increment(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/UnboundedFifoBuffer;I)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/UnboundedFifoBuffer;
    .param p1, "x1"    # I

    .line 55
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->decrement(I)I

    move-result v0

    return v0
.end method

.method private decrement(I)I
    .locals 1
    .param p1, "index"    # I

    .line 216
    add-int/lit8 p1, p1, -0x1

    .line 217
    if-gez p1, :cond_0

    .line 218
    iget-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    .line 220
    :cond_0
    return p1
.end method

.method private increment(I)I
    .locals 1
    .param p1, "index"    # I

    .line 202
    add-int/lit8 p1, p1, 0x1

    .line 203
    iget-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    .line 204
    const/4 p1, 0x0

    .line 206
    :cond_0
    return p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 124
    if-eqz p1, :cond_4

    .line 128
    invoke-virtual {p0}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    array-length v3, v2

    const/4 v4, 0x0

    if-lt v0, v3, :cond_2

    .line 129
    array-length v0, v2

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Object;

    .line 131
    .local v0, "tmp":[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 132
    .local v2, "j":I
    iget v3, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    .local v3, "i":I
    :cond_0
    :goto_0
    iget v5, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    if-eq v3, v5, :cond_1

    .line 133
    iget-object v5, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    aget-object v6, v5, v3

    aput-object v6, v0, v2

    .line 134
    const/4 v6, 0x0

    aput-object v6, v5, v3

    .line 136
    add-int/lit8 v2, v2, 0x1

    .line 137
    add-int/lit8 v3, v3, 0x1

    .line 138
    array-length v5, v5

    if-ne v3, v5, :cond_0

    .line 139
    const/4 v3, 0x0

    goto :goto_0

    .line 143
    .end local v3    # "i":I
    :cond_1
    iput-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    .line 144
    iput v4, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    .line 145
    iput v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    .line 148
    .end local v0    # "tmp":[Ljava/lang/Object;
    .end local v2    # "j":I
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    iget v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    aput-object p1, v0, v2

    .line 149
    add-int/2addr v2, v1

    iput v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    .line 150
    array-length v0, v0

    if-lt v2, v0, :cond_3

    .line 151
    iput v4, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    .line 153
    :cond_3
    return v1

    .line 125
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempted to add null object to buffer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get()Ljava/lang/Object;
    .locals 2

    .line 163
    invoke-virtual {p0}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    aget-object v0, v0, v1

    return-object v0

    .line 164
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->size()I

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

    .line 229
    new-instance v0, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/UnboundedFifoBuffer$1;-><init>(Lorg/apache/commons/collections/UnboundedFifoBuffer;)V

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 4

    .line 177
    invoke-virtual {p0}, Lorg/apache/commons/collections/UnboundedFifoBuffer;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 181
    iget-object v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    aget-object v2, v0, v1

    .line 183
    .local v2, "element":Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 184
    const/4 v3, 0x0

    aput-object v3, v0, v1

    .line 186
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    .line 187
    array-length v0, v0

    if-lt v1, v0, :cond_0

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    .line 192
    :cond_0
    return-object v2

    .line 178
    .end local v2    # "element":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string v1, "The buffer is already empty"

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 4

    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "size":I
    iget v1, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_tail:I

    iget v2, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_head:I

    if-ge v1, v2, :cond_0

    .line 98
    iget-object v3, p0, Lorg/apache/commons/collections/UnboundedFifoBuffer;->m_buffer:[Ljava/lang/Object;

    array-length v3, v3

    sub-int/2addr v3, v2

    add-int/2addr v3, v1

    .end local v0    # "size":I
    .local v3, "size":I
    goto :goto_0

    .line 100
    .end local v3    # "size":I
    .restart local v0    # "size":I
    :cond_0
    sub-int v3, v1, v2

    .line 103
    .end local v0    # "size":I
    .restart local v3    # "size":I
    :goto_0
    return v3
.end method
