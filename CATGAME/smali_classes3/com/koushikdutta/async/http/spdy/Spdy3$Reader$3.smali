.class Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    .line 190
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 4
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 193
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 194
    .local v0, "toRead":I
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->partial:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v1, v0}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 196
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object p2, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->partial:Lcom/koushikdutta/async/ByteBufferList;

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v2, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    sub-int/2addr v2, v0

    iput v2, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    .line 200
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$400(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-boolean v2, v2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->inFinished:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->streamId:I

    invoke-interface {v1, v2, v3, p2}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->data(ZILcom/koushikdutta/async/ByteBufferList;)V

    .line 202
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    if-nez v1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$500(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V

    .line 204
    :cond_2
    return-void
.end method
