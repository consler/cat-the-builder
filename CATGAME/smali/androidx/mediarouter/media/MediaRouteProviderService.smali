.class public abstract Landroidx/mediarouter/media/MediaRouteProviderService;
.super Landroid/app/Service;
.source "MediaRouteProviderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/media/MediaRouteProviderService$ReceiveHandler;,
        Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;,
        Landroidx/mediarouter/media/MediaRouteProviderService$ProviderCallback;,
        Landroidx/mediarouter/media/MediaRouteProviderService$PrivateHandler;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field static final PRIVATE_MSG_CLIENT_DIED:I = 0x1

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.media.MediaRouteProviderService"

.field static final TAG:Ljava/lang/String; = "MediaRouteProviderSrv"


# instance fields
.field private final mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mCompositeDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

.field final mPrivateHandler:Landroidx/mediarouter/media/MediaRouteProviderService$PrivateHandler;

.field mProvider:Landroidx/mediarouter/media/MediaRouteProvider;

.field private final mProviderCallback:Landroidx/mediarouter/media/MediaRouteProviderService$ProviderCallback;

.field private final mReceiveHandler:Landroidx/mediarouter/media/MediaRouteProviderService$ReceiveHandler;

.field private final mReceiveMessenger:Landroid/os/Messenger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaRouteProviderSrv"

    const/4 v1, 0x3

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroidx/mediarouter/media/MediaRouteProviderService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 143
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Landroidx/mediarouter/media/MediaRouteProviderService$ReceiveHandler;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouteProviderService$ReceiveHandler;-><init>(Landroidx/mediarouter/media/MediaRouteProviderService;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mReceiveHandler:Landroidx/mediarouter/media/MediaRouteProviderService$ReceiveHandler;

    .line 145
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mReceiveMessenger:Landroid/os/Messenger;

    .line 146
    new-instance v0, Landroidx/mediarouter/media/MediaRouteProviderService$PrivateHandler;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouteProviderService$PrivateHandler;-><init>(Landroidx/mediarouter/media/MediaRouteProviderService;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mPrivateHandler:Landroidx/mediarouter/media/MediaRouteProviderService$PrivateHandler;

    .line 147
    new-instance v0, Landroidx/mediarouter/media/MediaRouteProviderService$ProviderCallback;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/MediaRouteProviderService$ProviderCallback;-><init>(Landroidx/mediarouter/media/MediaRouteProviderService;)V

    iput-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mProviderCallback:Landroidx/mediarouter/media/MediaRouteProviderService$ProviderCallback;

    return-void
.end method

.method static createDescriptorBundleForClientVersion(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;I)Landroid/os/Bundle;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 530
    :cond_0
    new-instance v1, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;

    invoke-direct {v1, p0}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;-><init>(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V

    .line 532
    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->setRoutes(Ljava/util/Collection;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;

    .line 533
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->getRoutes()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouteDescriptor;

    .line 534
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getMinClientVersion()I

    move-result v2

    if-lt p1, v2, :cond_1

    .line 535
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteDescriptor;->getMaxClientVersion()I

    move-result v2

    if-gt p1, v2, :cond_1

    .line 536
    invoke-virtual {v1, v0}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->addRoute(Landroidx/mediarouter/media/MediaRouteDescriptor;)Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;

    goto :goto_0

    .line 539
    :cond_2
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor$Builder;->build()Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProviderDescriptor;->asBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private getClient(Landroid/os/Messenger;)Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;
    .locals 1

    .line 574
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 575
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static getClientId(Landroid/os/Messenger;)Ljava/lang/String;
    .locals 2

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Client connection "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static sendGenericFailure(Landroid/os/Messenger;I)V
    .locals 6

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    .line 591
    invoke-static/range {v0 .. v5}, Landroidx/mediarouter/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private static sendGenericSuccess(Landroid/os/Messenger;I)V
    .locals 6

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    .line 597
    invoke-static/range {v0 .. v5}, Landroidx/mediarouter/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method static sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 1

    .line 603
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 604
    iput p1, v0, Landroid/os/Message;->what:I

    .line 605
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 606
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 607
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 608
    invoke-virtual {v0, p5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 610
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 614
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Could not send message to "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/mediarouter/media/MediaRouteProviderService;->getClientId(Landroid/os/Messenger;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MediaRouteProviderSrv"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :goto_0
    return-void
.end method


# virtual methods
.method findClient(Landroid/os/Messenger;)I
    .locals 3

    .line 579
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 581
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;

    .line 582
    invoke-virtual {v2, p1}, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;->hasMessenger(Landroid/os/Messenger;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public getMediaRouteProvider()Landroidx/mediarouter/media/MediaRouteProvider;
    .locals 1

    .line 167
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mProvider:Landroidx/mediarouter/media/MediaRouteProvider;

    return-object v0
.end method

.method onAddMemberRoute(Landroid/os/Messenger;IILjava/lang/String;)Z
    .locals 3

    .line 291
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {v0, p3}, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    move-result-object v1

    .line 294
    instance-of v2, v1, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    if-eqz v2, :cond_1

    .line 295
    check-cast v1, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 296
    invoke-virtual {v1, p4}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->onAddMemberRoute(Ljava/lang/String;)V

    .line 297
    sget-boolean v1, Landroidx/mediarouter/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Added a member route, controllerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", memberId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "MediaRouteProviderSrv"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    invoke-static {p1, p2}, Landroidx/mediarouter/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .line 172
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.media.MediaRouteProviderService"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 173
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mProvider:Landroidx/mediarouter/media/MediaRouteProvider;

    if-nez p1, :cond_1

    .line 174
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProviderService;->onCreateMediaRouteProvider()Landroidx/mediarouter/media/MediaRouteProvider;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 176
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteProvider;->getMetadata()Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProvider$ProviderMetadata;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProviderService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    iput-object p1, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mProvider:Landroidx/mediarouter/media/MediaRouteProvider;

    .line 186
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mProviderCallback:Landroidx/mediarouter/media/MediaRouteProviderService$ProviderCallback;

    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/MediaRouteProvider;->setCallback(Landroidx/mediarouter/media/MediaRouteProvider$Callback;)V

    goto :goto_0

    .line 178
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreateMediaRouteProvider() returned a provider whose package name does not match the package name of the service.  A media route provider service can only export its own media route providers.  Provider package name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".  Service package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    invoke-virtual {p0}, Landroidx/mediarouter/media/MediaRouteProviderService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 189
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mProvider:Landroidx/mediarouter/media/MediaRouteProvider;

    if-eqz p1, :cond_2

    .line 190
    iget-object p1, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mReceiveMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method onBinderDied(Landroid/os/Messenger;)V
    .locals 2

    .line 243
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 245
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;

    .line 246
    sget-boolean v0, Landroidx/mediarouter/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Binder died"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaRouteProviderSrv"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;->dispose()V

    :cond_1
    return-void
.end method

.method onCreateDynamicGroupRouteController(Landroid/os/Messenger;IILjava/lang/String;)Z
    .locals 7

    .line 271
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0, p4, p3}, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;->createDynamicGroupRouteController(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 276
    sget-boolean v1, Landroidx/mediarouter/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Route controller created, controllerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", initialMemberRouteId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "MediaRouteProviderSrv"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x6

    const/4 v4, 0x2

    const/4 v6, 0x0

    move-object v1, p1

    move v3, p2

    .line 280
    invoke-static/range {v1 .. v6}, Landroidx/mediarouter/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public abstract onCreateMediaRouteProvider()Landroidx/mediarouter/media/MediaRouteProvider;
.end method

.method onCreateRouteController(Landroid/os/Messenger;IILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 255
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 257
    invoke-virtual {v0, p4, p5, p3}, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;->createRouteController(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 258
    sget-boolean v1, Landroidx/mediarouter/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Route controller created, controllerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", routeId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ", routeGroupId="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "MediaRouteProviderSrv"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    invoke-static {p1, p2}, Landroidx/mediarouter/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method onRegisterClient(Landroid/os/Messenger;II)Z
    .locals 8

    const/4 v0, 0x1

    if-lt p3, v0, :cond_2

    .line 206
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result v1

    if-gez v1, :cond_2

    .line 208
    new-instance v1, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;

    invoke-direct {v1, p0, p1, p3}, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;-><init>(Landroidx/mediarouter/media/MediaRouteProviderService;Landroid/os/Messenger;I)V

    .line 209
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;->register()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 210
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    sget-boolean v2, Landroidx/mediarouter/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Registered, version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "MediaRouteProviderSrv"

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    .line 215
    iget-object p3, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mProvider:Landroidx/mediarouter/media/MediaRouteProvider;

    invoke-virtual {p3}, Landroidx/mediarouter/media/MediaRouteProvider;->getDescriptor()Landroidx/mediarouter/media/MediaRouteProviderDescriptor;

    move-result-object p3

    const/4 v3, 0x2

    const/4 v5, 0x2

    .line 216
    iget v1, v1, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;->mVersion:I

    .line 218
    invoke-static {p3, v1}, Landroidx/mediarouter/media/MediaRouteProviderService;->createDescriptorBundleForClientVersion(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;I)Landroid/os/Bundle;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p1

    move v4, p2

    .line 216
    invoke-static/range {v2 .. v7}, Landroidx/mediarouter/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method onReleaseRouteController(Landroid/os/Messenger;II)Z
    .locals 2

    .line 348
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 350
    invoke-virtual {v0, p3}, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;->releaseRouteController(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 351
    sget-boolean v1, Landroidx/mediarouter/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Route controller released, controllerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MediaRouteProviderSrv"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    invoke-static {p1, p2}, Landroidx/mediarouter/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method onRemoveMemberRoute(Landroid/os/Messenger;IILjava/lang/String;)Z
    .locals 3

    .line 310
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {v0, p3}, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    move-result-object v1

    .line 313
    instance-of v2, v1, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    if-eqz v2, :cond_1

    .line 314
    check-cast v1, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 315
    invoke-virtual {v1, p4}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->onRemoveMemberRoute(Ljava/lang/String;)V

    .line 316
    sget-boolean v1, Landroidx/mediarouter/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Removed a member route, controllerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", memberId="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "MediaRouteProviderSrv"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    invoke-static {p1, p2}, Landroidx/mediarouter/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method onRouteControlRequest(Landroid/os/Messenger;IILandroid/content/Intent;)Z
    .locals 10

    .line 440
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 443
    invoke-virtual {v7, p3}, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    move-result-object v8

    if-eqz v8, :cond_2

    if-eqz p2, :cond_0

    .line 447
    new-instance v9, Landroidx/mediarouter/media/MediaRouteProviderService$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, v7

    move v3, p3

    move-object v4, p4

    move-object v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Landroidx/mediarouter/media/MediaRouteProviderService$1;-><init>(Landroidx/mediarouter/media/MediaRouteProviderService;Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;ILandroid/content/Intent;Landroid/os/Messenger;I)V

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    .line 484
    :goto_0
    invoke-virtual {v8, p4, v9}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onControlRequest(Landroid/content/Intent;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 485
    sget-boolean p1, Landroidx/mediarouter/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 486
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ": Route control request delivered, controllerId="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", intent="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaRouteProviderSrv"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method onSelectRoute(Landroid/os/Messenger;II)Z
    .locals 2

    .line 364
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 367
    invoke-virtual {v0, p3}, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 369
    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSelect()V

    .line 370
    sget-boolean v1, Landroidx/mediarouter/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Route selected, controllerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MediaRouteProviderSrv"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    invoke-static {p1, p2}, Landroidx/mediarouter/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method onSetDiscoveryRequest(Landroid/os/Messenger;ILandroidx/mediarouter/media/MediaRouteDiscoveryRequest;)Z
    .locals 3

    .line 498
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {v0, p3}, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;->setDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)Z

    move-result v1

    .line 501
    sget-boolean v2, Landroidx/mediarouter/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": Set discovery request, request="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", actuallyChanged="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", compositeDiscoveryRequest="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MediaRouteProviderSrv"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    invoke-static {p1, p2}, Landroidx/mediarouter/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method onSetRouteVolume(Landroid/os/Messenger;III)Z
    .locals 2

    .line 402
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 405
    invoke-virtual {v0, p3}, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 407
    invoke-virtual {v1, p4}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onSetVolume(I)V

    .line 408
    sget-boolean v1, Landroidx/mediarouter/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Route volume changed, controllerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", volume="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "MediaRouteProviderSrv"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_0
    invoke-static {p1, p2}, Landroidx/mediarouter/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 198
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mProvider:Landroidx/mediarouter/media/MediaRouteProvider;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 199
    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouteProvider;->setCallback(Landroidx/mediarouter/media/MediaRouteProvider$Callback;)V

    .line 201
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method onUnregisterClient(Landroid/os/Messenger;I)Z
    .locals 3

    .line 229
    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService;->findClient(Landroid/os/Messenger;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 231
    iget-object v1, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;

    .line 232
    sget-boolean v1, Landroidx/mediarouter/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": Unregistered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaRouteProviderSrv"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;->dispose()V

    .line 236
    invoke-static {p1, p2}, Landroidx/mediarouter/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method onUnselectRoute(Landroid/os/Messenger;III)Z
    .locals 2

    .line 383
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 386
    invoke-virtual {v0, p3}, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 388
    invoke-virtual {v1, p4}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUnselect(I)V

    .line 389
    sget-boolean p4, Landroidx/mediarouter/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz p4, :cond_0

    .line 390
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, ": Route unselected, controllerId="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "MediaRouteProviderSrv"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    invoke-static {p1, p2}, Landroidx/mediarouter/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method onUpdateMemberRoutes(Landroid/os/Messenger;IILjava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Messenger;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 329
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 331
    invoke-virtual {v0, p3}, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    move-result-object v1

    .line 332
    instance-of v2, v1, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    if-eqz v2, :cond_1

    .line 333
    check-cast v1, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;

    .line 334
    invoke-virtual {v1, p4}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->onUpdateMemberRoutes(Ljava/util/List;)V

    .line 335
    sget-boolean v1, Landroidx/mediarouter/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Updated list of member routes, controllerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", memberIds="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "MediaRouteProviderSrv"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    invoke-static {p1, p2}, Landroidx/mediarouter/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method onUpdateRouteVolume(Landroid/os/Messenger;III)Z
    .locals 2

    .line 421
    invoke-direct {p0, p1}, Landroidx/mediarouter/media/MediaRouteProviderService;->getClient(Landroid/os/Messenger;)Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 424
    invoke-virtual {v0, p3}, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;->getRouteController(I)Landroidx/mediarouter/media/MediaRouteProvider$RouteController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 426
    invoke-virtual {v1, p4}, Landroidx/mediarouter/media/MediaRouteProvider$RouteController;->onUpdateVolume(I)V

    .line 427
    sget-boolean v1, Landroidx/mediarouter/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": Route volume updated, controllerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ", delta="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "MediaRouteProviderSrv"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    invoke-static {p1, p2}, Landroidx/mediarouter/media/MediaRouteProviderService;->sendGenericSuccess(Landroid/os/Messenger;I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method sendDescriptorChanged(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;)V
    .locals 9

    .line 513
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 515
    iget-object v2, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;

    .line 516
    iget-object v3, v2, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;->mMessenger:Landroid/os/Messenger;

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v2, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;->mVersion:I

    .line 517
    invoke-static {p1, v7}, Landroidx/mediarouter/media/MediaRouteProviderService;->createDescriptorBundleForClientVersion(Landroidx/mediarouter/media/MediaRouteProviderDescriptor;I)Landroid/os/Bundle;

    move-result-object v7

    const/4 v8, 0x0

    .line 516
    invoke-static/range {v3 .. v8}, Landroidx/mediarouter/media/MediaRouteProviderService;->sendReply(Landroid/os/Messenger;IIILjava/lang/Object;Landroid/os/Bundle;)V

    .line 518
    sget-boolean v3, Landroidx/mediarouter/media/MediaRouteProviderService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 519
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Sent descriptor change event, descriptor="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaRouteProviderSrv"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method updateCompositeDiscoveryRequest()Z
    .locals 8

    .line 546
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_4

    .line 548
    iget-object v6, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;

    iget-object v6, v6, Landroidx/mediarouter/media/MediaRouteProviderService$ClientRecord;->mDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    if-eqz v6, :cond_3

    .line 550
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->getSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/mediarouter/media/MediaRouteSelector;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 551
    :cond_0
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->isActiveScan()Z

    move-result v7

    or-int/2addr v5, v7

    if-nez v3, :cond_1

    move-object v3, v6

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    .line 556
    new-instance v1, Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    invoke-virtual {v3}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->getSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v7

    invoke-direct {v1, v7}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;-><init>(Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 558
    :cond_2
    invoke-virtual {v6}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;->getSelector()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->addSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Landroidx/mediarouter/media/MediaRouteSelector$Builder;

    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    .line 563
    new-instance v3, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouteSelector$Builder;->build()Landroidx/mediarouter/media/MediaRouteSelector;

    move-result-object v0

    invoke-direct {v3, v0, v5}, Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;-><init>(Landroidx/mediarouter/media/MediaRouteSelector;Z)V

    .line 565
    :cond_5
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    invoke-static {v0, v3}, Landroidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 566
    iput-object v3, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mCompositeDiscoveryRequest:Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;

    .line 567
    iget-object v0, p0, Landroidx/mediarouter/media/MediaRouteProviderService;->mProvider:Landroidx/mediarouter/media/MediaRouteProvider;

    invoke-virtual {v0, v3}, Landroidx/mediarouter/media/MediaRouteProvider;->setDiscoveryRequest(Landroidx/mediarouter/media/MediaRouteDiscoveryRequest;)V

    const/4 v0, 0x1

    return v0

    :cond_6
    return v2
.end method
