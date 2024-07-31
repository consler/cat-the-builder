.class final Landroidx/mediarouter/media/MediaRouteProviderService$ReceiveHandler;
.super Landroid/os/Handler;
.source "MediaRouteProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouteProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReceiveHandler"
.end annotation


# instance fields
.field private final mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/mediarouter/media/MediaRouteProviderService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouteProviderService;)V
    .locals 1
    .param p1, "service"    # Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 801
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 802
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$ReceiveHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 803
    return-void
.end method

.method private processMessage(ILandroid/os/Messenger;IILjava/lang/Object;Landroid/os/Bundle;)Z
    .locals 9
    .param p1, "what"    # I
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "requestId"    # I
    .param p4, "arg"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "data"    # Landroid/os/Bundle;

    .line 831
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService$ReceiveHandler;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouteProviderService;

    .line 832
    .local v0, "service":Landroidx/mediarouter/media/MediaRouteProviderService;
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 833
    const-string/jumbo v2, "volume"

    const-string v3, "memberRouteId"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 877
    :pswitch_0
    nop

    .line 878
    const-string v2, "memberRouteIds"

    invoke-virtual {p6, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 879
    .local v2, "memberIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    .line 880
    invoke-virtual {v0, p2, p3, p4, v2}, Landroidx/mediarouter/media/MediaRouteProviderService;->onUpdateMemberRoutes(Landroid/os/Messenger;IILjava/util/List;)Z

    move-result v1

    return v1

    .line 869
    .end local v2    # "memberIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_1
    invoke-virtual {p6, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 870
    .local v2, "memberId":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 871
    invoke-virtual {v0, p2, p3, p4, v2}, Landroidx/mediarouter/media/MediaRouteProviderService;->onRemoveMemberRoute(Landroid/os/Messenger;IILjava/lang/String;)Z

    move-result v1

    return v1

    .line 861
    .end local v2    # "memberId":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p6, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 862
    .restart local v2    # "memberId":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 863
    invoke-virtual {v0, p2, p3, p4, v2}, Landroidx/mediarouter/media/MediaRouteProviderService;->onAddMemberRoute(Landroid/os/Messenger;IILjava/lang/String;)Z

    move-result v1

    return v1

    .line 852
    .end local v2    # "memberId":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p6, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 853
    .local v2, "initialMemberId":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 854
    invoke-virtual {v0, p2, p3, p4, v2}, Landroidx/mediarouter/media/MediaRouteProviderService;->onCreateDynamicGroupRouteController(Landroid/os/Messenger;IILjava/lang/String;)Z

    move-result v1

    return v1

    .line 925
    .end local v2    # "initialMemberId":Ljava/lang/String;
    :pswitch_4
    if-eqz p5, :cond_0

    instance-of v2, p5, Landroid/os/Bundle;

    if-eqz v2, :cond_3

    .line 926
    :cond_0
    move-object v1, p5

    check-cast v1, Landroid/os/Bundle;

    .line 927
    invoke-static {v1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    move-result-object v1

    .line 928
    .local v1, "request":Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;
    if-eqz v1, :cond_1

    .line 930
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isValid()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 928
    :goto_0
    invoke-virtual {v0, p2, p3, v2}, Landroidx/mediarouter/media/MediaRouteProviderService;->onSetDiscoveryRequest(Landroid/os/Messenger;ILandroidx/mediarouter/media/MediaRouteDiscoveryRequest;)Z

    move-result v2

    return v2

    .line 918
    .end local v1    # "request":Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;
    :pswitch_5
    instance-of v2, p5, Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 919
    move-object v1, p5

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v0, p2, p3, p4, v1}, Landroidx/mediarouter/media/MediaRouteProviderService;->onRouteControlRequest(Landroid/os/Messenger;IILandroid/content/Intent;)Z

    move-result v1

    return v1

    .line 909
    :pswitch_6
    invoke-virtual {p6, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 910
    .local v2, "delta":I
    if-eqz v2, :cond_3

    .line 911
    invoke-virtual {v0, p2, p3, p4, v2}, Landroidx/mediarouter/media/MediaRouteProviderService;->onUpdateRouteVolume(Landroid/os/Messenger;III)Z

    move-result v1

    return v1

    .line 900
    .end local v2    # "delta":I
    :pswitch_7
    const/4 v3, -0x1

    invoke-virtual {p6, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 901
    .local v2, "volume":I
    if-ltz v2, :cond_3

    .line 902
    invoke-virtual {v0, p2, p3, p4, v2}, Landroidx/mediarouter/media/MediaRouteProviderService;->onSetRouteVolume(Landroid/os/Messenger;III)Z

    move-result v1

    return v1

    .line 893
    .end local v2    # "volume":I
    :pswitch_8
    if-nez p6, :cond_2

    goto :goto_1

    .line 895
    :cond_2
    const-string/jumbo v2, "unselectReason"

    invoke-virtual {p6, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    :goto_1
    nop

    .line 897
    .local v1, "reason":I
    invoke-virtual {v0, p2, p3, p4, v1}, Landroidx/mediarouter/media/MediaRouteProviderService;->onUnselectRoute(Landroid/os/Messenger;III)Z

    move-result v2

    return v2

    .line 890
    .end local v1    # "reason":I
    :pswitch_9
    invoke-virtual {v0, p2, p3, p4}, Landroidx/mediarouter/media/MediaRouteProviderService;->onSelectRoute(Landroid/os/Messenger;II)Z

    move-result v1

    return v1

    .line 887
    :pswitch_a
    invoke-virtual {v0, p2, p3, p4}, Landroidx/mediarouter/media/MediaRouteProviderService;->onReleaseRouteController(Landroid/os/Messenger;II)Z

    move-result v1

    return v1

    .line 841
    :pswitch_b
    const-string v2, "routeId"

    invoke-virtual {p6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 842
    .local v7, "routeId":Ljava/lang/String;
    nop

    .line 843
    const-string v2, "routeGroupId"

    invoke-virtual {p6, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 844
    .local v8, "routeGroupId":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 845
    move-object v1, v0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v7

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Landroidx/mediarouter/media/MediaRouteProviderService;->onCreateRouteController(Landroid/os/Messenger;IILjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 838
    .end local v7    # "routeId":Ljava/lang/String;
    .end local v8    # "routeGroupId":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {v0, p2, p3}, Landroidx/mediarouter/media/MediaRouteProviderService;->onUnregisterClient(Landroid/os/Messenger;I)Z

    move-result v1

    return v1

    .line 835
    :pswitch_d
    invoke-virtual {v0, p2, p3, p4}, Landroidx/mediarouter/media/MediaRouteProviderService;->onRegisterClient(Landroid/os/Messenger;II)Z

    move-result v1

    return v1

    .line 935
    :cond_3
    :goto_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 807
    iget-object v7, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 808
    .local v7, "messenger":Landroid/os/Messenger;
    invoke-static {v7}, Landroidx/mediarouter/media/MediaRouteProviderProtocol;->isValidRemoteMessenger(Landroid/os/Messenger;)Z

    move-result v0

    const-string v8, "MediaRouteProviderSrv"

    if-eqz v0, :cond_2

    .line 809
    iget v9, p1, Landroid/os/Message;->what:I

    .line 810
    .local v9, "what":I
    iget v10, p1, Landroid/os/Message;->arg1:I

    .line 811
    .local v10, "requestId":I
    iget v11, p1, Landroid/os/Message;->arg2:I

    .line 812
    .local v11, "arg":I
    iget-object v12, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 813
    .local v12, "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v13

    .line 814
    .local v13, "data":Landroid/os/Bundle;
    move-object v0, p0

    move v1, v9

    move-object v2, v7

    move v3, v10

    move v4, v11

    move-object v5, v12

    move-object v6, v13

    invoke-direct/range {v0 .. v6}, Landroidx/mediarouter/media/MediaRouteProviderService$ReceiveHandler;->processMessage(ILandroid/os/Messenger;IILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 815
    sget-boolean v0, Landroidx/mediarouter/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v7}, Landroidx/mediarouter/media/MediaRouteProviderService;->getClientId(Landroid/os/Messenger;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": Message failed, what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", arg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_0
    invoke-static {v7, v10}, Landroidx/mediarouter/media/MediaRouteProviderService;->sendGenericFailure(Landroid/os/Messenger;I)V

    .line 822
    .end local v9    # "what":I
    .end local v10    # "requestId":I
    .end local v11    # "arg":I
    .end local v12    # "obj":Ljava/lang/Object;
    .end local v13    # "data":Landroid/os/Bundle;
    :cond_1
    goto :goto_0

    .line 823
    :cond_2
    sget-boolean v0, Landroidx/mediarouter/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 824
    const-string v0, "Ignoring message without valid reply messenger."

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_3
    :goto_0
    return-void
.end method
