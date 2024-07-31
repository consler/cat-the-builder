.class public Lcom/huawei/hms/common/api/AvailabilityException;
.super Ljava/lang/Exception;
.source "AvailabilityException.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 25
    const-string v0, "AvailabilityException"

    iput-object v0, p0, Lcom/huawei/hms/common/api/AvailabilityException;->a:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/hms/common/api/AvailabilityException;->b:Ljava/lang/String;

    return-void
.end method

.method private a(I)V
    .locals 1

    .line 33
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    .line 50
    const-string p1, "INTERNAL_ERROR"

    iput-object p1, p0, Lcom/huawei/hms/common/api/AvailabilityException;->b:Ljava/lang/String;

    goto :goto_0

    .line 38
    :cond_0
    const-string p1, "ANDROID_VERSION_UNSUPPORT"

    iput-object p1, p0, Lcom/huawei/hms/common/api/AvailabilityException;->b:Ljava/lang/String;

    .line 39
    goto :goto_0

    .line 44
    :cond_1
    const-string p1, "SERVICE_DISABLED"

    iput-object p1, p0, Lcom/huawei/hms/common/api/AvailabilityException;->b:Ljava/lang/String;

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    const-string p1, "SERVICE_VERSION_UPDATE_REQUIRED"

    iput-object p1, p0, Lcom/huawei/hms/common/api/AvailabilityException;->b:Ljava/lang/String;

    .line 48
    goto :goto_0

    .line 41
    :cond_3
    const-string p1, "SERVICE_MISSING"

    iput-object p1, p0, Lcom/huawei/hms/common/api/AvailabilityException;->b:Ljava/lang/String;

    .line 42
    goto :goto_0

    .line 35
    :cond_4
    const-string p1, "success"

    iput-object p1, p0, Lcom/huawei/hms/common/api/AvailabilityException;->b:Ljava/lang/String;

    .line 36
    nop

    .line 53
    :goto_0
    return-void
.end method

.method private b(I)Lcom/huawei/hms/api/ConnectionResult;
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/huawei/hms/common/api/AvailabilityException;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The availability check result is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/api/AvailabilityException;->a(I)V

    .line 58
    new-instance v0, Lcom/huawei/hms/api/ConnectionResult;

    invoke-direct {v0, p1}, Lcom/huawei/hms/api/ConnectionResult;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public getConnectionResult(Lcom/huawei/hms/common/HuaweiApi;)Lcom/huawei/hms/api/ConnectionResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/common/HuaweiApi<",
            "+",
            "Lcom/huawei/hms/api/Api$ApiOptions;",
            ">;)",
            "Lcom/huawei/hms/api/ConnectionResult;"
        }
    .end annotation

    .line 85
    if-nez p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/huawei/hms/common/api/AvailabilityException;->a:Ljava/lang/String;

    const-string v0, "The huaweiApi is null."

    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/huawei/hms/common/api/AvailabilityException;->b(I)Lcom/huawei/hms/api/ConnectionResult;

    move-result-object p1

    return-object p1

    .line 89
    :cond_0
    invoke-virtual {p1}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 90
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object v0

    const v1, 0x1c9c380

    invoke-virtual {v0, p1, v1}, Lcom/huawei/hms/api/HuaweiApiAvailability;->isHuaweiMobileServicesAvailable(Landroid/content/Context;I)I

    move-result p1

    .line 91
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/api/AvailabilityException;->b(I)Lcom/huawei/hms/api/ConnectionResult;

    move-result-object p1

    return-object p1
.end method

.method public getConnectionResult(Lcom/huawei/hms/common/api/HuaweiApiCallable;)Lcom/huawei/hms/api/ConnectionResult;
    .locals 2

    .line 68
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/huawei/hms/common/api/HuaweiApiCallable;->getHuaweiApi()Lcom/huawei/hms/common/HuaweiApi;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-interface {p1}, Lcom/huawei/hms/common/api/HuaweiApiCallable;->getHuaweiApi()Lcom/huawei/hms/common/HuaweiApi;

    move-result-object p1

    invoke-virtual {p1}, Lcom/huawei/hms/common/HuaweiApi;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 73
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object v0

    const v1, 0x1c9c380

    invoke-virtual {v0, p1, v1}, Lcom/huawei/hms/api/HuaweiApiAvailability;->isHuaweiMobileServicesAvailable(Landroid/content/Context;I)I

    move-result p1

    .line 75
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/api/AvailabilityException;->b(I)Lcom/huawei/hms/api/ConnectionResult;

    move-result-object p1

    return-object p1

    .line 69
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/huawei/hms/common/api/AvailabilityException;->a:Ljava/lang/String;

    const-string v0, "The huaweiApi is null."

    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lcom/huawei/hms/common/api/AvailabilityException;->b(I)Lcom/huawei/hms/api/ConnectionResult;

    move-result-object p1

    return-object p1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/huawei/hms/common/api/AvailabilityException;->b:Ljava/lang/String;

    return-object v0
.end method
