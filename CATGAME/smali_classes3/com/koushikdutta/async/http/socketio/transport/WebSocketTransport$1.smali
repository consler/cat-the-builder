.class Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport$1;
.super Ljava/lang/Object;
.source "WebSocketTransport.java"

# interfaces
.implements Lcom/koushikdutta/async/http/WebSocket$StringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;->setStringCallback(Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;

.field final synthetic val$callback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport$1;->this$0:Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport;

    iput-object p2, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport$1;->val$callback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStringAvailable(Ljava/lang/String;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/transport/WebSocketTransport$1;->val$callback:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;->onStringAvailable(Ljava/lang/String;)V

    return-void
.end method
