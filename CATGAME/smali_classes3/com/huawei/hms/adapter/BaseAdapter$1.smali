.class Lcom/huawei/hms/adapter/BaseAdapter$1;
.super Ljava/lang/Object;
.source "BaseAdapter.java"

# interfaces
.implements Lcom/huawei/hms/adapter/sysobs/SystemObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/adapter/BaseAdapter;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/adapter/BaseAdapter;


# direct methods
.method constructor <init>(Lcom/huawei/hms/adapter/BaseAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNoticeResult(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSolutionResult(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "BaseAdapter"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string p1, "onSolutionResult but id is null"

    .line 3
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {p1}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;)Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "onSolutionResult baseCallBack null"

    .line 7
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    const/4 v0, -0x6

    invoke-static {p2, v0}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    return v2

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v0}, Lcom/huawei/hms/adapter/BaseAdapter;->b(Lcom/huawei/hms/adapter/BaseAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onSolutionResult + id is :"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {p2}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;)Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p1, "onResult baseCallBack null"

    .line 22
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    if-nez p1, :cond_3

    const-string p1, "onSolutionResult but data is null"

    .line 28
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    const/4 v0, -0x7

    invoke-static {p1, v0}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;I)Ljava/lang/String;

    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v0}, Lcom/huawei/hms/adapter/BaseAdapter;->d(Lcom/huawei/hms/adapter/BaseAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v3}, Lcom/huawei/hms/adapter/BaseAdapter;->c(Lcom/huawei/hms/adapter/BaseAdapter;)Lcom/huawei/hms/common/internal/ResponseHeader;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v3, v4, v5}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;J)V

    .line 31
    invoke-interface {p2, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    return v2

    .line 34
    :cond_3
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v0, p1, p2}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;Landroid/content/Intent;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 37
    :cond_4
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v0, p1, p2}, Lcom/huawei/hms/adapter/BaseAdapter;->b(Lcom/huawei/hms/adapter/BaseAdapter;Landroid/content/Intent;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    :cond_5
    const-string v0, "onComplete for on activity result"

    .line 41
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v0, p1, p2}, Lcom/huawei/hms/adapter/BaseAdapter;->c(Lcom/huawei/hms/adapter/BaseAdapter;Landroid/content/Intent;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V

    return v2

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public onUpdateResult(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
