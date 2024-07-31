.class public Lname/antonsmirnov/firmata/serial/ByteArrayByteBufferAdapter;
.super Ljava/lang/Object;
.source "ByteArrayByteBufferAdapter.java"

# interfaces
.implements Lname/antonsmirnov/firmata/serial/IByteBuffer;


# instance fields
.field private array:[B

.field private readIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private writeIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .param p1, "array"    # [B

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lname/antonsmirnov/firmata/serial/ByteArrayByteBufferAdapter;->readIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lname/antonsmirnov/firmata/serial/ByteArrayByteBufferAdapter;->writeIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    iput-object p1, p0, Lname/antonsmirnov/firmata/serial/ByteArrayByteBufferAdapter;->array:[B

    .line 14
    invoke-direct {p0}, Lname/antonsmirnov/firmata/serial/ByteArrayByteBufferAdapter;->reset()V

    .line 15
    return-void
.end method

.method private reset()V
    .locals 2

    .line 18
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/ByteArrayByteBufferAdapter;->readIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 19
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/ByteArrayByteBufferAdapter;->writeIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 20
    return-void
.end method


# virtual methods
.method public add(B)V
    .locals 2
    .param p1, "value"    # B

    .line 26
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/ByteArrayByteBufferAdapter;->array:[B

    iget-object v1, p0, Lname/antonsmirnov/firmata/serial/ByteArrayByteBufferAdapter;->writeIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    aput-byte p1, v0, v1

    .line 27
    return-void
.end method

.method public clear()V
    .locals 0

    .line 44
    invoke-direct {p0}, Lname/antonsmirnov/firmata/serial/ByteArrayByteBufferAdapter;->reset()V

    .line 45
    return-void
.end method

.method public get()B
    .locals 3

    .line 30
    invoke-virtual {p0}, Lname/antonsmirnov/firmata/serial/ByteArrayByteBufferAdapter;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 31
    const/4 v0, -0x1

    return v0

    .line 33
    :cond_0
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/ByteArrayByteBufferAdapter;->array:[B

    iget-object v1, p0, Lname/antonsmirnov/firmata/serial/ByteArrayByteBufferAdapter;->readIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    aget-byte v0, v0, v1

    .line 36
    .local v0, "outcomingByte":B
    iget-object v1, p0, Lname/antonsmirnov/firmata/serial/ByteArrayByteBufferAdapter;->readIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lname/antonsmirnov/firmata/serial/ByteArrayByteBufferAdapter;->writeIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    if-ne v1, v2, :cond_1

    .line 37
    invoke-direct {p0}, Lname/antonsmirnov/firmata/serial/ByteArrayByteBufferAdapter;->reset()V

    .line 40
    :cond_1
    return v0
.end method

.method public size()I
    .locals 2

    .line 48
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/ByteArrayByteBufferAdapter;->writeIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget-object v1, p0, Lname/antonsmirnov/firmata/serial/ByteArrayByteBufferAdapter;->readIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method
