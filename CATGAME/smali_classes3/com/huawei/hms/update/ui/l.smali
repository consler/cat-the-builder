.class public Lcom/huawei/hms/update/ui/l;
.super Lcom/huawei/hms/update/ui/a;
.source "UpdateWizard.java"

# interfaces
.implements Lcom/huawei/hms/update/a/a/b;


# instance fields
.field private k:Lcom/huawei/hms/update/a/a/a;

.field private l:Lcom/huawei/hms/update/a/a/c;

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/a;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hms/update/ui/l;->m:I

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;
    .locals 6

    .line 77
    new-instance v0, Lcom/huawei/hms/utils/PackageManagerHelper;

    invoke-direct {v0, p0}, Lcom/huawei/hms/utils/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".hms.update.provider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    nop

    .line 83
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x1

    const/16 v5, 0x17

    if-le v3, v5, :cond_1

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-le v3, v5, :cond_0

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0, v1, v2}, Lcom/huawei/hms/utils/PackageManagerHelper;->hasProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    goto :goto_0

    .line 91
    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 92
    invoke-static {p0, v2, p1}, Lcom/huawei/hms/update/provider/UpdateProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 94
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/content/Intent;Lcom/huawei/hms/update/a/a/b;)V
    .locals 9

    .line 427
    const-string v0, "UpdateWizard"

    const/16 v1, 0x4b1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "status"

    const/16 v4, -0x63

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CheckUpdateCallBack status is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    nop

    .line 435
    const-string v4, "failreason"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 436
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 437
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkTargetAppUpdate reason is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :cond_0
    const/4 v4, 0x7

    if-ne v3, v4, :cond_7

    .line 442
    const-string v3, "updatesdk_update_info"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    .line 443
    instance-of v3, p1, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;

    if-eqz v3, :cond_6

    .line 444
    check-cast p1, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;

    .line 446
    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;->getPackage_()Ljava/lang/String;

    move-result-object v4

    .line 448
    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;->getVersionCode_()I

    move-result v5

    .line 450
    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;->getDownurl_()Ljava/lang/String;

    move-result-object v6

    .line 452
    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;->getSize_()I

    move-result v7

    .line 454
    invoke-virtual {p1}, Lcom/huawei/updatesdk/service/appmgr/bean/ApkUpgradeInfo;->getSha256_()Ljava/lang/String;

    move-result-object v8

    .line 457
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/huawei/hms/update/ui/l;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    invoke-virtual {p1}, Lcom/huawei/hms/update/ui/UpdateBean;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 463
    :cond_1
    iget-object p1, p0, Lcom/huawei/hms/update/ui/l;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    invoke-virtual {p1}, Lcom/huawei/hms/update/ui/UpdateBean;->c()I

    move-result p1

    if-ge v5, p1, :cond_2

    .line 464
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckUpdateCallBack versionCode is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "bean.getClientVersionCode() is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/update/ui/l;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    invoke-virtual {v1}, Lcom/huawei/hms/update/ui/UpdateBean;->c()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const/16 p1, 0x4b3

    invoke-static {p2, p1, v2}, Lcom/huawei/hms/update/ui/l;->a(Lcom/huawei/hms/update/a/a/b;ILcom/huawei/hms/update/a/a/c;)V

    .line 466
    return-void

    .line 470
    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 476
    :cond_3
    new-instance p1, Lcom/huawei/hms/update/a/a/c;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/huawei/hms/update/a/a/c;-><init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 478
    const/16 v0, 0x3e8

    invoke-static {p2, v0, p1}, Lcom/huawei/hms/update/ui/l;->a(Lcom/huawei/hms/update/a/a/b;ILcom/huawei/hms/update/a/a/c;)V

    goto :goto_2

    .line 471
    :cond_4
    :goto_0
    invoke-static {p2, v1, v2}, Lcom/huawei/hms/update/ui/l;->a(Lcom/huawei/hms/update/a/a/b;ILcom/huawei/hms/update/a/a/c;)V

    .line 472
    return-void

    .line 458
    :cond_5
    :goto_1
    invoke-static {p2, v1, v2}, Lcom/huawei/hms/update/ui/l;->a(Lcom/huawei/hms/update/a/a/b;ILcom/huawei/hms/update/a/a/c;)V

    .line 459
    return-void

    .line 480
    :cond_6
    :goto_2
    goto :goto_3

    :cond_7
    const/4 p1, 0x3

    if-ne v3, p1, :cond_8

    .line 482
    const/16 p1, 0x4b2

    invoke-static {p2, p1, v2}, Lcom/huawei/hms/update/ui/l;->a(Lcom/huawei/hms/update/a/a/b;ILcom/huawei/hms/update/a/a/c;)V

    goto :goto_3

    .line 485
    :cond_8
    invoke-static {p2, v1, v2}, Lcom/huawei/hms/update/ui/l;->a(Lcom/huawei/hms/update/a/a/b;ILcom/huawei/hms/update/a/a/c;)V

    .line 487
    :goto_3
    return-void

    .line 429
    :catch_0
    move-exception p1

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "intent has some error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-static {p2, v1, v2}, Lcom/huawei/hms/update/ui/l;->a(Lcom/huawei/hms/update/a/a/b;ILcom/huawei/hms/update/a/a/c;)V

    .line 432
    return-void
