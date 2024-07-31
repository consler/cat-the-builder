.class public Lcom/huawei/hms/api/HuaweiApiClientImpl;
.super Lcom/huawei/hms/api/HuaweiApiClient;
.source "HuaweiApiClientImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/huawei/hms/support/api/client/InnerApiClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/api/HuaweiApiClientImpl$d;,
        Lcom/huawei/hms/api/HuaweiApiClientImpl$c;,
        Lcom/huawei/hms/api/HuaweiApiClientImpl$a;,
        Lcom/huawei/hms/api/HuaweiApiClientImpl$b;
    }
.end annotation


# static fields
.field public static final DEFAULT_ACCOUNT:Ljava/lang/String; = "<<default account>>"

.field public static final SIGN_IN_MODE_OPTIONAL:I = 0x2

.field public static final SIGN_IN_MODE_REQUIRED:I = 0x1

.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;


# instance fields
.field private A:Landroid/os/Handler;

.field private B:Lcom/huawei/hms/api/CheckUpdatelistener;

.field private C:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

.field private c:I

.field private final d:Landroid/content/Context;

.field private final e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private volatile h:Lcom/huawei/hms/core/aidl/d;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:Ljava/util/concurrent/atomic/AtomicInteger;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/huawei/hms/api/Api<",
            "*>;",
            "Lcom/huawei/hms/api/Api$ApiOptions;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/huawei/hms/support/api/client/SubAppInfo;

.field private r:J

.field private s:I

.field private final t:Ljava/lang/Object;

.field private final u:Ljava/util/concurrent/locks/ReentrantLock;

.field private final v:Ljava/util/concurrent/locks/Condition;

.field private w:Lcom/huawei/hms/api/ConnectionResult;

.field private x:Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;

.field private y:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

.field private z:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->a:Ljava/lang/Object;

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 299
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClient;-><init>()V

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c:I

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->l:Z

    .line 180
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 193
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->r:J

    .line 195
    iput v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:I

    .line 197
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->t:Ljava/lang/Object;

    .line 199
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Ljava/util/concurrent/locks/ReentrantLock;

    .line 201
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->v:Ljava/util/concurrent/locks/Condition;

    .line 216
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->z:Landroid/os/Handler;

    .line 221
    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->A:Landroid/os/Handler;

    .line 224
    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->B:Lcom/huawei/hms/api/CheckUpdatelistener;

    .line 300
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Landroid/content/Context;

    .line 301
    invoke-static {p1}, Lcom/huawei/hms/utils/Util;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->e:Ljava/lang/String;

    .line 302
    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->f:Ljava/lang/String;

    .line 303
    invoke-static {p1}, Lcom/huawei/hms/utils/Util;->getCpId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->g:Ljava/lang/String;

    .line 304
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/api/HuaweiApiClientImpl;)Lcom/huawei/hms/api/CheckUpdatelistener;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->B:Lcom/huawei/hms/api/CheckUpdatelistener;

    return-object p0
.end method

.method static synthetic a(Lcom/huawei/hms/api/HuaweiApiClientImpl;Lcom/huawei/hms/api/CheckUpdatelistener;)Lcom/huawei/hms/api/CheckUpdatelistener;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->B:Lcom/huawei/hms/api/CheckUpdatelistener;

    return-object p1
.end method

