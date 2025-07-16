.class Lcom/koushikdutta/async/http/socketio/SocketIOConnection$9;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->reportEvent(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

.field final synthetic val$acknowledge:Lcom/koushikdutta/async/http/socketio/Acknowledge;

.field final synthetic val$arguments:Lorg/json/JSONArray;

.field final synthetic val$event:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Lorg/json/JSONArray;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$9;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iput-object p2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$9;->val$event:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$9;->val$arguments:Lorg/json/JSONArray;

    iput-object p4, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$9;->val$acknowledge:Lcom/koushikdutta/async/http/socketio/Acknowledge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V
    .locals 3

    .line 325
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$9;->val$event:Ljava/lang/String;

    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$9;->val$arguments:Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$9;->val$acknowledge:Lcom/koushikdutta/async/http/socketio/Acknowledge;

    invoke-virtual {p1, v0, v1, v2}, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->onEvent(Ljava/lang/String;Lorg/json/JSONArray;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    return-void
.end method
