.class Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


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

.field final synthetic val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient$9;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 0
    .param p1, "this$1"    # Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    .line 608
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 7
    .param p1, "ex"    # Ljava/lang/Exception;

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$fout:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    goto :goto_0

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Ljava/io/IOException;
    move-object p1, v0

    .line 617
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    if-eqz p1, :cond_0

    .line 618
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-object v0, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 619
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-object v3, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    const/4 v6, 0x0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$900(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    goto :goto_1

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$callback:Lcom/koushikdutta/async/http/AsyncHttpClient$FileCallback;

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-object v3, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$9$2;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$9;

    iget-object v6, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$9;->val$file:Ljava/io/File;

    invoke-static/range {v1 .. v6}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$900(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 624
    :goto_1
    return-void
.end method
