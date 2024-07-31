.class public Lname/antonsmirnov/firmata/serial/QueueByteBufferAdapter;
.super Ljava/lang/Object;
.source "QueueByteBufferAdapter.java"

# interfaces
.implements Lname/antonsmirnov/firmata/serial/IByteBuffer;


# instance fields
.field private queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 12
    .local p1, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/Byte;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lname/antonsmirnov/firmata/serial/QueueByteBufferAdapter;->queue:Ljava/util/Queue;

    .line 14
    return-void
.end method


# virtual methods
.method public add(B)V
    .locals 2
    .param p1, "value"    # B

    .line 17
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/QueueByteBufferAdapter;->queue:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public clear()V
    .locals 1

    .line 25
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/QueueByteBufferAdapter;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 26
    return-void
.end method

.method public get()B
    .locals 1

    .line 21
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/QueueByteBufferAdapter;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 29
    iget-object v0, p0, Lname/antonsmirnov/firmata/serial/QueueByteBufferAdapter;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    return v0
.end method
