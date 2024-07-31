.class public Lcom/huawei/hms/adapter/AvailableAdapter;
.super Ljava/lang/Object;
.source "AvailableAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;
    }
.end annotation


# static fields
.field private static c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static d:I


# instance fields
.field private final a:I

.field private b:Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;

.field private e:Lcom/huawei/hms/adapter/sysobs/SystemObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/huawei/hms/adapter/AvailableAdapter;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    sput v1, Lcom/huawei/hms/adapter/AvailableAdapter;->d:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Lcom/huawei/hms/adapter/AvailableAdapter$1;

    invoke-direct {v0, p0}, Lcom/huawei/hms/adapter/AvailableAdapter$1;-><init>(Lcom/huawei/hms/adapter/AvailableAdapter;)V

    iput-object v0, p0, Lcom/huawei/hms/adapter/AvailableAdapter;->e:Lcom/huawei/hms/adapter/sysobs/SystemObserver;

    .line 42
    iput p1, p0, Lcom/huawei/hms/adapter/AvailableAdapter;->a:I

    .line 43
    return-void
.end method

.method static synthetic a()I
    .locals 1

    .line 31
    sget v0, Lcom/huawei/hms/adapter/AvailableAdapter;->d:I

    return v0
.end method

.method static synthetic a(I)I
    .locals 0

    .line 31
    sput p0, Lcom/huawei/hms/adapter/AvailableAdapter;->d:I

    return p0
.end method

.method static synthetic a(Lcom/huawei/hms/adapter/AvailableAdapter;)Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/huawei/hms/adapter/AvailableAdapter;->c()Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 31
    sget-object v0, Lcom/huawei/hms/adapter/AvailableAdapter;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private c()Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/huawei/hms/adapter/AvailableAdapter;->b:Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;

    return-object v0
.end method


# virtual methods
.method public isHuaweiMobileServicesAvailable(Landroid/content/Context;)I
    .locals 3

    .line 52
    const-string v0, "context must not be null."

    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "AvailableAdapter"

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    .line 56
    const-string p1, "HMS can not be supported under android 4.1"

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const/16 p1, 0x15

    return p1

    .line 60
    :cond_0
    new-instance v0, Lcom/huawei/hms/utils/PackageManagerHelper;

    invoke-direct {v0, p1}, Lcom/huawei/hms/utils/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-static {p1}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageStates()Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;

    move-result-object v0

    .line 65
    sget-object v2, Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;->NOT_INSTALLED:Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;

    invoke-virtual {v2, v0}, Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 66
    const-string p1, "HMS is not installed"

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const/4 p1, 0x1

    return p1

    .line 71
    :cond_1
    sget-object v2, Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;->DISABLED:Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;

    invoke-virtual {v2, v0}, Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 72
    const-string p1, "HMS is disabled"

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 p1, 0x3

    return p1

    .line 77
    :cond_2
    invoke-virtual {p1}, Lcom/huawei/hms/utils/HMSPackageManager;->getHmsVersionCode()I

    move-result p1

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current versionCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",minimum version requirements: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/huawei/hms/adapter/AvailableAdapter;->a:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget v0, p0, Lcom/huawei/hms/adapter/AvailableAdapter;->a:I

    if-ge p1, v0, :cond_3

    .line 83
    const-string p1, "The current version does not meet the minimum version requirements"

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const/4 p1, 0x2

    return p1

    .line 87
    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public isUserResolvableError(I)Z
    .locals 2

    .line 97
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 102
    const/4 p1, 0x0

    return p1

    .line 100
    :cond_0
    return v0
.end method

.method public startResolution(Landroid/app/Activity;Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;)V
    .locals 5

    .line 112
    nop

    .line 114
    invoke-static {p1}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getHmsVersionCode()I

    move-result v0

    .line 115
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "AvailableAdapter"

    const v4, 0x2625a00

    if-lt v0, v4, :cond_0

    .line 116
    const-string v0, "enter 4.0 HmsCore upgrade process"

    invoke-static {v3, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    move v0, v1

    goto :goto_0

    .line 115
    :cond_0
    move v0, v2

    .line 119
    :goto_0
    sget-object v4, Lcom/huawei/hms/adapter/AvailableAdapter;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    const-string v1, "Start to resolution for the 1st time."

    invoke-static {v3, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 121
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    if-ne v1, v4, :cond_4

    .line 122
    const-string v1, "main thread invokes resolution."

    invoke-static {v3, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_1
    const-string v1, "startResolution"

    invoke-static {v3, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    goto :goto_2

    .line 156
    :cond_2
    iput-object p2, p0, Lcom/huawei/hms/adapter/AvailableAdapter;->b:Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;

    .line 157
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getSystemNotifier()Lcom/huawei/hms/adapter/sysobs/SystemNotifier;

    move-result-object p2

    iget-object v1, p0, Lcom/huawei/hms/adapter/AvailableAdapter;->e:Lcom/huawei/hms/adapter/sysobs/SystemObserver;

    invoke-interface {p2, v1}, Lcom/huawei/hms/adapter/sysobs/SystemNotifier;->registerObserver(Lcom/huawei/hms/adapter/sysobs/SystemObserver;)V

    .line 159
    const-class p2, Lcom/huawei/hms/adapter/ui/a;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/huawei/hms/activity/BridgeActivity;->getIntentStartBridgeActivity(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    .line 160
    iget v1, p0, Lcom/huawei/hms/adapter/AvailableAdapter;->a:I

    const-string v2, "update_version"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 162
    const-string v1, "new_update"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 163
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 164
    return-void

    .line 153
    :cond_3
    :goto_2
    return-void

    .line 124
    :cond_4
    const-string p1, "Another thread start to resolution."

    invoke-static {v3, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    nop

    .line 126
    :goto_3
    sget-object p1, Lcom/huawei/hms/adapter/AvailableAdapter;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 127
    const/16 p1, 0x12c

    if-lt v2, p1, :cond_6

    .line 128
    const-string p1, "Previous popup is not handled by user or download has not finished within 1min."

    invoke-static {v3, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    if-eqz p2, :cond_5

    .line 131
    const/16 p1, 0x1b

    invoke-interface {p2, p1}, Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;->onComplete(I)V

    .line 133
    :cond_5
    return-void

    .line 136
    :cond_6
    :try_start_0
    const-string p1, "Concurrent startResolution thread is waiting."

    invoke-static {v3, p1}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-wide/16 v0, 0xc8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 139
    :catch_0
    move-exception p1

    .line 140
    const-string p1, "Concurrent startResolution thread waiting is interrupted."

    invoke-static {v3, p1}, Lcom/huawei/hms/support/log/HMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    :goto_4
    goto :goto_3

    .line 143
    :cond_7
    const-string p1, "Concurrent startResolution thread waiting finished."

    invoke-static {v3, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-eqz p2, :cond_8

    .line 145
    sget p1, Lcom/huawei/hms/adapter/AvailableAdapter;->d:I

    invoke-interface {p2, p1}, Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;->onComplete(I)V

    .line 147
    :cond_8
    return-void
.end method
