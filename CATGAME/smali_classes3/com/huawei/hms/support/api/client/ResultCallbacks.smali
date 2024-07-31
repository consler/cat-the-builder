.class public abstract Lcom/huawei/hms/support/api/client/ResultCallbacks;
.super Ljava/lang/Object;
.source "ResultCallbacks.java"

# interfaces
.implements Lcom/huawei/hms/support/api/client/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/huawei/hms/support/api/client/Result;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/huawei/hms/support/api/client/ResultCallback<",
        "TR;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFailure(Lcom/huawei/hms/support/api/client/Status;)V
.end method

.method public final onResult(Lcom/huawei/hms/support/api/client/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 44
    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/Result;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/huawei/hms/support/api/client/Status;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/api/client/ResultCallbacks;->onSuccess(Lcom/huawei/hms/support/api/client/Result;)V

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0, v0}, Lcom/huawei/hms/support/api/client/ResultCallbacks;->onFailure(Lcom/huawei/hms/support/api/client/Status;)V

    .line 50
    instance-of v0, p1, Lcom/huawei/hms/common/api/Releasable;

    if-eqz v0, :cond_1

    .line 51
    move-object v0, p1

    check-cast v0, Lcom/huawei/hms/common/api/Releasable;

    invoke-interface {v0}, Lcom/huawei/hms/common/api/Releasable;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_1
    :goto_0
    goto :goto_1

    .line 54
    :catch_0
    move-exception v0

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to release "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", reason: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResultCallbacks"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_1
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 16
    check-cast p1, Lcom/huawei/hms/support/api/client/Result;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/api/client/ResultCallbacks;->onResult(Lcom/huawei/hms/support/api/client/Result;)V

    return-void
.end method

.method public abstract onSuccess(Lcom/huawei/hms/support/api/client/Result;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation
.end method
