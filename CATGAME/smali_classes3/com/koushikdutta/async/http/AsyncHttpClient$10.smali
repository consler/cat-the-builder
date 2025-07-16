.class Lcom/koushikdutta/async/http/AsyncHttpClient$10;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcom/koushikdutta/async/http/callback/HttpConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;->execute(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/parser/AsyncParser;Lcom/koushikdutta/async/http/callback/RequestCallback;)Lcom/koushikdutta/async/future/SimpleFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field final synthetic val$callback:Lcom/koushikdutta/async/http/callback/RequestCallback;

.field final synthetic val$parser:Lcom/koushikdutta/async/parser/AsyncParser;

.field final synthetic val$ret:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/parser/AsyncParser;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$10;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iput-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$10;->val$callback:Lcom/koushikdutta/async/http/callback/RequestCallback;

    iput-object p3, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$10;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p4, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$10;->val$parser:Lcom/koushikdutta/async/parser/AsyncParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 6

    if-eqz p1, :cond_0

    .line 638
    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$10;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$10;->val$callback:Lcom/koushikdutta/async/http/callback/RequestCallback;

    iget-object v2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$10;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    const/4 v5, 0x0

    move-object v3, p2

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$900(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/future/SimpleFuture;Lcom/koushikdutta/async/http/AsyncHttpResponse;Ljava/lang/Exception;Ljava/lang/Object;)V

    return-void

    .line 641
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$10;->this$0:Lcom/koushikdutta/async/http/AsyncHttpClient;

    iget-object v0, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$10;->val$callback:Lcom/koushikdutta/async/http/callback/RequestCallback;

    invoke-static {p1, v0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->access$1000(Lcom/koushikdutta/async/http/AsyncHttpClient;Lcom/koushikdutta/async/http/callback/RequestCallback;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    .line 643
    iget-object p1, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$10;->val$parser:Lcom/koushikdutta/async/parser/AsyncParser;

    invoke-interface {p1, p2}, Lcom/koushikdutta/async/parser/AsyncParser;->parse(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpClient$10$1;

    invoke-direct {v0, p0, p2}, Lcom/koushikdutta/async/http/AsyncHttpClient$10$1;-><init>(Lcom/koushikdutta/async/http/AsyncHttpClient$10;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V

    .line 644
    invoke-interface {p1, v0}, Lcom/koushikdutta/async/future/Future;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    move-result-object p1

    .line 652
    iget-object p2, p0, Lcom/koushikdutta/async/http/AsyncHttpClient$10;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setParent(Lcom/koushikdutta/async/future/Cancellable;)Lcom/koushikdutta/async/future/SimpleFuture;

    return-void
.end method
