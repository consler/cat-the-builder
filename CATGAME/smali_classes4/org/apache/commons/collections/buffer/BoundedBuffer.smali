.class public Lorg/apache/commons/collections/buffer/BoundedBuffer;
.super Lorg/apache/commons/collections/buffer/SynchronizedBuffer;
.source "BoundedBuffer.java"

# interfaces
.implements Lorg/apache/commons/collections/BoundedCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections/buffer/BoundedBuffer$NotifyingIterator;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x155281979ef9c4f8L


# instance fields
.field private final maximumSize:I

.field private final timeout:J


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/Buffer;IJ)V
    .locals 1
    .param p1, "buffer"    # Lorg/apache/commons/collections/Buffer;
    .param p2, "maximumSize"    # I
    .param p3, "timeout"    # J

    .line 101
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/SynchronizedBuffer;-><init>(Lorg/apache/commons/collections/Buffer;)V

    .line 102
    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 105
    iput p2, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->maximumSize:I

    .line 106
    iput-wide p3, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->timeout:J

    .line 107
    return-void

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method static synthetic access$000(Lorg/apache/commons/collections/buffer/BoundedBuffer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/buffer/BoundedBuffer;

    .line 48
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections/buffer/BoundedBuffer;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections/buffer/BoundedBuffer;

    .line 48
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method public static decorate(Lorg/apache/commons/collections/Buffer;I)Lorg/apache/commons/collections/buffer/BoundedBuffer;
    .locals 3
    .param p0, "buffer"    # Lorg/apache/commons/collections/Buffer;
    .param p1, "maximumSize"    # I

    .line 71
    new-instance v0, Lorg/apache/commons/collections/buffer/BoundedBuffer;

    const-wide/16 v1, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lorg/apache/commons/collections/buffer/BoundedBuffer;-><init>(Lorg/apache/commons/collections/Buffer;IJ)V

    return-object v0
.end method

.method public static decorate(Lorg/apache/commons/collections/Buffer;IJ)Lorg/apache/commons/collections/buffer/BoundedBuffer;
    .locals 1
    .param p0, "buffer"    # Lorg/apache/commons/collections/Buffer;
    .param p1, "maximumSize"    # I
    .param p2, "timeout"    # J

    .line 86
    new-instance v0, Lorg/apache/commons/collections/buffer/BoundedBuffer;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/collections/buffer/BoundedBuffer;-><init>(Lorg/apache/commons/collections/Buffer;IJ)V

    return-object v0
.end method

.method private timeoutWait(I)V
    .locals 9
    .param p1, "nAdditions"    # I

    .line 138
    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->maximumSize:I

    const-string v1, "Buffer size cannot exceed "

    if-gt p1, v0, :cond_4

    .line 142
    iget-wide v2, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->timeout:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    .line 144
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/collections/Buffer;->size()I

    move-result v0

    add-int/2addr v0, p1

    iget v2, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->maximumSize:I

    if-gt v0, v2, :cond_0

    .line 148
    return-void

    .line 145
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/BufferOverflowException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->maximumSize:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/BufferOverflowException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 150
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->timeout:J

    add-long/2addr v0, v2

    .line 151
    .local v0, "expiration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 152
    .local v2, "timeLeft":J
    :goto_0
    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/collections/Buffer;->size()I

    move-result v6

    add-int/2addr v6, p1

    iget v7, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->maximumSize:I

    if-le v6, v7, :cond_2

    .line 154
    :try_start_0
    iget-object v6, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v6, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long v2, v0, v6

    .line 161
    goto :goto_0

    .line 156
    :catch_0
    move-exception v4

    .line 157
    .local v4, "ex":Ljava/lang/InterruptedException;
    new-instance v5, Ljava/io/PrintWriter;

    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 158
    .local v5, "out":Ljava/io/PrintWriter;
    invoke-virtual {v4, v5}, Ljava/lang/InterruptedException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 159
    new-instance v6, Lorg/apache/commons/collections/BufferUnderflowException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "Caused by InterruptedException: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 163
    .end local v4    # "ex":Ljava/lang/InterruptedException;
    .end local v5    # "out":Ljava/io/PrintWriter;
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/collections/Buffer;->size()I

    move-result v4

    add-int/2addr v4, p1

    iget v5, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->maximumSize:I

    if-gt v4, v5, :cond_3

    .line 166
    return-void

    .line 164
    :cond_3
    new-instance v4, Lorg/apache/commons/collections/BufferOverflowException;

    const-string v5, "Timeout expired"

    invoke-direct {v4, v5}, Lorg/apache/commons/collections/BufferOverflowException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    .end local v0    # "expiration":J
    .end local v2    # "timeLeft":J
    :cond_4
    new-instance v0, Lorg/apache/commons/collections/BufferOverflowException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->maximumSize:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/collections/BufferOverflowException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 120
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/commons/collections/buffer/BoundedBuffer;->timeoutWait(I)V

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Buffer;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .param p1, "c"    # Ljava/util/Collection;

    .line 126
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/apache/commons/collections/buffer/BoundedBuffer;->timeoutWait(I)V

    .line 128
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/commons/collections/Buffer;->addAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isFull()Z
    .locals 2

    .line 170
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedBuffer;->size()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedBuffer;->maxSize()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    .line 133
    new-instance v0, Lorg/apache/commons/collections/buffer/BoundedBuffer$NotifyingIterator;

    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/buffer/BoundedBuffer$NotifyingIterator;-><init>(Lorg/apache/commons/collections/buffer/BoundedBuffer;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public maxSize()I
    .locals 1

    .line 174
    iget v0, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->maximumSize:I

    return v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 3

    .line 111
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BoundedBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/Buffer;->remove()Ljava/lang/Object;

    move-result-object v1

    .line 113
    .local v1, "returnValue":Ljava/lang/Object;
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/BoundedBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 114
    monitor-exit v0

    return-object v1

    .line 115
    .end local v1    # "returnValue":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
