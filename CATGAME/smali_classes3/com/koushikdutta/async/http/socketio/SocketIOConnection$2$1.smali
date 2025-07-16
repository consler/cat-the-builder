.class Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2$1;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Lcom/koushikdutta/async/future/FutureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;->transform(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/future/FutureCallback<",
        "Lcom/koushikdutta/async/http/WebSocket;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;

.field final synthetic val$sessionId:Ljava/lang/String;

.field final synthetic val$transport:Lcom/koushikdutta/async/future/SimpleFuture;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;Lcom/koushikdutta/async/future/SimpleFuture;Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2$1;->this$1:Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2;

    iput-object p2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2$1;->val$transport:Lcom/koushikdutta/async/future/SimpleFuture;

    iput-object p3, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2$1;->val$sessionId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/WebSocket;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 138
    iget-object p2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2$1;->val$transport:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {p2, p1}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;)Z

    return-void

    .line 141
    :cond_0
    iget-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2$1;->val$transport:Lcom/koushikdutta/async/future/SimpleFuture;

    new-instance v0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;

    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2$1;->val$sessionId:Ljava/lang/String;

    invoke-direct {v0, p2, v1}, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;-><init>(Lcom/koushikdutta/async/http/WebSocket;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onCompleted(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .line 134
    check-cast p2, Lcom/koushikdutta/async/http/WebSocket;

    invoke-virtual {p0, p1, p2}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$2$1;->onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/WebSocket;)V

    return-void
.end method
