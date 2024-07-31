.class Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;
.super Ljava/lang/Object;
.source "HttpTransportMiddleware.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/HttpTransportMiddleware;->exchangeHeaders(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/HttpTransportMiddleware;

.field final synthetic val$bsink:Lcom/koushikdutta/async/BufferedDataSink;

.field final synthetic val$sentCallback:Lcom/koushikdutta/async/callback/CompletedCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/HttpTransportMiddleware;Lcom/koushikdutta/async/callback/CompletedCallback;Lcom/koushikdutta/async/BufferedDataSink;)V
    .locals 0
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/HttpTransportMiddleware;

    .line 69
    iput-object p1, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->this$0:Lcom/koushikdutta/async/http/HttpTransportMiddleware;

    iput-object p2, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->val$sentCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    iput-object p3, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->val$bsink:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Exception;

    .line 72
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->val$sentCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/Util;->end(Lcom/koushikdutta/async/callback/CompletedCallback;Ljava/lang/Exception;)V

    .line 74
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->val$bsink:Lcom/koushikdutta/async/BufferedDataSink;

    if-eqz v0, :cond_0

    .line 75
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->forceBuffering(Z)V

    .line 76
    iget-object v0, p0, Lcom/koushikdutta/async/http/HttpTransportMiddleware$1;->val$bsink:Lcom/koushikdutta/async/BufferedDataSink;

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/BufferedDataSink;->setMaxBuffer(I)V

    .line 78
    :cond_0
    return-void
.end method
