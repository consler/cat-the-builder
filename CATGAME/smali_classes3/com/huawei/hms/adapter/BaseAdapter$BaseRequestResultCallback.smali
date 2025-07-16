.class public Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;
.super Ljava/lang/Object;
.source "BaseAdapter.java"

# interfaces
.implements Lcom/huawei/hms/support/api/client/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/adapter/BaseAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BaseRequestResultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hms/support/api/client/ResultCallback<",
        "Lcom/huawei/hms/support/api/ResolveResult<",
        "Lcom/huawei/hms/adapter/CoreBaseResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/huawei/hms/adapter/BaseAdapter;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/adapter/BaseAdapter;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private a(Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;Lcom/huawei/hms/adapter/CoreBaseResponse;)V
    .locals 5

    const-string v0, "installHMS"

    .line 73
    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v1}, Lcom/huawei/hms/adapter/BaseAdapter;->d(Lcom/huawei/hms/adapter/BaseAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "BaseAdapter"

    if-nez v1, :cond_0

    const-string p2, "handleSolutionForHms: no Available lib exist"

    .line 74
    invoke-static {v2, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object p2, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    const/16 v0, -0x9

    invoke-static {p2, v0}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v1}, Lcom/huawei/hms/adapter/BaseAdapter;->e(Lcom/huawei/hms/adapter/BaseAdapter;)Landroid/app/Activity;

    move-result-object v1

    const v3, 0x989680

    if-eqz v1, :cond_2

    .line 80
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "start handleSolutionForHMS"

    .line 105
    invoke-static {v2, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance p2, Lcom/huawei/hms/adapter/AvailableAdapter;

    invoke-direct {p2, v3}, Lcom/huawei/hms/adapter/AvailableAdapter;-><init>(I)V

    const/4 v0, 0x1

    .line 107
    invoke-virtual {p2, v0}, Lcom/huawei/hms/adapter/AvailableAdapter;->setCalledBySolutionInstallHms(Z)V

    .line 108
    new-instance v0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback$1;

    invoke-direct {v0, p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback$1;-><init>(Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V

    invoke-virtual {p2, v1, v0}, Lcom/huawei/hms/adapter/AvailableAdapter;->startResolution(Landroid/app/Activity;Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;)V

    return-void

    :cond_2
    :goto_0
    const-string v1, "activity is null"

    .line 109
    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v1}, Lcom/huawei/hms/adapter/BaseAdapter;->d(Lcom/huawei/hms/adapter/BaseAdapter;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v1}, Lcom/huawei/hms/adapter/BaseAdapter;->d(Lcom/huawei/hms/adapter/BaseAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/adapter/AvailableUtil;->isInstallerLibExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "pass installHMS intent"

    .line 113
    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v1}, Lcom/huawei/hms/adapter/BaseAdapter;->d(Lcom/huawei/hms/adapter/BaseAdapter;)Landroid/content/Context;

    move-result-object v1

    const-class v4, Lcom/huawei/hms/adapter/ui/UpdateAdapter;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/huawei/hms/activity/BridgeActivity;->getIntentStartBridgeActivity(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "update_version"

    .line 115
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 116
    invoke-virtual {v1, v0, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-virtual {p2, v1}, Lcom/huawei/hms/adapter/CoreBaseResponse;->setIntent(Landroid/content/Intent;)V

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b(Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;Lcom/huawei/hms/adapter/CoreBaseResponse;)V

    goto :goto_1

    :cond_3
    const-string p2, "pass ACTIVITY_NULL error"

    .line 121
    invoke-static {v2, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object p2, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    const/4 v0, -0x3

    .line 123
    invoke-static {p2, v0}, Lcom/huawei/hms/adapter/BaseAdapter;->b(Lcom/huawei/hms/adapter/BaseAdapter;I)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {p2, v0, v1}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;ILjava/lang/String;)Lcom/huawei/hms/common/internal/ResponseWrap;

    move-result-object p2

    .line 126
    invoke-virtual {p2}, Lcom/huawei/hms/common/internal/ResponseWrap;->toJson()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "handleSolutionForHms pass result failed"

    .line 129
    invoke-static {v2, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;Lcom/huawei/hms/adapter/CoreBaseResponse;I)V
    .locals 3

    const-string v0, "intent"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "BaseAdapter"

    if-eqz v0, :cond_7

    .line 2
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {p1}, Lcom/huawei/hms/adapter/BaseAdapter;->e(Lcom/huawei/hms/adapter/BaseAdapter;)Landroid/app/Activity;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "activity is: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 4
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 10
    :cond_0
    invoke-virtual {p3}, Lcom/huawei/hms/adapter/CoreBaseResponse;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    const/16 v2, -0x9

    if-eqz v0, :cond_2

    .line 12
    iget-object p3, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {p3}, Lcom/huawei/hms/adapter/BaseAdapter;->d(Lcom/huawei/hms/adapter/BaseAdapter;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 13
    iget-object p2, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {p2, p1, v0}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;Landroid/app/Activity;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {p1, v2}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 20
    :cond_2
    invoke-virtual {p3}, Lcom/huawei/hms/adapter/CoreBaseResponse;->getIntent()Landroid/content/Intent;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 22
    iget-object p4, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {p4}, Lcom/huawei/hms/adapter/BaseAdapter;->d(Lcom/huawei/hms/adapter/BaseAdapter;)Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_3

    .line 23
    iget-object p2, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {p2, p1, p3}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;Landroid/app/Activity;Landroid/os/Parcelable;)V

    goto :goto_1

    .line 25
    :cond_3
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {p1, v2}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_4
    const/4 p1, 0x2

    if-ne p4, p1, :cond_5

    .line 32
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {p1}, Lcom/huawei/hms/adapter/BaseAdapter;->c(Lcom/huawei/hms/adapter/BaseAdapter;)Lcom/huawei/hms/common/internal/ResponseHeader;

    move-result-object p3

    invoke-virtual {p3}, Lcom/huawei/hms/common/internal/ResponseHeader;->getErrorCode()I

    move-result p3

    invoke-static {p1, p3}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string p1, "hasResolution is true but NO_SOLUTION"

    .line 34
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    const/4 p3, -0x4

    invoke-static {p1, p3}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    :goto_2
    const-string p1, "activity null"

    .line 36
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p2, p3}, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b(Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;Lcom/huawei/hms/adapter/CoreBaseResponse;)V

    return-void

    :cond_7
    const-string p4, "installHMS"

    .line 68
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "has resolutin: installHMS"

    .line 69
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0, p2, p3}, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->a(Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;Lcom/huawei/hms/adapter/CoreBaseResponse;)V

    goto :goto_3

    .line 72
    :cond_8
    invoke-direct {p0, p2, p3}, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b(Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;Lcom/huawei/hms/adapter/CoreBaseResponse;)V

    :goto_3
    return-void
.end method

.method private b(Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;Lcom/huawei/hms/adapter/CoreBaseResponse;)V
    .locals 2

    const-string v0, "BaseAdapter"

    const-string v1, "baseCallBack.onComplete"

    .line 1
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lcom/huawei/hms/adapter/CoreBaseResponse;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p2}, Lcom/huawei/hms/adapter/CoreBaseResponse;->getJsonHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/huawei/hms/adapter/CoreBaseResponse;->getJsonBody()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2, v0}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onComplete(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/huawei/hms/adapter/CoreBaseResponse;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {p2}, Lcom/huawei/hms/adapter/CoreBaseResponse;->getJsonHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/huawei/hms/adapter/CoreBaseResponse;->getJsonBody()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v1, p2, v0}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onComplete(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    .line 16
    :cond_1
    invoke-virtual {p2}, Lcom/huawei/hms/adapter/CoreBaseResponse;->getJsonHeader()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/huawei/hms/adapter/CoreBaseResponse;->getJsonBody()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p1, v0, p2, v1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onComplete(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/huawei/hms/support/api/ResolveResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/support/api/ResolveResult<",
            "Lcom/huawei/hms/adapter/CoreBaseResponse;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v0}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;)Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

    move-result-object v0

    const-string v1, "BaseAdapter"

    if-nez v0, :cond_0

    const-string p1, "onResult baseCallBack null"

    .line 4
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v2, -0x1

    if-nez p1, :cond_1

    const-string p1, "result null"

    .line 9
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {p1, v2}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    return-void

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/ResolveResult;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/adapter/CoreBaseResponse;

    if-nez p1, :cond_2

    const-string p1, "response null"

    .line 16
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {p1, v2}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    return-void

    .line 21
    :cond_2
    invoke-virtual {p1}, Lcom/huawei/hms/adapter/CoreBaseResponse;->getJsonHeader()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string p1, "jsonHeader null"

    .line 22
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {p1, v2}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    return-void

    .line 27
    :cond_3
    invoke-virtual {p1}, Lcom/huawei/hms/adapter/CoreBaseResponse;->getJsonHeader()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v3}, Lcom/huawei/hms/adapter/BaseAdapter;->c(Lcom/huawei/hms/adapter/BaseAdapter;)Lcom/huawei/hms/common/internal/ResponseHeader;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/huawei/hms/utils/JsonUtil;->jsonToEntity(Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)Lcom/huawei/hms/core/aidl/IMessageEntity;

    .line 30
    iget-object v2, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 31
    iget-object v2, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v2}, Lcom/huawei/hms/adapter/BaseAdapter;->d(Lcom/huawei/hms/adapter/BaseAdapter;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v4}, Lcom/huawei/hms/adapter/BaseAdapter;->c(Lcom/huawei/hms/adapter/BaseAdapter;)Lcom/huawei/hms/common/internal/ResponseHeader;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;)V

    .line 34
    :cond_4
    iget-object v2, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v2}, Lcom/huawei/hms/adapter/BaseAdapter;->c(Lcom/huawei/hms/adapter/BaseAdapter;)Lcom/huawei/hms/common/internal/ResponseHeader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/hms/common/internal/ResponseHeader;->getResolution()Ljava/lang/String;

    move-result-object v2

    .line 35
    iget-object v3, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v3}, Lcom/huawei/hms/adapter/BaseAdapter;->c(Lcom/huawei/hms/adapter/BaseAdapter;)Lcom/huawei/hms/common/internal/ResponseHeader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hms/common/internal/ResponseHeader;->getStatusCode()I

    move-result v3

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "api is: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->b:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v5}, Lcom/huawei/hms/adapter/BaseAdapter;->c(Lcom/huawei/hms/adapter/BaseAdapter;)Lcom/huawei/hms/common/internal/ResponseHeader;

    move-result-object v5

    invoke-virtual {v5}, Lcom/huawei/hms/common/internal/ResponseHeader;->getApiName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", resolution: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status_code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, v2, v0, p1, v3}, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->a(Ljava/lang/String;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;Lcom/huawei/hms/adapter/CoreBaseResponse;I)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/huawei/hms/support/api/ResolveResult;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;->onResult(Lcom/huawei/hms/support/api/ResolveResult;)V

    return-void
.end method
