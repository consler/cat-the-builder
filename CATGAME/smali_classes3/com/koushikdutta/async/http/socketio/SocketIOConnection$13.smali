.class Lcom/koushikdutta/async/http/socketio/SocketIOConnection$13;
.super Ljava/lang/Object;
.source "SocketIOConnection.java"

# interfaces
.implements Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport$StringCallback;


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
    .param p1, "this$0"    # Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    .line 383
    iput-object p1, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$13;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStringAvailable(Ljava/lang/String;)V
    .locals 12
    .param p1, "message"    # Ljava/lang/String;

    .line 388
    const/4 v0, 0x0

    :try_start_0
    const-string v1, ":"

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 389
    .local v1, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 390
    .local v3, "code":I
    const/4 v4, 0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    packed-switch v3, :pswitch_data_0

    .line 443
    new-instance v2, Lcom/koushikdutta/async/http/socketio/SocketIOException;

    goto/16 :goto_1

    .line 441
    :pswitch_0
    goto/16 :goto_0

    .line 437
    :pswitch_1
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$13;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    aget-object v4, v1, v6

    aget-object v5, v1, v5

    invoke-static {v2, v4, v5}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->access$800(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    goto/16 :goto_0

    .line 426
    :pswitch_2
    aget-object v5, v1, v5

    const-string v7, "\\+"

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 427
    .local v5, "ackParts":[Ljava/lang/String;
    iget-object v7, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$13;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iget-object v7, v7, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->acknowledges:Ljava/util/Hashtable;

    aget-object v2, v5, v2

    invoke-virtual {v7, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/koushikdutta/async/http/socketio/Acknowledge;

    .line 428
    .local v2, "ack":Lcom/koushikdutta/async/http/socketio/Acknowledge;
    if-nez v2, :cond_0

    .line 429
    return-void

    .line 430
    :cond_0
    const/4 v7, 0x0

    .line 431
    .local v7, "arguments":Lorg/json/JSONArray;
    array-length v8, v5

    if-ne v8, v6, :cond_1

    .line 432
    new-instance v6, Lorg/json/JSONArray;

    aget-object v4, v5, v4

    invoke-direct {v6, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v7, v6

    .line 433
    :cond_1
    invoke-interface {v2, v7}, Lcom/koushikdutta/async/http/socketio/Acknowledge;->acknowledge(Lorg/json/JSONArray;)V

    .line 434
    goto :goto_0

    .line 417
    .end local v2    # "ack":Lcom/koushikdutta/async/http/socketio/Acknowledge;
    .end local v5    # "ackParts":[Ljava/lang/String;
    .end local v7    # "arguments":Lorg/json/JSONArray;
    :pswitch_3
    aget-object v2, v1, v5

    .line 418
    .local v2, "dataString":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 419
    .local v5, "data":Lorg/json/JSONObject;
    const-string v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 420
    .local v7, "event":Ljava/lang/String;
    const-string v8, "args"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 421
    .local v8, "args":Lorg/json/JSONArray;
    iget-object v9, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$13;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    aget-object v10, v1, v6

    iget-object v11, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$13;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    aget-object v4, v1, v4

    aget-object v6, v1, v6

    invoke-static {v11, v4, v6}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->access$400(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/socketio/Acknowledge;

    move-result-object v4

    invoke-static {v9, v10, v7, v8, v4}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->access$700(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    .line 422
    goto :goto_0

    .line 411
    .end local v2    # "dataString":Ljava/lang/String;
    .end local v5    # "data":Lorg/json/JSONObject;
    .end local v7    # "event":Ljava/lang/String;
    .end local v8    # "args":Lorg/json/JSONArray;
    :pswitch_4
    aget-object v2, v1, v5

    .line 412
    .restart local v2    # "dataString":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 413
    .local v5, "jsonMessage":Lorg/json/JSONObject;
    iget-object v7, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$13;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    aget-object v8, v1, v6

    iget-object v9, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$13;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    aget-object v4, v1, v4

    aget-object v6, v1, v6

    invoke-static {v9, v4, v6}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->access$400(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/socketio/Acknowledge;

    move-result-object v4

    invoke-static {v7, v8, v5, v4}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->access$600(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Lorg/json/JSONObject;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    .line 414
    goto :goto_0

    .line 406
    .end local v2    # "dataString":Ljava/lang/String;
    .end local v5    # "jsonMessage":Lorg/json/JSONObject;
    :pswitch_5
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$13;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    aget-object v7, v1, v6

    aget-object v5, v1, v5

    iget-object v8, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$13;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    aget-object v4, v1, v4

    aget-object v6, v1, v6

    invoke-static {v8, v4, v6}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->access$400(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Ljava/lang/String;)Lcom/koushikdutta/async/http/socketio/Acknowledge;

    move-result-object v4

    invoke-static {v2, v7, v5, v4}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->access$500(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;Ljava/lang/String;Lcom/koushikdutta/async/http/socketio/Acknowledge;)V

    .line 407
    goto :goto_0

    .line 402
    :pswitch_6
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$13;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iget-object v2, v2, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    const-string v4, "2::"

    invoke-interface {v2, v4}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->send(Ljava/lang/String;)V

    .line 403
    goto :goto_0

    .line 398
    :pswitch_7
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$13;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    aget-object v4, v1, v6

    invoke-static {v2, v4}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->access$300(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/String;)V

    .line 399
    goto :goto_0

    .line 393
    :pswitch_8
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$13;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iget-object v2, v2, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    invoke-interface {v2}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->disconnect()V

    .line 394
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$13;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    invoke-static {v2, v0}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->access$000(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/Exception;)V

    .line 395
    nop

    .line 451
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v3    # "code":I
    :goto_0
    goto :goto_2

    .line 443
    .restart local v1    # "parts":[Ljava/lang/String;
    .restart local v3    # "code":I
    :goto_1
    const-string v4, "unknown code"

    invoke-direct {v2, v4}, Lcom/koushikdutta/async/http/socketio/SocketIOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "message":Ljava/lang/String;
    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .end local v1    # "parts":[Ljava/lang/String;
    .end local v3    # "code":I
    .restart local p1    # "message":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 447
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$13;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iget-object v2, v2, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    invoke-interface {v2, v0}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->setClosedCallback(Lcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 448
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$13;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iget-object v2, v2, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    invoke-interface {v2}, Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;->disconnect()V

    .line 449
    iget-object v2, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$13;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    iput-object v0, v2, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->transport:Lcom/koushikdutta/async/http/socketio/transport/SocketIOTransport;

    .line 450
    iget-object v0, p0, Lcom/koushikdutta/async/http/socketio/SocketIOConnection$13;->this$0:Lcom/koushikdutta/async/http/socketio/SocketIOConnection;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/http/socketio/SocketIOConnection;->access$000(Lcom/koushikdutta/async/http/socketio/SocketIOConnection;Ljava/lang/Exception;)V

    .line 452
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
