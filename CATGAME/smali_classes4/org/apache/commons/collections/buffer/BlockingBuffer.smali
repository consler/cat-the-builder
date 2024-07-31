.class public Lorg/apache/commons/collections/buffer/BlockingBuffer;
.super Lorg/apache/commons/collections/buffer/SynchronizedBuffer;
.source "BlockingBuffer.java"


# static fields
.field private static final serialVersionUID:J = 0x17dc48879ba6a1bdL


# instance fields
.field private final timeout:J


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/Buffer;)V
    .locals 2
    .param p1, "buffer"    # Lorg/apache/commons/collections/Buffer;

    .line 90
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/SynchronizedBuffer;-><init>(Lorg/apache/commons/collections/Buffer;)V

    .line 91
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->timeout:J

    .line 92
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections/Buffer;J)V
    .locals 3
    .param p1, "buffer"    # Lorg/apache/commons/collections/Buffer;
    .param p2, "timeoutMillis"    # J

    .line 103
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/SynchronizedBuffer;-><init>(Lorg/apache/commons/collections/Buffer;)V

    .line 104
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, p2

    :goto_0
    iput-wide v0, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->timeout:J

    .line 105
    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/Buffer;)Lorg/apache/commons/collections/Buffer;
    .locals 1
    .param p0, "buffer"    # Lorg/apache/commons/collections/Buffer;

    .line 66
    new-instance v0, Lorg/apache/commons/collections/buffer/BlockingBuffer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/buffer/BlockingBuffer;-><init>(Lorg/apache/commons/collections/Buffer;)V

    return-object v0
.end method

.method public static decorate(Lorg/apache/commons/collections/Buffer;J)Lorg/apache/commons/collections/Buffer;
    .locals 1
    .param p0, "buffer"    # Lorg/apache/commons/collections/Buffer;
    .param p1, "timeoutMillis"    # J

    .line 79
    new-instance v0, Lorg/apache/commons/collections/buffer/BlockingBuffer;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/buffer/BlockingBuffer;-><init>(Lorg/apache/commons/collections/Buffer;J)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->collection:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 111
    .local v1, "result":Z
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 112
    monitor-exit v0

    return v1

    .line 113
    .end local v1    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .param p1, "c"    # Ljava/util/Collection;

    .line 117
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->collection:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v1

    .line 119
    .local v1, "result":Z
    iget-object v2, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 120
    monitor-exit v0

    return v1

    .line 121
    .end local v1    # "result":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public get()Ljava/lang/Object;
    .locals 6

    .line 132
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 135
    :try_start_1
    iget-wide v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->timeout:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 136
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 144
    goto :goto_0

    .line 138
    :cond_0
    iget-wide v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->timeout:J

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/buffer/BlockingBuffer;->get(J)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 142
    .local v2, "out":Ljava/io/PrintWriter;
    invoke-virtual {v1, v2}, Ljava/lang/InterruptedException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 143
    new-instance v3, Lorg/apache/commons/collections/BufferUnderflowException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Caused by InterruptedException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 146
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "out":Ljava/io/PrintWriter;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BlockingBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/Buffer;->get()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public get(J)Ljava/lang/Object;
    .locals 10
    .param p1, "timeout"    # J

    .line 160
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    .line 162
    .local v1, "expiration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 163
    .local v3, "timeLeft":J
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->collection:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 165
    :try_start_1
    iget-object v5, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v3, v1, v5

    .line 171
    goto :goto_0

    .line 167
    :catch_0
    move-exception v5

    .line 168
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v6, Ljava/io/PrintWriter;

    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 169
    .local v6, "out":Ljava/io/PrintWriter;
    invoke-virtual {v5, v6}, Ljava/lang/InterruptedException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 170
    new-instance v7, Lorg/apache/commons/collections/BufferUnderflowException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Caused by InterruptedException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    .end local p1    # "timeout":J
    throw v7

    .line 173
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "out":Ljava/io/PrintWriter;
    .restart local p1    # "timeout":J
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->collection:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 176
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BlockingBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/collections/Buffer;->get()Ljava/lang/Object;

    move-result-object v5

    monitor-exit v0

    return-object v5

    .line 174
    :cond_1
    new-instance v5, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string v6, "Timeout expired"

    invoke-direct {v5, v6}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    .end local p1    # "timeout":J
    throw v5

    .line 177
    .end local v1    # "expiration":J
    .end local v3    # "timeLeft":J
    .restart local p1    # "timeout":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public remove()Ljava/lang/Object;
    .locals 6

    .line 188
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :goto_0
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 191
    :try_start_1
    iget-wide v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->timeout:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    .line 192
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 200
    goto :goto_0

    .line 194
    :cond_0
    iget-wide v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->timeout:J

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/buffer/BlockingBuffer;->remove(J)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 198
    .local v2, "out":Ljava/io/PrintWriter;
    invoke-virtual {v1, v2}, Ljava/lang/InterruptedException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 199
    new-instance v3, Lorg/apache/commons/collections/BufferUnderflowException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Caused by InterruptedException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 202
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "out":Ljava/io/PrintWriter;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BlockingBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/Buffer;->remove()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 203
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public remove(J)Ljava/lang/Object;
    .locals 10
    .param p1, "timeout"    # J

    .line 216
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    .line 218
    .local v1, "expiration":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 219
    .local v3, "timeLeft":J
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->collection:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    .line 221
    :try_start_1
    iget-object v5, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v3, v1, v5

    .line 227
    goto :goto_0

    .line 223
    :catch_0
    move-exception v5

    .line 224
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v6, Ljava/io/PrintWriter;

    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 225
    .local v6, "out":Ljava/io/PrintWriter;
    invoke-virtual {v5, v6}, Ljava/lang/InterruptedException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 226
    new-instance v7, Lorg/apache/commons/collections/BufferUnderflowException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Caused by InterruptedException: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    .end local p1    # "timeout":J
    throw v7

    .line 229
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .end local v6    # "out":Ljava/io/PrintWriter;
    .restart local p1    # "timeout":J
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->collection:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 232
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BlockingBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/collections/Buffer;->remove()Ljava/lang/Object;

    move-result-object v5

    monitor-exit v0

    return-object v5

    .line 230
    :cond_1
    new-instance v5, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string v6, "Timeout expired"

    invoke-direct {v5, v6}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    .end local p1    # "timeout":J
    throw v5

    .line 233
    .end local v1    # "expiration":J
    .end local v3    # "timeLeft":J
    .restart local p1    # "timeout":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
