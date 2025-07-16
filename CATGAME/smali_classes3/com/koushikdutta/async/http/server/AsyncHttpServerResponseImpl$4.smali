.class Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$4;
.super Ljava/lang/Object;
.source "AsyncHttpServerResponseImpl.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->proxy(Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

.field final synthetic val$remoteResponse:Lcom/koushikdutta/async/http/AsyncHttpResponse;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$4;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    iput-object p2, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$4;->val$remoteResponse:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 1

    .line 333
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$4;->val$remoteResponse:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    new-instance v0, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;

    invoke-direct {v0}, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;-><init>()V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 334
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$4;->val$remoteResponse:Lcom/koushikdutta/async/http/AsyncHttpResponse;

    new-instance v0, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v0}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/http/AsyncHttpResponse;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 335
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl$4;->this$0:Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;

    invoke-virtual {p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->end()V

    return-void
.end method
