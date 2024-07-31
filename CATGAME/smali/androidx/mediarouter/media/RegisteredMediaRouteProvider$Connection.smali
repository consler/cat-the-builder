.class final Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;
.super Ljava/lang/Object;
.source "RegisteredMediaRouteProvider.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/RegisteredMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Connection"
.end annotation


# instance fields
.field private mNextControllerId:I

.field private mNextRequestId:I

.field private final mPendingCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRegisterRequestId:I

.field private final mReceiveHandler:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;

.field private final mReceiveMessenger:Landroid/os/Messenger;

.field private final mServiceMessenger:Landroid/os/Messenger;

.field private mServiceVersion:I

.field final synthetic this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider;Landroid/os/Messenger;)V
    .locals 1
    .param p2, "serviceMessenger"    # Landroid/os/Messenger;

    .line 706
    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    const/4 p1, 0x1

    iput p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    .line 699
    iput p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextControllerId:I

    .line 703
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    .line 707
    iput-object p2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceMessenger:Landroid/os/Messenger;

    .line 708
    new-instance p1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;

    invoke-direct {p1, p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;-><init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V

    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mReceiveHandler:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;

    .line 709
    new-instance p1, Landroid/os/Messenger;

    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mReceiveHandler:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mReceiveMessenger:Landroid/os/Messenger;

    .line 710
    return-void
.end method

.method private sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "what"    # I
    .param p2, "requestId"    # I
    .param p3, "arg"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "data"    # Landroid/os/Bundle;

    .line 940
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 941
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 942
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 943
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 944
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 945
    invoke-virtual {v0, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 946
    iget-object v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mReceiveMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 948
    :try_start_0
    iget-object v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    const/4 v1, 0x1

    return v1

    .line 952
    :catch_0
    move-exception v1

    .line 953
    .local v1, "ex":Landroid/os/RemoteException;
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 954
    const-string v2, "MediaRouteProviderProxy"

    const-string v3, "Could not send message to service."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 950
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 956
    nop

    .line 957
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public addMemberRoute(ILjava/lang/String;)V
    .locals 7
    .param p1, "controllerId"    # I
    .param p2, "memberRouteId"    # Ljava/lang/String;

    .line 923
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 924
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "memberRouteId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    iget v3, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    const/16 v2, 0xc

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 926
    return-void
.end method

.method public binderDied()V
    .locals 2

    .line 840
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mPrivateHandler:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$PrivateHandler;

    new-instance v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection$2;

    invoke-direct {v1, p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection$2;-><init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$PrivateHandler;->post(Ljava/lang/Runnable;)Z

    .line 846
    return-void
.end method

.method public createDynamicGroupRouteController(Ljava/lang/String;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)I
    .locals 9
    .param p1, "initialMemberRouteId"    # Ljava/lang/String;
    .param p2, "callback"    # Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    .line 860
    iget v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextControllerId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextControllerId:I

    .line 861
    .local v0, "controllerId":I
    iget v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    .line 862
    .local v1, "requestId":I
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v8, v2

    .line 863
    .local v8, "data":Landroid/os/Bundle;
    const-string v2, "memberRouteId"

    invoke-virtual {v8, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const/16 v3, 0xb

    const/4 v6, 0x0

    move-object v2, p0

    move v4, v1

    move v5, v0

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 866
    iget-object v2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 867
    return v0
.end method

.method public createRouteController(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p1, "routeId"    # Ljava/lang/String;
    .param p2, "routeGroupId"    # Ljava/lang/String;

    .line 849
    iget v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextControllerId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextControllerId:I

    .line 850
    .local v0, "controllerId":I
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 851
    .local v1, "data":Landroid/os/Bundle;
    const-string v2, "routeId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string v2, "routeGroupId"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    iget v4, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v2, v4, 0x1

    iput v2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    const/4 v3, 0x3

    const/4 v6, 0x0

    move-object v2, p0

    move v5, v0

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 855
    return v0
.end method

.method public dispose()V
    .locals 6

    .line 730
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 731
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mReceiveHandler:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;

    invoke-virtual {v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ReceiveHandler;->dispose()V

    .line 732
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 734
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    iget-object v0, v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->mPrivateHandler:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$PrivateHandler;

    new-instance v1, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection$1;

    invoke-direct {v1, p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection$1;-><init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$PrivateHandler;->post(Ljava/lang/Runnable;)Z

    .line 740
    return-void
.end method

.method failPendingCallbacks()V
    .locals 4

    .line 743
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 744
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 745
    iget-object v2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 744
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 747
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 748
    return-void
.end method

.method public onControlRequestFailed(ILjava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "error"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Bundle;

    .line 818
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    .line 819
    .local v0, "callback":Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;
    if-eqz v0, :cond_0

    .line 820
    iget-object v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 821
    invoke-virtual {v0, p2, p3}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 822
    const/4 v1, 0x1

    return v1

    .line 824
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onControlRequestSucceeded(ILandroid/os/Bundle;)Z
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 808
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    .line 809
    .local v0, "callback":Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;
    if-eqz v0, :cond_0

    .line 810
    iget-object v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 811
    invoke-virtual {v0, p2}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onResult(Landroid/os/Bundle;)V

    .line 812
    const/4 v1, 0x1

    return v1

    .line 814
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onDescriptorChanged(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "descriptorBundle"    # Landroid/os/Bundle;

    .line 783
    iget v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 785
    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object v1

    .line 784
    invoke-virtual {v0, p0, v1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->onConnectionDescriptorChanged(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 786
    const/4 v0, 0x1

    return v0

    .line 788
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDynamicGroupRouteControllerCreated(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .line 828
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    .line 829
    .local v0, "callback":Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;
    if-eqz p2, :cond_0

    const-string v1, "routeId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    iget-object v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 831
    invoke-virtual {v0, p2}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onResult(Landroid/os/Bundle;)V

    goto :goto_0

    .line 833
    :cond_0
    const-string v1, "DynamicGroupRouteController is created without valid route id."

    invoke-virtual {v0, v1, p2}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 836
    :goto_0
    return-void
.end method

.method public onDynamicRouteDescriptorsChanged(ILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "controllerId"    # I
    .param p2, "descriptorsBundle"    # Landroid/os/Bundle;

    .line 793
    iget v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    if-eqz v0, :cond_1

    .line 795
    const-string v0, "dynamicRoutes"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 797
    .local v0, "bundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 798
    .local v1, "descriptors":Ljava/util/List;, "Ljava/util/List<Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 799
    .local v3, "bundle":Landroid/os/Bundle;
    invoke-static {v3}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    .end local v3    # "bundle":Landroid/os/Bundle;
    goto :goto_0

    .line 801
    :cond_0
    iget-object v2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    invoke-virtual {v2, p0, p1, v1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->onDynamicRouteDescriptorChanged(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;ILjava/util/List;)V

    .line 802
    const/4 v2, 0x1

    return v2

    .line 804
    .end local v0    # "bundles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .end local v1    # "descriptors":Ljava/util/List;, "Ljava/util/List<Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;>;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onGenericFailure(I)Z
    .locals 2
    .param p1, "requestId"    # I

    .line 751
    iget v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    if-ne p1, v0, :cond_0

    .line 752
    const/4 v0, 0x0

    iput v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    .line 753
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    const-string v1, "Registration failed"

    invoke-virtual {v0, p0, v1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->onConnectionError(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;Ljava/lang/String;)V

    .line 755
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    .line 756
    .local v0, "callback":Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;
    if-eqz v0, :cond_1

    .line 757
    iget-object v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 758
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;->onError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 760
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public onGenericSuccess(I)Z
    .locals 1
    .param p1, "requestId"    # I

    .line 764
    const/4 v0, 0x1

    return v0
.end method

.method public onRegistered(IILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "serviceVersion"    # I
    .param p3, "descriptorBundle"    # Landroid/os/Bundle;

    .line 769
    iget v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    .line 772
    iput v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    .line 773
    iput p2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceVersion:I

    .line 774
    iget-object v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    .line 775
    invoke-static {p3}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->fromBundle(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object v2

    .line 774
    invoke-virtual {v1, p0, v2}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->onConnectionDescriptorChanged(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 776
    iget-object v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    invoke-virtual {v1, p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->onConnectionReady(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V

    .line 777
    return v0

    .line 779
    :cond_0
    return v1
.end method

.method public register()Z
    .locals 6

    .line 713
    iget v2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    iput v2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingRegisterRequestId:I

    .line 714
    const/4 v1, 0x1

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 717
    return v1

    .line 721
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    const/4 v0, 0x1

    return v0

    .line 723
    :catch_0
    move-exception v0

    .line 724
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->binderDied()V

    .line 726
    .end local v0    # "ex":Landroid/os/RemoteException;
    return v1
.end method

.method public releaseRouteController(I)V
    .locals 6
    .param p1, "controllerId"    # I

    .line 871
    iget v2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    const/4 v1, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 873
    return-void
.end method

.method public removeMemberRoute(ILjava/lang/String;)V
    .locals 7
    .param p1, "controllerId"    # I
    .param p2, "memberRouteId"    # Ljava/lang/String;

    .line 929
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 930
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "memberRouteId"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    iget v3, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    const/16 v2, 0xd

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 932
    return-void
.end method

.method public selectRoute(I)V
    .locals 6
    .param p1, "controllerId"    # I

    .line 876
    iget v2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    const/4 v1, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 878
    return-void
.end method

.method public sendControlRequest(ILandroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)Z
    .locals 8
    .param p1, "controllerId"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "callback"    # Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;

    .line 903
    iget v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    .line 904
    .local v0, "requestId":I
    const/16 v3, 0x9

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 906
    if-eqz p3, :cond_0

    .line 907
    iget-object v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mPendingCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 909
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 911
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public setDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V
    .locals 6
    .param p1, "request"    # Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 935
    iget v2, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    if-eqz p1, :cond_0

    .line 936
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->asBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    const/4 v5, 0x0

    .line 935
    const/16 v1, 0xa

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 937
    return-void
.end method

.method public setVolume(II)V
    .locals 7
    .param p1, "controllerId"    # I
    .param p2, "volume"    # I

    .line 888
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 889
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "volume"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 890
    iget v3, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    const/4 v2, 0x7

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 892
    return-void
.end method

.method public unselectRoute(II)V
    .locals 7
    .param p1, "controllerId"    # I
    .param p2, "reason"    # I

    .line 881
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 882
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v1, "unselectReason"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 883
    iget v3, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    const/4 v2, 0x6

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 885
    return-void
.end method

.method public updateMemberRoutes(ILjava/util/List;)V
    .locals 7
    .param p1, "controllerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 916
    .local p2, "memberRouteIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 917
    .local v0, "data":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "memberRouteIds"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 918
    iget v3, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    const/16 v2, 0xe

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 920
    return-void
.end method

.method public updateVolume(II)V
    .locals 7
    .param p1, "controllerId"    # I
    .param p2, "delta"    # I

    .line 895
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 896
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v1, "volume"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 897
    iget v3, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->mNextRequestId:I

    const/16 v2, 0x8

    const/4 v5, 0x0

    move-object v1, p0

    move v4, p1

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->sendRequest(IIILjava/lang/Object;Landroid/os/Bundle;)Z

    .line 899
    return-void
.end method
