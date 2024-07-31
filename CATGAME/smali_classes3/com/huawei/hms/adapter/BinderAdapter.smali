.class public Lcom/huawei/hms/adapter/BinderAdapter;
.super Ljava/lang/Object;
.source "BinderAdapter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/huawei/hms/adapter/BinderAdapter;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/adapter/BinderAdapter;->f:Landroid/os/Handler;

    .line 49
    iput-object p1, p0, Lcom/huawei/hms/adapter/BinderAdapter;->a:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/huawei/hms/adapter/BinderAdapter;->b:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/huawei/hms/adapter/BinderAdapter;->c:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private a()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/huawei/hms/adapter/BinderAdapter;->f:Landroid/os/Handler;

    const/16 v1, 0x3e9

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 83
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/huawei/hms/adapter/BinderAdapter$1;

    invoke-direct {v3, p0}, Lcom/huawei/hms/adapter/BinderAdapter$1;-><init>(Lcom/huawei/hms/adapter/BinderAdapter;)V

    invoke-direct {v0, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/huawei/hms/adapter/BinderAdapter;->f:Landroid/os/Handler;

    .line 97
    :goto_0
    iget-object v0, p0, Lcom/huawei/hms/adapter/BinderAdapter;->f:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/adapter/BinderAdapter;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BinderAdapter;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 104
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BinderAdapter;->f()Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;->onBinderFailed(I)V

    .line 109
    :cond_0
    return-void
.end method

.method private c()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/huawei/hms/adapter/BinderAdapter;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/huawei/hms/adapter/BinderAdapter;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BinderAdapter;->d()V

    .line 119
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/huawei/hms/adapter/BinderAdapter;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/huawei/hms/adapter/BinderAdapter;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    sget-object v1, Lcom/huawei/hms/adapter/BinderAdapter;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/huawei/hms/adapter/BinderAdapter;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BinderAdapter;->a()V

    .line 126
    monitor-exit v1

    return-void

    .line 128
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BinderAdapter;->d()V

    .line 131
    return-void

    .line 128
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private d()V
    .locals 4

    .line 134
    const-string v0, "BinderAdapter"

    const-string v1, "In connect, bind core service fail"

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/huawei/hms/adapter/BinderAdapter;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 137
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.huawei.hms.activity.BridgeActivity"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 139
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 140
    const-class v1, Lcom/huawei/hms/api/BindingFailedResolution;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent.extra.DELEGATE_CLASS_OBJECT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v1, p0, Lcom/huawei/hms/adapter/BinderAdapter;->a:Landroid/content/Context;

    const/16 v2, 0xb

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/huawei/hms/adapter/BinderAdapter;->d:Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;

    const/4 v2, -0x1

    invoke-interface {v1, v2, v0}, Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;->onBinderFailed(ILandroid/app/PendingIntent;)V

    .line 144
    return-void
.end method

.method private e()V
    .locals 3

    .line 161
    sget-object v0, Lcom/huawei/hms/adapter/BinderAdapter;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/adapter/BinderAdapter;->f:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/huawei/hms/adapter/BinderAdapter;->f:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 164
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/huawei/hms/adapter/BinderAdapter;->f:Landroid/os/Handler;

    .line 166
    :cond_0
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private f()Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/huawei/hms/adapter/BinderAdapter;->d:Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;

    return-object v0
.end method


# virtual methods
.method public binder(Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;)V
    .locals 0

    .line 67
    if-nez p1, :cond_0

    .line 68
    return-void

    .line 71
    :cond_0
    iput-object p1, p0, Lcom/huawei/hms/adapter/BinderAdapter;->d:Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;

    .line 73
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BinderAdapter;->c()V

    .line 74
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 148
    const-string v0, "BinderAdapter"

    const-string v1, "Enter onServiceConnected."

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BinderAdapter;->e()V

    .line 153
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BinderAdapter;->f()Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0, p1, p2}, Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 158
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 171
    const-string v0, "BinderAdapter"

    const-string v1, "Enter onServiceDisconnected."

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BinderAdapter;->f()Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0, p1}, Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 178
    :cond_0
    return-void
.end method

.method public unBind()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/huawei/hms/adapter/BinderAdapter;->a:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/huawei/hms/utils/Util;->unBindServiceCatchException(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 59
    return-void
.end method
