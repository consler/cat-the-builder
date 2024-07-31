.class Lorg/catrobat/catroid/scratchconverter/WebSocketClient$1;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Lcom/koushikdutta/async/http/AsyncHttpClient$WebSocketConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->connect(Lorg/catrobat/catroid/scratchconverter/WebSocketClient$ConnectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

.field final synthetic val$client:Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

.field final synthetic val$connectCallback:Lorg/catrobat/catroid/scratchconverter/WebSocketClient$ConnectCallback;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/scratchconverter/WebSocketClient;Lorg/catrobat/catroid/scratchconverter/WebSocketClient$ConnectCallback;Lorg/catrobat/catroid/scratchconverter/WebSocketClient;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

    .line 108
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient$1;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient$1;"
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$1;->this$0:Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

    iput-object p2, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$1;->val$connectCallback:Lorg/catrobat/catroid/scratchconverter/WebSocketClient$ConnectCallback;

    iput-object p3, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$1;->val$client:Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Ljava/lang/Exception;Lcom/koushikdutta/async/http/WebSocket;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Exception;
    .param p2, "newWebSocket"    # Lcom/koushikdutta/async/http/WebSocket;

    .line 111
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient$1;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient$1;"
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$1;->this$0:Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

    invoke-static {v0}, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->access$000(Lorg/catrobat/catroid/scratchconverter/WebSocketClient;)Lorg/catrobat/catroid/scratchconverter/Client$State;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/Client$State;->CONNECTED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$1;->this$0:Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

    invoke-static {v0}, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->access$100(Lorg/catrobat/catroid/scratchconverter/WebSocketClient;)Lcom/koushikdutta/async/http/WebSocket;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 112
    if-eqz p1, :cond_1

    .line 113
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$1;->val$connectCallback:Lorg/catrobat/catroid/scratchconverter/WebSocketClient$ConnectCallback;

    new-instance v1, Lorg/catrobat/catroid/scratchconverter/ClientException;

    invoke-direct {v1, p1}, Lorg/catrobat/catroid/scratchconverter/ClientException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$ConnectCallback;->onFailure(Lorg/catrobat/catroid/scratchconverter/ClientException;)V

    .line 114
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$1;->this$0:Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

    sget-object v1, Lorg/catrobat/catroid/scratchconverter/Client$State;->CONNECTED:Lorg/catrobat/catroid/scratchconverter/Client$State;

    invoke-static {v0, v1}, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->access$002(Lorg/catrobat/catroid/scratchconverter/WebSocketClient;Lorg/catrobat/catroid/scratchconverter/Client$State;)Lorg/catrobat/catroid/scratchconverter/Client$State;

    .line 118
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$1;->this$0:Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

    invoke-static {v0, p2}, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->access$102(Lorg/catrobat/catroid/scratchconverter/WebSocketClient;Lcom/koushikdutta/async/http/WebSocket;)Lcom/koushikdutta/async/http/WebSocket;

    .line 121
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$1;->this$0:Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

    invoke-static {v0}, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->access$100(Lorg/catrobat/catroid/scratchconverter/WebSocketClient;)Lcom/koushikdutta/async/http/WebSocket;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$1;->this$0:Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

    invoke-static {v1}, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->access$200(Lorg/catrobat/catroid/scratchconverter/WebSocketClient;)Lorg/catrobat/catroid/scratchconverter/protocol/MessageListener;

    move-result-object v1

    check-cast v1, Lcom/koushikdutta/async/http/WebSocket$StringCallback;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/WebSocket;->setStringCallback(Lcom/koushikdutta/async/http/WebSocket$StringCallback;)V

    .line 124
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$1;->this$0:Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

    invoke-static {v0}, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->access$100(Lorg/catrobat/catroid/scratchconverter/WebSocketClient;)Lcom/koushikdutta/async/http/WebSocket;

    move-result-object v0

    iget-object v1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$1;->val$client:Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/http/WebSocket;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 125
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$1;->val$connectCallback:Lorg/catrobat/catroid/scratchconverter/WebSocketClient$ConnectCallback;

    invoke-interface {v0}, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$ConnectCallback;->onSuccess()V

    .line 126
    return-void
.end method
