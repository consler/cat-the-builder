.class public abstract Lcom/huawei/hms/common/internal/HmsClient;
.super Lcom/huawei/hms/common/internal/BaseHmsClient;
.source "HmsClient.java"

# interfaces
.implements Lcom/huawei/hms/common/internal/AnyClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/common/internal/HmsClient$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/common/internal/ClientSettings;Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hms/common/internal/BaseHmsClient;-><init>(Landroid/content/Context;Lcom/huawei/hms/common/internal/ClientSettings;Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;)V

    .line 43
    return-void
.end method


# virtual methods
.method public post(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/String;Lcom/huawei/hms/common/internal/AnyClient$CallBack;)V
    .locals 3

    .line 47
    const-string v0, "HmsClient"

    if-nez p3, :cond_0

    .line 48
    const-string p1, "callback is invalid, discard."

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void

    .line 51
    :cond_0
    instance-of v1, p1, Lcom/huawei/hms/common/internal/RequestHeader;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-nez p2, :cond_1

    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/HmsClient;->isConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 58
    const-string p1, "post failed for no connected."

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance p1, Lcom/huawei/hms/common/internal/ResponseHeader;

    const p2, 0x3611c819

    const-string v0, "Not Connected"

    invoke-direct {p1, v2, p2, v0}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>(IILjava/lang/String;)V

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 60
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-interface {p3, p1, p2}, Lcom/huawei/hms/common/internal/AnyClient$CallBack;->onCallback(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/String;)V

    .line 61
    return-void

    .line 63
    :cond_2
    check-cast p1, Lcom/huawei/hms/common/internal/RequestHeader;

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "post msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/HmsClient;->getClientSettings()Lcom/huawei/hms/common/internal/ClientSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->getCpActivity()Landroid/app/Activity;

    move-result-object v0

    .line 67
    if-nez v0, :cond_3

    new-instance v0, Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-direct {v0, p0}, Lcom/huawei/hms/adapter/BaseAdapter;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/huawei/hms/adapter/BaseAdapter;

    invoke-direct {v1, p0, v0}, Lcom/huawei/hms/adapter/BaseAdapter;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Landroid/app/Activity;)V

    move-object v0, v1

    .line 69
    :goto_0
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/RequestHeader;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/RequestHeader;->getParcelable()Landroid/os/Parcelable;

    move-result-object p1

    new-instance v2, Lcom/huawei/hms/common/internal/HmsClient$a;

    invoke-direct {v2, p0, p3}, Lcom/huawei/hms/common/internal/HmsClient$a;-><init>(Lcom/huawei/hms/common/internal/HmsClient;Lcom/huawei/hms/common/internal/AnyClient$CallBack;)V

    invoke-virtual {v0, v1, p2, p1, v2}, Lcom/huawei/hms/adapter/BaseAdapter;->baseRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V

    .line 71
    return-void

    .line 52
    :cond_4
    :goto_1
    const-string p1, "arguments is invalid."

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance p1, Lcom/huawei/hms/common/internal/ResponseHeader;

    const p2, 0x3611c818

    const-string v0, "Args is invalid"

    invoke-direct {p1, v2, p2, v0}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>(IILjava/lang/String;)V

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 54
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    .line 53
    invoke-interface {p3, p1, p2}, Lcom/huawei/hms/common/internal/AnyClient$CallBack;->onCallback(Lcom/huawei/hms/core/aidl/IMessageEntity;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public updateSessionId(Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/huawei/hms/common/internal/HmsClient;->sessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iput-object p1, p0, Lcom/huawei/hms/common/internal/HmsClient;->sessionId:Ljava/lang/String;

    .line 77
    :cond_0
    return-void
.end method
