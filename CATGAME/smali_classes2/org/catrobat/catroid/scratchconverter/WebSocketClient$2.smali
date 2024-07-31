.class Lorg/catrobat/catroid/scratchconverter/WebSocketClient$2;
.super Ljava/lang/Object;
.source "WebSocketClient.java"

# interfaces
.implements Lorg/catrobat/catroid/scratchconverter/WebSocketClient$ConnectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->connectAndAuthenticate(Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

.field final synthetic val$connectAuthCallback:Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/scratchconverter/WebSocketClient;Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

    .line 157
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient$2;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient$2;"
    iput-object p1, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$2;->this$0:Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

    iput-object p2, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$2;->val$connectAuthCallback:Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lorg/catrobat/catroid/scratchconverter/ClientException;)V
    .locals 1
    .param p1, "ex"    # Lorg/catrobat/catroid/scratchconverter/ClientException;

    .line 166
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient$2;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient$2;"
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$2;->val$connectAuthCallback:Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;

    invoke-interface {v0, p1}, Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;->onConnectionFailure(Lorg/catrobat/catroid/scratchconverter/ClientException;)V

    .line 167
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 160
    .local p0, "this":Lorg/catrobat/catroid/scratchconverter/WebSocketClient$2;, "Lorg/catrobat/catroid/scratchconverter/WebSocketClient$2;"
    invoke-static {}, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Successfully connected to WebSocket server"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lorg/catrobat/catroid/scratchconverter/WebSocketClient$2;->this$0:Lorg/catrobat/catroid/scratchconverter/WebSocketClient;

    invoke-static {v0}, Lorg/catrobat/catroid/scratchconverter/WebSocketClient;->access$400(Lorg/catrobat/catroid/scratchconverter/WebSocketClient;)V

    .line 162
    return-void
.end method
