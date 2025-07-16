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

    .line 161
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 5

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

    move-result p2

    iput p2, v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->w2:I

    .line 168
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget p2, p2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->w1:I

    const/high16 v0, -0x80000000

    and-int/2addr p2, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    .line 169
    :goto_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v3, v2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->w2:I

    const/high16 v4, -0x1000000

    and-int/2addr v3, v4

    ushr-int/lit8 v3, v3, 0x18

    iput v3, v2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->flags:I

    .line 170
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v3, v2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->w2:I

    const v4, 0xffffff

    and-int/2addr v3, v4

    iput v3, v2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    if-nez p2, :cond_2

    .line 173
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v2, p2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->w1:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, p2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->streamId:I

    .line 174
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v2, p2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->inFinished:Z

    .line 175
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {p2}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$000(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/DataEmitter;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 177
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget p2, p2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    if-nez p2, :cond_3

    .line 180
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {p2}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$000(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object p2

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$100(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/ByteBufferList;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/koushikdutta/async/callback/DataCallback;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    goto :goto_1

    .line 184
    :cond_2
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$300(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/DataEmitterReader;

    move-result-object p1

    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget p2, p2, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$200(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/callback/DataCallback;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/koushikdutta/async/DataEmitterReader;->read(ILcom/koushikdutta/async/callback/DataCallback;)V

    :cond_3
    :goto_1
    return-void
.end method
