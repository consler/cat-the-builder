.class public Lcom/huawei/hms/common/HuaweiApi;
.super Ljava/lang/Object;
.source "HuaweiApi.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TOption::",
        "Lcom/huawei/hms/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Lcom/huawei/hms/common/internal/HuaweiApiManager;

.field private b:Landroid/content/Context;

.field private c:Lcom/huawei/hms/common/internal/ConnectionManagerKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hms/common/internal/ConnectionManagerKey<",
            "TTOption;>;"
        }
    .end annotation
.end field

.field private d:Lcom/huawei/hms/api/Api$ApiOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTOption;"
        }
    .end annotation
.end field

.field private e:Lcom/huawei/hms/common/internal/AbstractClientBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hms/common/internal/AbstractClientBuilder<",
            "*TTOption;>;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/huawei/hms/support/api/client/SubAppInfo;

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I

.field private m:Z


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

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/hms/common/HuaweiApi;->l:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/common/HuaweiApi;->m:Z

    .line 112
    const-string v0, "Null activity is not permitted."

    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->j:Ljava/lang/ref/WeakReference;

    .line 114
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/huawei/hms/common/HuaweiApi;->a(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;ILjava/lang/String;)V

    .line 115
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

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/hms/common/HuaweiApi;->l:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/common/HuaweiApi;->m:Z

    .line 81
    const-string v0, "Null activity is not permitted."

    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->j:Ljava/lang/ref/WeakReference;

    .line 83
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/huawei/hms/common/HuaweiApi;->a(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;ILjava/lang/String;)V

    .line 84
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

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/hms/common/HuaweiApi;->l:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/common/HuaweiApi;->m:Z

    .line 98
    const-string v0, "Null activity is not permitted."

    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->j:Ljava/lang/ref/WeakReference;

    .line 100
    invoke-direct/range {p0 .. p6}, Lcom/huawei/hms/common/HuaweiApi;->a(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;ILjava/lang/String;)V

    .line 101
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

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/hms/common/HuaweiApi;->l:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/common/HuaweiApi;->m:Z

    .line 157
    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 158
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v7}, Lcom/huawei/hms/common/HuaweiApi;->a(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;ILjava/lang/String;)V

    .line 159
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

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/hms/common/HuaweiApi;->l:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/common/HuaweiApi;->m:Z

    .line 128
    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 129
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/huawei/hms/common/HuaweiApi;->a(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;ILjava/lang/String;)V

    .line 130
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

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/huawei/hms/common/HuaweiApi;->l:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/common/HuaweiApi;->m:Z

    .line 144
    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 145
    invoke-direct/range {p0 .. p6}, Lcom/huawei/hms/common/HuaweiApi;->a(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;ILjava/lang/String;)V

    .line 146
    return-void
.end method

