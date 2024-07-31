.class final Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;
.super Ljava/lang/Object;
.source "Http20Draft13.java"

# interfaces
.implements Lcom/koushikdutta/async/http/spdy/FrameWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/Http20Draft13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Writer"
.end annotation


# instance fields
.field private final client:Z

.field private closed:Z

.field private final frameHeader:Lcom/koushikdutta/async/ByteBufferList;

.field private final hpackWriter:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;

.field private final sink:Lcom/koushikdutta/async/BufferedDataSink;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/BufferedDataSink;Z)V
    .locals 1
    .param p1, "sink"    # Lcom/koushikdutta/async/BufferedDataSink;
    .param p2, "client"    # Z

    .line 414
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    new-instance v0, Lcom/koushikdutta/async/ByteBufferList;

    invoke-direct {v0}, Lcom/koushikdutta/async/ByteBufferList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader:Lcom/koushikdutta/async/ByteBufferList;

    .line 415
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->sink:Lcom/koushikdutta/async/BufferedDataSink;

    .line 416
    iput-boolean p2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->client:Z

    .line 417
    new-instance v0, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;

    invoke-direct {v0}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->hpackWriter:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;

    .line 418
    return-void
.end method

.method private writeContinuationFrames(Lcom/koushikdutta/async/ByteBufferList;I)V
    .locals 4
    .param p1, "hpackBuffer"    # Lcom/koushikdutta/async/ByteBufferList;
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 501
    :goto_0
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    const/16 v0, 0x3fff

    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 503
    .local v0, "length":I
    invoke-virtual {p1}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    sub-int/2addr v1, v0

    .line 504
    .local v1, "newRemaining":I
    const/16 v2, 0x9

    if-nez v1, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0, p2, v0, v2, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader(IIBB)V

    .line 505
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p1, v2, v0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 506
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->sink:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 507
    .end local v0    # "length":I
    .end local v1    # "newRemaining":I
    goto :goto_0

    .line 508
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized ackSettings()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 422
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->closed:Z

    if-nez v0, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 424
    .local v0, "length":I
    const/4 v1, 0x4

    .line 425
    .local v1, "type":B
    const/4 v2, 0x1

    .line 426
    .local v2, "flags":B
    const/4 v3, 0x0

    .line 427
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader(IIBB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    monitor-exit p0

    return-void

    .line 422
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    .end local p0    # "this":Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 616
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 617
    monitor-exit p0

    return-void

    .line 615
    .end local p0    # "this":Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectionPreface()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 432
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->closed:Z

    if-nez v0, :cond_2

    .line 433
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->client:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 434
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, ">> CONNECTION %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1700()Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/koushikdutta/async/http/spdy/ByteString;->hex()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 437
    .end local p0    # "this":Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;
    :cond_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->sink:Lcom/koushikdutta/async/BufferedDataSink;

    new-instance v1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-static {}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1700()Lcom/koushikdutta/async/http/spdy/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/koushikdutta/async/http/spdy/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/ByteBufferList;-><init>([B)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 438
    monitor-exit p0

    return-void

    .line 432
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized data(ZILcom/koushikdutta/async/ByteBufferList;)V
    .locals 2
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .param p3, "source"    # Lcom/koushikdutta/async/ByteBufferList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 529
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->closed:Z

    if-nez v0, :cond_1

    .line 530
    const/4 v0, 0x0

    .line 531
    .local v0, "flags":B
    if-eqz p1, :cond_0

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 532
    :cond_0
    invoke-virtual {p0, p2, v0, p3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->dataFrame(IBLcom/koushikdutta/async/ByteBufferList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    monitor-exit p0

    return-void

    .line 529
    .end local v0    # "flags":B
    .end local p0    # "this":Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    .end local p1    # "outFinished":Z
    .end local p2    # "streamId":I
    .end local p3    # "source":Lcom/koushikdutta/async/ByteBufferList;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method dataFrame(IBLcom/koushikdutta/async/ByteBufferList;)V
    .locals 2
    .param p1, "streamId"    # I
    .param p2, "flags"    # B
    .param p3, "buffer"    # Lcom/koushikdutta/async/ByteBufferList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    const/4 v0, 0x0

    .line 537
    .local v0, "type":B
    invoke-virtual {p3}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader(IIBB)V

    .line 538
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->sink:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v1, p3}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 539
    return-void
.end method

.method frameHeader(IIBB)V
    .locals 4
    .param p1, "streamId"    # I
    .param p2, "length"    # I
    .param p3, "type"    # B
    .param p4, "flags"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 621
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-static {v1, p1, p2, p3, p4}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 622
    :cond_0
    const/4 v0, 0x1

    const/16 v2, 0x3fff

    if-gt p2, v2, :cond_2

    .line 625
    const/high16 v2, -0x80000000

    and-int/2addr v2, p1

    if-nez v2, :cond_1

    .line 627
    const/16 v0, 0x100

    invoke-static {v0}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 628
    .local v0, "sink":Ljava/nio/ByteBuffer;
    and-int/lit16 v1, p2, 0x3fff

    shl-int/lit8 v1, v1, 0x10

    and-int/lit16 v2, p3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    and-int/lit16 v2, p4, 0xff

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 629
    const v1, 0x7fffffff

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 630
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 631
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->sink:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v2, v0}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 632
    return-void

    .line 626
    .end local v0    # "sink":Ljava/nio/ByteBuffer;
    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "reserved bit set: %s"

    invoke-static {v1, v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1800(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 623
    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "FRAME_SIZE_ERROR length > %d: %d"

    invoke-static {v0, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1800(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method public declared-synchronized goAway(ILcom/koushikdutta/async/http/spdy/ErrorCode;[B)V
    .locals 7
    .param p1, "lastGoodStreamId"    # I
    .param p2, "errorCode"    # Lcom/koushikdutta/async/http/spdy/ErrorCode;
    .param p3, "debugData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 581
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->closed:Z

    if-nez v0, :cond_1

    .line 582
    iget v0, p2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->httpCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 583
    array-length v0, p3

    add-int/lit8 v0, v0, 0x8

    .line 584
    .local v0, "length":I
    const/4 v1, 0x7

    .line 585
    .local v1, "type":B
    const/4 v2, 0x0

    .line 586
    .local v2, "flags":B
    const/4 v3, 0x0

    .line 587
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader(IIBB)V

    .line 588
    const/16 v4, 0x100

    invoke-static {v4}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 589
    .local v4, "sink":Ljava/nio/ByteBuffer;
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 590
    iget v5, p2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->httpCode:I

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 591
    invoke-virtual {v4, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 592
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 593
    iget-object v5, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->sink:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v6, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v6, v4}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    monitor-exit p0

    return-void

    .line 582
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    .end local v4    # "sink":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;
    :cond_0
    :try_start_1
    const-string v0, "errorCode.httpCode == -1"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1800(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 581
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 580
    .end local p1    # "lastGoodStreamId":I
    .end local p2    # "errorCode":Lcom/koushikdutta/async/http/spdy/ErrorCode;
    .end local p3    # "debugData":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized headers(ILjava/util/List;)V
    .locals 2
    .param p1, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p2, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    monitor-enter p0

    .line 459
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->closed:Z

    if-nez v0, :cond_0

    .line 460
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->headers(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 461
    monitor-exit p0

    return-void

    .line 459
    .end local p0    # "this":Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 458
    .end local p1    # "streamId":I
    .end local p2    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method headers(ZILjava/util/List;)V
    .locals 8
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->closed:Z

    if-nez v0, :cond_3

    .line 486
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->hpackWriter:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;

    invoke-virtual {v0, p3}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;->writeHeaders(Ljava/util/List;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v0

    .line 488
    .local v0, "hpackBuffer":Lcom/koushikdutta/async/ByteBufferList;
    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    int-to-long v1, v1

    .line 489
    .local v1, "byteCount":J
    const-wide/16 v3, 0x3fff

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 490
    .local v3, "length":I
    const/4 v4, 0x1

    .line 491
    .local v4, "type":B
    int-to-long v5, v3

    cmp-long v5, v1, v5

    if-nez v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 492
    .local v5, "flags":B
    :goto_0
    if-eqz p1, :cond_1

    or-int/lit8 v6, v5, 0x1

    int-to-byte v5, v6

    .line 493
    :cond_1
    invoke-virtual {p0, p2, v3, v4, v5}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader(IIBB)V

    .line 494
    iget-object v6, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, v6, v3}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 495
    iget-object v6, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->sink:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v7, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v6, v7}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 497
    int-to-long v6, v3

    cmp-long v6, v1, v6

    if-lez v6, :cond_2

    invoke-direct {p0, v0, p2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->writeContinuationFrames(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 498
    :cond_2
    return-void

    .line 485
    .end local v0    # "hpackBuffer":Lcom/koushikdutta/async/ByteBufferList;
    .end local v1    # "byteCount":J
    .end local v3    # "length":I
    .end local v4    # "type":B
    .end local v5    # "flags":B
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized ping(ZII)V
    .locals 7
    .param p1, "ack"    # Z
    .param p2, "payload1"    # I
    .param p3, "payload2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 565
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->closed:Z

    if-nez v0, :cond_1

    .line 566
    const/16 v0, 0x8

    .line 567
    .local v0, "length":I
    const/4 v1, 0x6

    .line 568
    .local v1, "type":B
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 569
    .local v2, "flags":B
    :goto_0
    const/4 v3, 0x0

    .line 570
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader(IIBB)V

    .line 571
    const/16 v4, 0x100

    invoke-static {v4}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 572
    .local v4, "sink":Ljava/nio/ByteBuffer;
    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 573
    invoke-virtual {v4, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 574
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 575
    iget-object v5, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->sink:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v6, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v6, v4}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 576
    monitor-exit p0

    return-void

    .line 565
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    .end local v4    # "sink":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    .end local p1    # "ack":Z
    .end local p2    # "payload1":I
    .end local p3    # "payload2":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pushPromise(IILjava/util/List;)V
    .locals 9
    .param p1, "streamId"    # I
    .param p2, "promisedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p3, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    monitor-enter p0

    .line 466
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->closed:Z

    if-nez v0, :cond_2

    .line 467
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->hpackWriter:Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;

    invoke-virtual {v0, p3}, Lcom/koushikdutta/async/http/spdy/HpackDraft08$Writer;->writeHeaders(Ljava/util/List;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v0

    .line 469
    .local v0, "hpackBuffer":Lcom/koushikdutta/async/ByteBufferList;
    invoke-virtual {v0}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    int-to-long v1, v1

    .line 470
    .local v1, "byteCount":J
    const-wide/16 v3, 0x3ffb

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    .line 471
    .local v3, "length":I
    const/4 v4, 0x5

    .line 472
    .local v4, "type":B
    int-to-long v5, v3

    cmp-long v5, v1, v5

    if-nez v5, :cond_0

    const/4 v5, 0x4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 473
    .local v5, "flags":B
    :goto_0
    add-int/lit8 v6, v3, 0x4

    invoke-virtual {p0, p1, v6, v4, v5}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader(IIBB)V

    .line 474
    const/16 v6, 0x2000

    invoke-static {v6}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 475
    .local v6, "sink":Ljava/nio/ByteBuffer;
    const v7, 0x7fffffff

    and-int/2addr v7, p2

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 476
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 477
    iget-object v7, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v7, v6}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    .line 478
    iget-object v7, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v0, v7, v3}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 479
    iget-object v7, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->sink:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v8, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v7, v8}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V

    .line 481
    int-to-long v7, v3

    cmp-long v7, v1, v7

    if-lez v7, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->writeContinuationFrames(Lcom/koushikdutta/async/ByteBufferList;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 482
    .end local p0    # "this":Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;
    :cond_1
    monitor-exit p0

    return-void

    .line 466
    .end local v0    # "hpackBuffer":Lcom/koushikdutta/async/ByteBufferList;
    .end local v1    # "byteCount":J
    .end local v3    # "length":I
    .end local v4    # "type":B
    .end local v5    # "flags":B
    .end local v6    # "sink":Ljava/nio/ByteBuffer;
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    .end local p1    # "streamId":I
    .end local p2    # "promisedStreamId":I
    .end local p3    # "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rstStream(ILcom/koushikdutta/async/http/spdy/ErrorCode;)V
    .locals 6
    .param p1, "streamId"    # I
    .param p2, "errorCode"    # Lcom/koushikdutta/async/http/spdy/ErrorCode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 513
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->closed:Z

    if-nez v0, :cond_1

    .line 514
    iget v0, p2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->spdyRstCode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 516
    const/4 v0, 0x4

    .line 517
    .local v0, "length":I
    const/4 v1, 0x3

    .line 518
    .local v1, "type":B
    const/4 v2, 0x0

    .line 519
    .local v2, "flags":B
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader(IIBB)V

    .line 520
    const/16 v3, 0x2000

    invoke-static {v3}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 521
    .local v3, "sink":Ljava/nio/ByteBuffer;
    iget v4, p2, Lcom/koushikdutta/async/http/spdy/ErrorCode;->httpCode:I

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 522
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 523
    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->sink:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v5, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v5, v3}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    monitor-exit p0

    return-void

    .line 514
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "sink":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 513
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    .end local p1    # "streamId":I
    .end local p2    # "errorCode":Lcom/koushikdutta/async/http/spdy/ErrorCode;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized settings(Lcom/koushikdutta/async/http/spdy/Settings;)V
    .locals 8
    .param p1, "settings"    # Lcom/koushikdutta/async/http/spdy/Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 543
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->closed:Z

    if-nez v0, :cond_4

    .line 544
    invoke-virtual {p1}, Lcom/koushikdutta/async/http/spdy/Settings;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    .line 545
    .local v0, "length":I
    const/4 v1, 0x4

    .line 546
    .local v1, "type":B
    const/4 v2, 0x0

    .line 547
    .local v2, "flags":B
    const/4 v3, 0x0

    .line 548
    .local v3, "streamId":I
    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader(IIBB)V

    .line 549
    const/16 v4, 0x2000

    invoke-static {v4}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 550
    .local v4, "sink":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    const/16 v6, 0xa

    if-ge v5, v6, :cond_3

    .line 551
    invoke-virtual {p1, v5}, Lcom/koushikdutta/async/http/spdy/Settings;->isSet(I)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    .line 552
    :cond_0
    move v6, v5

    .line 553
    .local v6, "id":I
    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    const/4 v6, 0x3

    goto :goto_1

    .line 554
    :cond_1
    const/4 v7, 0x7

    if-ne v6, v7, :cond_2

    const/4 v6, 0x4

    .line 555
    :cond_2
    :goto_1
    int-to-short v7, v6

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 556
    invoke-virtual {p1, v5}, Lcom/koushikdutta/async/http/spdy/Settings;->get(I)I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 550
    .end local v6    # "id":I
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 558
    .end local v5    # "i":I
    .end local p0    # "this":Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;
    :cond_3
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 559
    iget-object v5, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->sink:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v6, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v6, v4}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    monitor-exit p0

    return-void

    .line 543
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "streamId":I
    .end local v4    # "sink":Ljava/nio/ByteBuffer;
    :cond_4
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 542
    .end local p1    # "settings":Lcom/koushikdutta/async/http/spdy/Settings;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized synReply(ZILjava/util/List;)V
    .locals 2
    .param p1, "outFinished"    # Z
    .param p2, "streamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p3, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    monitor-enter p0

    .line 452
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->closed:Z

    if-nez v0, :cond_0

    .line 453
    invoke-virtual {p0, p1, p2, p3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->headers(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    monitor-exit p0

    return-void

    .line 452
    .end local p0    # "this":Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 451
    .end local p1    # "outFinished":Z
    .end local p2    # "streamId":I
    .end local p3    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized synStream(ZZIILjava/util/List;)V
    .locals 2
    .param p1, "outFinished"    # Z
    .param p2, "inFinished"    # Z
    .param p3, "streamId"    # I
    .param p4, "associatedStreamId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZII",
            "Ljava/util/List<",
            "Lcom/koushikdutta/async/http/spdy/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p5, "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    monitor-enter p0

    .line 444
    if-nez p2, :cond_1

    .line 445
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->closed:Z

    if-nez v0, :cond_0

    .line 446
    invoke-virtual {p0, p1, p3, p5}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->headers(ZILjava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    monitor-exit p0

    return-void

    .line 445
    .end local p0    # "this":Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    .end local p1    # "outFinished":Z
    .end local p2    # "inFinished":Z
    .end local p3    # "streamId":I
    .end local p4    # "associatedStreamId":I
    .end local p5    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 444
    .restart local p1    # "outFinished":Z
    .restart local p2    # "inFinished":Z
    .restart local p3    # "streamId":I
    .restart local p4    # "associatedStreamId":I
    .restart local p5    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 443
    .end local p1    # "outFinished":Z
    .end local p2    # "inFinished":Z
    .end local p3    # "streamId":I
    .end local p4    # "associatedStreamId":I
    .end local p5    # "headerBlock":Ljava/util/List;, "Ljava/util/List<Lcom/koushikdutta/async/http/spdy/Header;>;"
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized windowUpdate(IJ)V
    .locals 6
    .param p1, "streamId"    # I
    .param p2, "windowSizeIncrement"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 599
    :try_start_0
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->closed:Z

    if-nez v0, :cond_1

    .line 600
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    .line 604
    const/4 v0, 0x4

    .line 605
    .local v0, "length":I
    const/16 v1, 0x8

    .line 606
    .local v1, "type":B
    const/4 v2, 0x0

    .line 607
    .local v2, "flags":B
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader(IIBB)V

    .line 608
    const/16 v3, 0x100

    invoke-static {v3}, Lcom/koushikdutta/async/ByteBufferList;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 609
    .local v3, "sink":Ljava/nio/ByteBuffer;
    long-to-int v4, p2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 610
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 611
    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->sink:Lcom/koushikdutta/async/BufferedDataSink;

    iget-object v5, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;->frameHeader:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {v5, v3}, Lcom/koushikdutta/async/ByteBufferList;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/koushikdutta/async/BufferedDataSink;->write(Lcom/koushikdutta/async/ByteBufferList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    monitor-exit p0

    return-void

    .line 601
    .end local v0    # "length":I
    .end local v1    # "type":B
    .end local v2    # "flags":B
    .end local v3    # "sink":Ljava/nio/ByteBuffer;
    .end local p0    # "this":Lcom/koushikdutta/async/http/spdy/Http20Draft13$Writer;
    :cond_0
    :try_start_1
    const-string v0, "windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 602
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 601
    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$1800(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0

    .line 599
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 598
    .end local p1    # "streamId":I
    .end local p2    # "windowSizeIncrement":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
