.class Lcom/koushikdutta/async/http/AsyncHttpClient$10$1;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient$10;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$10;

.field final synthetic val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient$10;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$10$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$10;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$10$1;->val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "TT;)V"
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$10$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$10;

    iget-object v1, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$10;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$10$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$10;

    iget-object v2, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$10;->val$callback:Lcom/koushikdutta/async/http/callback/RequestCallback;

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$10$1;->this$1:Lcom/koushikdutta/async/http/AsyncHttpClient$10;

    iget-object v3, v0, Lcom/koushikdutta/async/http/AsyncHttpClient$10;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iget-object v4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$10$1;->val$response:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$900(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void
.end method
