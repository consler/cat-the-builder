.class Lcom/koushikdutta/async/http/socketio/SocketIOConnection$7;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reportJson(Ljava/lang/String;Lorg/json/JSONObject;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

.field final synthetic val$acknowledge:Lcom/koushikdutta/async/http/socketio/Acknowledge;

.field final synthetic val$jsonMessage:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Lorg/json/JSONObject;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 0
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    .line 300
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$7;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iput-object p2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$7;->val$jsonMessage:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$7;->val$acknowledge:Lcom/koushikdutta/async/http/socketio/Acknowledge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V
    .locals 3
    .param p1, "client"    # Lcom/koushikdutta/async/http/socketio/SocketIOClient;

    .line 303
    iget-object v0, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->jsonCallback:Lcom/koushikdutta/async/http/socketio/JSONCallback;

    .line 304
    .local v0, "callback":Lcom/koushikdutta/async/http/socketio/JSONCallback;
    if-eqz v0, :cond_0

    .line 305
    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$7;->val$jsonMessage:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$7;->val$acknowledge:Lcom/koushikdutta/async/http/socketio/Acknowledge;

    invoke-interface {v0, v1, v2}, Lcom/koushikdutta/async/http/socketio/JSONCallback;->onJSON(Lorg/json/JSONObject;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    .line 306
    :cond_0
    return-void
.end method
