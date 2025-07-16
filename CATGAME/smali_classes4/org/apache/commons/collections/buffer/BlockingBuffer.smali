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

    .line 90
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/SynchronizedBuffer;-><init>(Lorg/apache/commons/collections/Buffer;)V

    const-wide/16 v0, 0x0

    .line 91
    iput-wide v0, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->timeout:J

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections/Buffer;J)V
    .locals 2

    .line 103
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/buffer/SynchronizedBuffer;-><init>(Lorg/apache/commons/collections/Buffer;)V

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-gez p1, :cond_0

    move-wide p2, v0

    .line 104
    :cond_0
    iput-wide p2, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->timeout:J

    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/Buffer;)Lorg/apache/commons/collections/Buffer;
    .locals 1

    .line 66
    new-instance v0, Lorg/apache/commons/collections/buffer/BlockingBuffer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/buffer/BlockingBuffer;-><init>(Lorg/apache/commons/collections/Buffer;)V

    return-object v0
.end method

.method public static decorate(Lorg/apache/commons/collections/Buffer;J)Lorg/apache/commons/collections/Buffer;
    .locals 1

    .line 79
    new-instance v0, Lorg/apache/commons/collections/buffer/BlockingBuffer;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/buffer/BlockingBuffer;-><init>(Lorg/apache/commons/collections/Buffer;J)V

    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2

    .line 109
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->collection:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    .line 111
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 112
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 113
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2

    .line 117
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->collection:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    .line 119
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 120
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 121
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 5

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

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 136
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/buffer/BlockingBuffer;->get(J)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    .line 141
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/InterruptedException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 143
    new-instance v1, Lorg/apache/commons/collections/BufferUnderflowException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Caused by InterruptedException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BlockingBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/Buffer;->get()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 147
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public get(J)Ljava/lang/Object;
    .locals 5

    .line 160
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :goto_0
    sub-long p1, v1, p1

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    .line 163
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->collection:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 165
    :try_start_1
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v3, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 168
    :try_start_2
    new-instance p2, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {p2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 169
    invoke-virtual {p1, p2}, Ljava/lang/InterruptedException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 170
    new-instance p1, Lorg/apache/commons/collections/BufferUnderflowException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Caused by InterruptedException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->collection:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 176
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BlockingBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/collections/Buffer;->get()Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 174
    :cond_1
    new-instance p1, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string p2, "Timeout expired"

    invoke-direct {p1, p2}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 177
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public remove()Ljava/lang/Object;
    .locals 5

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

    cmp-long v3, v1, v3

    if-gtz v3, :cond_0

    .line 192
    iget-object v1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/collections/buffer/BlockingBuffer;->remove(J)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    .line 197
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 198
    invoke-virtual {v1, v2}, Ljava/lang/InterruptedException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 199
    new-instance v1, Lorg/apache/commons/collections/BufferUnderflowException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Caused by InterruptedException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BlockingBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/Buffer;->remove()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 203
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public remove(J)Ljava/lang/Object;
    .locals 5

    .line 216
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :goto_0
    sub-long p1, v1, p1

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    .line 219
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->collection:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 221
    :try_start_1
    iget-object v3, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->lock:Ljava/lang/Object;

    invoke-virtual {v3, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 224
    :try_start_2
    new-instance p2, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    invoke-direct {p2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 225
    invoke-virtual {p1, p2}, Ljava/lang/InterruptedException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 226
    new-instance p1, Lorg/apache/commons/collections/BufferUnderflowException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Caused by InterruptedException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 229
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/collections/buffer/BlockingBuffer;->collection:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 232
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/BlockingBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/collections/Buffer;->remove()Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 230
    :cond_1
    new-instance p1, Lorg/apache/commons/collections/BufferUnderflowException;

    const-string p2, "Timeout expired"

    invoke-direct {p1, p2}, Lorg/apache/commons/collections/BufferUnderflowException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 233
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
