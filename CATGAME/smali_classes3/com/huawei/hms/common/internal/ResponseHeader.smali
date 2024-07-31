.class public Lcom/huawei/hms/common/internal/ResponseHeader;
.super Ljava/lang/Object;
.source "ResponseHeader.java"

# interfaces
.implements Lcom/huawei/hms/common/internal/ResponseErrorCode;
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;


# static fields
.field private static final TAG:Ljava/lang/String; = "ResponseHeader"


# instance fields
.field private api_name:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private app_id:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private error_code:I
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private error_reason:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private parcelable:Landroid/os/Parcelable;

.field private pkg_name:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private resolution:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private session_id:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private srv_name:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private status_code:I
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private transaction_id:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->app_id:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->app_id:Ljava/lang/String;

    .line 66
    iput p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->status_code:I

    .line 67
    iput p2, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->error_code:I

    .line 68
    iput-object p3, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->error_reason:Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public fromJson(Ljava/lang/String;)Z
    .locals 2

    .line 191
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 192
    const-string p1, "status_code"

    invoke-static {v0, p1}, Lcom/huawei/hms/utils/JsonUtil;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->status_code:I

    .line 193
    const-string p1, "error_code"

    invoke-static {v0, p1}, Lcom/huawei/hms/utils/JsonUtil;->getIntValue(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->error_code:I

    .line 194
    const-string p1, "error_reason"

    invoke-static {v0, p1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->error_reason:Ljava/lang/String;

    .line 195
    const-string p1, "srv_name"

    invoke-static {v0, p1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->srv_name:Ljava/lang/String;

    .line 196
    const-string p1, "api_name"

    invoke-static {v0, p1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->api_name:Ljava/lang/String;

    .line 197
    const-string p1, "app_id"

    invoke-static {v0, p1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->app_id:Ljava/lang/String;

    .line 198
    const-string p1, "pkg_name"

    invoke-static {v0, p1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->pkg_name:Ljava/lang/String;

    .line 200
    const-string p1, "session_id"

    invoke-static {v0, p1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->session_id:Ljava/lang/String;

    .line 201
    const-string p1, "transaction_id"

    invoke-static {v0, p1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->transaction_id:Ljava/lang/String;

    .line 202
    const-string p1, "resolution"

    invoke-static {v0, p1}, Lcom/huawei/hms/utils/JsonUtil;->getStringValue(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->resolution:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    const/4 p1, 0x1

    return p1

    .line 204
    :catch_0
    move-exception p1

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fromJson failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ResponseHeader"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 p1, 0x0

    return p1
.end method

.method public getActualAppID()Ljava/lang/String;
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->app_id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 130
    return-object v1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->app_id:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 133
    array-length v2, v0

    if-nez v2, :cond_1

    .line 134
    return-object v1

    .line 135
    :cond_1
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 136
    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 138
    :cond_2
    aget-object v0, v0, v2

    return-object v0
.end method

.method public getApiName()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->api_name:Ljava/lang/String;

    return-object v0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->app_id:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->error_code:I

    return v0
.end method

.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->error_reason:Ljava/lang/String;

    return-object v0
.end method

.method public getParcelable()Landroid/os/Parcelable;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->parcelable:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->pkg_name:Ljava/lang/String;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->resolution:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->session_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSrvName()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->srv_name:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->status_code:I

    return v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->transaction_id:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 72
    iget v0, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->status_code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setApiName(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->api_name:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->app_id:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setErrorCode(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->error_code:I

    .line 89
    return-void
.end method

.method public setErrorReason(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->error_reason:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setParcelable(Landroid/os/Parcelable;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->parcelable:Landroid/os/Parcelable;

    .line 177
    return-void
.end method

.method public setPkgName(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->pkg_name:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setResolution(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->resolution:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->session_id:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setSrvName(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->srv_name:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setStatusCode(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->status_code:I

    .line 81
    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->transaction_id:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 4

    .line 216
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 218
    :try_start_0
    const-string v1, "status_code"

    iget v2, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->status_code:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 219
    const-string v1, "error_code"

    iget v2, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->error_code:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 220
    const-string v1, "error_reason"

    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->error_reason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string v1, "srv_name"

    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->srv_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    const-string v1, "api_name"

    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->api_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->app_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 224
    const-string v1, "pkg_name"

    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->pkg_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    iget-object v1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->session_id:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 226
    const-string v1, "session_id"

    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->session_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    :cond_0
    const-string v1, "transaction_id"

    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->transaction_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string v1, "resolution"

    iget-object v2, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->resolution:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    goto :goto_0

    .line 231
    :catch_0
    move-exception v1

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toJson failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ResponseHeader"

    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "status_code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->status_code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error_code"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->error_code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", api_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->api_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", app_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->app_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pkg_name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->pkg_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", session_id:*, transaction_id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->transaction_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", resolution:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/common/internal/ResponseHeader;->resolution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
