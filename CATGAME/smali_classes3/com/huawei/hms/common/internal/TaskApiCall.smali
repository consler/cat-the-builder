.class public abstract Lcom/huawei/hms/common/internal/TaskApiCall;
.super Ljava/lang/Object;
.source "TaskApiCall.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ClientT::",
        "Lcom/huawei/hms/common/internal/AnyClient;",
        "ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Landroid/os/Parcelable;

.field private d:Ljava/lang/String;

.field private e:Lcom/huawei/hmf/tasks/CancellationToken;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->a:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->b:Ljava/lang/String;

    .line 37
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->c:Landroid/os/Parcelable;

    .line 38
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->d:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->a:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->b:Ljava/lang/String;

    .line 51
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->c:Landroid/os/Parcelable;

    .line 52
    iput-object p3, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->d:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method protected abstract doExecute(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TClientT;",
            "Lcom/huawei/hms/common/internal/ResponseErrorCode;",
            "Ljava/lang/String;",
            "Lcom/huawei/hmf/tasks/TaskCompletionSource<",
            "TResultT;>;)V"
        }
    .end annotation
.end method

.method public getMinApkVersion()I
    .locals 1

    .line 136
    const v0, 0x1c9c4ac

    return v0
.end method

.method public getParcelable()Landroid/os/Parcelable;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->c:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getRequestJson()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Lcom/huawei/hmf/tasks/CancellationToken;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->e:Lcom/huawei/hmf/tasks/CancellationToken;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final onResponse(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TClientT;",
            "Lcom/huawei/hms/common/internal/ResponseErrorCode;",
            "Ljava/lang/String;",
            "Lcom/huawei/hmf/tasks/TaskCompletionSource<",
            "TResultT;>;)V"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->e:Lcom/huawei/hmf/tasks/CancellationToken;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/huawei/hmf/tasks/CancellationToken;->isCancellationRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "This Task has been canceled, uri:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", transactionId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TaskApiCall"

    invoke-static {p2, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void

    .line 152
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/huawei/hms/common/internal/TaskApiCall;->doExecute(Lcom/huawei/hms/common/internal/AnyClient;Lcom/huawei/hms/common/internal/ResponseErrorCode;Ljava/lang/String;Lcom/huawei/hmf/tasks/TaskCompletionSource;)V

    .line 153
    return-void
.end method

.method public setParcelable(Landroid/os/Parcelable;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->c:Landroid/os/Parcelable;

    .line 115
    return-void
.end method

.method public setToken(Lcom/huawei/hmf/tasks/CancellationToken;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->e:Lcom/huawei/hmf/tasks/CancellationToken;

    .line 61
    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/huawei/hms/common/internal/TaskApiCall;->d:Ljava/lang/String;

    .line 88
    return-void
.end method
