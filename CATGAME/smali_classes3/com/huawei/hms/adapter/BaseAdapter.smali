.class public Lcom/huawei/hms/adapter/BaseAdapter;
.super Ljava/lang/Object;
.source "BaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;,
        Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;,
        Lcom/huawei/hms/adapter/BaseAdapter$MPendingResultImpl;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/huawei/hms/support/api/client/ApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Parcelable;

.field private g:Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

.field private h:Ljava/lang/String;

.field private i:Landroid/content/Context;

.field private j:Lcom/huawei/hms/common/internal/RequestHeader;

.field private k:Lcom/huawei/hms/common/internal/ResponseHeader;

.field private l:Lcom/huawei/hms/adapter/sysobs/SystemObserver;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/support/api/client/ApiClient;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/huawei/hms/common/internal/RequestHeader;

    invoke-direct {v0}, Lcom/huawei/hms/common/internal/RequestHeader;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    .line 7
    new-instance v0, Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-direct {v0}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 10
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->a:Ljava/lang/ref/WeakReference;

    .line 11
    invoke-interface {p1}, Lcom/huawei/hms/support/api/client/ApiClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "In constructor, WeakReference is "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseAdapter"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hms/support/api/client/ApiClient;Landroid/app/Activity;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/huawei/hms/common/internal/RequestHeader;

    invoke-direct {v0}, Lcom/huawei/hms/common/internal/RequestHeader;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    .line 19
    new-instance v0, Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-direct {v0}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 28
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->a:Ljava/lang/ref/WeakReference;

    .line 29
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->b:Ljava/lang/ref/WeakReference;

    .line 30
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    .line 31
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "In constructor, activityWeakReference is "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/huawei/hms/adapter/BaseAdapter;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", activity is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/huawei/hms/adapter/BaseAdapter;->b:Ljava/lang/ref/WeakReference;

    .line 32
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseAdapter"

    .line 33
    invoke-static {p2, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a()Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->g:Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

    return-object v0
.end method

.method static synthetic a(Lcom/huawei/hms/adapter/BaseAdapter;)Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BaseAdapter;->b()Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

    move-result-object p0

    return-object p0
.end method

.method private a(ILjava/lang/String;)Lcom/huawei/hms/common/internal/ResponseWrap;
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->c(I)V

    .line 52
    new-instance p1, Lcom/huawei/hms/common/internal/ResponseWrap;

    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-direct {p1, v0}, Lcom/huawei/hms/common/internal/ResponseWrap;-><init>(Lcom/huawei/hms/common/internal/ResponseHeader;)V

    .line 53
    invoke-virtual {p1, p2}, Lcom/huawei/hms/common/internal/ResponseWrap;->setBody(Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic a(Lcom/huawei/hms/adapter/BaseAdapter;ILjava/lang/String;)Lcom/huawei/hms/common/internal/ResponseWrap;
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/adapter/BaseAdapter;->a(ILjava/lang/String;)Lcom/huawei/hms/common/internal/ResponseWrap;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/adapter/CoreBaseRequest;)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/support/api/client/ApiClient;",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/adapter/CoreBaseRequest;",
            ")",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/ResolveResult<",
            "Lcom/huawei/hms/adapter/CoreBaseResponse;",
            ">;>;"
        }
    .end annotation

    .line 8
    new-instance v0, Lcom/huawei/hms/adapter/BaseAdapter$MPendingResultImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/huawei/hms/adapter/BaseAdapter$MPendingResultImpl;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)V

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 3

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "errorCode"

    .line 56
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "buildBodyStr failed: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BaseAdapter"

    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/huawei/hms/adapter/BaseAdapter;I)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->b(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/app/Activity;Landroid/os/Parcelable;)V
    .locals 3

    const-string v0, "BaseAdapter"

    const-string v1, "startResolution"

    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    if-eqz v0, :cond_0

    .line 12
    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lcom/huawei/hms/adapter/BaseAdapter;->b(Landroid/content/Context;Lcom/huawei/hms/common/internal/RequestHeader;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->l:Lcom/huawei/hms/adapter/sysobs/SystemObserver;

    if-nez v0, :cond_1

    .line 16
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BaseAdapter;->g()V

    .line 18
    :cond_1
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getSystemNotifier()Lcom/huawei/hms/adapter/sysobs/SystemNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->l:Lcom/huawei/hms/adapter/sysobs/SystemObserver;

    invoke-interface {v0, v1}, Lcom/huawei/hms/adapter/sysobs/SystemNotifier;->registerObserver(Lcom/huawei/hms/adapter/sysobs/SystemObserver;)V

    .line 20
    const-class v0, Lcom/huawei/hms/adapter/ui/BaseResolutionAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/huawei/hms/activity/BridgeActivity;->getIntentStartBridgeActivity(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 21
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "resolution"

    .line 22
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 24
    iget-object p2, p0, Lcom/huawei/hms/adapter/BaseAdapter;->h:Ljava/lang/String;

    const-string v1, "transaction_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/huawei/hms/common/internal/RequestHeader;)V
    .locals 3

    .line 26
    invoke-static {}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getInstance()Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getMapFromRequestHeader(Lcom/huawei/hms/common/internal/RequestHeader;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "direction"

    const-string v2, "req"

    .line 27
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-virtual {p2}, Lcom/huawei/hms/common/internal/RequestHeader;->getKitSdkVersion()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->versionCodeToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "version"

    .line 30
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "ro.logsystem.usertype"

    const-string v1, ""

    .line 32
    invoke-static {p2, v1}, Lcom/huawei/hms/utils/Util;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "phoneType"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-static {}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getInstance()Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;

    move-result-object p2

    const-string v1, "HMS_SDK_BASE_CALL_AIDL"

    invoke-virtual {p2, p1, v1, v0}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->onNewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;)V
    .locals 2

    .line 34
    invoke-static {}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getInstance()Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;

    invoke-static {p2}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getMapFromRequestHeader(Lcom/huawei/hms/common/internal/ResponseHeader;)Ljava/util/Map;

    move-result-object p2

    const-string v0, "direction"

    const-string v1, "rsp"

    .line 35
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    .line 37
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/RequestHeader;->getKitSdkVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->versionCodeToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "version"

    .line 38
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ro.logsystem.usertype"

    const-string v1, ""

    .line 40
    invoke-static {v0, v1}, Lcom/huawei/hms/utils/Util;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "phoneType"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-static {}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getInstance()Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;

    move-result-object v0

    const-string v1, "HMS_SDK_BASE_CALL_AIDL"

    invoke-virtual {v0, p1, v1, p2}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->onNewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;J)V
    .locals 2

    .line 42
    invoke-static {}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getInstance()Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;

    invoke-static {p2}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getMapFromRequestHeader(Lcom/huawei/hms/common/internal/ResponseHeader;)Ljava/util/Map;

    move-result-object p2

    const-string v0, "direction"

    const-string v1, "rsp"

    .line 43
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string p4, "waitTime"

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object p3, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    .line 46
    invoke-virtual {p3}, Lcom/huawei/hms/common/internal/RequestHeader;->getKitSdkVersion()I

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->versionCodeToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "version"

    .line 47
    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "ro.logsystem.usertype"

    const-string p4, ""

    .line 49
    invoke-static {p3, p4}, Lcom/huawei/hms/utils/Util;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, "phoneType"

    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-static {}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getInstance()Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;

    move-result-object p3

    const-string p4, "HMS_SDK_BASE_START_RESOLUTION"

    invoke-virtual {p3, p1, p4, p2}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->onNewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Landroid/os/Parcelable;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->f:Landroid/os/Parcelable;

    return-void
.end method

.method private a(Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->g:Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/adapter/BaseAdapter;Landroid/app/Activity;Landroid/os/Parcelable;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Landroid/app/Activity;Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/adapter/BaseAdapter;Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;)V

    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/adapter/BaseAdapter;Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;J)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;J)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->d:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p2}, Lcom/huawei/hms/adapter/BaseAdapter;->b(Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p3}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Landroid/os/Parcelable;)V

    .line 68
    invoke-direct {p0, p4}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V

    return-void
