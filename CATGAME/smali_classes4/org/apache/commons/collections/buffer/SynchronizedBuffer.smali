.class public Lorg/apache/commons/collections/buffer/SynchronizedBuffer;
.super Lorg/apache/commons/collections/collection/SynchronizedCollection;
.source "SynchronizedBuffer.java"

# interfaces
.implements Lorg/apache/commons/collections/Buffer;


# static fields
.field private static final serialVersionUID:J = -0x5f33639d2267948dL


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections/Buffer;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/collections/Buffer;Ljava/lang/Object;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections/collection/SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    return-void
.end method

.method public static decorate(Lorg/apache/commons/collections/Buffer;)Lorg/apache/commons/collections/Buffer;
    .locals 1

    .line 48
    new-instance v0, Lorg/apache/commons/collections/buffer/SynchronizedBuffer;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/buffer/SynchronizedBuffer;-><init>(Lorg/apache/commons/collections/Buffer;)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 84
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/SynchronizedBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/SynchronizedBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/Buffer;->get()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getBuffer()Lorg/apache/commons/collections/Buffer;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/SynchronizedBuffer;->collection:Ljava/util/Collection;

    check-cast v0, Lorg/apache/commons/collections/Buffer;

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/apache/commons/collections/buffer/SynchronizedBuffer;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/commons/collections/buffer/SynchronizedBuffer;->getBuffer()Lorg/apache/commons/collections/Buffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/collections/Buffer;->remove()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 92
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
