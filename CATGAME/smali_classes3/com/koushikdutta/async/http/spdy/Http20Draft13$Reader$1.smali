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

    .line 124
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 4

    .line 127
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/ByteBufferList;->order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    .line 128
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v0

    iput v0, p1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->w1:I

    .line 129
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result p2

    iput p2, p1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->w2:I

    .line 132
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget p2, p1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->w1:I

    const/high16 v0, 0x3fff0000    # 1.9921875f

    and-int/2addr p2, v0

    shr-int/lit8 p2, p2, 0x10

    int-to-short p2, p2

    iput-short p2, p1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->length:S

    .line 133
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget p2, p1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->w1:I

    const v0, 0xff00

    and-int/2addr p2, v0

    shr-int/lit8 p2, p2, 0x8

    int-to-byte p2, p2

    iput-byte p2, p1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->type:B

    .line 134
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget p2, p1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->w1:I

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    iput-byte p2, p1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->flags:B

    .line 136
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget p2, p1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->w2:I

    const v0, 0x7fffffff

    and-int/2addr p2, v0

    iput p2, p1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->streamId:I

    .line 137
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$000()Ljava/util/logging/Logger;

    move-result-object p1

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    invoke-static {}, Lcom/koushikdutta/async/http/spdy/Http20Draft13;->access$000()Ljava/util/logging/Logger;

    move-result-object p1

    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget p2, p2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->streamId:I

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v0, v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->length:S

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->type:B

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->flags:B

    const/4 v3, 0x1

    invoke-static {v3, p2, v0, v1, v2}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$FrameLogger;->formatHeader(ZIIBB)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->access$200(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)Lcom/koushikdutta/async/DataEmitterReader;

    move-result-object p1

    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short p2, p2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->length:S

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$1;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->access$100(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/koushikdutta/async/DataEmitterReader;->read(ILcom/koushikdutta/async/callback/DataCallback;)V

    return-void
.end method