.end method

.method private a(Landroid/content/Intent;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)Z
    .locals 2

    const-string v0, "privacy_statement_confirm_result"

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x3e9

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "BaseAdapter"

    if-ne p1, v1, :cond_0

    const-string p1, "privacy_statement_confirm_result agreed, replay request"

    .line 72
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BaseAdapter;->h()V

    goto :goto_0

    :cond_0
    const-string p1, "privacy_statement_confirm_result rejected"

    .line 75
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const p1, 0x3611cad9

    .line 77
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/huawei/hms/adapter/BaseAdapter;->a(ILjava/lang/String;)Lcom/huawei/hms/common/internal/ResponseWrap;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/ResponseWrap;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/huawei/hms/adapter/BaseAdapter;Landroid/content/Intent;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)Z
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/adapter/BaseAdapter;->b(Landroid/content/Intent;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)Z

    move-result p0

    return p0
.end method

.method private b()Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->c:Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

    if-nez v0, :cond_0

    const-string v0, "BaseAdapter"

    const-string v1, "callback null"

    .line 5
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method private b(I)Ljava/lang/String;
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->c(I)V

    .line 15
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/ResponseHeader;->toJson()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/huawei/hms/adapter/BaseAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/huawei/hms/adapter/BaseAdapter;I)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Landroid/content/Context;Lcom/huawei/hms/common/internal/RequestHeader;)V
    .locals 3

    .line 6
    invoke-static {}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getInstance()Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getMapFromRequestHeader(Lcom/huawei/hms/common/internal/RequestHeader;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "direction"

    const-string v2, "req"

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-virtual {p2}, Lcom/huawei/hms/common/internal/RequestHeader;->getKitSdkVersion()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->versionCodeToName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "version"

    .line 10
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "ro.logsystem.usertype"

    const-string v1, ""

    .line 12
    invoke-static {p2, v1}, Lcom/huawei/hms/utils/Util;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "phoneType"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getInstance()Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;

    move-result-object p2

    const-string v1, "HMS_SDK_BASE_START_RESOLUTION"

    invoke-virtual {p2, p1, v1, v0}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->onNewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->e:Ljava/lang/String;

    return-void
.end method

.method private b(Landroid/content/Intent;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)Z
    .locals 3

    const-string v0, "kit_update_result"

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "kit_update_result is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseAdapter"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "kit update success,replay request"

    .line 21
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BaseAdapter;->h()V

    goto :goto_0

    :cond_0
    const-string v2, "kit update failed"

    .line 24
    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->a(I)Ljava/lang/String;

    move-result-object p1

    const/16 v1, -0xa

    invoke-direct {p0, v1, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->a(ILjava/lang/String;)Lcom/huawei/hms/common/internal/ResponseWrap;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/ResponseWrap;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    return v2
.end method

.method static synthetic b(Lcom/huawei/hms/adapter/BaseAdapter;Landroid/content/Intent;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Landroid/content/Intent;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)Z

    move-result p0

    return p0
.end method

.method private c()Landroid/app/Activity;
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->b:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    const-string v2, "BaseAdapter"

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "activityWeakReference is "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/huawei/hms/adapter/BaseAdapter;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/huawei/hms/support/api/client/ApiClient;

    if-nez v0, :cond_1

    const-string v0, "tmpApi is null"

    .line 10
    invoke-static {v2, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 13
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "activityWeakReference has "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/huawei/hms/adapter/BaseAdapter;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-interface {v0}, Lcom/huawei/hms/support/api/client/ApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/huawei/hms/utils/Util;->getActiveActivity(Landroid/app/Activity;Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/huawei/hms/adapter/BaseAdapter;)Lcom/huawei/hms/common/internal/ResponseHeader;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    return-object p0
.end method

.method private c(I)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    invoke-virtual {v1}, Lcom/huawei/hms/common/internal/RequestHeader;->getTransactionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setTransactionId(Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    invoke-virtual {v1}, Lcom/huawei/hms/common/internal/RequestHeader;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setAppID(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    invoke-virtual {v1}, Lcom/huawei/hms/common/internal/RequestHeader;->getApiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setApiName(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    invoke-virtual {v1}, Lcom/huawei/hms/common/internal/RequestHeader;->getSrvName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setSrvName(Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    invoke-virtual {v1}, Lcom/huawei/hms/common/internal/RequestHeader;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setPkgName(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setStatusCode(I)V

    .line 21
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setErrorCode(I)V

    .line 22
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    const-string v0, "Core error"

    invoke-virtual {p1, v0}, Lcom/huawei/hms/common/internal/ResponseHeader;->setErrorReason(Ljava/lang/String;)V

    return-void
.end method

.method private c(Landroid/content/Intent;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V
    .locals 6

    const-string v0, "json_header"

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "json_body"

    .line 24
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "status_code"

    .line 25
    invoke-static {v0, v2}, Lcom/huawei/hms/utils/JsonUtil;->getInfoFromJsonobject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "error_code"

    .line 26
    invoke-static {v0, v3}, Lcom/huawei/hms/utils/JsonUtil;->getInfoFromJsonobject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "HMS_FOREGROUND_RES_UI"

    .line 28
    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 29
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "uiDuration"

    .line 30
    invoke-static {p1, v4}, Lcom/huawei/hms/utils/JsonUtil;->getInfoFromJsonobject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 31
    instance-of v4, p1, Ljava/lang/Long;

    if-eqz v4, :cond_0

    .line 32
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    .line 35
    :goto_0
    instance-of p1, v2, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    instance-of p1, v3, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 36
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 37
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 38
    invoke-direct {p0, v2}, Lcom/huawei/hms/adapter/BaseAdapter;->b(I)Ljava/lang/String;

    .line 39
    iget-object v2, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-virtual {v2, p1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setStatusCode(I)V

    .line 40
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-direct {p0, p1, v2, v4, v5}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;J)V

    goto :goto_1

    :cond_1
    const/4 p1, -0x8

    .line 42
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->b(I)Ljava/lang/String;

    .line 43
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    iget-object v2, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-direct {p0, p1, v2, v4, v5}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;J)V

    :goto_1
    const/4 p1, 0x0

    .line 45
    invoke-interface {p2, v0, v1, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onComplete(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic c(Lcom/huawei/hms/adapter/BaseAdapter;Landroid/content/Intent;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/adapter/BaseAdapter;->c(Landroid/content/Intent;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V

    return-void
.end method

.method static synthetic d(Lcom/huawei/hms/adapter/BaseAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/huawei/hms/adapter/BaseAdapter;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BaseAdapter;->c()Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method private e()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->e:Ljava/lang/String;

    return-object v0
.end method

.method private f()Landroid/os/Parcelable;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->f:Landroid/os/Parcelable;

    return-object v0
.end method

.method static synthetic f(Lcom/huawei/hms/adapter/BaseAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BaseAdapter;->i()V

    return-void
.end method

.method private g()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/adapter/BaseAdapter$1;

    invoke-direct {v0, p0}, Lcom/huawei/hms/adapter/BaseAdapter$1;-><init>(Lcom/huawei/hms/adapter/BaseAdapter;)V

    iput-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->l:Lcom/huawei/hms/adapter/sysobs/SystemObserver;

    return-void
.end method

.method private h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->g:Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 5
    new-instance v0, Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-direct {v0}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 6
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BaseAdapter;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/huawei/hms/adapter/BaseAdapter;->e()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/huawei/hms/adapter/BaseAdapter;->f()Landroid/os/Parcelable;

    move-result-object v2

    invoke-direct {p0}, Lcom/huawei/hms/adapter/BaseAdapter;->a()Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

    move-result-object v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/huawei/hms/adapter/BaseAdapter;->baseRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "BaseAdapter"

    const-string v1, "sendBroadcastAfterResolutionHms, context is null"

    .line 2
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.huawei.hms.core.action.SESSION_INVALID"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public baseRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->a:Ljava/lang/ref/WeakReference;

    const-string v1, "BaseAdapter"

    if-nez v0, :cond_0

    const-string p1, "client is null"

    .line 4
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    .line 5
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    return-void

    .line 9
    :cond_0
    iput-object p4, p0, Lcom/huawei/hms/adapter/BaseAdapter;->c:Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

    .line 11
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    invoke-static {p1, v0}, Lcom/huawei/hms/utils/JsonUtil;->jsonToEntity(Ljava/lang/String;Lcom/huawei/hms/core/aidl/IMessageEntity;)Lcom/huawei/hms/core/aidl/IMessageEntity;

    .line 13
    new-instance v0, Lcom/huawei/hms/adapter/CoreBaseRequest;

    invoke-direct {v0}, Lcom/huawei/hms/adapter/CoreBaseRequest;-><init>()V

    .line 14
    invoke-virtual {v0, p2}, Lcom/huawei/hms/adapter/CoreBaseRequest;->setJsonObject(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0, p1}, Lcom/huawei/hms/adapter/CoreBaseRequest;->setJsonHeader(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, p3}, Lcom/huawei/hms/adapter/CoreBaseRequest;->setParcelable(Landroid/os/Parcelable;)V

    .line 18
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/RequestHeader;->getApiName()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p1, "get uri null"

    .line 20
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x5

    .line 21
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    return-void

    .line 25
    :cond_1
    iget-object p2, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    invoke-virtual {p2}, Lcom/huawei/hms/common/internal/RequestHeader;->getTransactionId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/hms/adapter/BaseAdapter;->h:Ljava/lang/String;

    .line 26
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "get transactionId null"

    .line 27
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x6

    .line 28
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    return-void

    .line 32
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "in baseRequest + uri is :"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", transactionId is : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/huawei/hms/adapter/BaseAdapter;->h:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    iget-object p3, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    invoke-direct {p0, p2, p3}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Landroid/content/Context;Lcom/huawei/hms/common/internal/RequestHeader;)V

    .line 36
    iget-object p2, p0, Lcom/huawei/hms/adapter/BaseAdapter;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/huawei/hms/support/api/client/ApiClient;

    .line 37
    invoke-direct {p0, p2, p1, v0}, Lcom/huawei/hms/adapter/BaseAdapter;->a(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/adapter/CoreBaseRequest;)Lcom/huawei/hms/support/api/client/PendingResult;

    move-result-object p1

    new-instance p2, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;

    invoke-direct {p2, p0}, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;-><init>(Lcom/huawei/hms/adapter/BaseAdapter;)V

    invoke-virtual {p1, p2}, Lcom/huawei/hms/support/api/client/PendingResult;->setResultCallback(Lcom/huawei/hms/support/api/client/ResultCallback;)V

    return-void
.end method
