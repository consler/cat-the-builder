.class public Lcom/huawei/hms/common/HuaweiApi;
.super Ljava/lang/Object;
.source "HuaweiApi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/common/HuaweiApi$RequestHandler;,
        Lcom/huawei/hms/common/HuaweiApi$TaskApiCallbackWrapper;,
        Lcom/huawei/hms/common/HuaweiApi$RequestRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TOption::",
        "Lcom/huawei/hms/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/huawei/hms/api/Api$ApiOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTOption;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;

.field private d:Lcom/huawei/hms/common/internal/AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hms/common/internal/AbstractClientBuilder<",
            "*TTOption;>;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/huawei/hms/support/api/client/SubAppInfo;

.field private h:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:I

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Lcom/huawei/hms/common/internal/RequestManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/huawei/hms/api/Api<",
            "TTOption;>;TTOption;",
            "Lcom/huawei/hms/common/internal/AbstractClientBuilder;",
            ")V"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 69
    iput v0, p0, Lcom/huawei/hms/common/HuaweiApi;->j:I

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/huawei/hms/common/HuaweiApi;->k:Z

    const-string v0, "Null activity is not permitted."

    .line 121
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->h:Ljava/lang/ref/WeakReference;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 123
    invoke-direct/range {v1 .. v7}, Lcom/huawei/hms/common/HuaweiApi;->a(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/huawei/hms/api/Api<",
            "TTOption;>;TTOption;",
            "Lcom/huawei/hms/common/internal/AbstractClientBuilder;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/huawei/hms/common/HuaweiApi;->j:I

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/huawei/hms/common/HuaweiApi;->k:Z

    const-string v0, "Null activity is not permitted."

    .line 23
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->h:Ljava/lang/ref/WeakReference;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 25
    invoke-direct/range {v1 .. v7}, Lcom/huawei/hms/common/HuaweiApi;->a(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/huawei/hms/api/Api<",
            "TTOption;>;TTOption;",
            "Lcom/huawei/hms/common/internal/AbstractClientBuilder;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput v0, p0, Lcom/huawei/hms/common/HuaweiApi;->j:I

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/huawei/hms/common/HuaweiApi;->k:Z

    const-string v0, "Null activity is not permitted."

    .line 65
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->h:Ljava/lang/ref/WeakReference;

    .line 67
    invoke-direct/range {p0 .. p6}, Lcom/huawei/hms/common/HuaweiApi;->a(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/huawei/hms/api/Api<",
            "TTOption;>;TTOption;",
            "Lcom/huawei/hms/common/internal/AbstractClientBuilder;",
            ")V"
        }
    .end annotation

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 283
    iput v0, p0, Lcom/huawei/hms/common/HuaweiApi;->j:I

    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lcom/huawei/hms/common/HuaweiApi;->k:Z

    const-string v0, "Null context is not permitted."

    .line 380
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 381
    invoke-direct/range {v1 .. v7}, Lcom/huawei/hms/common/HuaweiApi;->a(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/huawei/hms/api/Api<",
            "TTOption;>;TTOption;",
            "Lcom/huawei/hms/common/internal/AbstractClientBuilder;",
            "I)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 125
    iput v0, p0, Lcom/huawei/hms/common/HuaweiApi;->j:I

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/huawei/hms/common/HuaweiApi;->k:Z

    const-string v0, "Null context is not permitted."

    .line 193
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 194
    invoke-direct/range {v1 .. v7}, Lcom/huawei/hms/common/HuaweiApi;->a(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/huawei/hms/api/Api<",
            "TTOption;>;TTOption;",
            "Lcom/huawei/hms/common/internal/AbstractClientBuilder;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 196
    iput v0, p0, Lcom/huawei/hms/common/HuaweiApi;->j:I

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/huawei/hms/common/HuaweiApi;->k:Z

    const-string v0, "Null context is not permitted."

    .line 280
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 281
    invoke-direct/range {p0 .. p6}, Lcom/huawei/hms/common/HuaweiApi;->a(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/common/HuaweiApi;)Landroid/content/Context;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/huawei/hms/common/HuaweiApi;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a(Lcom/huawei/hms/common/internal/TaskApiCall;)Lcom/huawei/hmf/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "TClient::",
            "Lcom/huawei/hms/common/internal/AnyClient;",
            ">(",
            "Lcom/huawei/hms/common/internal/TaskApiCall<",
            "TTClient;TTResult;>;)",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 33
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/TaskApiCall;->getToken()Lcom/huawei/hmf/tasks/CancellationToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>()V

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/TaskApiCall;->getToken()Lcom/huawei/hmf/tasks/CancellationToken;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>(Lcom/huawei/hmf/tasks/CancellationToken;)V

    .line 39
    :goto_0
    new-instance v1, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;

    invoke-direct {v1, p1, v0}, Lcom/huawei/hms/common/internal/TaskApiCallWrapper;-><init>(Lcom/huawei/hms/common/internal/TaskApiCall;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V

    .line 40
    invoke-static {}, Lcom/huawei/hms/common/internal/RequestManager;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v2, Lcom/huawei/hms/common/HuaweiApi$RequestRunnable;

    invoke-direct {v2, p0, v1}, Lcom/huawei/hms/common/HuaweiApi$RequestRunnable;-><init>(Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hms/common/internal/TaskApiCallWrapper;)V

    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    invoke-virtual {v0}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->getTask()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-static {p1}, Lcom/huawei/hms/utils/HMSBIInitializer;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSBIInitializer;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/huawei/hms/utils/HMSBIInitializer;->initBI()V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/huawei/hms/api/Api<",
            "TTOption;>;TTOption;",
            "Lcom/huawei/hms/common/internal/AbstractClientBuilder;",
            "I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/hms/common/HuaweiApi;->a:Landroid/content/Context;

    .line 5
    iput-object p3, p0, Lcom/huawei/hms/common/HuaweiApi;->b:Lcom/huawei/hms/api/Api$ApiOptions;

    .line 6
    iput-object p4, p0, Lcom/huawei/hms/common/HuaweiApi;->d:Lcom/huawei/hms/common/internal/AbstractClientBuilder;

    .line 8
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/HuaweiApi;->b(Landroid/content/Context;)V

    .line 10
    new-instance p2, Lcom/huawei/hms/support/api/client/SubAppInfo;

    const-string p3, ""

    invoke-direct {p2, p3}, Lcom/huawei/hms/support/api/client/SubAppInfo;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/huawei/hms/common/HuaweiApi;->g:Lcom/huawei/hms/support/api/client/SubAppInfo;

    .line 12
    iput p5, p0, Lcom/huawei/hms/common/HuaweiApi;->i:I

    .line 14
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 15
    iget-object p2, p0, Lcom/huawei/hms/common/HuaweiApi;->e:Ljava/lang/String;

    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p3, "HuaweiApi"

    if-eqz p2, :cond_0

    const-string p2, "subAppId is host appid"

    .line 16
    invoke-static {p3, p2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "subAppId is "

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    new-instance p2, Lcom/huawei/hms/support/api/client/SubAppInfo;

    invoke-direct {p2, p6}, Lcom/huawei/hms/support/api/client/SubAppInfo;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/huawei/hms/common/HuaweiApi;->g:Lcom/huawei/hms/support/api/client/SubAppInfo;

    .line 23
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/HuaweiApi;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/common/HuaweiApi;Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/HuaweiApi;->b(Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/common/HuaweiApi<",
            "*>;",
            "Lcom/huawei/hmf/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "innerDisconnect."

    const-string v1, "HuaweiApi"

    .line 26
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :try_start_0
    invoke-static {}, Lcom/huawei/hms/common/internal/RequestManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/huawei/hms/common/HuaweiApi;->getClient(Landroid/os/Looper;Lcom/huawei/hms/common/HuaweiApi$RequestHandler;)Lcom/huawei/hms/common/internal/AnyClient;

    move-result-object p1

    .line 29
    invoke-interface {p1}, Lcom/huawei/hms/common/internal/AnyClient;->disconnect()V

    const/4 p1, 0x1

    .line 30
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "disconnect the binder failed for:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/common/HuaweiApi;->a(Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/huawei/hms/utils/Util;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/HuaweiApi;->e:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/huawei/hms/common/HuaweiApi;->f:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/huawei/hms/common/HuaweiApi;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/huawei/hms/common/HuaweiApi;->m:Z

    return p0
.end method

.method static synthetic c(Lcom/huawei/hms/common/HuaweiApi;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/common/HuaweiApi;->c:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public disconnectService()Lcom/huawei/hmf/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huawei/hmf/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>()V

    .line 4
    invoke-static {}, Lcom/huawei/hms/common/internal/RequestManager;->getInstance()Lcom/huawei/hms/common/internal/RequestManager;

    .line 5
    invoke-static {}, Lcom/huawei/hms/common/internal/RequestManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/huawei/hms/common/HuaweiApi$1;

    invoke-direct {v2, p0, p0, v0}, Lcom/huawei/hms/common/HuaweiApi$1;-><init>(Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    invoke-virtual {v0}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->getTask()Lcom/huawei/hmf/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public doWrite(Lcom/huawei/hms/common/internal/TaskApiCall;)Lcom/huawei/hmf/tasks/Task;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "TClient::",
            "Lcom/huawei/hms/common/internal/AnyClient;",
            ">(",
            "Lcom/huawei/hms/common/internal/TaskApiCall<",
            "TTClient;TTResult;>;)",
            "Lcom/huawei/hmf/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/huawei/hms/common/HuaweiApi;->k:Z

    if-nez p1, :cond_0

    const-string p1, "HuaweiApi"

    const-string v0, "in doWrite:taskApiCall is null"

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>()V

    .line 5
    new-instance v0, Lcom/huawei/hms/common/ApiException;

    sget-object v1, Lcom/huawei/hms/support/api/client/Status;->FAILURE:Lcom/huawei/hms/support/api/client/Status;

    invoke-direct {v0, v1}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 6
    invoke-virtual {p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->getTask()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->g:Lcom/huawei/hms/support/api/client/SubAppInfo;

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/client/SubAppInfo;->getSubAppID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->f:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->g:Lcom/huawei/hms/support/api/client/SubAppInfo;

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/client/SubAppInfo;->getSubAppID()Ljava/lang/String;

    move-result-object v0

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/huawei/hms/common/HuaweiApi;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/TaskApiCall;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/TaskApiCall;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getKitSdkVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {v1, v2, v0, v3, v4}, Lcom/huawei/hms/support/hianalytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->n:Lcom/huawei/hms/common/internal/RequestManager;

    if-nez v0, :cond_2

    .line 14
    invoke-static {}, Lcom/huawei/hms/common/internal/RequestManager;->getInstance()Lcom/huawei/hms/common/internal/RequestManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->n:Lcom/huawei/hms/common/internal/RequestManager;

    .line 16
    :cond_2
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/HuaweiApi;->a(Lcom/huawei/hms/common/internal/TaskApiCall;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApiLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/common/HuaweiApi;->j:I

    return v0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getClient(Landroid/os/Looper;Lcom/huawei/hms/common/HuaweiApi$RequestHandler;)Lcom/huawei/hms/common/internal/AnyClient;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/huawei/hms/common/HuaweiApi;->d:Lcom/huawei/hms/common/internal/AbstractClientBuilder;

    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getClientSetting()Lcom/huawei/hms/common/internal/ClientSettings;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2, p2}, Lcom/huawei/hms/common/internal/AbstractClientBuilder;->buildClient(Landroid/content/Context;Lcom/huawei/hms/common/internal/ClientSettings;Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;)Lcom/huawei/hms/common/internal/AnyClient;

    move-result-object p1

    return-object p1
.end method

.method protected getClientSetting()Lcom/huawei/hms/common/internal/ClientSettings;
    .locals 8

    .line 1
    new-instance v7, Lcom/huawei/hms/common/internal/ClientSettings;

    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getScopes()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/hms/common/HuaweiApi;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/huawei/hms/common/HuaweiApi;->g:Lcom/huawei/hms/support/api/client/SubAppInfo;

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/huawei/hms/common/internal/ClientSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/huawei/hms/support/api/client/SubAppInfo;)V

    .line 4
    iget-boolean v0, p0, Lcom/huawei/hms/common/HuaweiApi;->m:Z

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageNameForMultiService()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->l:Ljava/lang/String;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No setInnerHms, hms pkg name is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hms/common/HuaweiApi;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiApi"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->l:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/huawei/hms/common/internal/ClientSettings;->setInnerHmsPkg(Ljava/lang/String;)V

    .line 10
    iget-boolean v0, p0, Lcom/huawei/hms/common/HuaweiApi;->m:Z

    invoke-virtual {v7, v0}, Lcom/huawei/hms/common/internal/ClientSettings;->setUseInnerHms(Z)V

    .line 11
    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->h:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v7, v0}, Lcom/huawei/hms/common/internal/ClientSettings;->setCpActivity(Landroid/app/Activity;)V

    :cond_1
    return-object v7
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->a:Landroid/content/Context;

    return-object v0
.end method

.method public getKitSdkVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/common/HuaweiApi;->i:I

    return v0
.end method

.method public getOption()Lcom/huawei/hms/api/Api$ApiOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTOption;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->b:Lcom/huawei/hms/api/Api$ApiOptions;

    return-object v0
.end method

.method protected getScopes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubAppID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->g:Lcom/huawei/hms/support/api/client/SubAppInfo;

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/client/SubAppInfo;->getSubAppID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setApiLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/common/HuaweiApi;->j:I

    return-void
.end method

.method public setHostContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/HuaweiApi;->c:Landroid/content/Context;

    return-void
.end method

.method public setInnerHms()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->l:Ljava/lang/String;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/huawei/hms/common/HuaweiApi;->m:Z

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<setInnerHms> init inner hms pkg info:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/huawei/hms/common/HuaweiApi;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiApi"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setKitSdkVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/huawei/hms/common/HuaweiApi;->i:I

    return-void
.end method

.method public setSubAppId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/common/ApiException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/huawei/hms/support/api/client/SubAppInfo;

    invoke-direct {v0, p1}, Lcom/huawei/hms/support/api/client/SubAppInfo;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Lcom/huawei/hms/common/HuaweiApi;->setSubAppInfo(Lcom/huawei/hms/support/api/client/SubAppInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcom/huawei/hms/common/ApiException;

    sget-object v0, Lcom/huawei/hms/support/api/client/Status;->FAILURE:Lcom/huawei/hms/support/api/client/Status;

    invoke-direct {p1, v0}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    throw p1
.end method

.method public setSubAppInfo(Lcom/huawei/hms/support/api/client/SubAppInfo;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Enter setSubAppInfo"

    const-string v1, "HuaweiApi"

    .line 1
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->g:Lcom/huawei/hms/support/api/client/SubAppInfo;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/client/SubAppInfo;->getSubAppID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "subAppInfo is already set"

    .line 4
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "subAppInfo is null"

    .line 9
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 13
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/SubAppInfo;->getSubAppID()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p1, "subAppId is empty"

    .line 15
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 19
    :cond_2
    iget-object v3, p0, Lcom/huawei/hms/common/HuaweiApi;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "subAppId is host appid"

    .line 20
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 24
    :cond_3
    iget-boolean v0, p0, Lcom/huawei/hms/common/HuaweiApi;->k:Z

    if-eqz v0, :cond_4

    const-string p1, "Client has sent request to Huawei Mobile Services, setting subAppId is not allowed"

    .line 25
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 30
    :cond_4
    new-instance v0, Lcom/huawei/hms/support/api/client/SubAppInfo;

    invoke-direct {v0, p1}, Lcom/huawei/hms/support/api/client/SubAppInfo;-><init>(Lcom/huawei/hms/support/api/client/SubAppInfo;)V

    iput-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->g:Lcom/huawei/hms/support/api/client/SubAppInfo;

    const/4 p1, 0x1

    return p1
.end method
