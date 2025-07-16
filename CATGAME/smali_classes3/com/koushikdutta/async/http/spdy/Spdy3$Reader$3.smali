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

    .line 190
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 2

    .line 193
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result p1

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v0, v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 194
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v0, v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->partial:Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p2, v0, p1}, Lcom/koushikdutta/async/ByteBufferList;->get(Lcom/koushikdutta/async/ByteBufferList;I)V

    .line 196
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object p2, p2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->partial:Lcom/koushikdutta/async/ByteBufferList;

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    sub-int/2addr v1, p1

    iput v1, v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    .line 200
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$400(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v0, v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-boolean v0, v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->inFinished:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->streamId:I

    invoke-interface {p1, v0, v1, p2}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->data(ZILcom/koushikdutta/async/ByteBufferList;)V

    .line 202
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget p1, p1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    if-nez p1, :cond_2

    .line 203
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$3;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$500(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V

    :cond_2
    return-void
.end method
