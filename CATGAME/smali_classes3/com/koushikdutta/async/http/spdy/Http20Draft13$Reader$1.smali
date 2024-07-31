.class Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;
.super Ljava/lang/Object;
.source "Http20Draft13.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    .line 124
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 6
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 127
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    .line 128
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v1

    iput v1, v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->w1:I

    .line 129
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v1

    iput v1, v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->w2:I

    .line 132
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v1, v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->w1:I

    const/high16 v2, 0x3fff0000    # 1.9921875f

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    iput-short v1, v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->length:S

    .line 133
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v1, v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->w1:I

    const v2, 0xff00

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->type:B

    .line 134
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v1, v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->w1:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->flags:B

    .line 136
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v1, v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->w2:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->streamId:I

    .line 137
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$000()Ljava/util/logging/Logger;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->streamId:I

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v3, v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->length:S

    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v4, v4, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->type:B

    iget-object v5, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v5, v5, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->flags:B

    invoke-static {v1, v2, v3, v4, v5}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->access$200(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)Lcom/koushikdutta/async/DataEmitterReader;

    move-result-object v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->length:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    invoke-static {v2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->access$100(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/DataEmitterReader;->read(ILcom/koushikdutta/async/callback/DataCallback;)V

    .line 141
    return-void
.end method
