.class public Lcom/huawei/hms/update/ui/k;
.super Lcom/huawei/hms/update/ui/a;
.source "SilentUpdateWizard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/update/ui/k$a;
    }
.end annotation


# instance fields
.field private k:Landroid/content/BroadcastReceiver;

.field private l:Landroid/os/Handler;

.field private m:I

.field private n:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/a;-><init>()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/update/ui/k;->l:Landroid/os/Handler;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hms/update/ui/k;->m:I

    .line 60
    new-instance v0, Lcom/huawei/hms/update/ui/k$1;

    invoke-direct {v0, p0}, Lcom/huawei/hms/update/ui/k$1;-><init>(Lcom/huawei/hms/update/ui/k;)V

    iput-object v0, p0, Lcom/huawei/hms/update/ui/k;->n:Landroid/os/Handler;

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 2

    .line 276
    nop

    .line 277
    const-string v0, "UpgradePkgName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 277
    :cond_0
    const/4 v0, 0x0

    .line 281
    :goto_0
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/huawei/hms/update/ui/k;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    .line 286
    :cond_1
    const-string v0, "downloadtask.status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 287
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDownloadStatus-status is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SilentUpdateWizard"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_4

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    goto :goto_1

    .line 297
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 299
    const p1, 0xea60

    invoke-direct {p0, p1}, Lcom/huawei/hms/update/ui/k;->b(I)V

    goto :goto_2

    .line 302
    :cond_3
    const/16 p1, 0x4e20

    invoke-direct {p0, p1}, Lcom/huawei/hms/update/ui/k;->b(I)V

    goto :goto_2

    .line 296
    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcom/huawei/hms/update/ui/k;->c(I)V

    .line 305
    :cond_5
    :goto_2
    return-void

    .line 283
    :cond_6
    :goto_3
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/update/ui/k;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/huawei/hms/update/ui/k;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/update/ui/k;Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/huawei/hms/update/ui/k;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Landroid/app/Activity;)Z
    .locals 7

    .line 165
    const-string v0, "SilentUpdateWizard"

    iget-object v1, p0, Lcom/huawei/hms/update/ui/k;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 166
    return v2

    .line 169
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.huawei.appmarket.intent.action.ThirdUpdateAction"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    const-string v3, "com.huawei.appmarket"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 173
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 175
    :try_start_0
    const-string v5, "pkgName"

    iget-object v6, p0, Lcom/huawei/hms/update/ui/k;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v5, "versioncode"

    iget v6, p0, Lcom/huawei/hms/update/ui/k;->i:I

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    nop

    .line 182
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 184
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "params"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    iget-object v3, p0, Lcom/huawei/hms/update/ui/k;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    invoke-virtual {v3}, Lcom/huawei/hms/update/ui/UpdateBean;->a()Z

    move-result v3

    const-string v4, "isHmsOrApkUpgrade"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    const-string v3, "hms_install"

    invoke-static {v3}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "buttonDlgY"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v3, "hms_cancel"

    invoke-static {v3}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "buttonDlgN"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "%P"

    aput-object v5, v4, v2

    const-string v5, "hms_update_message_new"

    invoke-static {v5, v4}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "upgradeDlgContent"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 191
    :try_start_1
    const-string v4, "start silent activity of AppMarket"

    invoke-static {v0, v4}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/k;->getRequestCode()I

    move-result v4

    invoke-virtual {p1, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 196
    nop

    .line 197
    const-string p1, "start silent activity finished"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    return v3

    .line 193
    :catch_0
    move-exception p1

    .line 194
    const-string p1, "ActivityNotFoundException"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return v2

    .line 177
    :catch_1
    move-exception p1

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create hmsJsonObject fail"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return v2
.end method

.method private b(I)V
    .locals 5

    .line 243
    iget-object v0, p0, Lcom/huawei/hms/update/ui/k;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 244
    iget-object v0, p0, Lcom/huawei/hms/update/ui/k;->l:Landroid/os/Handler;

    new-instance v2, Lcom/huawei/hms/update/ui/k$a;

    invoke-direct {v2, p0, v1}, Lcom/huawei/hms/update/ui/k$a;-><init>(Lcom/huawei/hms/update/ui/k;Lcom/huawei/hms/update/ui/k$1;)V

    int-to-long v3, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 245
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 2

    .line 313
    nop

    .line 314
    const-string v0, "UpgradePkgName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 314
    :cond_0
    const/4 v0, 0x0

    .line 318
    :goto_0
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/huawei/hms/update/ui/k;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 323
    :cond_1
    const-string v0, "UpgradeDownloadProgress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "UpgradeAppName"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 324
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 326
    const/16 v0, 0x4e20

    invoke-direct {p0, v0}, Lcom/huawei/hms/update/ui/k;->b(I)V

    .line 330
    const/16 v0, 0x63

    if-lt p1, v0, :cond_2

    .line 331
    move p1, v0

    .line 334
    :cond_2
    iput p1, p0, Lcom/huawei/hms/update/ui/k;->m:I

    .line 336
    iget-object v0, p0, Lcom/huawei/hms/update/ui/k;->d:Lcom/huawei/hms/update/ui/b;

    if-nez v0, :cond_3

    .line 337
    const-class v0, Lcom/huawei/hms/update/ui/e;

    invoke-virtual {p0, v0}, Lcom/huawei/hms/update/ui/k;->a(Ljava/lang/Class;)V

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/huawei/hms/update/ui/k;->d:Lcom/huawei/hms/update/ui/b;

    if-eqz v0, :cond_4

    .line 341
    iget-object v0, p0, Lcom/huawei/hms/update/ui/k;->d:Lcom/huawei/hms/update/ui/b;

    check-cast v0, Lcom/huawei/hms/update/ui/e;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/update/ui/e;->b(I)V

    .line 344
    :cond_4
    return-void

    .line 320
    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/huawei/hms/update/ui/k;Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/huawei/hms/update/ui/k;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method private c(I)V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/huawei/hms/update/ui/k;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 254
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/k;->e()V

    .line 255
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/k;->c()V

    .line 257
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/huawei/hms/update/ui/k;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    iget v0, p0, Lcom/huawei/hms/update/ui/k;->f:I

    invoke-virtual {p0, p1, v0}, Lcom/huawei/hms/update/ui/k;->b(II)V

    goto :goto_0

    .line 260
    :cond_0
    iget v0, p0, Lcom/huawei/hms/update/ui/k;->f:I

    invoke-virtual {p0, p1, v0}, Lcom/huawei/hms/update/ui/k;->a(II)V

    .line 262
    :goto_0
    return-void
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 3

    .line 352
    const-string v0, "packagename"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "status"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 353
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlerInstallStatus-status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SilentUpdateWizard"

    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/huawei/hms/update/ui/k;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 363
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 365
    iget-object p1, p0, Lcom/huawei/hms/update/ui/k;->l:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 366
    iget-object p1, p0, Lcom/huawei/hms/update/ui/k;->d:Lcom/huawei/hms/update/ui/b;

    if-eqz p1, :cond_1

    .line 367
    iget-object p1, p0, Lcom/huawei/hms/update/ui/k;->d:Lcom/huawei/hms/update/ui/b;

    check-cast p1, Lcom/huawei/hms/update/ui/e;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/huawei/hms/update/ui/e;->b(I)V

    .line 369
    :cond_1
    const/4 p1, 0x0

    iget v0, p0, Lcom/huawei/hms/update/ui/k;->f:I

    invoke-virtual {p0, p1, v0}, Lcom/huawei/hms/update/ui/k;->b(II)V

    goto :goto_2

    .line 370
    :cond_2
    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    const/4 v0, -0x2

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 376
    :cond_3
    const p1, 0xea60

    invoke-direct {p0, p1}, Lcom/huawei/hms/update/ui/k;->b(I)V

    goto :goto_2

    .line 373
    :cond_4
    :goto_0
    invoke-direct {p0, p1}, Lcom/huawei/hms/update/ui/k;->c(I)V

    goto :goto_2

    .line 360
    :cond_5
    :goto_1
    return-void

    .line 379
    :cond_6
    :goto_2
    return-void
.end method

.method static synthetic c(Lcom/huawei/hms/update/ui/k;Landroid/os/Bundle;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/huawei/hms/update/ui/k;->c(Landroid/os/Bundle;)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 210
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 211
    const-string v1, "com.huawei.appmarket.service.downloadservice.Receiver"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 212
    const-string v1, "com.huawei.appmarket.service.downloadservice.progress.Receiver"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v1, "com.huawei.appmarket.service.installerservice.Receiver"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    new-instance v1, Lcom/huawei/hms/update/c/a;

    iget-object v2, p0, Lcom/huawei/hms/update/ui/k;->n:Landroid/os/Handler;

    invoke-direct {v1, v2}, Lcom/huawei/hms/update/c/a;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/huawei/hms/update/ui/k;->k:Landroid/content/BroadcastReceiver;

    .line 215
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/k;->b()Landroid/app/Activity;

    move-result-object v1

    .line 216
    if-eqz v1, :cond_0

    .line 217
    iget-object v2, p0, Lcom/huawei/hms/update/ui/k;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 219
    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 225
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/k;->b()Landroid/app/Activity;

    move-result-object v0

    .line 226
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/huawei/hms/update/ui/k;->k:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 227
    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/update/ui/k;->k:Landroid/content/BroadcastReceiver;

    .line 230
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 401
    iget v0, p0, Lcom/huawei/hms/update/ui/k;->f:I

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Lcom/huawei/hms/update/ui/k;->b(II)V

    .line 402
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

    .line 388
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/huawei/hms/update/ui/b;

    .line 389
    iget v0, p0, Lcom/huawei/hms/update/ui/k;->m:I

    if-lez v0, :cond_0

    instance-of v0, p1, Lcom/huawei/hms/update/ui/e;

    if-eqz v0, :cond_0

    .line 390
    move-object v0, p1

    check-cast v0, Lcom/huawei/hms/update/ui/e;

    iget v1, p0, Lcom/huawei/hms/update/ui/k;->m:I

    invoke-virtual {v0, v1}, Lcom/huawei/hms/update/ui/e;->a(I)V

    .line 392
    :cond_0
    invoke-virtual {p1, p0}, Lcom/huawei/hms/update/ui/b;->a(Lcom/huawei/hms/update/ui/a;)V

    .line 393
    iput-object p1, p0, Lcom/huawei/hms/update/ui/k;->d:Lcom/huawei/hms/update/ui/b;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    goto :goto_1

    .line 394
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 395
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

    const-string v0, "SilentUpdateWizard"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :goto_1
    return-void
.end method

.method public getRequestCode()I
    .locals 1

    .line 234
    const/16 v0, 0x7d0

    return v0
.end method

.method public onBridgeActivityCreate(Landroid/app/Activity;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Lcom/huawei/hms/update/ui/a;->onBridgeActivityCreate(Landroid/app/Activity;)V

    .line 93
    iget-object v0, p0, Lcom/huawei/hms/update/ui/k;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    if-nez v0, :cond_0

    .line 94
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hms/update/ui/k;->f:I

    .line 101
    invoke-direct {p0, p1}, Lcom/huawei/hms/update/ui/k;->a(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 103
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/huawei/hms/update/ui/k;->a(Z)Z

    move-result p1

    const/16 v0, 0x8

    if-nez p1, :cond_1

    .line 104
    iget p1, p0, Lcom/huawei/hms/update/ui/k;->f:I

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/update/ui/k;->b(II)V

    goto :goto_0

    .line 106
    :cond_1
    iget p1, p0, Lcom/huawei/hms/update/ui/k;->f:I

    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/update/ui/k;->a(II)V

    .line 110
    :cond_2
    :goto_0
    return-void
.end method

.method public onBridgeActivityDestroy()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/huawei/hms/update/ui/k;->l:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/k;->e()V

    .line 116
    invoke-super {p0}, Lcom/huawei/hms/update/ui/a;->onBridgeActivityDestroy()V

    .line 117
    return-void
.end method

.method public onBridgeActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/huawei/hms/update/ui/k;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/update/ui/k;->b:Lcom/huawei/hms/activity/IBridgeActivityDelegate;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/huawei/hms/update/ui/k;->b:Lcom/huawei/hms/activity/IBridgeActivityDelegate;

    invoke-interface {v0, p1, p2, p3}, Lcom/huawei/hms/activity/IBridgeActivityDelegate;->onBridgeActivityResult(IILandroid/content/Intent;)Z

    move-result p1

    return p1

    .line 134
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBridgeActivityResult requestCode is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "resultCode is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SilentUpdateWizard"

    invoke-static {v0, p3}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/k;->getRequestCode()I

    move-result p3

    if-ne p1, p3, :cond_4

    .line 136
    const/4 p1, 0x1

    if-nez p2, :cond_1

    .line 138
    invoke-direct {p0}, Lcom/huawei/hms/update/ui/k;->d()V

    .line 139
    const/16 p2, 0x4e20

    invoke-direct {p0, p2}, Lcom/huawei/hms/update/ui/k;->b(I)V

    .line 140
    return p1

    .line 141
    :cond_1
    const/4 p3, 0x4

    if-ne p2, p3, :cond_2

    .line 143
    invoke-virtual {p0}, Lcom/huawei/hms/update/ui/k;->a()V

    .line 144
    return p1

    .line 148
    :cond_2
    invoke-virtual {p0, p1}, Lcom/huawei/hms/update/ui/k;->a(Z)Z

    move-result p3

    if-nez p3, :cond_3

    .line 149
    iget p3, p0, Lcom/huawei/hms/update/ui/k;->f:I

    invoke-virtual {p0, p2, p3}, Lcom/huawei/hms/update/ui/k;->b(II)V

    goto :goto_0

    .line 151
    :cond_3
    iget p3, p0, Lcom/huawei/hms/update/ui/k;->f:I

    invoke-virtual {p0, p2, p3}, Lcom/huawei/hms/update/ui/k;->a(II)V

    .line 153
    :goto_0
    return p1

    .line 156
    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public onBridgeConfigurationChanged()V
    .locals 0

    .line 203
    invoke-super {p0}, Lcom/huawei/hms/update/ui/a;->onBridgeConfigurationChanged()V

    .line 204
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0

    .line 266
    invoke-super {p0, p1, p2}, Lcom/huawei/hms/update/ui/a;->onKeyUp(ILandroid/view/KeyEvent;)V

    .line 267
    return-void
.end method
