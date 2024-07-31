.class Lcom/huawei/hms/adapter/AvailableAdapter$1;
.super Ljava/lang/Object;
.source "AvailableAdapter.java"

# interfaces
.implements Lcom/huawei/hms/adapter/sysobs/SystemObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/adapter/AvailableAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/adapter/AvailableAdapter;


# direct methods
.method constructor <init>(Lcom/huawei/hms/adapter/AvailableAdapter;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/huawei/hms/adapter/AvailableAdapter$1;->a:Lcom/huawei/hms/adapter/AvailableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSolutionResult(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 0

    .line 187
    const/4 p1, 0x0

    return p1
.end method

.method public onUpdateResult(I)Z
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/huawei/hms/adapter/AvailableAdapter$1;->a:Lcom/huawei/hms/adapter/AvailableAdapter;

    invoke-static {v0}, Lcom/huawei/hms/adapter/AvailableAdapter;->a(Lcom/huawei/hms/adapter/AvailableAdapter;)Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;

    move-result-object v0

    .line 170
    const/4 v1, 0x1

    const-string v2, "AvailableAdapter"

    if-nez v0, :cond_0

    .line 171
    const-string p1, "onUpdateResult baseCallBack null"

    invoke-static {v2, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return v1

    .line 175
    :cond_0
    invoke-interface {v0, p1}, Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;->onComplete(I)V

    .line 178
    invoke-static {p1}, Lcom/huawei/hms/adapter/AvailableAdapter;->a(I)I

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "user response "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/huawei/hms/adapter/AvailableAdapter;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {}, Lcom/huawei/hms/adapter/AvailableAdapter;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 182
    return v1
.end method
