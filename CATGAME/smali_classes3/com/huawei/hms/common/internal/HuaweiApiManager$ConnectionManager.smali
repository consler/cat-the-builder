.class public Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;
.super Ljava/lang/Object;
.source "HuaweiApiManager.java"

# interfaces
.implements Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;
.implements Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/common/internal/HuaweiApiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OptionsT::",
        "Lcom/huawei/hms/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;",
        "Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/common/internal/HuaweiApiManager;

.field private final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/huawei/hms/common/internal/HuaweiApiManager$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/huawei/hms/common/internal/AnyClient;

.field private d:Lcom/huawei/hms/api/ConnectionResult;

.field private final e:Lcom/huawei/hms/common/internal/ConnectionManagerKey;

.field private final f:Lcom/huawei/hms/common/HuaweiApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hms/common/HuaweiApi<",
            "TOptionsT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/huawei/hms/common/internal/HuaweiApiManager;Lcom/huawei/hms/common/HuaweiApi;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/common/HuaweiApi<",
            "TOptionsT;>;)V"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->b:Ljava/util/Queue;

    .line 193
    iput-object p2, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->f:Lcom/huawei/hms/common/HuaweiApi;

    .line 194
    invoke-static {p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->a(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lcom/huawei/hms/common/HuaweiApi;->getClient(Landroid/os/Looper;Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;)Lcom/huawei/hms/common/internal/AnyClient;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->c:Lcom/huawei/hms/common/internal/AnyClient;

    .line 195
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->d:Lcom/huawei/hms/api/ConnectionResult;

    .line 196
    invoke-virtual {p2}, Lcom/huawei/hms/common/HuaweiApi;->getConnectionManagerKey()Lcom/huawei/hms/common/internal/ConnectionManagerKey;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->e:Lcom/huawei/hms/common/internal/ConnectionManagerKey;

    .line 197
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;)Lcom/huawei/hms/common/HuaweiApi;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->f:Lcom/huawei/hms/common/HuaweiApi;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->f:Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {p1}, Lcom/huawei/hms/common/HuaweiApi;->getAppID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/huawei/hms/common/internal/TransactionIdCreater;->getId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 235
    :cond_0
    return-object p1
.end method

.method private a(Lcom/huawei/hms/api/ConnectionResult;)V
    .locals 9

    .line 303
    nop

    .line 304
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->a(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/utils/Checker;->assertHandlerThread(Landroid/os/Handler;)V

    .line 305
    iput-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->d:Lcom/huawei/hms/api/ConnectionResult;

    .line 307
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huawei/hms/common/internal/HuaweiApiManager$a;

    .line 308
    invoke-virtual {v3}, Lcom/huawei/hms/common/internal/HuaweiApiManager$a;->a()Lcom/huawei/hms/common/internal/TaskApiCallWrapper;

    move-result-object v3

    .line 309
    new-instance v5, Lcom/huawei/hms/common/internal/ResponseHeader;

    const v6, 0x3611c81b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Connection Failed:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->b(Lcom/huawei/hms/api/ConnectionResult;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v1, v6, v7}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>(IILjava/lang/String;)V

    .line 311
    invoke-virtual {v3}, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;->getTaskApiCall()Lcom/huawei/hms/common/internal/TaskApiCall;

    move-result-object v6

    invoke-virtual {v6}, Lcom/huawei/hms/common/internal/TaskApiCall;->getTransactionId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/huawei/hms/common/internal/ResponseHeader;->setTransactionId(Ljava/lang/String;)V

    .line 313
    iget-object v6, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->f:Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {v6}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->f:Lcom/huawei/hms/common/HuaweiApi;

    .line 314
    invoke-virtual {v7}, Lcom/huawei/hms/common/HuaweiApi;->getKitSdkVersion()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 313
    invoke-static {v6, v5, v7}, Lcom/huawei/hms/support/hianalytics/b;->a(Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;Ljava/lang/String;)V

    .line 315
    iget-object v6, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->d:Lcom/huawei/hms/api/ConnectionResult;

    invoke-virtual {v6}, Lcom/huawei/hms/api/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v6

    if-eqz v6, :cond_0

    if-eqz v2, :cond_0

    .line 316
    iget-object v2, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->d:Lcom/huawei/hms/api/ConnectionResult;

    invoke-virtual {v2}, Lcom/huawei/hms/api/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->setParcelable(Landroid/os/Parcelable;)V

    .line 317
    const/4 v2, 0x0

    .line 319
    :cond_0
    invoke-virtual {v3}, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;->getTaskApiCall()Lcom/huawei/hms/common/internal/TaskApiCall;

    move-result-object v6

    iget-object v7, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->c:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-virtual {v3}, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;->getTaskCompletionSource()Lcom/huawei/hmf/tasks/TaskCompletionSource;

    move-result-object v3

    invoke-virtual {v6, v7, v5, v4, v3}, Lcom/huawei/hms/common/internal/TaskApiCall;->onResponse(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V

    .line 320
    goto :goto_0

    .line 322
    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->b:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 323
    iput-object v4, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->d:Lcom/huawei/hms/api/ConnectionResult;

    .line 324
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->c:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-interface {p1}, Lcom/huawei/hms/common/internal/AnyClient;->disconnect()V

    .line 325
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->b(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->e:Lcom/huawei/hms/common/internal/ConnectionManagerKey;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;I)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;Lcom/huawei/hms/api/ConnectionResult;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a(Lcom/huawei/hms/api/ConnectionResult;)V

    return-void
.end method

.method private a(Lcom/huawei/hms/common/internal/HuaweiApiManager$a;)V
    .locals 4

    .line 239
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$a;->a()Lcom/huawei/hms/common/internal/TaskApiCallWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;->getTaskApiCall()Lcom/huawei/hms/common/internal/TaskApiCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/TaskApiCall;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 241
    new-instance v1, Lcom/huawei/hms/common/internal/RequestHeader;

    invoke-direct {v1}, Lcom/huawei/hms/common/internal/RequestHeader;-><init>()V

    .line 242
    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lcom/huawei/hms/common/internal/RequestHeader;->setSrvName(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v1, v0}, Lcom/huawei/hms/common/internal/RequestHeader;->setApiName(Ljava/lang/String;)V

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->f:Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {v3}, Lcom/huawei/hms/common/HuaweiApi;->getAppID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->f:Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {v3}, Lcom/huawei/hms/common/HuaweiApi;->getSubAppID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/hms/common/internal/RequestHeader;->setAppID(Ljava/lang/String;)V

    .line 245
    iget-object v2, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->f:Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {v2}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/hms/common/internal/RequestHeader;->setPkgName(Ljava/lang/String;)V

    .line 246
    iget-object v2, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->c:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-interface {v2}, Lcom/huawei/hms/common/internal/AnyClient;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/huawei/hms/common/internal/RequestHeader;->setSessionId(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$a;->a()Lcom/huawei/hms/common/internal/TaskApiCallWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;->getTaskApiCall()Lcom/huawei/hms/common/internal/TaskApiCall;

    move-result-object v2

    .line 248
    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/TaskApiCall;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/huawei/hms/common/internal/RequestHeader;->setTransactionId(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/TaskApiCall;->getParcelable()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/huawei/hms/common/internal/RequestHeader;->setParcelable(Landroid/os/Parcelable;)V

    .line 250
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->f:Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {v0}, Lcom/huawei/hms/common/HuaweiApi;->getKitSdkVersion()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/huawei/hms/common/internal/RequestHeader;->setKitSdkVersion(I)V

    .line 251
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->f:Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {v0}, Lcom/huawei/hms/common/HuaweiApi;->getApiLevel()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/huawei/hms/common/internal/RequestHeader;->setApiLevel(I)V

    .line 252
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->c:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/TaskApiCall;->getRequestJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$a;->b()Lcom/huawei/hms/common/internal/AnyClient$CallBack;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/huawei/hms/common/internal/AnyClient;->post(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/String;Lcom/huawei/hms/common/internal/AnyClient$CallBack;)V

    .line 253
    return-void
.end method

.method static synthetic b(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;)Lcom/huawei/hms/common/internal/AnyClient;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->c:Lcom/huawei/hms/common/internal/AnyClient;

    return-object p0
.end method

.method private b(Lcom/huawei/hms/common/internal/TaskApiCallWrapper;)Lcom/huawei/hms/common/internal/HuaweiApiManager$a;
    .locals 2

    .line 256
    new-instance v0, Lcom/huawei/hms/common/internal/HuaweiApiManager$a;

    new-instance v1, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$1;-><init>(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;Lcom/huawei/hms/common/internal/TaskApiCallWrapper;)V

    invoke-direct {v0, p1, v1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$a;-><init>(Lcom/huawei/hms/common/internal/TaskApiCallWrapper;Lcom/huawei/hms/common/internal/AnyClient$CallBack;)V

    return-object v0
.end method

.method private b(Lcom/huawei/hms/api/ConnectionResult;)Ljava/lang/String;
    .locals 8

    .line 400
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->f:Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {v0}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "unknown errorReason"

    const-string v2, "application configuration error, please developer check configuration"

    const-string v3, "internal error"

    const-string v4, "get update result, but has other error codes"

    const/16 v5, 0xa

    const/16 v6, 0x8

    const/4 v7, -0x1

    if-eqz v0, :cond_6

    .line 401
    invoke-virtual {p1}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    move-result p1

    if-eq p1, v7, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    if-eq p1, v6, :cond_3

    if-eq p1, v5, :cond_2

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 430
    goto :goto_0

    .line 415
    :pswitch_0
    nop

    .line 416
    const-string v1, "there is already an update popup at the front desk, but it hasn\'t been clicked or it is not effective for a while"

    goto :goto_0

    .line 406
    :pswitch_1
    nop

    .line 407
    const-string v1, "update failed, because no activity incoming, can\'t pop update page"

    goto :goto_0

    .line 424
    :pswitch_2
    nop

    .line 425
    const-string v1, "failed to get update result"

    goto :goto_0

    .line 409
    :cond_0
    nop

    .line 410
    const-string v1, "device is too old to be support"

    goto :goto_0

    .line 418
    :cond_1
    nop

    .line 419
    const-string v1, "update cancelled"

    goto :goto_0

    .line 403
    :cond_2
    nop

    .line 404
    move-object v1, v2

    goto :goto_0

    .line 421
    :cond_3
    nop

    .line 422
    move-object v1, v3

    goto :goto_0

    .line 412
    :cond_4
    nop

    .line 413
    const-string v1, "HuaWei Mobile Service is disabled"

    goto :goto_0

    .line 427
    :cond_5
    nop

    .line 428
    move-object v1, v4

    goto :goto_0

    .line 433
    :cond_6
    invoke-virtual {p1}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    move-result p1

    if-eq p1, v7, :cond_9

    if-eq p1, v6, :cond_8

    if-eq p1, v5, :cond_7

    .line 444
    goto :goto_0

    .line 435
    :cond_7
    nop

    .line 436
    move-object v1, v2

    goto :goto_0

    .line 438
    :cond_8
    nop

    .line 439
    move-object v1, v3

    goto :goto_0

    .line 441
    :cond_9
    nop

    .line 442
    move-object v1, v4

    .line 448
    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b()V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->a(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/utils/Checker;->assertHandlerThread(Landroid/os/Handler;)V

    .line 346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->d:Lcom/huawei/hms/api/ConnectionResult;

    .line 347
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huawei/hms/common/internal/HuaweiApiManager$a;

    .line 348
    invoke-direct {p0, v1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a(Lcom/huawei/hms/common/internal/HuaweiApiManager$a;)V

    .line 349
    goto :goto_0

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 351
    return-void
.end method

.method private b(I)V
    .locals 6

    .line 369
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->a(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/utils/Checker;->assertHandlerThread(Landroid/os/Handler;)V

    .line 370
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->b:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/common/internal/HuaweiApiManager$a;

    .line 371
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$a;->a()Lcom/huawei/hms/common/internal/TaskApiCallWrapper;

    move-result-object v0

    .line 372
    new-instance v2, Lcom/huawei/hms/common/internal/ResponseHeader;

    const/4 v3, 0x1

    const v4, 0x3611c81b

    const-string v5, "Connection Suspended"

    invoke-direct {v2, v3, v4, v5}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>(IILjava/lang/String;)V

    .line 374
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;->getTaskApiCall()Lcom/huawei/hms/common/internal/TaskApiCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hms/common/internal/TaskApiCall;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/huawei/hms/common/internal/ResponseHeader;->setTransactionId(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;->getTaskApiCall()Lcom/huawei/hms/common/internal/TaskApiCall;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->c:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;->getTaskCompletionSource()Lcom/huawei/hmf/tasks/TaskCompletionSource;

    move-result-object v0

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/huawei/hms/common/internal/TaskApiCall;->onResponse(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V

    .line 376
    goto :goto_0

    .line 377
    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->b:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    .line 378
    iput-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->d:Lcom/huawei/hms/api/ConnectionResult;

    .line 379
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->c:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-interface {p1}, Lcom/huawei/hms/common/internal/AnyClient;->disconnect()V

    .line 380
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->b(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->e:Lcom/huawei/hms/common/internal/ConnectionManagerKey;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    return-void
.end method

.method static synthetic c(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;)V
    .locals 0

    .line 174
    invoke-direct {p0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->b()V

    return-void
.end method


# virtual methods
.method declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    .line 290
    :try_start_0
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->a(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/utils/Checker;->assertHandlerThread(Landroid/os/Handler;)V

    .line 291
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->c:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-interface {v0}, Lcom/huawei/hms/common/internal/AnyClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    const-string p1, "HuaweiApiManager"

    const-string v0, "client is connected"

    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit p0

    return-void

    .line 295
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->c:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-interface {v0}, Lcom/huawei/hms/common/internal/AnyClient;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    const-string p1, "HuaweiApiManager"

    const-string v0, "client is isConnecting"

    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    .line 299
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->c:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-interface {v0, p1}, Lcom/huawei/hms/common/internal/AnyClient;->connect(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 300
    monitor-exit p0

    return-void

    .line 289
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method a(Lcom/huawei/hms/common/internal/TaskApiCallWrapper;)V
    .locals 2

    .line 205
    const-string v0, "HuaweiApiManager"

    const-string v1, "sendRequest"

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->a(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/utils/Checker;->assertHandlerThread(Landroid/os/Handler;)V

    .line 207
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->b(Lcom/huawei/hms/common/internal/TaskApiCallWrapper;)Lcom/huawei/hms/common/internal/HuaweiApiManager$a;

    move-result-object v0

    .line 210
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;->getTaskApiCall()Lcom/huawei/hms/common/internal/TaskApiCall;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/TaskApiCall;->getMinApkVersion()I

    move-result p1

    .line 212
    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->c:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-interface {v1}, Lcom/huawei/hms/common/internal/AnyClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->f:Lcom/huawei/hms/common/HuaweiApi;

    invoke-virtual {v1}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/huawei/hms/utils/HMSPackageManager;->hmsVerHigherThan(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 214
    invoke-direct {p0, v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a(Lcom/huawei/hms/common/internal/HuaweiApiManager$a;)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a()Z

    .line 218
    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->b:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 219
    invoke-virtual {p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a(I)V

    goto :goto_0

    .line 222
    :cond_1
    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->b:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->d:Lcom/huawei/hms/api/ConnectionResult;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    iget-object p1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->d:Lcom/huawei/hms/api/ConnectionResult;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->onConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a(I)V

    .line 229
    :goto_0
    return-void
.end method

.method a()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->a(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/utils/Checker;->assertHandlerThread(Landroid/os/Handler;)V

    .line 282
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->c:Lcom/huawei/hms/common/internal/AnyClient;

    invoke-interface {v0}, Lcom/huawei/hms/common/internal/AnyClient;->disconnect()V

    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public onConnected()V
    .locals 2

    .line 355
    const-string v0, "HuaweiApiManager"

    const-string v1, "onConnected"

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {v1}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->a(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 357
    invoke-direct {p0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->b()V

    goto :goto_0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->a(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$3;

    invoke-direct {v1, p0}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$3;-><init>(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 366
    :goto_0
    return-void
.end method

.method public onConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V
    .locals 2

    .line 331
    const-string v0, "HuaweiApiManager"

    const-string v1, "onConnectionFailed"

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {v1}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->a(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 333
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a(Lcom/huawei/hms/api/ConnectionResult;)V

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->a(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$2;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$2;-><init>(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;Lcom/huawei/hms/api/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 342
    :goto_0
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    .line 385
    const-string v0, "HuaweiApiManager"

    const-string v1, "onConnectionSuspended"

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {v1}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->a(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 387
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->b(I)V

    goto :goto_0

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;->a:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-static {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->a(Lcom/huawei/hms/common/internal/HuaweiApiManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$4;

    invoke-direct {v1, p0, p1}, Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager$4;-><init>(Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 396
    :goto_0
    return-void
.end method
