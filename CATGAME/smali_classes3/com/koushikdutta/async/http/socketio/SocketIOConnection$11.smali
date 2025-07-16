.class Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/Acknowledge;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->acknowledge(Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/socketio/Acknowledge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

.field final synthetic val$endpoint:Ljava/lang/String;

.field final synthetic val$messageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iput-object p2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;->val$endpoint:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;->val$messageId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acknowledge(Lorg/json/JSONArray;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 353
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iget-object v0, v0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    if-nez v0, :cond_1

    .line 355
    new-instance p1, Lcom/koushikdutta/async/http/socketio/SocketIOException;

    const-string v0, "not connected to server"

    invoke-direct {p1, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOException;-><init>(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;->val$endpoint:Ljava/lang/String;

    new-instance v2, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11$1;

    invoke-direct {v2, p0, p1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11$1;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;Ljava/lang/Exception;)V

    invoke-static {v0, v1, v2}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->access$200(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V

    return-void

    .line 366
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;->val$messageId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string p1, "6:::%s%s"

    invoke-static {v1, p1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->send(Ljava/lang/String;)V

    return-void
.end method
