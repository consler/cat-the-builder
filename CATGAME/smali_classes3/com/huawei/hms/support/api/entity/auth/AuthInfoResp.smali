.class public Lcom/huawei/hms/support/api/entity/auth/AuthInfoResp;
.super Lcom/huawei/hms/support/api/entity/auth/AbstractResp;
.source "AuthInfoResp.java"


# instance fields
.field private authInfo:Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/huawei/hms/support/api/entity/auth/AbstractResp;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public getAuthInfo()Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/auth/AuthInfoResp;->authInfo:Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;

    return-object v0
.end method

.method public getRtnCode()I
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/huawei/hms/support/api/entity/auth/AbstractResp;->getRtnCode()I

    move-result v0

    return v0
.end method

.method public setAuthInfo(Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/auth/AuthInfoResp;->authInfo:Lcom/huawei/hms/support/api/entity/auth/AuthorizationInfo;

    .line 59
    return-void
.end method
