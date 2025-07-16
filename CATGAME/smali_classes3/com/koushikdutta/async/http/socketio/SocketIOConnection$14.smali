.class Lcom/koushikdutta/async/http/socketio/SocketIOConnection$14;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;


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

    .line 456
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$14;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V
    .locals 1

    .line 459
    iget-object v0, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->endpoint:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$14;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->connect(Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V

    return-void
.end method
