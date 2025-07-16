.class public Lcom/koushikdutta/async/BufferedDataSink;
.super Ljava/lang/Object;
.source "BufferedDataSink.java"

# interfaces
.implements Lcom/koushikdutta/async/DataSink;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field endPending:Z

.field forceBuffering:Z

.field mDataSink:Lcom/koushikdutta/async/DataSink;

.field mMaxBuffer:I

.field mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

.field mWritable:Lcom/koushikdutta/async/callback/WritableCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/DataSink;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    const v0, 0x7fffffff

    .line 101
    iput v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mMaxBuffer:I

    .line 11
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/BufferedDataSink;->setDataSink(Lcom/koushikdutta/async/DataSink;)V

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/BufferedDataSink;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/BufferedDataSink;->writePending()V

    return-void
.end method

.method private writePending()V
    .locals 2

    .line 40
    iget-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->forceBuffering:Z

    if-eqz v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 46
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-nez v0, :cond_1

    .line 47
    iget-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->endPending:Z

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->end()V

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mWritable:Lcom/koushikdutta/async/callback/WritableCallback;

    if-eqz v0, :cond_2

    .line 52
    invoke-interface {v0}, Lcom/koushikdutta/async/callback/WritableCallback;->onWriteable()V

    :cond_2
    return-void
.end method


# virtual methods
.method public end()V
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/koushikdutta/async/BufferedDataSink;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->getAffinity()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/koushikdutta/async/BufferedDataSink;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/BufferedDataSink$3;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/BufferedDataSink$3;-><init>(Lcom/koushikdutta/async/BufferedDataSink;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 130
    iput-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->endPending:Z

    return-void

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->end()V

    return-void
.end method

.method public forceBuffering(Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/koushikdutta/async/BufferedDataSink;->forceBuffering:Z

    if-nez p1, :cond_0

    .line 26
    invoke-direct {p0}, Lcom/koushikdutta/async/BufferedDataSink;->writePending()V

    :cond_0
    return-void
.end method

.method public getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->getClosedCallback()Lcom/koushikdutta/async/callback/CompletedCallback;

    move-result-object v0

    return-object v0
.end method

.method public getDataSink()Lcom/koushikdutta/async/DataSink;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    return-object v0
.end method

.method public getMaxBuffer()I
    .locals 1

    .line 103
    iget v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mMaxBuffer:I

    return v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public getWriteableCallback()Lcom/koushikdutta/async/callback/WritableCallback;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mWritable:Lcom/koushikdutta/async/callback/WritableCallback;

    return-object v0
.end method

.method public isBuffering()Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->forceBuffering:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataSink;->isOpen()Z

    move-result v0

    return v0
.end method

.method public remaining()I
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    return v0
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    return-void
.end method

.method public setDataSink(Lcom/koushikdutta/async/DataSink;)V
    .locals 1

    .line 30
    iput-object p1, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    .line 31
    new-instance v0, Lcom/koushikdutta/async/BufferedDataSink$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/BufferedDataSink$1;-><init>(Lcom/koushikdutta/async/BufferedDataSink;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataSink;->setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V

    return-void
.end method

.method public setMaxBuffer(I)V
    .locals 0

    .line 108
    iput p1, p0, Lcom/koushikdutta/async/BufferedDataSink;->mMaxBuffer:I

    return-void
.end method

.method public setWriteableCallback(Lcom/koushikdutta/async/callback/WritableCallback;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/koushikdutta/async/BufferedDataSink;->mWritable:Lcom/koushikdutta/async/callback/WritableCallback;

    return-void
.end method

.method public write(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, v0}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;Z)V

    return-void
.end method

.method protected write(Lcom/koushikdutta/async/ByteBufferList;Z)V
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/koushikdutta/async/BufferedDataSink;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/koushikdutta/async/AsyncServer;->getAffinity()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/koushikdutta/async/BufferedDataSink;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/BufferedDataSink$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/koushikdutta/async/BufferedDataSink$2;-><init>(Lcom/koushikdutta/async/BufferedDataSink;Lcom/koushikdutta/async/ByteBufferList;Z)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/AsyncServer;->run(Ljava/lang/Runnable;)V

    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/BufferedDataSink;->isBuffering()Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataSink;->mDataSink:Lcom/koushikdutta/async/DataSink;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/DataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 76
    :cond_1
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-lez v0, :cond_3

    .line 77
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    iget v1, p0, Lcom/koushikdutta/async/BufferedDataSink;->mMaxBuffer:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-eqz p2, :cond_2

    .line 79
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    .line 81
    iget-object p2, p0, Lcom/koushikdutta/async/BufferedDataSink;->mPendingWrites:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1, p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    :cond_3
    return-void
.end method
