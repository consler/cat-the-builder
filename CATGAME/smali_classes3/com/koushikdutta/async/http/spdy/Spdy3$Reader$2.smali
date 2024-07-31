.class Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;
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

    .line 161
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 6
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 164
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    .line 165
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v1

    iput v1, v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->w1:I

    .line 166
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->getInt()I

    move-result v1

    iput v1, v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->w2:I

    .line 168
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v0, v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->w1:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 169
    .local v0, "control":Z
    :goto_0
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v4, v3, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->w2:I

    const/high16 v5, -0x1000000

    and-int/2addr v4, v5

    ushr-int/lit8 v4, v4, 0x18

    iput v4, v3, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->flags:I

    .line 170
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v4, v3, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->w2:I

    const v5, 0xffffff

    and-int/2addr v4, v5

    iput v4, v3, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    .line 172
    if-nez v0, :cond_2

    .line 173
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v4, v3, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->w1:I

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    iput v4, v3, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->streamId:I

    .line 174
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v4, v3, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->flags:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, v3, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->inFinished:Z

    .line 175
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$000(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 177
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    if-nez v1, :cond_3

    .line 180
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$000(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {v2}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$100(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/koushikdutta/async/callback/DataCallback;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_1

    .line 184
    :cond_2
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$300(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/DataEmitterReader;

    move-result-object v1

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v2, v2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {v3}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$200(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/koushikdutta/async/DataEmitterReader;->read(ILcom/koushikdutta/async/callback/DataCallback;)V

    .line 186
    :cond_3
    :goto_1
    return-void
.end method
