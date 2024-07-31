.class public Lcom/koushikdutta/async/BufferedDataEmitter;
.super Ljava/lang/Object;
.source "BufferedDataEmitter.java"

# interfaces
.implements Lcom/koushikdutta/async/DataEmitter;


# instance fields
.field mBuffers:Lcom/koushikdutta/async/ByteBufferList;

.field mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

.field mEmitter:Lcom/koushikdutta/async/DataEmitter;

.field mEndCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field mEndException:Ljava/lang/Exception;

.field mEnded:Z


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/DataEmitter;)V
    .locals 2
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEnded:Z

    .line 45
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mBuffers:Lcom/koushikdutta/async/ByteBufferList;

    .line 9
    iput-object p1, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    .line 10
    new-instance v0, Lcom/koushikdutta/async/BufferedDataEmitter$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/BufferedDataEmitter$1;-><init>(Lcom/koushikdutta/async/BufferedDataEmitter;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 18
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    new-instance v1, Lcom/koushikdutta/async/BufferedDataEmitter$2;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/BufferedDataEmitter$2;-><init>(Lcom/koushikdutta/async/BufferedDataEmitter;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/DataEmitter;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 27
    return-void
.end method


# virtual methods
.method public charset()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->charset()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->close()V

    .line 32
    return-void
.end method

.method public getDataCallback()Lcom/koushikdutta/async/callback/DataCallback;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    return-object v0
.end method

.method public getEndCallback()Lcom/koushikdutta/async/callback/CompletedCallback;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEndCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-object v0
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public isPaused()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->isPaused()Z

    move-result v0

    return v0
.end method

.method public onDataAvailable()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/koushikdutta/async/BufferedDataEmitter;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mBuffers:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-lez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mBuffers:Lcom/koushikdutta/async/ByteBufferList;

    invoke-interface {v0, p0, v1}, Lcom/koushikdutta/async/callback/DataCallback;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 41
    :cond_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEnded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mBuffers:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEndCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_1

    .line 42
    iget-object v1, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEndException:Ljava/lang/Exception;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    .line 43
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->pause()V

    .line 68
    return-void
.end method

.method public resume()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEmitter:Lcom/koushikdutta/async/DataEmitter;

    invoke-interface {v0}, Lcom/koushikdutta/async/DataEmitter;->resume()V

    .line 73
    invoke-virtual {p0}, Lcom/koushikdutta/async/BufferedDataEmitter;->onDataAvailable()V

    .line 74
    return-void
.end method

.method public setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/DataCallback;

    .line 50
    iget-object v0, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    if-nez v0, :cond_0

    .line 52
    iput-object p1, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mDataCallback:Lcom/koushikdutta/async/callback/DataCallback;

    .line 53
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Buffered Data Emitter callback may only be set once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 85
    iput-object p1, p0, Lcom/koushikdutta/async/BufferedDataEmitter;->mEndCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 86
    return-void
.end method