.end method

.method private a(Lcom/huawei/hms/update/a/a/b;)V
    .locals 3

    .line 389
    if-nez p1, :cond_0

    .line 390
    return-void

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/l;->b()Landroid/app/Activity;

    move-result-object v0

    .line 394
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 399
    :cond_1
    iget-object v1, p0, Lcom/huawei/hms/update/ui/l;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    invoke-virtual {v1}, Lcom/huawei/hms/update/ui/UpdateBean;->b()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/huawei/hms/update/ui/l$2;

    invoke-direct {v2, p0, p1}, Lcom/huawei/hms/update/ui/l$2;-><init>(Lcom/huawei/hms/update/ui/l;Lcom/huawei/hms/update/a/a/b;)V

    invoke-static {v0, v1, v2}, Lcom/huawei/updatesdk/UpdateSdkAPI;->checkTargetAppUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/huawei/updatesdk/service/otaupdate/CheckUpdateCallBack;)V

    .line 422
    return-void

    .line 395
    :cond_2
    :goto_0
    const/16 v0, 0x4b1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/huawei/hms/update/ui/l;->a(Lcom/huawei/hms/update/a/a/b;ILcom/huawei/hms/update/a/a/c;)V

    .line 396
    return-void
.end method

.method private static a(Lcom/huawei/hms/update/a/a/b;ILcom/huawei/hms/update/a/a/c;)V
    .locals 2

    .line 99
    if-eqz p0, :cond_0

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/huawei/hms/update/ui/l$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/huawei/hms/update/ui/l$1;-><init>(Lcom/huawei/hms/update/a/a/b;ILcom/huawei/hms/update/a/a/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/update/ui/l;Landroid/content/Intent;Lcom/huawei/hms/update/a/a/b;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/update/ui/l;->a(Landroid/content/Intent;Lcom/huawei/hms/update/a/a/b;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 4

    .line 258
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/l;->b()Landroid/app/Activity;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 263
    :cond_0
    invoke-static {v0, p1}, Lcom/huawei/hms/update/ui/l;->a(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 264
    const-string v1, "UpdateWizard"

    if-nez p1, :cond_1

    .line 265
    const-string p1, "In startInstaller, Failed to creates a Uri from a file."

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/l;->e()V

    .line 267
    return-void

    .line 270
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const/4 p1, 0x3

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 273
    const/4 p1, 0x1

    const-string v3, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 276
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/l;->getRequestCode()I

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    goto :goto_0

    .line 277
    :catch_0
    move-exception p1

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In startInstaller, Failed to start package installer."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/l;->e()V

    .line 282
    :goto_0
    return-void

    .line 260
    :cond_2
    :goto_1
    return-void
.end method

.method private d()V
    .locals 3

    .line 185
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/l;->b()Landroid/app/Activity;

    move-result-object v0

    .line 186
    nop

    .line 187
    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/android/SystemUtils;->getNetType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 190
    :cond_0
    const-string v0, ""

    .line 192
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current network is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpdateWizard"

    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "WIFI"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    const-class v0, Lcom/huawei/hms/update/ui/e;

    invoke-virtual {p0, v0}, Lcom/huawei/hms/update/ui/l;->a(Ljava/lang/Class;)V

    .line 195
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/l;->f()V

    .line 196
    const-string v0, "current network is wifi"

    invoke-static {v2, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 198
    :cond_1
    const-class v0, Lcom/huawei/hms/update/ui/d$b;

    invoke-virtual {p0, v0}, Lcom/huawei/hms/update/ui/l;->a(Ljava/lang/Class;)V

    .line 199
    const-string v0, "current network is not wifi"

    invoke-static {v2, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_1
    return-void
.end method

.method private e()V
    .locals 2

    .line 345
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/huawei/hms/update/ui/l;->a(Z)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 346
    iget v0, p0, Lcom/huawei/hms/update/ui/l;->f:I

    invoke-virtual {p0, v1, v0}, Lcom/huawei/hms/update/ui/l;->b(II)V

    goto :goto_0

    .line 348
    :cond_0
    iget v0, p0, Lcom/huawei/hms/update/ui/l;->f:I

    invoke-virtual {p0, v1, v0}, Lcom/huawei/hms/update/ui/l;->a(II)V

    .line 350
    :goto_0
    return-void
.end method

.method private f()V
    .locals 3

    .line 493
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/l;->b()Landroid/app/Activity;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 500
    :cond_0
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/l;->g()V

    .line 501
    new-instance v1, Lcom/huawei/hms/update/a/c;

    new-instance v2, Lcom/huawei/hms/update/a/d;

    invoke-direct {v2, v0}, Lcom/huawei/hms/update/a/d;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/huawei/hms/update/a/c;-><init>(Lcom/huawei/hms/update/a/a/a;)V

    iput-object v1, p0, Lcom/huawei/hms/update/ui/l;->k:Lcom/huawei/hms/update/a/a/a;

    .line 502
    iget-object v0, p0, Lcom/huawei/hms/update/ui/l;->l:Lcom/huawei/hms/update/a/a/c;

    invoke-interface {v1, p0, v0}, Lcom/huawei/hms/update/a/a/a;->a(Lcom/huawei/hms/update/a/a/b;Lcom/huawei/hms/update/a/a/c;)V

    .line 503
    return-void

    .line 495
    :cond_1
    :goto_0
    const-class v0, Lcom/huawei/hms/update/ui/j$c;

    invoke-virtual {p0, v0}, Lcom/huawei/hms/update/ui/l;->a(Ljava/lang/Class;)V

    .line 496
    return-void
.end method

.method private g()V
    .locals 1

    .line 509
    iget-object v0, p0, Lcom/huawei/hms/update/ui/l;->k:Lcom/huawei/hms/update/a/a/a;

    if-eqz v0, :cond_0

    .line 510
    invoke-interface {v0}, Lcom/huawei/hms/update/a/a/a;->a()V

    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/update/ui/l;->k:Lcom/huawei/hms/update/a/a/a;

    .line 513
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 382
    iget v0, p0, Lcom/huawei/hms/update/ui/l;->f:I

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/huawei/hms/update/ui/l;->b(II)V

    .line 383
    return-void
.end method

.method public a(IIILjava/io/File;)V
    .locals 2

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter onDownloadPackage, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/huawei/hms/update/a/a/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reveived: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateWizard"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_2

    const/16 p4, 0x834

    if-eq p1, p4, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 241
    :pswitch_0
    const-class p1, Lcom/huawei/hms/update/ui/j$d;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/update/ui/l;->a(Ljava/lang/Class;)V

    .line 242
    goto :goto_0

    .line 244
    :pswitch_1
    const-class p1, Lcom/huawei/hms/update/ui/d$c;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/update/ui/l;->a(Ljava/lang/Class;)V

    .line 245
    goto :goto_0

    .line 237
    :pswitch_2
    const-class p1, Lcom/huawei/hms/update/ui/j$c;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/update/ui/l;->a(Ljava/lang/Class;)V

    .line 238
    goto :goto_0

    .line 226
    :cond_0
    iget-object p1, p0, Lcom/huawei/hms/update/ui/l;->d:Lcom/huawei/hms/update/ui/b;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/huawei/hms/update/ui/l;->d:Lcom/huawei/hms/update/ui/b;

    instance-of p1, p1, Lcom/huawei/hms/update/ui/e;

    if-eqz p1, :cond_5

    .line 227
    const/4 p1, 0x0

    .line 228
    if-ltz p2, :cond_1

    if-lez p3, :cond_1

    .line 229
    int-to-long p1, p2

    const-wide/16 v0, 0x64

    mul-long/2addr p1, v0

    int-to-long p3, p3

    div-long/2addr p1, p3

    long-to-int p1, p1

    .line 232
    :cond_1
    iput p1, p0, Lcom/huawei/hms/update/ui/l;->m:I

    .line 233
    iget-object p2, p0, Lcom/huawei/hms/update/ui/l;->d:Lcom/huawei/hms/update/ui/b;

    check-cast p2, Lcom/huawei/hms/update/ui/e;

    invoke-virtual {p2, p1}, Lcom/huawei/hms/update/ui/e;->b(I)V

    .line 234
    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/l;->c()V

    .line 211
    if-nez p4, :cond_3

    .line 212
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/l;->e()V

    goto :goto_0

    .line 215
    :cond_3
    iget-object p1, p0, Lcom/huawei/hms/update/ui/l;->l:Lcom/huawei/hms/update/a/a/c;

    iget-object p1, p1, Lcom/huawei/hms/update/a/a/c;->e:Ljava/lang/String;

    invoke-static {p1, p4}, Lcom/huawei/hms/utils/FileUtil;->verifyHash(Ljava/lang/String;Ljava/io/File;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 216
    invoke-direct {p0, p4}, Lcom/huawei/hms/update/ui/l;->a(Ljava/io/File;)V

    goto :goto_0

    .line 218
    :cond_4
    const-string p1, "Hash value mismatch for download file"

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    nop

    .line 250
    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x899
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(ILcom/huawei/hms/update/a/a/c;)V
    .locals 2

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter onCheckUpdate, status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/huawei/hms/update/a/a/d;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateWizard"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 179
    const-class p1, Lcom/huawei/hms/update/ui/j$b;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/update/ui/l;->a(Ljava/lang/Class;)V

    goto :goto_0

    .line 176
    :pswitch_0
    const-class p1, Lcom/huawei/hms/update/ui/j$b;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/update/ui/l;->a(Ljava/lang/Class;)V

    .line 177
    goto :goto_0

    .line 170
    :cond_0
    iput-object p2, p0, Lcom/huawei/hms/update/ui/l;->l:Lcom/huawei/hms/update/a/a/c;

    .line 171
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/l;->d()V

    .line 172
    nop

    .line 182
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x4b1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/huawei/hms/update/ui/b;)V
    .locals 2

    .line 290
    const-string v0, "UpdateWizard"

    const-string v1, "Enter onCancel."

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    instance-of v0, p1, Lcom/huawei/hms/update/ui/i;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/l;->a()V

    goto :goto_0

    .line 294
    :cond_0
    instance-of v0, p1, Lcom/huawei/hms/update/ui/c;

    if-eqz v0, :cond_1

    .line 295
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/l;->g()V

    .line 296
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/l;->a()V

    goto :goto_0

    .line 297
    :cond_1
    instance-of v0, p1, Lcom/huawei/hms/update/ui/e;

    if-eqz v0, :cond_2

    .line 298
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/l;->g()V

    .line 299
    const-class p1, Lcom/huawei/hms/update/ui/d$d;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/update/ui/l;->a(Ljava/lang/Class;)V

    goto :goto_0

    .line 300
    :cond_2
    instance-of v0, p1, Lcom/huawei/hms/update/ui/d$d;

    if-eqz v0, :cond_3

    .line 301
    const-class p1, Lcom/huawei/hms/update/ui/e;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/update/ui/l;->a(Ljava/lang/Class;)V

    .line 302
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/l;->f()V

    goto :goto_0

    .line 303
    :cond_3
    instance-of v0, p1, Lcom/huawei/hms/update/ui/d$c;

    if-eqz v0, :cond_4

    .line 304
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/l;->a()V

    goto :goto_0

    .line 305
    :cond_4
    instance-of p1, p1, Lcom/huawei/hms/update/ui/d$b;

    if-eqz p1, :cond_5

    .line 306
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/l;->a()V

    goto :goto_0

    .line 308
    :cond_5
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/l;->e()V

    .line 310
    :goto_0
    return-void
.end method

.method a(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/huawei/hms/update/ui/b;",
            ">;)V"
        }
    .end annotation

    .line 358
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/l;->c()V

    .line 360
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/update/ui/b;

    .line 363
    iget-object v0, p0, Lcom/huawei/hms/update/ui/l;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/huawei/hms/update/ui/i;

    if-eqz v0, :cond_0

    .line 365
    const-string v0, "hms_update_title"

    invoke-static {v0}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/hms/update/ui/l;->h:Ljava/lang/String;

    .line 366
    move-object v0, p1

    check-cast v0, Lcom/huawei/hms/update/ui/i;

    iget-object v1, p0, Lcom/huawei/hms/update/ui/l;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/update/ui/i;->a(Ljava/lang/String;)V

    .line 370
    :cond_0
    iget v0, p0, Lcom/huawei/hms/update/ui/l;->m:I

    if-lez v0, :cond_1

    instance-of v0, p1, Lcom/huawei/hms/update/ui/e;

    if-eqz v0, :cond_1

    .line 371
    move-object v0, p1

    check-cast v0, Lcom/huawei/hms/update/ui/e;

    iget v1, p0, Lcom/huawei/hms/update/ui/l;->m:I

    invoke-virtual {v0, v1}, Lcom/huawei/hms/update/ui/e;->a(I)V

    .line 373
    :cond_1
    invoke-virtual {p1, p0}, Lcom/huawei/hms/update/ui/b;->a(Lcom/huawei/hms/update/ui/a;)V

    .line 374
    iput-object p1, p0, Lcom/huawei/hms/update/ui/l;->d:Lcom/huawei/hms/update/ui/b;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    goto :goto_1

    .line 375
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 376
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In showDialog, Failed to show the dialog."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UpdateWizard"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :goto_1
    return-void
.end method

.method public b(Lcom/huawei/hms/update/ui/b;)V
    .locals 2

    .line 318
    const-string v0, "UpdateWizard"

    const-string v1, "Enter onDoWork."

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    instance-of v0, p1, Lcom/huawei/hms/update/ui/i;

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {p1}, Lcom/huawei/hms/update/ui/b;->c()V

    .line 323
    const-class p1, Lcom/huawei/hms/update/ui/c;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/update/ui/l;->a(Ljava/lang/Class;)V

    .line 324
    invoke-direct {p0, p0}, Lcom/huawei/hms/update/ui/l;->a(Lcom/huawei/hms/update/a/a/b;)V

    goto :goto_0

    .line 325
    :cond_0
    instance-of v0, p1, Lcom/huawei/hms/update/ui/d$d;

    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {p1}, Lcom/huawei/hms/update/ui/b;->c()V

    .line 327
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/l;->a()V

    goto :goto_0

    .line 328
    :cond_1
    instance-of v0, p1, Lcom/huawei/hms/update/ui/d$c;

    if-eqz v0, :cond_2

    .line 329
    const-class p1, Lcom/huawei/hms/update/ui/e;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/update/ui/l;->a(Ljava/lang/Class;)V

    .line 330
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/l;->f()V

    goto :goto_0

    .line 331
    :cond_2
    instance-of v0, p1, Lcom/huawei/hms/update/ui/d$b;

    if-eqz v0, :cond_3

    .line 332
    const-class p1, Lcom/huawei/hms/update/ui/e;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/update/ui/l;->a(Ljava/lang/Class;)V

    .line 333
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/l;->f()V

    goto :goto_0

    .line 334
    :cond_3
    instance-of v0, p1, Lcom/huawei/hms/update/ui/j$b;

    if-eqz v0, :cond_4

    .line 335
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/l;->e()V

    goto :goto_0

    .line 336
    :cond_4
    instance-of v0, p1, Lcom/huawei/hms/update/ui/j$c;

    if-eqz v0, :cond_5

    .line 337
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/l;->e()V

    goto :goto_0

    .line 338
    :cond_5
    instance-of p1, p1, Lcom/huawei/hms/update/ui/j$d;

    if-eqz p1, :cond_6

    .line 339
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/l;->e()V

    .line 341
    :cond_6
    :goto_0
    return-void
.end method

.method public getRequestCode()I
    .locals 1

    .line 142
    const/16 v0, 0x7d6

    return v0
.end method

.method public onBridgeActivityCreate(Landroid/app/Activity;)V
    .locals 0

    .line 117
    invoke-super {p0, p1}, Lcom/huawei/hms/update/ui/a;->onBridgeActivityCreate(Landroid/app/Activity;)V

    .line 119
    iget-object p1, p0, Lcom/huawei/hms/update/ui/l;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    if-nez p1, :cond_0

    .line 120
    return-void

    .line 123
    :cond_0
    const/4 p1, 0x6

    iput p1, p0, Lcom/huawei/hms/update/ui/l;->f:I

    .line 126
    iget-object p1, p0, Lcom/huawei/hms/update/ui/l;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    invoke-virtual {p1}, Lcom/huawei/hms/update/ui/UpdateBean;->isNeedConfirm()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/huawei/hms/update/ui/l;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 127
    const-class p1, Lcom/huawei/hms/update/ui/i;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/update/ui/l;->a(Ljava/lang/Class;)V

    goto :goto_0

    .line 129
    :cond_1
    const-class p1, Lcom/huawei/hms/update/ui/c;

    invoke-virtual {p0, p1}, Lcom/huawei/hms/update/ui/l;->a(Ljava/lang/Class;)V

    .line 130
    invoke-direct {p0, p0}, Lcom/huawei/hms/update/ui/l;->a(Lcom/huawei/hms/update/a/a/b;)V

    .line 132
    :goto_0
    return-void
.end method

.method public onBridgeActivityDestroy()V
    .locals 0

    .line 136
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/l;->g()V

    .line 137
    invoke-super {p0}, Lcom/huawei/hms/update/ui/a;->onBridgeActivityDestroy()V

    .line 138
    return-void
.end method

.method public onBridgeActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/huawei/hms/update/ui/l;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/update/ui/l;->b:Lcom/huawei/hms/activity/IBridgeActivityDelegate;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/huawei/hms/update/ui/l;->b:Lcom/huawei/hms/activity/IBridgeActivityDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/hms/activity/IBridgeActivityDelegate;->onBridgeActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1

    .line 152
    :cond_0
    iget p2, p0, Lcom/huawei/hms/update/ui/l;->f:I

    const/4 p3, 0x6

    const/4 v0, 0x0

    if-ne p2, p3, :cond_2

    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/l;->getRequestCode()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 153
    iget-object p1, p0, Lcom/huawei/hms/update/ui/l;->g:Ljava/lang/String;

    iget p2, p0, Lcom/huawei/hms/update/ui/l;->i:I

    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/update/ui/l;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 154
    iget p1, p0, Lcom/huawei/hms/update/ui/l;->f:I

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/update/ui/l;->b(II)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/l;->e()V

    .line 158
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 161
    :cond_2
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 1

    .line 517
    iget-boolean v0, p0, Lcom/huawei/hms/update/ui/l;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/update/ui/l;->b:Lcom/huawei/hms/activity/IBridgeActivityDelegate;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/huawei/hms/update/ui/l;->b:Lcom/huawei/hms/activity/IBridgeActivityDelegate;

    invoke-interface {v0, p1, p2}, Lcom/huawei/hms/activity/IBridgeActivityDelegate;->onKeyUp(ILandroid/view/KeyEvent;)V

    .line 519
    return-void

    .line 522
    :cond_0
    const/4 p2, 0x4

    if-ne p2, p1, :cond_1

    .line 523
    const-string p1, "UpdateWizard"

    const-string p2, "In onKeyUp, Call finish."

    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/l;->b()Landroid/app/Activity;

    move-result-object p1

    .line 526
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_1

    .line 527
    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 528
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 531
    :cond_1
    return-void
.end method
