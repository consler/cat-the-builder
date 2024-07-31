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
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    .line 207
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 5
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

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
    .local v0, "version":I
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v1, v1, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->w1:I

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 217
    .local v1, "type":I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 221
    packed-switch v1, :pswitch_data_0

    .line 255
    :pswitch_0
    :try_start_0
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    goto/16 :goto_0

    .line 251
    :pswitch_1
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->flags:I

    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v4, v4, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    invoke-static {v2, p2, v3, v4}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$1300(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    .line 252
    goto :goto_0

    .line 247
    :pswitch_2
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->flags:I

    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v4, v4, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    invoke-static {v2, p2, v3, v4}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$1200(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    .line 248
    goto :goto_0

    .line 243
    :pswitch_3
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->flags:I

    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v4, v4, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    invoke-static {v2, p2, v3, v4}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$1100(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    .line 244
    goto :goto_0

    .line 239
    :pswitch_4
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->flags:I

    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v4, v4, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    invoke-static {v2, p2, v3, v4}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$1000(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    .line 240
    goto :goto_0

    .line 235
    :pswitch_5
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->flags:I

    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v4, v4, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    invoke-static {v2, p2, v3, v4}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$900(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    .line 236
    goto :goto_0

    .line 231
    :pswitch_6
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->flags:I

    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v4, v4, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    invoke-static {v2, p2, v3, v4}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$800(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    .line 232
    goto :goto_0

    .line 227
    :pswitch_7
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->flags:I

    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v4, v4, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    invoke-static {v2, p2, v3, v4}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$700(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    .line 228
    goto :goto_0

    .line 223
    :pswitch_8
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->flags:I

    iget-object v4, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    iget v4, v4, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->length:I

    invoke-static {v2, p2, v3, v4}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$600(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;Lcom/koushikdutta/async/ByteBufferList;II)V

    .line 258
    :goto_0
    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {v2}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$500(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)V

    .line 262
    goto :goto_1

    .line 218
    :cond_0
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "version != 3: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v0    # "version":I
    .end local v1    # "type":I
    .end local p1    # "emitter":Lcom/koushikdutta/async/DataEmitter;
    .end local p2    # "bb":Lcom/koushikdutta/async/ByteBufferList;
    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .restart local v0    # "version":I
    .restart local v1    # "type":I
    .restart local p1    # "emitter":Lcom/koushikdutta/async/DataEmitter;
    .restart local p2    # "bb":Lcom/koushikdutta/async/ByteBufferList;
    :catch_0
    move-exception v2

    .line 261
    .local v2, "e":Ljava/io/IOException;
    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader$4;->this$0:Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;

    invoke-static {v3}, Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;->access$400(Lcom/koushikdutta/async/http/spdy/Spdy3$Reader;)Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->error(Ljava/lang/Exception;)V

    .line 263
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-void

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
