.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$6$2;
.super Ljava/lang/Object;
.source "AsyncHttpServer.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer$6;->onRequest(Lcom/koushikdutta/async/http/server/AsyncHttpServerRequest;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$6;

.field final synthetic val$response:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$6;Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;)V
    .locals 0

    .line 496
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$6$2;->this$1:Lcom/koushikdutta/async/http/server/AsyncHttpServer$6;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$6$2;->val$response:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 0

    .line 499
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$6$2;->val$response:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;

    invoke-interface {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponse;->end()V

    return-void
.end method
