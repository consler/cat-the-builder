.class public Lcom/huawei/hms/api/BindingFailedResolution;
.super Ljava/lang/Object;
.source "BindingFailedResolution.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/huawei/hms/activity/IBridgeActivityDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/api/BindingFailedResolution$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Z

.field private d:Lcom/huawei/hms/api/BindingFailedResolution$a;

.field private e:Landroid/os/Handler;

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/api/BindingFailedResolution;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->c:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->e:Landroid/os/Handler;

    .line 60
    iput-object v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/api/BindingFailedResolution;Lcom/huawei/hms/api/BindingFailedResolution$a;)Lcom/huawei/hms/api/BindingFailedResolution$a;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->d:Lcom/huawei/hms/api/BindingFailedResolution$a;

    return-object p1
.end method

.method private a()V
    .locals 4

    .line 72
    iget-object v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->f:Landroid/os/Handler;

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/huawei/hms/api/BindingFailedResolution$1;

    invoke-direct {v3, p0}, Lcom/huawei/hms/api/BindingFailedResolution$1;-><init>(Lcom/huawei/hms/api/BindingFailedResolution;)V

    invoke-direct {v0, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->f:Landroid/os/Handler;

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->f:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 91
    return-void
.end method

.method private a(I)V
    .locals 3

    .line 275
    invoke-virtual {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishBridgeActivity\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BindingFailedResolution"

    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 282
    const-string v2, "intent.extra.RESULT"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 283
    const/4 p1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 284
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 285
    return-void

    .line 277
    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 3

    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.huawei.hms.core.activity.JumpActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    const-string v1, "BindingFailedResolution"

    const-string v2, "onBridgeActivityCreate\uff1atry to start HMS"

    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->getRequestCode()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    goto :goto_0

    .line 107
    :catchall_0
    move-exception p1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivityNotFoundException\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->f:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 110
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->f:Landroid/os/Handler;

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->b()V

    .line 115
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/api/BindingFailedResolution;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/BindingFailedResolution;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/api/BindingFailedResolution;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/BindingFailedResolution;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->c:Z

    if-eqz v0, :cond_0

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->c:Z

    .line 199
    invoke-virtual {p0, p1}, Lcom/huawei/hms/api/BindingFailedResolution;->onStartResult(Z)V

    .line 201
    :cond_0
    return-void
.end method

.method private b()V
    .locals 5

    .line 226
    invoke-virtual {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 227
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 228
    const-string v0, "BindingFailedResolution"

    const-string v2, "In connect, bind core try fail"

    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0, v1}, Lcom/huawei/hms/api/BindingFailedResolution;->a(Z)V

    .line 230
    return-void

    .line 233
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.huawei.hms.core.aidlservice"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    sget-object v3, Lcom/huawei/hms/api/BindingFailedResolution;->a:Ljava/lang/Object;

    monitor-enter v3

    .line 237
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v0, v2, p0, v4}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->c()V

    .line 239
    monitor-exit v3

    return-void

    .line 241
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    const-string v0, "BindingFailedResolution"

    const-string v2, "In connect, bind core try fail"

    invoke-static {v0, v2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-direct {p0, v1}, Lcom/huawei/hms/api/BindingFailedResolution;->a(Z)V

    .line 244
    return-void

    .line 241
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()V
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->e:Landroid/os/Handler;

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 294
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/huawei/hms/api/BindingFailedResolution$2;

    invoke-direct {v3, p0}, Lcom/huawei/hms/api/BindingFailedResolution$2;-><init>(Lcom/huawei/hms/api/BindingFailedResolution;)V

    invoke-direct {v0, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->e:Landroid/os/Handler;

    .line 309
    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->e:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 310
    return-void
.end method

.method private d()V
    .locals 3

    .line 316
    sget-object v0, Lcom/huawei/hms/api/BindingFailedResolution;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->e:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->e:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 319
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->e:Landroid/os/Handler;

    .line 321
    :cond_0
    monitor-exit v0

    .line 322
    return-void

    .line 321
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private e()V
    .locals 3

    .line 326
    invoke-virtual {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->d:Lcom/huawei/hms/api/BindingFailedResolution$a;

    if-nez v1, :cond_1

    .line 332
    new-instance v1, Lcom/huawei/hms/api/BindingFailedResolution$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/huawei/hms/api/BindingFailedResolution$a;-><init>(Lcom/huawei/hms/api/BindingFailedResolution$1;)V

    iput-object v1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->d:Lcom/huawei/hms/api/BindingFailedResolution$a;

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {v1}, Lcom/huawei/hms/api/BindingFailedResolution$a;->dismiss()V

    .line 337
    :goto_0
    const-string v1, "BindingFailedResolution"

    const-string v2, "showPromptdlg to resolve conn error"

    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->d:Lcom/huawei/hms/api/BindingFailedResolution$a;

    new-instance v2, Lcom/huawei/hms/api/BindingFailedResolution$3;

    invoke-direct {v2, p0}, Lcom/huawei/hms/api/BindingFailedResolution$3;-><init>(Lcom/huawei/hms/api/BindingFailedResolution;)V

    invoke-virtual {v1, v0, v2}, Lcom/huawei/hms/api/BindingFailedResolution$a;->show(Landroid/app/Activity;Lcom/huawei/hms/ui/AbstractDialog$Callback;)V

    .line 353
    return-void

    .line 328
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->b:Landroid/app/Activity;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .line 167
    const/16 v0, 0x7d3

    return v0
.end method

.method public onBridgeActivityCreate(Landroid/app/Activity;)V
    .locals 2

    .line 65
    iput-object p1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->b:Landroid/app/Activity;

    .line 66
    sget-object v0, Lcom/huawei/hms/api/a;->a:Lcom/huawei/hms/api/a;

    iget-object v1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/api/a;->a(Landroid/app/Activity;)V

    .line 67
    invoke-direct {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->a()V

    .line 68
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/BindingFailedResolution;->a(Landroid/app/Activity;)V

    .line 69
    return-void
.end method

.method public onBridgeActivityDestroy()V
    .locals 2

    .line 122
    invoke-direct {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->d()V

    .line 123
    sget-object v0, Lcom/huawei/hms/api/a;->a:Lcom/huawei/hms/api/a;

    iget-object v1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/huawei/hms/api/a;->b(Landroid/app/Activity;)V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->b:Landroid/app/Activity;

    .line 125
    return-void
.end method

.method public onBridgeActivityResult(IILandroid/content/Intent;)Z
    .locals 0

    .line 132
    invoke-virtual {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->getRequestCode()I

    move-result p2

    if-eq p1, p2, :cond_0

    .line 133
    const/4 p1, 0x0

    return p1

    .line 136
    :cond_0
    const-string p1, "BindingFailedResolution"

    const-string p2, "onBridgeActivityResult"

    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object p1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->f:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 139
    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/huawei/hms/api/BindingFailedResolution;->f:Landroid/os/Handler;

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->b()V

    .line 145
    const/4 p1, 0x1

    return p1
.end method

.method public onBridgeConfigurationChanged()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/huawei/hms/api/BindingFailedResolution;->d:Lcom/huawei/hms/api/BindingFailedResolution$a;

    if-nez v0, :cond_0

    .line 155
    return-void

    .line 158
    :cond_0
    const-string v0, "BindingFailedResolution"

    const-string v1, "re show prompt dialog"

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->e()V

    .line 160
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0

    .line 179
    const-string p1, "BindingFailedResolution"

    const-string p2, "On key up when resolve conn error"

    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->d()V

    .line 254
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/huawei/hms/api/BindingFailedResolution;->a(Z)V

    .line 256
    invoke-virtual {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 257
    if-nez p1, :cond_0

    .line 258
    return-void

    .line 261
    :cond_0
    invoke-static {p1, p0}, Lcom/huawei/hms/utils/Util;->unBindServiceCatchException(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 262
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 269
    return-void
.end method

.method protected onStartResult(Z)V
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 210
    if-nez v0, :cond_0

    .line 211
    return-void

    .line 214
    :cond_0
    if-eqz p1, :cond_1

    .line 215
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/huawei/hms/api/BindingFailedResolution;->a(I)V

    .line 216
    return-void

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/api/BindingFailedResolution;->e()V

    .line 220
    return-void
.end method
