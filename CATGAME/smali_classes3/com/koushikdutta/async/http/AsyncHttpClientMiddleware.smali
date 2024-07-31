.class public interface abstract Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware;
.super Ljava/lang/Object;
.source "AsyncHttpClientMiddleware.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;,
        Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;,
        Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedDataOnRequestSentData;,
        Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestSentData;,
        Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;,
        Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;,
        Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;,
        Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$ResponseHead;
    }
.end annotation


# virtual methods
.method public abstract exchangeHeaders(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnExchangeHeaderData;)Z
.end method

.method public abstract getSocket(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$GetSocketData;)Lcom/koushikdutta/async/future/Cancellable;
.end method

.method public abstract onBodyDecoder(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnBodyDataOnRequestSentData;)V
.end method

.method public abstract onHeadersReceived(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnHeadersReceivedDataOnRequestSentData;)V
.end method

.method public abstract onRequest(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestData;)V
.end method

.method public abstract onRequestSent(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnRequestSentData;)V
.end method

.method public abstract onResponseComplete(Lcom/koushikdutta/async/http/AsyncHttpClientMiddleware$OnResponseCompleteDataOnRequestSentData;)V
.end method
