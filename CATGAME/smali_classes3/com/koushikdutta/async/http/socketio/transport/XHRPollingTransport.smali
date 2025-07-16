.class public Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;
.super Ljava/lang/Object;
.source "XHRPollingTransport.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = "\ufffd"


# instance fields
.field private client:Lcom/koushikdutta/async/http/AsyncHttpClient;

.field private closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

.field private connected:Z

.field private sessionId:Ljava/lang/String;

.field private sessionUrl:Landroid/net/Uri;

.field private stringCallback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/http/AsyncHttpClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->client:Lcom/koushikdutta/async/http/AsyncHttpClient;

    .line 27
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->sessionUrl:Landroid/net/Uri;

    .line 28
    iput-object p3, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->sessionId:Ljava/lang/String;

    .line 30
    invoke-direct {p0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->doLongPolling()V

    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->connected:Z

    return-void
.end method

.method static synthetic access$000(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;Ljava/lang/Exception;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->close(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$100(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->sendResult(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->doLongPolling()V

    return-void
.end method

.method private close(Ljava/lang/Exception;)V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/callback/CompletedCallback;->onCompleted(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method private computedRequestUrl()Ljava/lang/String;
    .locals 3

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->sessionUrl:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "t"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doLongPolling()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->client:Lcom/koushikdutta/async/http/AsyncHttpClient;

    new-instance v1, Lcom/koushikdutta/async/http/AsyncHttpGet;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->computedRequestUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpGet;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$2;

    invoke-direct {v2, p0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$2;-><init>(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;)V

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/http/AsyncHttpClient;->executeString(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)Lcom/koushikdutta/async/future/Future;

    return-void
.end method

.method private postMessage(Ljava/lang/String;)V
    .locals 2

    const-string v0, "5"

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 87
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpPost;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->computedRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpPost;-><init>(Ljava/lang/String;)V

    .line 88
    new-instance v1, Lcom/koushikdutta/async/http/body/StringBody;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/http/body/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)V

    .line 89
    iget-object p1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->client:Lcom/koushikdutta/async/http/AsyncHttpClient;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->executeString(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)Lcom/koushikdutta/async/future/Future;

    return-void
.end method

.method private sendResult(Ljava/lang/String;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->stringCallback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "\ufffd"

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->stringCallback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;->onStringAvailable(Ljava/lang/String;)V

    return-void

    .line 116
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 117
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 118
    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->stringCallback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p1, v2

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;->onStringAvailable(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 1

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->connected:Z

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->close(Ljava/lang/Exception;)V

    return-void
.end method

.method public getServer()Lcom/koushikdutta/async/AsyncServer;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->client:Lcom/koushikdutta/async/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/koushikdutta/async/http/AsyncHttpClient;->getServer()Lcom/koushikdutta/async/AsyncServer;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public heartbeats()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->connected:Z

    return v0
.end method

.method public send(Ljava/lang/String;)V
    .locals 2

    const-string v0, "5"

    .line 62
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->postMessage(Ljava/lang/String;)V

    return-void

    .line 67
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/http/AsyncHttpPost;

    invoke-direct {p0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->computedRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpPost;-><init>(Ljava/lang/String;)V

    .line 68
    new-instance v1, Lcom/koushikdutta/async/http/body/StringBody;

    invoke-direct {v1, p1}, Lcom/koushikdutta/async/http/body/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpRequest;->setBody(Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;)V

    .line 70
    iget-object p1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->client:Lcom/koushikdutta/async/http/AsyncHttpClient;

    new-instance v1, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$1;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport$1;-><init>(Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;)V

    invoke-virtual {p1, v0, v1}, Lcom/koushikdutta/async/http/AsyncHttpClient;->executeString(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/http/AsyncHttpClient$StringCallback;)Lcom/koushikdutta/async/future/Future;

    return-void
.end method

.method public setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->closedCallback:Lcom/koushikdutta/async/callback/CompletedCallback;

    return-void
.end method

.method public setStringCallback(Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/transport/XHRPollingTransport;->stringCallback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

    return-void
.end method
