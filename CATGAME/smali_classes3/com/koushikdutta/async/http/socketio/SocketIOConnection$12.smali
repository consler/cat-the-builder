.class Lcom/koushikdutta/async/http/socketio/SocketIOConnection$12;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Lcom/koushikdutta/async/callback/CompletedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->attach()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$12;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;)V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$12;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    .line 379
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$12;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    invoke-static {v0, p1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->access$000(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/Exception;)V

    return-void
.end method
