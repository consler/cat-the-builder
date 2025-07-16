.class Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;
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

    .line 207
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 3

    const-string p1, "version != 3: "

    .line 211
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Lcom/koushikdutta/async/ByteBufferList;->order(Ljava/nio/ByteOrder;)Lcom/koushikdutta/async/ByteBufferList;

    .line 213
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v0, v0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->w1:I

    const/high16 v1, 0x7fff0000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0x10

    .line 214
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->w1:I

    const v2, 0xffff

    and-int/2addr v1, v2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 255
    :pswitch_0
    :try_start_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v0, p1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->flags:I

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    invoke-static {p1, p2, v0, v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$1300(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    goto :goto_0

    .line 247
    :pswitch_2
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v0, p1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->flags:I

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    invoke-static {p1, p2, v0, v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$1200(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    goto :goto_0

    .line 243
    :pswitch_3
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v0, p1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->flags:I

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    invoke-static {p1, p2, v0, v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$1100(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    goto :goto_0

    .line 239
    :pswitch_4
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v0, p1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->flags:I

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    invoke-static {p1, p2, v0, v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$1000(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    goto :goto_0

    .line 235
    :pswitch_5
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v0, p1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->flags:I

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    invoke-static {p1, p2, v0, v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$900(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    goto :goto_0

    .line 231
    :pswitch_6
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v0, p1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->flags:I

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    invoke-static {p1, p2, v0, v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$800(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    goto :goto_0

    .line 227
    :pswitch_7
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v0, p1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->flags:I

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    invoke-static {p1, p2, v0, v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$700(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    goto :goto_0

    .line 223
    :pswitch_8
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v0, p1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->flags:I

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    invoke-static {p1, p2, v0, v1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$600(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    .line 258
    :goto_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {p1}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$500(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V

    goto :goto_1

    .line 218
    :cond_0
    new-instance p2, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 261
    iget-object p2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {p2}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$400(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->error(Ljava/lang/Exception;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
