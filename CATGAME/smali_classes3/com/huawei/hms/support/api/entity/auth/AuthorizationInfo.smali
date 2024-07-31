.class public Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;
.super Ljava/lang/Object;
.source "AuthorizationInfo.java"

# interfaces
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;


# instance fields
.field private accessToken:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private appID:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private clientID:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private clientSecret:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private expiredTime:J
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private openID:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private refreshToken:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private scopeList:Ljava/util/List;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public getClientID()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;->clientID:Ljava/lang/String;

    return-object v0
.end method

.method public getClientSecret()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getExpiredTime()J
    .locals 2

    .line 152
    iget-wide v0, p0, Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;->expiredTime:J

    return-wide v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;->openID:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public getScopeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;->scopeList:Ljava/util/List;

    return-object v0
.end method

.method public isTokenExpire()Z
    .locals 4

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;->expiredTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValid()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;->appID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;->accessToken:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;->appID:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setClientID(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;->clientID:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setClientSecret(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;->clientSecret:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setExpiredTime(J)V
    .locals 0

    .line 161
    iput-wide p1, p0, Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;->expiredTime:J

    .line 162
    return-void
.end method

.method public setOpenID(Ljava/lang/String;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;->openID:Ljava/lang/String;

    .line 234
    return-void
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;->refreshToken:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setScopeList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;->scopeList:Ljava/util/List;

    .line 216
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    const-string v1, "appID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;->appID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string v1, ", expiredTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;->expiredTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
