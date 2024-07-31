.class Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;
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

    .line 144
    iput-object p1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 4
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v0, v0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->type:B

    packed-switch v0, :pswitch_data_0

    .line 191
    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->recycle()V

    goto/16 :goto_0

    .line 186
    :pswitch_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->length:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->flags:B

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->streamId:I

    invoke-static {v0, p2, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->access$1200(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V

    .line 187
    goto/16 :goto_0

    .line 182
    :pswitch_1
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->length:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->flags:B

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->streamId:I

    invoke-static {v0, p2, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->access$1100(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V

    .line 183
    goto/16 :goto_0

    .line 178
    :pswitch_2
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->length:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->flags:B

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->streamId:I

    invoke-static {v0, p2, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->access$1000(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V

    .line 179
    goto/16 :goto_0

    .line 174
    :pswitch_3
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->length:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->flags:B

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->streamId:I

    invoke-static {v0, p2, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->access$900(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V

    .line 175
    goto :goto_0

    .line 170
    :pswitch_4
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->length:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->flags:B

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->streamId:I

    invoke-static {v0, p2, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->access$800(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V

    .line 171
    goto :goto_0

    .line 166
    :pswitch_5
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->length:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->flags:B

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->streamId:I

    invoke-static {v0, p2, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->access$700(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V

    .line 167
    goto :goto_0

    .line 162
    :pswitch_6
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->length:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->flags:B

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->streamId:I

    invoke-static {v0, p2, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->access$600(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V

    .line 163
    goto :goto_0

    .line 158
    :pswitch_7
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->length:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->flags:B

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->streamId:I

    invoke-static {v0, p2, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->access$500(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V

    .line 159
    goto :goto_0

    .line 154
    :pswitch_8
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->length:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->flags:B

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->streamId:I

    invoke-static {v0, p2, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->access$400(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V

    .line 155
    goto :goto_0

    .line 150
    :pswitch_9
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-short v1, v1, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->length:S

    iget-object v2, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget-byte v2, v2, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->flags:B

    iget-object v3, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    iget v3, v3, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->streamId:I

    invoke-static {v0, p2, v1, v2, v3}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->access$300(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;Lcom/koushikdutta/async/ByteBufferList;SBI)V

    .line 193
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    invoke-static {v0}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->access$1300(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    goto :goto_1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader$2;->this$0:Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;

    invoke-static {v1}, Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;->access$1400(Lcom/koushikdutta/async/http/spdy/Http20Draft13$Reader;)Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/koushikdutta/async/http/spdy/FrameReader$Handler;->error(Ljava/lang/Exception;)V

    .line 198
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
