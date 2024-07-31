.class public Lcom/huawei/hms/adapter/ui/a;
.super Ljava/lang/Object;
.source "UpdateAdapter.java"

# interfaces
.implements Lcom/huawei/hms/activity/IBridgeActivityDelegate;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lcom/huawei/hms/update/ui/UpdateBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 232
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/a;->b()Landroid/app/Activity;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 237
    return-void

    .line 234
    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3

    .line 261
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    new-instance v1, Lcom/huawei/hms/utils/PackageManagerHelper;

    invoke-direct {v1, p1}, Lcom/huawei/hms/utils/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 266
    invoke-virtual {v1, p2}, Lcom/huawei/hms/utils/PackageManagerHelper;->getPackageStates(Ljava/lang/String;)Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;

    move-result-object p1

    .line 267
    sget-object v2, Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;->NOT_INSTALLED:Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;

    invoke-virtual {v2, p1}, Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 268
    return v2

    .line 271
    :cond_1
    invoke-virtual {v1, p2}, Lcom/huawei/hms/utils/PackageManagerHelper;->getPackageVersionCode(Ljava/lang/String;)I

    move-result p1

    .line 272
    if-ge p1, p3, :cond_2

    move v0, v2

    :cond_2
    return v0

    .line 262
    :cond_3
    :goto_0
    return v0
.end method

.method private b()Landroid/app/Activity;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/huawei/hms/adapter/ui/a;->a:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 246
    const/4 v0, 0x0

    return-object v0

    .line 248
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method private c()V
    .locals 2

    .line 279
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getInstance()Lcom/huawei/hms/adapter/sysobs/SystemManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->notifyUpdateResult(I)V

    .line 280
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/a;->a()V

    .line 281
    return-void
.end method


# virtual methods
.method public getRequestCode()I
    .locals 1

    .line 214
    const/16 v0, 0x3e9

    return v0
.end method

