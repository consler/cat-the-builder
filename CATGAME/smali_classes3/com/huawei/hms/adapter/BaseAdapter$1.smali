.class Lcom/huawei/hms/adapter/BaseAdapter$1;
.super Ljava/lang/Object;
.source "BaseAdapter.java"

# interfaces
.implements Lcom/huawei/hms/adapter/sysobs/SystemObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/adapter/BaseAdapter;->i()V
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

    .line 450
    iput-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSolutionResult(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 9

    .line 454
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "BaseAdapter"

    if-eqz v0, :cond_1

    .line 456
    const-string p1, "onSolutionResult but id is null"

    invoke-static {v2, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {p1}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;)Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

    move-result-object p1

    .line 459
    if-nez p1, :cond_0

    .line 460
    const-string p1, "onSolutionResult baseCallBack null"

    invoke-static {v2, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {p1}, Lcom/huawei/hms/adapter/BaseAdapter;->b(Lcom/huawei/hms/adapter/BaseAdapter;)V

    .line 462
    return v1

    .line 465
    :cond_0
    iget-object p2, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    const/4 v0, -0x6

    invoke-static {p2, v0}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    .line 466
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {p1}, Lcom/huawei/hms/adapter/BaseAdapter;->b(Lcom/huawei/hms/adapter/BaseAdapter;)V

    .line 467
    return v1

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v0}, Lcom/huawei/hms/adapter/BaseAdapter;->f(Lcom/huawei/hms/adapter/BaseAdapter;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSolutionResult + id is :"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object p2, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {p2}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;)Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

    move-result-object p2

    .line 476
    if-nez p2, :cond_2

    .line 477
    const-string p1, "onResult baseCallBack null"

    invoke-static {v2, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {p1}, Lcom/huawei/hms/adapter/BaseAdapter;->b(Lcom/huawei/hms/adapter/BaseAdapter;)V

    .line 479
    return v1

    .line 483
    :cond_2
    const-wide/16 v4, 0x0

    if-nez p1, :cond_3

    .line 484
    const-string p1, "onSolutionResult but data is null"

    invoke-static {v2, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    const/4 v0, -0x7

    invoke-static {p1, v0}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;I)Ljava/lang/String;

    move-result-object p1

    .line 486
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v0}, Lcom/huawei/hms/adapter/BaseAdapter;->d(Lcom/huawei/hms/adapter/BaseAdapter;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v3}, Lcom/huawei/hms/adapter/BaseAdapter;->c(Lcom/huawei/hms/adapter/BaseAdapter;)Lcom/huawei/hms/common/internal/ResponseHeader;

    move-result-object v3

    invoke-static {v0, v2, v3, v4, v5}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;J)V

    .line 487
    invoke-interface {p2, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    .line 488
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {p1}, Lcom/huawei/hms/adapter/BaseAdapter;->b(Lcom/huawei/hms/adapter/BaseAdapter;)V

    .line 489
    return v1

    .line 492
    :cond_3
    const-string v0, "kit_update_result"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 493
    const-string p1, "kit update success,replay request"

    invoke-static {v2, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {p1}, Lcom/huawei/hms/adapter/BaseAdapter;->g(Lcom/huawei/hms/adapter/BaseAdapter;)V

    .line 495
    return v1

    .line 498
    :cond_4
    const-string v0, "onComplete for on activity result"

    invoke-static {v2, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const-string v0, "json_header"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    const-string v2, "json_body"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 502
    const-string v3, "status_code"

    invoke-static {v0, v3}, Lcom/huawei/hms/utils/JsonUtil;->getInfoFromJsonobject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 503
    const-string v6, "error_code"

    invoke-static {v0, v6}, Lcom/huawei/hms/utils/JsonUtil;->getInfoFromJsonobject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 505
    nop

    .line 506
    const-string v7, "HMS_FOREGROUND_RES_UI"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 507
    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 508
    const-string v7, "uiDuration"

    invoke-static {p1, v7}, Lcom/huawei/hms/utils/JsonUtil;->getInfoFromJsonobject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 509
    instance-of v7, p1, Ljava/lang/Long;

    if-eqz v7, :cond_5

    .line 510
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 514
    :cond_5
    instance-of p1, v3, Ljava/lang/Integer;

    if-eqz p1, :cond_6

    instance-of p1, v6, Ljava/lang/Integer;

    if-eqz p1, :cond_6

    .line 515
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 516
    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 517
    iget-object v6, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v6, v3}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;I)Ljava/lang/String;

    .line 518
    iget-object v3, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v3}, Lcom/huawei/hms/adapter/BaseAdapter;->c(Lcom/huawei/hms/adapter/BaseAdapter;)Lcom/huawei/hms/common/internal/ResponseHeader;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setStatusCode(I)V

    .line 519
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {p1}, Lcom/huawei/hms/adapter/BaseAdapter;->d(Lcom/huawei/hms/adapter/BaseAdapter;)Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v6}, Lcom/huawei/hms/adapter/BaseAdapter;->c(Lcom/huawei/hms/adapter/BaseAdapter;)Lcom/huawei/hms/common/internal/ResponseHeader;

    move-result-object v6

    invoke-static {p1, v3, v6, v4, v5}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;J)V

    .line 520
    goto :goto_0

    .line 521
    :cond_6
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    const/4 v3, -0x8

    invoke-static {p1, v3}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;I)Ljava/lang/String;

    .line 522
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {p1}, Lcom/huawei/hms/adapter/BaseAdapter;->d(Lcom/huawei/hms/adapter/BaseAdapter;)Landroid/content/Context;

    move-result-object v3

    iget-object v6, p0, Lcom/huawei/hms/adapter/BaseAdapter$1;->a:Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-static {v6}, Lcom/huawei/hms/adapter/BaseAdapter;->c(Lcom/huawei/hms/adapter/BaseAdapter;)Lcom/huawei/hms/common/internal/ResponseHeader;

    move-result-object v6

    invoke-static {p1, v3, v6, v4, v5}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter;Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;J)V

    .line 525
    :goto_0
    const/4 p1, 0x0

    invoke-interface {p2, v0, v2, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onComplete(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 527
    return v1

    .line 529
    :cond_7
    return v3
.end method

.method public onUpdateResult(I)Z
    .locals 0

    .line 534
    const/4 p1, 0x0

    return p1
.end method
