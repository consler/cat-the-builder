.class Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;
.super Ljava/lang/Object;
.source "ByteBufferGifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GifHeaderParserPool"
.end annotation


# instance fields
.field private final pool:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bumptech/glide/gifdecoder/GifHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;->pool:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method declared-synchronized obtain(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;->pool:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    .line 175
    .local v0, "result":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    if-nez v0, :cond_0

    .line 176
    new-instance v1, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    invoke-direct {v1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;-><init>()V

    move-object v0, v1

    .line 178
    .end local p0    # "this":Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->setData(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 173
    .end local v0    # "result":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized release(Lcom/bumptech/glide/gifdecoder/GifHeaderParser;)V
    .locals 1
    .param p1, "parser"    # Lcom/bumptech/glide/gifdecoder/GifHeaderParser;

    monitor-enter p0

    .line 182
    :try_start_0
    invoke-virtual {p1}, Lcom/bumptech/glide/gifdecoder/GifHeaderParser;->clear()V

    .line 183
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;->pool:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 181
    .end local p0    # "this":Lcom/bumptech/glide/load/resource/gif/ByteBufferGifDecoder$GifHeaderParserPool;
    .end local p1    # "parser":Lcom/bumptech/glide/gifdecoder/GifHeaderParser;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
