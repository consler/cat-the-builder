.class public final Lcom/huawei/updatesdk/UpdateSdkAPI;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "UpdateSdk"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAppUpdate(Landroid/content/Context;Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;ZZ)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/huawei/updatesdk/a/a/c/b/b;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/huawei/updatesdk/UpdateSdkAPI;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;

    invoke-direct {v0}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->setIsShowImmediate(Z)Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->setMustBtnOne(Z)Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->build()Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;

    move-result-object p2

    new-instance p3, Lcom/huawei/updatesdk/service/otaupdate/e;

    invoke-direct {p3, p0, p2, p1}, Lcom/huawei/updatesdk/service/otaupdate/e;-><init>(Landroid/content/Context;Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Void;

    invoke-virtual {p3, p0, p1}, Lcom/huawei/updatesdk/service/otaupdate/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const/4 p3, 0x2

    const-string v0, "status"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-interface {p1, p2}, Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;->onUpdateInfo(Landroid/content/Intent;)V

    :cond_2
    const-string p1, "upsdk_no_available_network_prompt_toast"

    invoke-static {p0, p1}, Lcom/huawei/updatesdk/service/otaupdate/g;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method public static checkAppUpdate(Landroid/content/Context;Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;)V
    .locals 8

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/huawei/updatesdk/UpdateSdkAPI;->init(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/huawei/updatesdk/service/a/a;->a()Lcom/huawei/updatesdk/service/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/updatesdk/service/a/a;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->getMinIntervalDay()I

    move-result v4

    if-eqz v4, :cond_1

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;->getMinIntervalDay()I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    :cond_1
    invoke-static {p0}, Lcom/huawei/updatesdk/a/a/c/b/b;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/huawei/updatesdk/service/a/a;->a()Lcom/huawei/updatesdk/service/a/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/huawei/updatesdk/service/a/a;->a(J)V

    new-instance v0, Lcom/huawei/updatesdk/service/otaupdate/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/updatesdk/service/otaupdate/e;-><init>(Landroid/content/Context;Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Lcom/huawei/updatesdk/service/otaupdate/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const/4 p1, 0x2

    const-string v0, "status"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-interface {p2, p0}, Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;->onUpdateInfo(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static checkClientOTAUpdate(Landroid/content/Context;Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;ZIZ)V
    .locals 8

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/huawei/updatesdk/a/a/c/b/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/huawei/updatesdk/UpdateSdkAPI;->init(Landroid/content/Context;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/huawei/updatesdk/service/a/a;->a()Lcom/huawei/updatesdk/service/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/huawei/updatesdk/service/a/a;->b()J

    move-result-wide v2

    if-eqz p3, :cond_1

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    int-to-long v4, p3

    const-wide/32 v6, 0x5265c00

    mul-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    :cond_1
    invoke-static {}, Lcom/huawei/updatesdk/service/a/a;->a()Lcom/huawei/updatesdk/service/a/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/huawei/updatesdk/service/a/a;->a(J)V

    new-instance v0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;

    invoke-direct {v0}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;-><init>()V

    invoke-virtual {v0, p2}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->setIsShowImmediate(Z)Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;

    move-result-object p2

    invoke-virtual {p2, p4}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->setMustBtnOne(Z)Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->setMinIntervalDay(I)Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->build()Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;

    move-result-object p2

    new-instance p3, Lcom/huawei/updatesdk/service/otaupdate/e;

    invoke-direct {p3, p0, p2, p1}, Lcom/huawei/updatesdk/service/otaupdate/e;-><init>(Landroid/content/Context;Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;)V

    const/4 p0, 0x1

    invoke-virtual {p3, p0}, Lcom/huawei/updatesdk/service/otaupdate/e;->a(Z)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p3, p0, p1}, Lcom/huawei/updatesdk/service/otaupdate/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_0
    return-void
.end method

.method public static checkTargetAppUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;)V
    .locals 2

    const-string v0, "status"

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lcom/huawei/updatesdk/a/a/c/b/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/huawei/updatesdk/UpdateSdkAPI;->init(Landroid/content/Context;)V

    new-instance v0, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;

    invoke-direct {v0}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->setMustBtnOne(Z)Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->setTargetPkgName(Ljava/lang/String;)Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/otaupdate/UpdateParams$Builder;->build()Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;

    move-result-object p1

    new-instance v0, Lcom/huawei/updatesdk/service/otaupdate/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/huawei/updatesdk/service/otaupdate/e;-><init>(Landroid/content/Context;Lcom/huawei/updatesdk/service/otaupdate/UpdateParams;Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Lcom/huawei/updatesdk/service/otaupdate/e;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const/4 p1, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-interface {p2, p0}, Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;->onUpdateInfo(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-interface {p2, p0}, Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;->onUpdateInfo(Landroid/content/Intent;)V

    :cond_3
    return-void
.end method

.method private static init(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/huawei/updatesdk/a/b/a/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/huawei/updatesdk/service/d/a/b;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateSDK version is: 2.0.6.300 ,flavor: envrelease ,pkgName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "updatesdk"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static releaseCallBack()V
    .locals 3

    invoke-static {}, Lcom/huawei/updatesdk/service/otaupdate/d;->a()Lcom/huawei/updatesdk/service/otaupdate/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/huawei/updatesdk/service/otaupdate/d;->a(Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;)V

    invoke-static {}, Lcom/huawei/updatesdk/service/d/a/c;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AsyncTask;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    const-string v1, "UpdateSdk"

    const-string v2, "cancel task"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static setAppStorePkgName(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/huawei/updatesdk/service/otaupdate/h;->a()Lcom/huawei/updatesdk/service/otaupdate/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/updatesdk/service/otaupdate/h;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static setServiceZone(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/huawei/updatesdk/service/otaupdate/h;->a()Lcom/huawei/updatesdk/service/otaupdate/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/huawei/updatesdk/service/otaupdate/h;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static showUpdateDialog(Landroid/content/Context;Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;Z)V
    .locals 3

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/huawei/updatesdk/service/otaupdate/AppUpdateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "app_update_parm"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "app_must_btn"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_1

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_1
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "go AppUpdateActivity error: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UpdateSdk"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