.method private a(Lcom/huawei/hms/common/internal/TaskApiCall;)Lcom/huawei/hmf/tasks/Task;
    .locals 2
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

    .line 259
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/TaskApiCall;->getToken()Lcom/huawei/hmf/tasks/CancellationToken;

    move-result-object v0

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>()V

    goto :goto_0

    .line 262
    :cond_0
    new-instance v0, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/TaskApiCall;->getToken()Lcom/huawei/hmf/tasks/CancellationToken;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>(Lcom/huawei/hmf/tasks/CancellationToken;)V

    .line 264
    :goto_0
    iget-object v1, p0, Lcom/huawei/hms/common/HuaweiApi;->a:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-virtual {v1, p0, p1, v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->sendRequest(Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hms/common/internal/TaskApiCall;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V

    .line 265
    invoke-virtual {v0}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->getTask()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 0

    .line 193
    invoke-static {p1}, Lcom/huawei/hms/utils/HMSBIInitializer;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSBIInitializer;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Lcom/huawei/hms/utils/HMSBIInitializer;->initBI()V

    .line 195
    return-void
.end method

.method private a(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;ILjava/lang/String;)V
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

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->b:Landroid/content/Context;

    .line 164
    invoke-static {v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/common/internal/HuaweiApiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->a:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    .line 165
    invoke-static {p2, p3, p6}, Lcom/huawei/hms/common/internal/ConnectionManagerKey;->createConnectionManagerKey(Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions;Ljava/lang/String;)Lcom/huawei/hms/common/internal/ConnectionManagerKey;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/hms/common/HuaweiApi;->c:Lcom/huawei/hms/common/internal/ConnectionManagerKey;

    .line 166
    iput-object p3, p0, Lcom/huawei/hms/common/HuaweiApi;->d:Lcom/huawei/hms/api/Api$ApiOptions;

    .line 167
    iput-object p4, p0, Lcom/huawei/hms/common/HuaweiApi;->e:Lcom/huawei/hms/common/internal/AbstractClientBuilder;

    .line 169
    invoke-static {p1}, Lcom/huawei/hms/utils/Util;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/hms/common/HuaweiApi;->f:Ljava/lang/String;

    .line 170
    iput-object p2, p0, Lcom/huawei/hms/common/HuaweiApi;->g:Ljava/lang/String;

    .line 171
    invoke-static {p1}, Lcom/huawei/hms/utils/Util;->getCpId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/hms/common/HuaweiApi;->h:Ljava/lang/String;

    .line 172
    new-instance p2, Lcom/huawei/hms/support/api/client/SubAppInfo;

    const-string p3, ""

    invoke-direct {p2, p3}, Lcom/huawei/hms/support/api/client/SubAppInfo;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/huawei/hms/common/HuaweiApi;->i:Lcom/huawei/hms/support/api/client/SubAppInfo;

    .line 174
    iput p5, p0, Lcom/huawei/hms/common/HuaweiApi;->k:I

    .line 176
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 177
    iget-object p2, p0, Lcom/huawei/hms/common/HuaweiApi;->f:Ljava/lang/String;

    invoke-virtual {p6, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p3, "HuaweiApi"

    if-eqz p2, :cond_0

    .line 178
    const-string p2, "subAppId is host appid"

    invoke-static {p3, p2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "subAppId is "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance p2, Lcom/huawei/hms/support/api/client/SubAppInfo;

    invoke-direct {p2, p6}, Lcom/huawei/hms/support/api/client/SubAppInfo;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/huawei/hms/common/HuaweiApi;->i:Lcom/huawei/hms/support/api/client/SubAppInfo;

    .line 185
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/HuaweiApi;->a(Landroid/content/Context;)V

    .line 186
    return-void
.end method


# virtual methods
.method public disconnectService()Lcom/huawei/hmf/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huawei/hmf/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 252
    new-instance v0, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>()V

    .line 253
    iget-object v1, p0, Lcom/huawei/hms/common/HuaweiApi;->a:Lcom/huawei/hms/common/internal/HuaweiApiManager;

    invoke-virtual {v1, p0, v0}, Lcom/huawei/hms/common/internal/HuaweiApiManager;->disconnectService(Lcom/huawei/hms/common/HuaweiApi;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V

    .line 254
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

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hms/common/HuaweiApi;->m:Z

    .line 207
    if-nez p1, :cond_0

    .line 208
    const-string p1, "HuaweiApi"

    const-string v0, "in doWrite:taskApiCall is null"

    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance p1, Lcom/huawei/hmf/tasks/TaskCompletionSource;

    invoke-direct {p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;-><init>()V

    .line 210
    new-instance v0, Lcom/huawei/hms/common/ApiException;

    sget-object v1, Lcom/huawei/hms/support/api/client/Status;->FAILURE:Lcom/huawei/hms/support/api/client/Status;

    invoke-direct {v0, v1}, Lcom/huawei/hms/common/ApiException;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    invoke-virtual {p1, v0}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 211
    invoke-virtual {p1}, Lcom/huawei/hmf/tasks/TaskCompletionSource;->getTask()Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->i:Lcom/huawei/hms/support/api/client/SubAppInfo;

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/client/SubAppInfo;->getSubAppID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->g:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->i:Lcom/huawei/hms/support/api/client/SubAppInfo;

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/client/SubAppInfo;->getSubAppID()Ljava/lang/String;

    move-result-object v0

    .line 214
    :goto_0
    iget-object v1, p0, Lcom/huawei/hms/common/HuaweiApi;->b:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/TaskApiCall;->getUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/TaskApiCall;->getTransactionId()Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getKitSdkVersion()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 214
    invoke-static {v1, v2, v0, v3, v4}, Lcom/huawei/hms/support/hianalytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/HuaweiApi;->a(Lcom/huawei/hms/common/internal/TaskApiCall;)Lcom/huawei/hmf/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public getApiLevel()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/huawei/hms/common/HuaweiApi;->l:I

    return v0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getClient(Landroid/os/Looper;Lcom/huawei/hms/common/internal/HuaweiApiManager$ConnectionManager;)Lcom/huawei/hms/common/internal/AnyClient;
    .locals 2

    .line 276
    iget-object p1, p0, Lcom/huawei/hms/common/HuaweiApi;->e:Lcom/huawei/hms/common/internal/AbstractClientBuilder;

    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->b:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getClientSetting()Lcom/huawei/hms/common/internal/ClientSettings;

    move-result-object v1

    invoke-virtual {p1, v0, v1, p2, p2}, Lcom/huawei/hms/common/internal/AbstractClientBuilder;->buildClient(Landroid/content/Context;Lcom/huawei/hms/common/internal/ClientSettings;Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;)Lcom/huawei/hms/common/internal/AnyClient;

    move-result-object p1

    return-object p1
.end method

.method protected getClientSetting()Lcom/huawei/hms/common/internal/ClientSettings;
    .locals 8

    .line 280
    new-instance v7, Lcom/huawei/hms/common/internal/ClientSettings;

    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->b:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-virtual {p0}, Lcom/huawei/hms/common/HuaweiApi;->getScopes()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/hms/common/HuaweiApi;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/huawei/hms/common/HuaweiApi;->i:Lcom/huawei/hms/support/api/client/SubAppInfo;

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/huawei/hms/common/internal/ClientSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/huawei/hms/support/api/client/SubAppInfo;)V

    .line 283
    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->h:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/huawei/hms/common/internal/ClientSettings;->setCpID(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v7, v0}, Lcom/huawei/hms/common/internal/ClientSettings;->setCpActivity(Landroid/app/Activity;)V

    .line 287
    :cond_0
    return-object v7
.end method

.method public getConnectionManagerKey()Lcom/huawei/hms/common/internal/ConnectionManagerKey;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/huawei/hms/common/internal/ConnectionManagerKey<",
            "TTOption;>;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->c:Lcom/huawei/hms/common/internal/ConnectionManagerKey;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->b:Landroid/content/Context;

    return-object v0
.end method

.method public getKitSdkVersion()I
    .locals 1

    .line 375
    iget v0, p0, Lcom/huawei/hms/common/HuaweiApi;->k:I

    return v0
.end method

.method public getOption()Lcom/huawei/hms/api/Api$ApiOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTOption;"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->d:Lcom/huawei/hms/api/Api$ApiOptions;

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

    .line 296
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubAppID()Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->i:Lcom/huawei/hms/support/api/client/SubAppInfo;

    invoke-virtual {v0}, Lcom/huawei/hms/support/api/client/SubAppInfo;->getSubAppID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setApiLevel(I)V
    .locals 0

    .line 234
    iput p1, p0, Lcom/huawei/hms/common/HuaweiApi;->l:I

    .line 235
    return-void
.end method

.method public setKitSdkVersion(I)V
    .locals 0

    .line 383
    iput p1, p0, Lcom/huawei/hms/common/HuaweiApi;->k:I

    .line 384
    return-void
.end method

.method public setSubAppId(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/common/ApiException;
        }
    .end annotation

    .line 347
    new-instance v0, Lcom/huawei/hms/support/api/client/SubAppInfo;

    invoke-direct {v0, p1}, Lcom/huawei/hms/support/api/client/SubAppInfo;-><init>(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0, v0}, Lcom/huawei/hms/common/HuaweiApi;->setSubAppInfo(Lcom/huawei/hms/support/api/client/SubAppInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 351
    return-void

    .line 349
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

    .line 309
    const-string v0, "HuaweiApi"

    const-string v1, "Enter setSubAppInfo"

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v1, p0, Lcom/huawei/hms/common/HuaweiApi;->i:Lcom/huawei/hms/support/api/client/SubAppInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/huawei/hms/support/api/client/SubAppInfo;->getSubAppID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 312
    const-string p1, "subAppInfo is already set"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return v2

    .line 316
    :cond_0
    if-nez p1, :cond_1

    .line 317
    const-string p1, "subAppInfo is null"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    return v2

    .line 321
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/SubAppInfo;->getSubAppID()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 323
    const-string p1, "subAppId is empty"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return v2

    .line 327
    :cond_2
    iget-object v3, p0, Lcom/huawei/hms/common/HuaweiApi;->f:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 328
    const-string p1, "subAppId is host appid"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return v2

    .line 332
    :cond_3
    iget-boolean v1, p0, Lcom/huawei/hms/common/HuaweiApi;->m:Z

    if-eqz v1, :cond_4

    .line 333
    const-string p1, "Client has sent request to Huawei Mobile Services, setting subAppId is not allowed"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return v2

    .line 338
    :cond_4
    new-instance v0, Lcom/huawei/hms/support/api/client/SubAppInfo;

    invoke-direct {v0, p1}, Lcom/huawei/hms/support/api/client/SubAppInfo;-><init>(Lcom/huawei/hms/support/api/client/SubAppInfo;)V

    iput-object v0, p0, Lcom/huawei/hms/common/HuaweiApi;->i:Lcom/huawei/hms/support/api/client/SubAppInfo;

    .line 339
    const/4 p1, 0x1

    return p1
.end method
