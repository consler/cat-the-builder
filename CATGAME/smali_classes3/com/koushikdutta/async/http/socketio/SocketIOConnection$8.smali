.class Lcom/koushikdutta/async/http/socketio/SocketIOConnection$8;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reportString(Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

.field final synthetic val$acknowledge:Lcom/koushikdutta/async/http/socketio/Acknowledge;

.field final synthetic val$string:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$8;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iput-object p2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$8;->val$string:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$8;->val$acknowledge:Lcom/koushikdutta/async/http/socketio/Acknowledge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V
    .locals 2

    .line 314
    iget-object p1, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->stringCallback:Lcom/koushikdutta/async/http/socketio/StringCallback;

    if-eqz p1, :cond_0

    .line 316
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$8;->val$string:Ljava/lang/String;

    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$8;->val$acknowledge:Lcom/koushikdutta/async/http/socketio/Acknowledge;

    invoke-interface {p1, v0, v1}, Lcom/koushikdutta/async/http/socketio/StringCallback;->onString(Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    :cond_0
    return-void
.end method
