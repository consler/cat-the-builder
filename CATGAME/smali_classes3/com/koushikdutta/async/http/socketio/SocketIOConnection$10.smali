.class Lcom/koushikdutta/async/http/socketio/SocketIOConnection$10;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reportError(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

.field final synthetic val$error:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$10;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iput-object p2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$10;->val$error:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V
    .locals 1

    .line 334
    iget-object p1, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->errorCallback:Lcom/koushikdutta/async/http/socketio/ErrorCallback;

    if-eqz p1, :cond_0

    .line 336
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$10;->val$error:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/http/socketio/ErrorCallback;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
