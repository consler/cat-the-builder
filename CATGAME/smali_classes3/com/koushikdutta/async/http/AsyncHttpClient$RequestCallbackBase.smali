.class public abstract Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lcom/koushikdutta/async/http/callback/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/http/AsyncHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RequestCallbackBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/callback/RequestCallback<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 478
    .local p0, "this":Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase;, "Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnect(Lcom/koushikdutta/async/http/AsyncHttpResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/koushikdutta/async/http/AsyncHttpResponse;

    .line 484
    .local p0, "this":Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase;, "Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase<TT;>;"
    return-void
.end method

.method public onProgress(Lcom/koushikdutta/async/http/AsyncHttpResponse;JJ)V
    .locals 0
    .param p1, "response"    # Lcom/koushikdutta/async/http/AsyncHttpResponse;
    .param p2, "downloaded"    # J
    .param p4, "total"    # J

    .line 481
    .local p0, "this":Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase;, "Lcom/koushikdutta/async/http/AsyncHttpClient$RequestCallbackBase<TT;>;"
    return-void
.end method
