.class Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11$1;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/SocketIOConnection$SelectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;->acknowledge(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;Ljava/lang/Exception;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11$1;->this$1:Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11;

    iput-object p2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(Lcom/koushikdutta/async/http/socketio/SocketIOClient;)V
    .locals 1

    .line 359
    iget-object p1, p1, Lcom/koushikdutta/async/http/socketio/SocketIOClient;->exceptionCallback:Lcom/koushikdutta/async/http/socketio/ExceptionCallback;

    if-eqz p1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$11$1;->val$e:Ljava/lang/Exception;

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/http/socketio/ExceptionCallback;->onException(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