.method private a()V
    .locals 1

    .line 229
    new-instance v0, Lcom/huawei/hms/api/HuaweiApiClientImpl$1;

    invoke-direct {v0, p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl$1;-><init>(Lcom/huawei/hms/api/HuaweiApiClientImpl;)V

    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->C:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    .line 292
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/api/HuaweiApiClientImpl;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/api/HuaweiApiClientImpl;Lcom/huawei/hms/support/api/ResolveResult;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->a(Lcom/huawei/hms/support/api/ResolveResult;)V

    return-void
.end method

.method private a(Lcom/huawei/hms/support/api/ResolveResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/support/api/ResolveResult<",
            "Lcom/huawei/hms/support/api/entity/core/DisconnectResp;",
            ">;)V"
        }
    .end annotation

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter onDisconnectionResult, disconnect from server result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/ResolveResult;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1002
    const-string v0, "HuaweiApiClientImpl"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->n()V

    .line 1006
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b(I)V

    .line 1007
    return-void
.end method

.method private a(I)Z
    .locals 2

    .line 509
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 514
    const/4 p1, 0x0

    return p1

    .line 512
    :cond_0
    return v0
.end method

.method static synthetic a(Lcom/huawei/hms/api/HuaweiApiClientImpl;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/huawei/hms/api/HuaweiApiClientImpl;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 519
    const-string v0, "HuaweiApiClientImpl"

    const-string v1, "Enter sendForceConnectApiServceRequest."

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->m()Lcom/huawei/hms/support/api/entity/core/ConnectInfo;

    move-result-object v0

    .line 523
    invoke-static {p0, v0}, Lcom/huawei/hms/support/api/core/ConnectService;->forceConnect(Lcom/huawei/hms/support/api/client/ApiClient;Lcom/huawei/hms/support/api/entity/core/ConnectInfo;)Lcom/huawei/hms/support/api/client/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/huawei/hms/api/HuaweiApiClientImpl$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/huawei/hms/api/HuaweiApiClientImpl$a;-><init>(Lcom/huawei/hms/api/HuaweiApiClientImpl;Lcom/huawei/hms/api/HuaweiApiClientImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/client/PendingResult;->setResultCallback(Lcom/huawei/hms/support/api/client/ResultCallback;)V

    .line 524
    return-void
.end method

.method private b(I)V
    .locals 1

    .line 657
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 658
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 659
    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 661
    :try_start_0
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->v:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 664
    nop

    .line 666
    :cond_1
    return-void

    .line 663
    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 664
    throw p1
.end method

.method static synthetic b(Lcom/huawei/hms/api/HuaweiApiClientImpl;Lcom/huawei/hms/support/api/ResolveResult;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b(Lcom/huawei/hms/support/api/ResolveResult;)V

    return-void
.end method

.method private b(Lcom/huawei/hms/support/api/ResolveResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/support/api/ResolveResult<",
            "Lcom/huawei/hms/support/api/entity/core/ConnectResp;",
            ">;)V"
        }
    .end annotation

    .line 1082
    const-string v0, "HuaweiApiClientImpl"

    const-string v1, "Enter onConnectionResult"

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c(I)V

    .line 1088
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/ResolveResult;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/support/api/entity/core/ConnectResp;

    .line 1089
    if-eqz v2, :cond_0

    .line 1090
    iget-object v2, v2, Lcom/huawei/hms/support/api/entity/core/ConnectResp;->sessionId:Ljava/lang/String;

    iput-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->i:Ljava/lang/String;

    .line 1094
    :cond_0
    iget-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->q:Lcom/huawei/hms/support/api/client/SubAppInfo;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/huawei/hms/support/api/client/SubAppInfo;->getSubAppID()Ljava/lang/String;

    move-result-object v2

    .line 1095
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1096
    iput-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->f:Ljava/lang/String;

    .line 1099
    :cond_2
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/ResolveResult;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    move-result v2

    .line 1100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enter onConnectionResult, connect to server result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    sget-object v4, Lcom/huawei/hms/support/api/client/Status;->SUCCESS:Lcom/huawei/hms/support/api/client/Status;

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/ResolveResult;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/huawei/hms/support/api/client/Status;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1103
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/ResolveResult;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1104
    invoke-static {}, Lcom/huawei/hms/api/ProtocolNegotiate;->getInstance()Lcom/huawei/hms/api/ProtocolNegotiate;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/ResolveResult;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/support/api/entity/core/ConnectResp;

    iget-object p1, p1, Lcom/huawei/hms/support/api/entity/core/ConnectResp;->protocolVersion:Ljava/util/List;

    invoke-virtual {v2, p1}, Lcom/huawei/hms/api/ProtocolNegotiate;->negotiate(Ljava/util/List;)I

    .line 1107
    :cond_3
    invoke-direct {p0, v1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b(I)V

    .line 1108
    iput-object v3, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/ConnectionResult;

    .line 1110
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->x:Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;

    if-eqz p1, :cond_4

    .line 1111
    invoke-interface {p1}, Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;->onConnected()V

    .line 1115
    :cond_4
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->j:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    .line 1116
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->o()V

    .line 1119
    :cond_5
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->getApiMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1120
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/api/Api;

    invoke-virtual {v2}, Lcom/huawei/hms/api/Api;->getmConnetctPostList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/api/Api;

    invoke-virtual {v2}, Lcom/huawei/hms/api/Api;->getmConnetctPostList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1122
    const-string v2, "Enter onConnectionResult, get the ConnetctPostList "

    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/api/Api;

    invoke-virtual {v1}, Lcom/huawei/hms/api/Api;->getmConnetctPostList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/common/api/ConnectionPostProcessor;

    .line 1125
    const-string v3, "Enter onConnectionResult, processor.run"

    invoke-static {v0, v3}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    iget-object v3, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->j:Ljava/lang/ref/WeakReference;

    invoke-interface {v2, p0, v3}, Lcom/huawei/hms/common/api/ConnectionPostProcessor;->run(Lcom/huawei/hms/api/HuaweiApiClient;Ljava/lang/ref/WeakReference;)V

    .line 1127
    goto :goto_2

    .line 1129
    :cond_6
    goto :goto_1

    :cond_7
    goto :goto_3

    .line 1131
    :cond_8
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/ResolveResult;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object v0

    const/4 v4, 0x1

    if-eqz v0, :cond_9

    .line 1132
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/ResolveResult;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    move-result p1

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_9

    .line 1133
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->n()V

    .line 1134
    invoke-direct {p0, v4}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b(I)V

    .line 1136
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->x:Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;

    if-eqz p1, :cond_b

    .line 1137
    invoke-interface {p1, v1}, Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;->onConnectionSuspended(I)V

    goto :goto_3

    .line 1140
    :cond_9
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->n()V

    .line 1142
    invoke-direct {p0, v4}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b(I)V

    .line 1144
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->y:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    if-eqz p1, :cond_b

    .line 1145
    nop

    .line 1146
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->j:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1147
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->j:Ljava/lang/ref/WeakReference;

    .line 1148
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0, v2}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getResolveErrorPendingIntent(Landroid/app/Activity;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1150
    :cond_a
    new-instance p1, Lcom/huawei/hms/api/ConnectionResult;

    invoke-direct {p1, v2, v3}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 1151
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->y:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    invoke-interface {v0, p1}, Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V

    .line 1152
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/ConnectionResult;

    .line 1155
    :cond_b
    :goto_3
    return-void
.end method

.method private c()V
    .locals 3

    .line 549
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->y:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/utils/Util;->isBackground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    const/4 v0, 0x7

    goto :goto_0

    .line 554
    :cond_0
    const/4 v0, 0x6

    .line 557
    :goto_0
    const/4 v1, 0x0

    .line 558
    iget-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->j:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 560
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2, v0}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getResolveErrorPendingIntent(Landroid/app/Activity;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 562
    :cond_1
    new-instance v2, Lcom/huawei/hms/api/ConnectionResult;

    invoke-direct {v2, v0, v1}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 563
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->y:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    invoke-interface {v0, v2}, Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V

    .line 564
    iput-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/ConnectionResult;

    .line 566
    :cond_2
    return-void
.end method

.method private c(I)V
    .locals 4

    .line 742
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 743
    sget-object v2, Lcom/huawei/hms/api/HuaweiApiClientImpl;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 744
    :try_start_0
    iget-object v3, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->z:Landroid/os/Handler;

    if-eqz v3, :cond_0

    .line 745
    iget-object v3, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->z:Landroid/os/Handler;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 746
    iput-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->z:Landroid/os/Handler;

    .line 748
    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 750
    :cond_1
    :goto_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_3

    .line 751
    sget-object v2, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b:Ljava/lang/Object;

    monitor-enter v2

    .line 752
    :try_start_1
    iget-object v3, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->A:Landroid/os/Handler;

    if-eqz v3, :cond_2

    .line 753
    iget-object v3, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->A:Landroid/os/Handler;

    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 754
    iput-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->A:Landroid/os/Handler;

    .line 756
    :cond_2
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 759
    :cond_3
    :goto_1
    sget-object p1, Lcom/huawei/hms/api/HuaweiApiClientImpl;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 760
    :try_start_2
    iget-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->z:Landroid/os/Handler;

    if-eqz v2, :cond_4

    .line 761
    iget-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->z:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 762
    iput-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->z:Landroid/os/Handler;

    .line 764
    :cond_4
    monitor-exit p1

    .line 765
    return-void

    .line 764
    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0
.end method

.method static synthetic c(Lcom/huawei/hms/api/HuaweiApiClientImpl;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c()V

    return-void
.end method

.method private d()I
    .locals 3

    .line 578
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/utils/Util;->getHmsVersion(Landroid/content/Context;)I

    move-result v0

    .line 580
    const v1, 0x138d9d8

    if-eqz v0, :cond_1

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 602
    :cond_0
    return v0

    .line 584
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->e()I

    move-result v0

    .line 587
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 589
    if-ge v0, v1, :cond_2

    .line 590
    goto :goto_1

    .line 589
    :cond_2
    move v1, v0

    .line 592
    :goto_1
    return v1

    .line 595
    :cond_3
    const v1, 0x13a54c0

    if-ge v0, v1, :cond_4

    .line 596
    move v0, v1

    .line 598
    :cond_4
    return v0
.end method

.method static synthetic d(Lcom/huawei/hms/api/HuaweiApiClientImpl;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->j:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private e()I
    .locals 4

    .line 614
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->getApiMap()Ljava/util/Map;

    move-result-object v0

    .line 615
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 616
    return v1

    .line 618
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 620
    nop

    .line 621
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/api/Api;

    .line 622
    invoke-virtual {v2}, Lcom/huawei/hms/api/Api;->getApiName()Ljava/lang/String;

    move-result-object v2

    .line 623
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 624
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getApiMap()Ljava/util/Map;

    move-result-object v3

    .line 625
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 626
    if-eqz v2, :cond_1

    .line 627
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 628
    if-le v2, v1, :cond_1

    .line 629
    move v1, v2

    .line 633
    :cond_1
    goto :goto_0

    .line 635
    :cond_2
    return v1
.end method

.method private f()Z
    .locals 3

    .line 639
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->p:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 640
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 641
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 642
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/api/Api;

    .line 643
    invoke-virtual {v1}, Lcom/huawei/hms/api/Api;->getApiName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HuaweiGame.API"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    const/4 v0, 0x1

    return v0

    .line 646
    :cond_0
    goto :goto_0

    .line 648
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private g()V
    .locals 4

    .line 672
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.hms.core.aidlservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 673
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 674
    sget-object v1, Lcom/huawei/hms/api/HuaweiApiClientImpl;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 675
    :try_start_0
    iget-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 677
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->h()V

    .line 678
    monitor-exit v1

    return-void

    .line 680
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    invoke-direct {p0, v3}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b(I)V

    .line 682
    const-string v0, "HuaweiApiClientImpl"

    const-string v1, "In connect, bind core service fail"

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c()V

    .line 684
    return-void

    .line 680
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private h()V
    .locals 4

    .line 690
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->z:Landroid/os/Handler;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 691
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 693
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/huawei/hms/api/HuaweiApiClientImpl$2;

    invoke-direct {v3, p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl$2;-><init>(Lcom/huawei/hms/api/HuaweiApiClientImpl;)V

    invoke-direct {v0, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->z:Landroid/os/Handler;

    .line 711
    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->z:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 712
    return-void
.end method

.method private i()V
    .locals 5

    .line 718
    sget-object v0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 719
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->A:Landroid/os/Handler;

    const/4 v2, 0x3

    if-eqz v1, :cond_0

    .line 720
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->A:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 722
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Lcom/huawei/hms/api/HuaweiApiClientImpl$3;

    invoke-direct {v4, p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl$3;-><init>(Lcom/huawei/hms/api/HuaweiApiClientImpl;)V

    invoke-direct {v1, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->A:Landroid/os/Handler;

    .line 736
    :goto_0
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->A:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v1

    .line 737
    const-string v2, "HuaweiApiClientImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendEmptyMessageDelayed for onConnectionResult 3 seconds. the result is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    monitor-exit v0

    .line 739
    return-void

    .line 738
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private j()V
    .locals 3

    .line 971
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->k()Lcom/huawei/hms/support/api/entity/core/DisconnectInfo;

    move-result-object v0

    .line 974
    invoke-static {p0, v0}, Lcom/huawei/hms/support/api/core/ConnectService;->disconnect(Lcom/huawei/hms/support/api/client/ApiClient;Lcom/huawei/hms/support/api/entity/core/DisconnectInfo;)Lcom/huawei/hms/support/api/ResolvePendingResult;

    move-result-object v0

    new-instance v1, Lcom/huawei/hms/api/HuaweiApiClientImpl$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/huawei/hms/api/HuaweiApiClientImpl$b;-><init>(Lcom/huawei/hms/api/HuaweiApiClientImpl;Lcom/huawei/hms/api/HuaweiApiClientImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/ResolvePendingResult;->setResultCallback(Lcom/huawei/hms/support/api/client/ResultCallback;)V

    .line 975
    return-void
.end method

.method private k()Lcom/huawei/hms/support/api/entity/core/DisconnectInfo;
    .locals 3

    .line 984
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 986
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->p:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 987
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 988
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 989
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/api/Api;

    .line 990
    invoke-virtual {v2}, Lcom/huawei/hms/api/Api;->getApiName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    goto :goto_0

    .line 993
    :cond_0
    new-instance v1, Lcom/huawei/hms/support/api/entity/core/DisconnectInfo;

    iget-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->n:Ljava/util/List;

    invoke-direct {v1, v2, v0}, Lcom/huawei/hms/support/api/entity/core/DisconnectInfo;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method private l()V
    .locals 3

    .line 1054
    const-string v0, "HuaweiApiClientImpl"

    const-string v1, "Enter sendConnectApiServceRequest."

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->m()Lcom/huawei/hms/support/api/entity/core/ConnectInfo;

    move-result-object v0

    .line 1058
    invoke-static {p0, v0}, Lcom/huawei/hms/support/api/core/ConnectService;->connect(Lcom/huawei/hms/support/api/client/ApiClient;Lcom/huawei/hms/support/api/entity/core/ConnectInfo;)Lcom/huawei/hms/support/api/client/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/huawei/hms/api/HuaweiApiClientImpl$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/huawei/hms/api/HuaweiApiClientImpl$a;-><init>(Lcom/huawei/hms/api/HuaweiApiClientImpl;Lcom/huawei/hms/api/HuaweiApiClientImpl$1;)V

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/client/PendingResult;->setResultCallback(Lcom/huawei/hms/support/api/client/ResultCallback;)V

    .line 1059
    return-void
.end method

.method private m()Lcom/huawei/hms/support/api/entity/core/ConnectInfo;
    .locals 5

    .line 1068
    new-instance v0, Lcom/huawei/hms/utils/PackageManagerHelper;

    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/huawei/hms/utils/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/utils/PackageManagerHelper;->getPackageSignature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1069
    if-nez v0, :cond_0

    const-string v0, ""

    .line 1071
    :cond_0
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->q:Lcom/huawei/hms/support/api/client/SubAppInfo;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/huawei/hms/support/api/client/SubAppInfo;->getSubAppID()Ljava/lang/String;

    move-result-object v1

    .line 1073
    :goto_0
    new-instance v2, Lcom/huawei/hms/support/api/entity/core/ConnectInfo;

    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->getApiNameList()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->n:Ljava/util/List;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/huawei/hms/support/api/entity/core/ConnectInfo;-><init>(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private n()V
    .locals 1

    .line 1161
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/huawei/hms/utils/Util;->unBindServiceCatchException(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 1162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->h:Lcom/huawei/hms/core/aidl/d;

    .line 1163
    return-void
.end method

.method private o()V
    .locals 3

    .line 1169
    iget-boolean v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->l:Z

    if-eqz v0, :cond_0

    .line 1170
    const-string v0, "HuaweiApiClientImpl"

    const-string v1, "Connect notice has been shown."

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    return-void

    .line 1174
    :cond_0
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/api/HuaweiApiAvailability;->isHuaweiMobileNoticeAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1175
    const/4 v0, 0x0

    .line 1176
    const-string v1, "4.0.3.300"

    invoke-static {p0, v0, v1}, Lcom/huawei/hms/support/api/core/ConnectService;->getNotice(Lcom/huawei/hms/support/api/client/ApiClient;ILjava/lang/String;)Lcom/huawei/hms/support/api/client/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/huawei/hms/api/HuaweiApiClientImpl$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/huawei/hms/api/HuaweiApiClientImpl$c;-><init>(Lcom/huawei/hms/api/HuaweiApiClientImpl;Lcom/huawei/hms/api/HuaweiApiClientImpl$1;)V

    .line 1178
    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/api/client/PendingResult;->setResultCallback(Lcom/huawei/hms/support/api/client/ResultCallback;)V

    .line 1180
    :cond_1
    return-void
.end method


# virtual methods
.method public asyncRequest(Landroid/os/Bundle;Ljava/lang/String;ILcom/huawei/hms/support/api/client/ResultCallback;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "I",
            "Lcom/huawei/hms/support/api/client/ResultCallback<",
            "Lcom/huawei/hms/support/api/client/BundleResult;",
            ">;)I"
        }
    .end annotation

    .line 1214
    const-string v0, "HuaweiApiClientImpl"

    const-string v1, "Enter asyncRequest."

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    if-eqz p4, :cond_2

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1222
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->innerIsConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1223
    const-string p1, "client is unConnect."

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1224
    const p1, 0x3611c81b

    return p1

    .line 1228
    :cond_1
    new-instance v1, Lcom/huawei/hms/core/aidl/b;

    invoke-direct {v1, p2, p3}, Lcom/huawei/hms/core/aidl/b;-><init>(Ljava/lang/String;I)V

    .line 1229
    invoke-virtual {v1}, Lcom/huawei/hms/core/aidl/b;->c()I

    move-result p2

    invoke-static {p2}, Lcom/huawei/hms/core/aidl/a;->a(I)Lcom/huawei/hms/core/aidl/e;

    move-result-object p2

    .line 1232
    invoke-virtual {v1, p1}, Lcom/huawei/hms/core/aidl/b;->a(Landroid/os/Bundle;)Lcom/huawei/hms/core/aidl/b;

    .line 1235
    new-instance p1, Lcom/huawei/hms/core/aidl/RequestHeader;

    .line 1236
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->getAppID()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x26266e4

    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->getSessionId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, p3, v2, v3, v4}, Lcom/huawei/hms/core/aidl/RequestHeader;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 1237
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->getApiNameList()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/huawei/hms/core/aidl/RequestHeader;->setApiNameList(Ljava/util/List;)V

    .line 1239
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, p1, p3}, Lcom/huawei/hms/core/aidl/e;->a(Lcom/huawei/hms/core/aidl/IMessageEntity;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, v1, Lcom/huawei/hms/core/aidl/b;->b:Landroid/os/Bundle;

    .line 1242
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->getService()Lcom/huawei/hms/core/aidl/d;

    move-result-object p1

    new-instance p2, Lcom/huawei/hms/api/HuaweiApiClientImpl$4;

    invoke-direct {p2, p0, p4}, Lcom/huawei/hms/api/HuaweiApiClientImpl$4;-><init>(Lcom/huawei/hms/api/HuaweiApiClientImpl;Lcom/huawei/hms/support/api/client/ResultCallback;)V

    invoke-interface {p1, v1, p2}, Lcom/huawei/hms/core/aidl/d;->a(Lcom/huawei/hms/core/aidl/b;Lcom/huawei/hms/core/aidl/c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1258
    const/4 p1, 0x0

    return p1

    .line 1259
    :catch_0
    move-exception p1

    .line 1260
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "remote exception:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    const p1, 0x3611c819

    return p1

    .line 1217
    :cond_2
    :goto_0
    const-string p1, "arguments is invalid."

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    const p1, 0x3611c818

    return p1
.end method

.method public checkUpdate(Landroid/app/Activity;Lcom/huawei/hms/api/CheckUpdatelistener;)V
    .locals 3

    .line 895
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "HuaweiApiClientImpl"

    if-eqz v0, :cond_4

    .line 896
    const-string v0, "Enter checkUpdate"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    if-nez p2, :cond_0

    .line 899
    const-string p1, "listener is null!"

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    return-void

    .line 903
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 909
    :cond_1
    iput-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->B:Lcom/huawei/hms/api/CheckUpdatelistener;

    .line 910
    iget-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->C:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    if-nez p2, :cond_2

    .line 911
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->a()V

    .line 914
    :cond_2
    iget-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->C:Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, p2, v1, v0, v1}, Lcom/huawei/updatesdk/UpdateSdkAPI;->checkClientOTAUpdate(Landroid/content/Context;Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;ZIZ)V

    goto :goto_1

    .line 904
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkUpdate, activity is illegal: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const/4 p1, -0x1

    invoke-interface {p2, p1}, Lcom/huawei/hms/api/CheckUpdatelistener;->onResult(I)V

    .line 906
    return-void

    .line 916
    :cond_4
    const-string p1, "available lib does not exist."

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    :goto_1
    return-void
.end method

.method public connect(I)V
    .locals 0

    .line 1527
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->connect(Landroid/app/Activity;)V

    .line 1528
    return-void
.end method

.method public connect(Landroid/app/Activity;)V
    .locals 5

    .line 440
    const-string v0, "HuaweiApiClientImpl"

    const-string v1, "====== HMSSDK version: 40003300 ======"

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter connect, Connection Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const/4 v2, 0x3

    if-eq v1, v2, :cond_8

    const/4 v2, 0x5

    if-eq v1, v2, :cond_8

    const/4 v3, 0x2

    if-eq v1, v3, :cond_8

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    goto/16 :goto_3

    .line 451
    :cond_0
    if-eqz p1, :cond_1

    .line 452
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->j:Ljava/lang/ref/WeakReference;

    .line 453
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->k:Ljava/lang/ref/WeakReference;

    .line 460
    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/huawei/hms/utils/Util;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->e:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->f:Ljava/lang/String;

    .line 462
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d()I

    move-result p1

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect minVersion:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    invoke-static {p1}, Lcom/huawei/hms/api/HuaweiApiAvailability;->setServicesVersionCode(I)V

    .line 466
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/huawei/hms/api/HuaweiMobileServicesUtil;->isHuaweiMobileServicesAvailable(Landroid/content/Context;I)I

    move-result p1

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In connect, isHuaweiMobileServicesAvailable result: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    new-instance v1, Lcom/huawei/hms/utils/PackageManagerHelper;

    iget-object v4, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/huawei/hms/utils/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 470
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hms/utils/HMSPackageManager;->getHmsVersionCode()I

    move-result v1

    iput v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:I

    .line 472
    if-nez p1, :cond_4

    .line 473
    invoke-direct {p0, v2}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b(I)V

    .line 475
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->h:Lcom/huawei/hms/core/aidl/d;

    if-nez p1, :cond_3

    .line 477
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->g()V

    goto/16 :goto_2

    .line 480
    :cond_3
    invoke-direct {p0, v3}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b(I)V

    .line 482
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->l()V

    .line 484
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->i()V

    goto :goto_2

    .line 487
    :cond_4
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->y:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    if-eqz v1, :cond_7

    .line 488
    const/4 v1, 0x0

    .line 490
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->a(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageName()Ljava/lang/String;

    move-result-object v2

    .line 491
    const-string v3, "com.huawei.hwid.tv"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 492
    new-instance v1, Lcom/huawei/hms/api/ConnectionResult;

    invoke-direct {v1, p1}, Lcom/huawei/hms/api/ConnectionResult;-><init>(I)V

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect 2.0 fail! HMS-TV needs to be updated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 495
    :cond_5
    iget-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->j:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 497
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v1, v2, p1}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getResolveErrorPendingIntent(Landroid/app/Activity;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 498
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect2.0 fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_6
    new-instance v0, Lcom/huawei/hms/api/ConnectionResult;

    invoke-direct {v0, p1, v1}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    move-object v1, v0

    .line 502
    :goto_1
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->y:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    invoke-interface {p1, v1}, Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V

    .line 503
    iput-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/ConnectionResult;

    .line 506
    :cond_7
    :goto_2
    return-void

    .line 448
    :cond_8
    :goto_3
    return-void
.end method

.method public connectForeground()V
    .locals 4

    .line 528
    const-string v0, "HuaweiApiClientImpl"

    const-string v1, "====== HMSSDK version: 40003300 ======"

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter forceConnect, Connection Status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    goto :goto_1

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/utils/Util;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->e:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->f:Ljava/lang/String;

    .line 545
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b()V

    .line 546
    return-void

    .line 536
    :cond_2
    :goto_1
    return-void
.end method

.method public disableLifeCycleManagement(Landroid/app/Activity;)V
    .locals 1

    .line 1532
    iget v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c:I

    if-ltz v0, :cond_1

    .line 1533
    invoke-static {p1}, Lcom/huawei/hms/common/internal/AutoLifecycleFragment;->getInstance(Landroid/app/Activity;)Lcom/huawei/hms/common/internal/AutoLifecycleFragment;

    move-result-object p1

    .line 1534
    if-nez p1, :cond_0

    .line 1535
    return-void

    .line 1537
    :cond_0
    iget v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c:I

    invoke-virtual {p1, v0}, Lcom/huawei/hms/common/internal/AutoLifecycleFragment;->stopAutoManage(I)V

    .line 1538
    return-void

    .line 1540
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "disableLifeCycleManagement failed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public discardAndReconnect()Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/client/Status;",
            ">;"
        }
    .end annotation

    .line 1494
    new-instance v0, Lcom/huawei/hms/api/HuaweiApiClientImpl$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/huawei/hms/api/HuaweiApiClientImpl$d;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-object v0
.end method

.method public disconnect()V
    .locals 4

    .line 769
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 771
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter disconnect, Connection Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HuaweiApiClientImpl"

    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq v0, v1, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 780
    :cond_0
    invoke-direct {p0, v1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c(I)V

    .line 781
    invoke-direct {p0, v2}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b(I)V

    .line 782
    goto :goto_0

    .line 789
    :cond_1
    invoke-direct {p0, v2}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b(I)V

    .line 791
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->j()V

    .line 792
    goto :goto_0

    .line 784
    :cond_2
    invoke-direct {p0, v2}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b(I)V

    .line 785
    nop

    .line 801
    :goto_0
    return-void
.end method

.method public getApiMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/api/Api<",
            "*>;",
            "Lcom/huawei/hms/api/Api$ApiOptions;",
            ">;"
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->p:Ljava/util/Map;

    return-object v0
.end method

.method public getApiNameList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1272
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->p:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1273
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1274
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1275
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/api/Api;

    .line 1276
    invoke-virtual {v2}, Lcom/huawei/hms/api/Api;->getApiName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1277
    goto :goto_0

    .line 1279
    :cond_0
    return-object v0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectionResult(Lcom/huawei/hms/api/Api;)Lcom/huawei/hms/api/ConnectionResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/Api<",
            "*>;)",
            "Lcom/huawei/hms/api/ConnectionResult;"
        }
    .end annotation

    .line 1504
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->isConnected()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1505
    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/ConnectionResult;

    .line 1506
    new-instance p1, Lcom/huawei/hms/api/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1

    .line 1508
    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/ConnectionResult;

    if-eqz p1, :cond_1

    .line 1509
    return-object p1

    .line 1511
    :cond_1
    new-instance p1, Lcom/huawei/hms/api/ConnectionResult;

    const/16 v1, 0xd

    invoke-direct {p1, v1, v0}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Landroid/content/Context;

    return-object v0
.end method

.method public getCpID()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionInfos()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->o:Ljava/util/List;

    return-object v0
.end method

.method public getScopes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;"
        }
    .end annotation

    .line 367
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->n:Ljava/util/List;

    return-object v0
.end method

.method public getService()Lcom/huawei/hms/core/aidl/d;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->h:Lcom/huawei/hms/core/aidl/d;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubAppInfo()Lcom/huawei/hms/support/api/client/SubAppInfo;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->q:Lcom/huawei/hms/support/api/client/SubAppInfo;

    return-object v0
.end method

.method public getTopActivity()Landroid/app/Activity;
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->k:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 951
    const/4 v0, 0x0

    return-object v0

    .line 953
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public getTransportName()Ljava/lang/String;
    .locals 1

    .line 348
    const-class v0, Lcom/huawei/hms/api/IPCTransport;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasConnectedApi(Lcom/huawei/hms/api/Api;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/Api<",
            "*>;)Z"
        }
    .end annotation

    .line 1523
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->isConnected()Z

    move-result p1

    return p1
.end method

.method public hasConnectionFailureListener(Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;)Z
    .locals 2

    .line 1362
    const-string v0, "onConnectionFailedListener should not be null"

    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1363
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 1364
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->y:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    if-ne v1, p1, :cond_0

    .line 1365
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 1367
    :cond_0
    monitor-exit v0

    .line 1368
    const/4 p1, 0x0

    return p1

    .line 1367
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public hasConnectionSuccessListener(Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;)Z
    .locals 2

    .line 1345
    const-string v0, "connectionCallbacksListener should not be null"

    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1346
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 1347
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->x:Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;

    if-ne v1, p1, :cond_0

    .line 1348
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 1350
    :cond_0
    monitor-exit v0

    .line 1351
    const/4 p1, 0x0

    return p1

    .line 1350
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public holdUpConnect()Lcom/huawei/hms/api/ConnectionResult;
    .locals 3

    .line 1407
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_3

    .line 1410
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1412
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->connect(Landroid/app/Activity;)V

    .line 1413
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->isConnecting()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1415
    :try_start_1
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->v:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1419
    goto :goto_0

    .line 1416
    :catch_0
    move-exception v1

    .line 1417
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1418
    new-instance v1, Lcom/huawei/hms/api/ConnectionResult;

    const/16 v2, 0xf

    invoke-direct {v1, v2, v0}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1433
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1418
    return-object v1

    .line 1422
    :cond_0
    :try_start_3
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1423
    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/ConnectionResult;

    .line 1424
    new-instance v1, Lcom/huawei/hms/api/ConnectionResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1433
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1424
    return-object v1

    .line 1428
    :cond_1
    :try_start_4
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/ConnectionResult;

    if-eqz v1, :cond_2

    .line 1429
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/ConnectionResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1433
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1429
    return-object v0

    .line 1431
    :cond_2
    :try_start_5
    new-instance v1, Lcom/huawei/hms/api/ConnectionResult;

    const/16 v2, 0xd

    invoke-direct {v1, v2, v0}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1433
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1431
    return-object v1

    .line 1433
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1434
    throw v0

    .line 1408
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public holdUpConnect(JLjava/util/concurrent/TimeUnit;)Lcom/huawei/hms/api/ConnectionResult;
    .locals 3

    .line 1440
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 1443
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1445
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->connect(Landroid/app/Activity;)V

    .line 1446
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 1447
    :goto_0
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->isConnecting()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1448
    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-gtz p3, :cond_0

    .line 1449
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->disconnect()V

    .line 1450
    new-instance p1, Lcom/huawei/hms/api/ConnectionResult;

    const/16 p2, 0xe

    invoke-direct {p1, p2, v0}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1471
    iget-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1450
    return-object p1

    .line 1453
    :cond_0
    :try_start_1
    iget-object p3, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->v:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1457
    goto :goto_0

    .line 1454
    :catch_0
    move-exception p1

    .line 1455
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 1456
    new-instance p1, Lcom/huawei/hms/api/ConnectionResult;

    const/16 p2, 0xf

    invoke-direct {p1, p2, v0}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1471
    iget-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1456
    return-object p1

    .line 1460
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1461
    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/ConnectionResult;

    .line 1462
    new-instance p1, Lcom/huawei/hms/api/ConnectionResult;

    const/4 p2, 0x0

    invoke-direct {p1, p2, v0}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1471
    iget-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1462
    return-object p1

    .line 1466
    :cond_2
    :try_start_4
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/ConnectionResult;

    if-eqz p1, :cond_3

    .line 1467
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/ConnectionResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1471
    iget-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1467
    return-object p1

    .line 1469
    :cond_3
    :try_start_5
    new-instance p1, Lcom/huawei/hms/api/ConnectionResult;

    const/16 p2, 0xd

    invoke-direct {p1, p2, v0}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1471
    iget-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1469
    return-object p1

    .line 1471
    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->u:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1472
    throw p1

    .line 1441
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "blockingConnect must not be called on the UI thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public innerIsConnected()Z
    .locals 2

    .line 854
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isConnected()Z
    .locals 4

    .line 806
    iget v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:I

    if-nez v0, :cond_0

    .line 807
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getHmsVersionCode()I

    move-result v0

    iput v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:I

    .line 810
    :cond_0
    iget v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->s:I

    const v1, 0x138ddc0

    if-ge v0, v1, :cond_4

    .line 812
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->r:J

    sub-long/2addr v0, v2

    .line 814
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 815
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->innerIsConnected()Z

    move-result v0

    return v0

    .line 818
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->innerIsConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 819
    new-instance v0, Lcom/huawei/hms/support/api/entity/core/CheckConnectInfo;

    invoke-direct {v0}, Lcom/huawei/hms/support/api/entity/core/CheckConnectInfo;-><init>()V

    .line 820
    invoke-static {p0, v0}, Lcom/huawei/hms/support/api/core/ConnectService;->checkconnect(Lcom/huawei/hms/support/api/client/ApiClient;Lcom/huawei/hms/support/api/entity/core/CheckConnectInfo;)Lcom/huawei/hms/support/api/client/InnerPendingResult;

    move-result-object v0

    .line 821
    const-wide/16 v1, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 822
    invoke-virtual {v0, v1, v2, v3}, Lcom/huawei/hms/support/api/client/InnerPendingResult;->awaitOnAnyThread(JLjava/util/concurrent/TimeUnit;)Lcom/huawei/hms/support/api/client/Result;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/support/api/ResolveResult;

    .line 824
    invoke-virtual {v0}, Lcom/huawei/hms/support/api/ResolveResult;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object v0

    .line 825
    invoke-virtual {v0}, Lcom/huawei/hms/support/api/client/Status;->isSuccess()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 826
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->r:J

    .line 827
    return v2

    .line 830
    :cond_2
    invoke-virtual {v0}, Lcom/huawei/hms/support/api/client/Status;->getStatusCode()I

    move-result v0

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isConnected is false, statuscode:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "HuaweiApiClientImpl"

    invoke-static {v3, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    const v1, 0x3611c81c

    if-eq v0, v1, :cond_3

    .line 833
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->n()V

    .line 834
    invoke-direct {p0, v2}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b(I)V

    .line 835
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->r:J

    .line 838
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 842
    :cond_4
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->innerIsConnected()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 2

    .line 848
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 849
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 1

    .line 940
    const-string p1, "HuaweiApiClientImpl"

    const-string v0, "onPause"

    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 2

    .line 927
    if-eqz p1, :cond_0

    .line 928
    const-string v0, "HuaweiApiClientImpl"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->k:Ljava/lang/ref/WeakReference;

    .line 931
    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1011
    const-string p1, "HuaweiApiClientImpl"

    const-string v0, "Enter onServiceConnected."

    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c(I)V

    .line 1016
    invoke-static {p2}, Lcom/huawei/hms/core/aidl/d$a;->a(Landroid/os/IBinder;)Lcom/huawei/hms/core/aidl/d;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->h:Lcom/huawei/hms/core/aidl/d;

    .line 1018
    iget-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->h:Lcom/huawei/hms/core/aidl/d;

    if-nez p2, :cond_2

    .line 1019
    const-string p2, "In onServiceConnected, mCoreService must not be null."

    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->n()V

    .line 1022
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b(I)V

    .line 1024
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->y:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    if-eqz p1, :cond_1

    .line 1025
    const/4 p1, 0x0

    .line 1026
    iget-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->j:Ljava/lang/ref/WeakReference;

    const/16 v0, 0xa

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1027
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->j:Ljava/lang/ref/WeakReference;

    .line 1028
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p1, p2, v0}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getResolveErrorPendingIntent(Landroid/app/Activity;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 1030
    :cond_0
    new-instance p2, Lcom/huawei/hms/api/ConnectionResult;

    invoke-direct {p2, v0, p1}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 1032
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->y:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    invoke-interface {p1, p2}, Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V

    .line 1033
    iput-object p2, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->w:Lcom/huawei/hms/api/ConnectionResult;

    .line 1036
    :cond_1
    return-void

    .line 1039
    :cond_2
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_3

    .line 1040
    invoke-direct {p0, v0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b(I)V

    .line 1042
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->l()V

    .line 1044
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->i()V

    goto :goto_0

    .line 1045
    :cond_3
    iget-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    .line 1046
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->n()V

    .line 1048
    :cond_4
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1187
    const-string p1, "HuaweiApiClientImpl"

    const-string v0, "Enter onServiceDisconnected."

    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->h:Lcom/huawei/hms/core/aidl/d;

    .line 1191
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->b(I)V

    .line 1193
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->x:Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;

    if-eqz v0, :cond_0

    .line 1194
    invoke-interface {v0, p1}, Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;->onConnectionSuspended(I)V

    .line 1196
    :cond_0
    return-void
.end method

.method public print(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1500
    return-void
.end method

.method public reconnect()V
    .locals 1

    .line 1517
    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->disconnect()V

    .line 1518
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->connect(Landroid/app/Activity;)V

    .line 1519
    return-void
.end method

.method public removeConnectionFailureListener(Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;)V
    .locals 2

    .line 1394
    const-string v0, "onConnectionFailedListener should not be null"

    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1395
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 1396
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->y:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    if-eq v1, p1, :cond_0

    .line 1397
    const-string p1, "HuaweiApiClientImpl"

    const-string v1, "unregisterConnectionFailedListener: this onConnectionFailedListener has not been registered"

    invoke-static {p1, v1}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1400
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->y:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    .line 1402
    :goto_0
    monitor-exit v0

    .line 1403
    return-void

    .line 1402
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public removeConnectionSuccessListener(Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;)V
    .locals 2

    .line 1377
    const-string v0, "connectionCallbacksListener should not be null"

    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1378
    iget-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->t:Ljava/lang/Object;

    monitor-enter v0

    .line 1379
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->x:Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;

    if-eq v1, p1, :cond_0

    .line 1380
    const-string p1, "HuaweiApiClientImpl"

    const-string v1, "unregisterConnectionCallback: this connectionCallbacksListener has not been registered"

    invoke-static {p1, v1}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1382
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->x:Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;

    .line 1384
    :goto_0
    monitor-exit v0

    .line 1385
    return-void

    .line 1384
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setApiMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/huawei/hms/api/Api<",
            "*>;",
            "Lcom/huawei/hms/api/Api$ApiOptions;",
            ">;)V"
        }
    .end annotation

    .line 413
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->p:Ljava/util/Map;

    .line 414
    return-void
.end method

.method protected setAutoLifecycleClientId(I)V
    .locals 0

    .line 1544
    iput p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->c:I

    .line 1545
    return-void
.end method

.method public setConnectionCallbacks(Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;)V
    .locals 0

    .line 958
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->x:Lcom/huawei/hms/api/HuaweiApiClient$ConnectionCallbacks;

    .line 959
    return-void
.end method

.method public setConnectionFailedListener(Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;)V
    .locals 0

    .line 963
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->y:Lcom/huawei/hms/api/HuaweiApiClient$OnConnectionFailedListener;

    .line 964
    return-void
.end method

.method public setHasShowNotice(Z)V
    .locals 0

    .line 435
    iput-boolean p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->l:Z

    .line 436
    return-void
.end method

.method public setPermissionInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;",
            ">;)V"
        }
    .end annotation

    .line 394
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->o:Ljava/util/List;

    .line 395
    return-void
.end method

.method public setScopes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;)V"
        }
    .end annotation

    .line 376
    iput-object p1, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->n:Ljava/util/List;

    .line 377
    return-void
.end method

.method public setSubAppInfo(Lcom/huawei/hms/support/api/client/SubAppInfo;)Z
    .locals 4

    .line 865
    const-string v0, "HuaweiApiClientImpl"

    const-string v1, "Enter setSubAppInfo"

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 867
    const-string p1, "subAppInfo is null"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    return v1

    .line 871
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/SubAppInfo;->getSubAppID()Ljava/lang/String;

    move-result-object v2

    .line 872
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 873
    const-string p1, "subAppId is empty"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    return v1

    .line 877
    :cond_1
    iget-object v3, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->e:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->d:Landroid/content/Context;

    invoke-static {v3}, Lcom/huawei/hms/utils/Util;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->e:Ljava/lang/String;

    .line 878
    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 879
    const-string p1, "subAppId is host appid"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    return v1

    .line 884
    :cond_3
    new-instance v0, Lcom/huawei/hms/support/api/client/SubAppInfo;

    invoke-direct {v0, p1}, Lcom/huawei/hms/support/api/client/SubAppInfo;-><init>(Lcom/huawei/hms/support/api/client/SubAppInfo;)V

    iput-object v0, p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;->q:Lcom/huawei/hms/support/api/client/SubAppInfo;

    .line 885
    const/4 p1, 0x1

    return p1
.end method
