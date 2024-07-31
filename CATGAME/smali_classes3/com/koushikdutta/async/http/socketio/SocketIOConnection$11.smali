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
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    .line 347
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iput-object p2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;->val$endpoint:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;->val$messageId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acknowledge(Lorg/json/JSONArray;)V
    .locals 6
    .param p1, "arguments"    # Lorg/json/JSONArray;

    .line 350
    const-string v0, ""

    .line 351
    .local v0, "data":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iget-object v1, v1, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    .line 354
    .local v1, "transport":Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;
    if-nez v1, :cond_1

    .line 355
    new-instance v2, Lcom/koushikdutta/async/http/socketio/SocketIOException;

    const-string v3, "not connected to server"

    invoke-direct {v2, v3}, Lcom/koushikdutta/async/http/socketio/SocketIOException;-><init>(Ljava/lang/String;)V

    .line 356
    .local v2, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iget-object v4, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;->val$endpoint:Ljava/lang/String;

    new-instance v5, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11$1;

    invoke-direct {v5, p0, v2}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11$1;-><init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;Ljava/lang/Exception;)V

    invoke-static {v3, v4, v5}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->access$200(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;)V

    .line 364
    return-void

    .line 366
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;->val$messageId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const-string v4, "6:::%s%s"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->send(Ljava/lang/String;)V

    .line 367
    return-void
.end method