.method public onBridgeActivityCreate(Landroid/app/Activity;)V
    .locals 6

    .line 62
    const-string v0, "UpdateAdapter"

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/huawei/hms/adapter/ui/a;->a:Ljava/lang/ref/WeakReference;

    .line 64
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 65
    if-nez v1, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/a;->c()V

    .line 67
    return-void

    .line 71
    :cond_0
    :try_start_0
    const-string v2, "TestIntentProtocol"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    nop

    .line 78
    const-string v2, "update_version"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/huawei/hms/adapter/ui/a;->b:I

    .line 80
    if-nez v2, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/a;->c()V

    .line 82
    return-void

    .line 85
    :cond_1
    new-instance v2, Lcom/huawei/hms/update/ui/UpdateBean;

    invoke-direct {v2}, Lcom/huawei/hms/update/ui/UpdateBean;-><init>()V

    .line 86
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/huawei/hms/update/ui/UpdateBean;->setHmsOrApkUpgrade(Z)V

    .line 87
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/huawei/hms/update/ui/UpdateBean;->setClientPackageName(Ljava/lang/String;)V

    .line 88
    iget v4, p0, Lcom/huawei/hms/adapter/ui/a;->b:I

    invoke-virtual {v2, v4}, Lcom/huawei/hms/update/ui/UpdateBean;->setClientVersionCode(I)V

    .line 89
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.huawei.hwid.tv"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 90
    const-string v4, "C100636709"

    invoke-virtual {v2, v4}, Lcom/huawei/hms/update/ui/UpdateBean;->setClientAppId(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_2
    const-string v4, "C10132067"

    invoke-virtual {v2, v4}, Lcom/huawei/hms/update/ui/UpdateBean;->setClientAppId(Ljava/lang/String;)V

    .line 95
    :goto_0
    invoke-static {}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getmContext()Landroid/content/Context;

    move-result-object v4

    if-nez v4, :cond_3

    .line 96
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->setmContext(Landroid/content/Context;)V

    .line 98
    :cond_3
    const-string v4, "hms_update_title"

    invoke-static {v4}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/huawei/hms/update/ui/UpdateBean;->setClientAppName(Ljava/lang/String;)V

    .line 99
    iput-object v2, p0, Lcom/huawei/hms/adapter/ui/a;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    .line 102
    const-string v4, "new_update"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v3, 0x3e9

    if-eqz v1, :cond_4

    .line 103
    const-string v1, "4.0 framework HMSCore upgrade process"

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageName()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.huawei.hms.fwksdk.stub.UpdateStubActivity"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 108
    nop

    .line 109
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 108
    const-string v5, "kpms_key_caller_packagename"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v4, "kitUpdatePackageName"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 113
    return-void

    .line 116
    :cond_4
    const-string v1, "old framework HMSCore upgrade process"

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-static {p1, v3, v2}, Lcom/huawei/hms/update/manager/UpdateManager;->startUpdate(Landroid/app/Activity;ILcom/huawei/hms/update/ui/UpdateBean;)V

    .line 118
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/hms/adapter/ui/a;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    .line 119
    return-void

    .line 72
    :catch_0
    move-exception p1

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intent has some error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/a;->c()V

    .line 75
    return-void
.end method

.method public onBridgeActivityDestroy()V
    .locals 2

    .line 127
    const-string v0, "UpdateAdapter"

    const-string v1, "onBridgeActivityDestroy"

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/adapter/ui/a;->a:Ljava/lang/ref/WeakReference;

    .line 129
    return-void
.end method

.method public onBridgeActivityResult(IILandroid/content/Intent;)Z
    .locals 6

    .line 133
    invoke-virtual {p0}, Lcom/huawei/hms/adapter/ui/a;->getRequestCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    .line 134
    iput-object v2, p0, Lcom/huawei/hms/adapter/ui/a;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    .line 135
    return v1

    .line 137
    :cond_0
    const-string p1, "UpdateAdapter"

    const-string v0, "onBridgeActivityResult"

    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/16 v0, 0x4be

    const/4 v3, 0x1

    if-ne p2, v0, :cond_2

    .line 140
    const-string v0, "Enter update escape route"

    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/a;->b()Landroid/app/Activity;

    move-result-object v0

    .line 142
    if-nez v0, :cond_1

    .line 143
    const-string p2, "bridgeActivity is null, update escape failed "

    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iput-object v2, p0, Lcom/huawei/hms/adapter/ui/a;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    .line 145
    return v3

    .line 148
    :cond_1
    const/16 v4, 0x3e9

    iget-object v5, p0, Lcom/huawei/hms/adapter/ui/a;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    invoke-static {v0, v4, v5}, Lcom/huawei/hms/update/manager/UpdateManager;->startUpdate(Landroid/app/Activity;ILcom/huawei/hms/update/ui/UpdateBean;)V

    .line 149
    iput-object v2, p0, Lcom/huawei/hms/adapter/ui/a;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    .line 152
    :cond_2
    const/4 v0, -0x1

    const/16 v4, 0xd

    if-ne p2, v0, :cond_7

    .line 154
    if-eqz p3, :cond_a

    .line 155
    const-string p2, "kit_update_result"

    invoke-virtual {p3, p2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v3, :cond_3

    .line 156
    const-string p2, "new framework update process,Error resolved successfully!"

    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getInstance()Lcom/huawei/hms/adapter/sysobs/SystemManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->notifyUpdateResult(I)V

    .line 158
    iput-object v2, p0, Lcom/huawei/hms/adapter/ui/a;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    .line 159
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/a;->a()V

    .line 160
    return v3

    .line 163
    :cond_3
    const-string p2, "intent.extra.RESULT"

    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 165
    if-nez p2, :cond_4

    .line 166
    const-string p2, "Error resolved successfully!"

    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getInstance()Lcom/huawei/hms/adapter/sysobs/SystemManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->notifyUpdateResult(I)V

    goto :goto_0

    .line 168
    :cond_4
    if-ne p2, v4, :cond_5

    .line 169
    const-string p2, "Resolve error process canceled by user!"

    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getInstance()Lcom/huawei/hms/adapter/sysobs/SystemManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->notifyUpdateResult(I)V

    goto :goto_0

    .line 171
    :cond_5
    const/16 p3, 0x8

    if-ne p2, p3, :cond_6

    .line 172
    const-string p2, "Internal error occurred, recommended retry."

    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getInstance()Lcom/huawei/hms/adapter/sysobs/SystemManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->notifyUpdateResult(I)V

    goto :goto_0

    .line 175
    :cond_6
    const-string p3, "Other error codes."

    invoke-static {p1, p3}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getInstance()Lcom/huawei/hms/adapter/sysobs/SystemManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->notifyUpdateResult(I)V

    .line 178
    :goto_0
    goto :goto_1

    .line 179
    :cond_7
    if-nez p2, :cond_a

    .line 180
    const-string p2, "Activity.RESULT_CANCELED"

    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iput-object v2, p0, Lcom/huawei/hms/adapter/ui/a;->c:Lcom/huawei/hms/update/ui/UpdateBean;

    .line 182
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/a;->b()Landroid/app/Activity;

    move-result-object p2

    .line 183
    if-nez p2, :cond_8

    .line 184
    return v3

    .line 187
    :cond_8
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageName()Ljava/lang/String;

    move-result-object p3

    .line 188
    iget v0, p0, Lcom/huawei/hms/adapter/ui/a;->b:I

    invoke-direct {p0, p2, p3, v0}, Lcom/huawei/hms/adapter/ui/a;->a(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 189
    const-string p2, "Resolve error, process canceled by user clicking back button!"

    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getInstance()Lcom/huawei/hms/adapter/sysobs/SystemManager;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->notifyUpdateResult(I)V

    goto :goto_1

    .line 192
    :cond_9
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getInstance()Lcom/huawei/hms/adapter/sysobs/SystemManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->notifyUpdateResult(I)V

    .line 196
    :cond_a
    :goto_1
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/a;->a()V

    .line 197
    return v3
.end method

.method public onBridgeConfigurationChanged()V
    .locals 2

    .line 206
    const-string v0, "UpdateAdapter"

    const-string v1, "onBridgeConfigurationChanged"

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0

    .line 225
    const-string p1, "UpdateAdapter"

    const-string p2, "On key up when resolve conn error"

    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method
