.class Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;
.super Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;
.source "AsyncHttpServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->onHeadersReceived()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;->this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    invoke-direct {p0, p2, p3}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;-><init>(Lcom/koushikdutta/async/AsyncSocket;Lcom/koushikdutta/async/http/server/AsyncHttpServerRequestImpl;)V

    return-void
.end method


# virtual methods
.method protected onEnd()V
    .locals 2

    .line 142
    invoke-super {p0}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->onEnd()V

    .line 143
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;->mSocket:Lcom/koushikdutta/async/AsyncSocket;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 144
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;->this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->responseComplete:Z

    .line 146
    iget-object v0, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;->this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    invoke-static {v0}, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->access$100(Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;)V

    return-void
.end method

.method protected report(Ljava/lang/Exception;)V
    .locals 1

    .line 132
    invoke-super {p0, p1}, Lcom/koushikdutta/async/http/server/AsyncHttpServerResponseImpl;->report(Ljava/lang/Exception;)V

    if-eqz p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;->this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v0, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;

    invoke-direct {v0}, Lcom/koushikdutta/async/callback/DataCallback$NullDataCallback;-><init>()V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setDataCallback(Lcom/koushikdutta/async/callback/DataCallback;)V

    .line 135
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;->this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    new-instance v0, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;

    invoke-direct {v0}, Lcom/koushikdutta/async/callback/CompletedCallback$NullCompletedCallback;-><init>()V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/AsyncSocket;->setEndCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 136
    iget-object p1, p0, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1$2;->this$2:Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;

    iget-object p1, p1, Lcom/koushikdutta/async/http/server/AsyncHttpServer$1$1;->val$socket:Lcom/koushikdutta/async/AsyncSocket;

    invoke-interface {p1}, Lcom/koushikdutta/async/AsyncSocket;->close()V

    :cond_0
    return-void
.end method
