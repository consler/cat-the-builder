.class Lcom/koushikdutta/async/http/AsyncHttpClient$9$1;
.super Lcom/koushikdutta/async/stream/OutputStreamDataCallback;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient$9;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

.field final synthetic val$contentLength:J

.field final synthetic val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient$9;Ljava/io/OutputStream;Lcom/koushikdutta/async/http/AsyncHttpResponse;J)V
    .locals 0
    .param p1, "this$1"    # Lcom/koushikdutta/async/http/AsyncHttpClient$9;
    .param p2, "os"    # Ljava/io/OutputStream;

    .line 600
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$1;->val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    iput-wide p4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$1;->val$contentLength:J

    invoke-direct {p0, p2}, Lcom/koushikdutta/async/stream/OutputStreamDataCallback;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 8
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 603
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-wide v1, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->mDownloaded:J

    invoke-virtual {p2}, Lcom/koushikdutta/async/ByteBufferList;->remaining()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->mDownloaded:J

    .line 604
    invoke-super {p0, p1, p2}, Lcom/koushikdutta/async/stream/OutputStreamDataCallback;->onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)V

    .line 605
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;

    iget-object v3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$1;->val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-wide v4, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->mDownloaded:J

    iget-wide v6, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$1;->val$contentLength:J

    invoke-static/range {v1 .. v7}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$1100(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;JJ)V

    .line 606
    return-void
.end method
