.class Lcom/koushikdutta/async/PushParser$TapWaiter;
.super Lcom/koushikdutta/async/PushParser$Waiter;
.source "PushParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/PushParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TapWaiter"
.end annotation


# instance fields
.field private final callback:Lcom/koushikdutta/async/TapCallback;

.field final synthetic this$0:Lcom/koushikdutta/async/PushParser;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/PushParser;Lcom/koushikdutta/async/TapCallback;)V
    .locals 0
    .param p2, "callback"    # Lcom/koushikdutta/async/TapCallback;

    .line 160
    iput-object p1, p0, Lcom/koushikdutta/async/PushParser$TapWaiter;->this$0:Lcom/koushikdutta/async/PushParser;

    .line 161
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/PushParser$Waiter;-><init>(I)V

    .line 162
    iput-object p2, p0, Lcom/koushikdutta/async/PushParser$TapWaiter;->callback:Lcom/koushikdutta/async/TapCallback;

    .line 163
    return-void
.end method


# virtual methods
.method public onDataAvailable(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/ByteBufferList;)Lcom/koushikdutta/async/PushParser$Waiter;
    .locals 4
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "bb"    # Lcom/koushikdutta/async/ByteBufferList;

    .line 167
    iget-object v0, p0, Lcom/koushikdutta/async/PushParser$TapWaiter;->callback:Lcom/koushikdutta/async/TapCallback;

    invoke-static {v0}, Lcom/koushikdutta/async/PushParser;->getTap(Lcom/koushikdutta/async/TapCallback;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 168
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/PushParser$TapWaiter;->callback:Lcom/koushikdutta/async/TapCallback;

    iget-object v2, p0, Lcom/koushikdutta/async/PushParser$TapWaiter;->this$0:Lcom/koushikdutta/async/PushParser;

    invoke-static {v2}, Lcom/koushikdutta/async/PushParser;->access$000(Lcom/koushikdutta/async/PushParser;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    goto :goto_0

    .line 171
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "PushParser"

    const-string v3, "Error while invoking tap callback"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 174
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v1, p0, Lcom/koushikdutta/async/PushParser$TapWaiter;->this$0:Lcom/koushikdutta/async/PushParser;

    invoke-static {v1}, Lcom/koushikdutta/async/PushParser;->access$000(Lcom/koushikdutta/async/PushParser;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 175
    const/4 v1, 0x0

    return-object v1
.end method
