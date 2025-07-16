.class Lcom/koushikdutta/async/http/socketio/SocketIOClient$1$1;
.super Ljava/lang/Object;
.source "SocketIOClient.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1$1;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1$1;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;->val$callback:Lcom/koushikdutta/async/http/socketio/ConnectCallback;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1$1;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;->val$callback:Lcom/koushikdutta/async/http/socketio/ConnectCallback;

    invoke-interface {v0, p1, p2}, Lcom/koushikdutta/async/http/socketio/ConnectCallback;->onConnectCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1$1;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;

    iget-object v0, v0, Lcom/koushikdutta/async/http/socketio/SocketIOClient$1;->val$ret:Lcom/koushikdutta/async/future/SimpleFuture;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/future/SimpleFuture;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z

    return-void
.end method
