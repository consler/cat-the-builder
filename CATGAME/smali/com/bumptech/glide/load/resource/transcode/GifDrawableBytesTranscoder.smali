.class public Lcom/bumptech/glide/load/resource/transcode/GifDrawableBytesTranscoder;
.super Ljava/lang/Object;
.source "GifDrawableBytesTranscoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<",
        "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
        "[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transcode(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 4
    .param p2, "options"    # Lcom/bumptech/glide/load/Options;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Lcom/bumptech/glide/load/Options;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "[B>;"
        }
    .end annotation

    .line 22
    .local p1, "toTranscode":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<Lcom/bumptech/glide/load/resource/gif/GifDrawable;>;"
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/resource/gif/GifDrawable;

    .line 23
    .local v0, "gifData":Lcom/bumptech/glide/load/resource/gif/GifDrawable;
    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/gif/GifDrawable;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 24
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    new-instance v2, Lcom/bumptech/glide/load/resource/bytes/BytesResource;

    invoke-static {v1}, Lcom/bumptech/glide/util/ByteBufferUtil;->toBytes(Ljava/nio/ByteBuffer;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/resource/bytes/BytesResource;-><init>([B)V

    return-object v2
.end method
