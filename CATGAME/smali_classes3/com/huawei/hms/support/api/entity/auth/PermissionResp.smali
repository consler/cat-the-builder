.class public Lcom/huawei/hms/support/api/entity/auth/PermissionResp;
.super Lcom/huawei/hms/support/api/entity/auth/AbstractResp;
.source "PermissionResp.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/huawei/hms/support/api/entity/auth/AbstractResp;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public getRtnCode()I
    .locals 1

    .line 36
    invoke-super {p0}, Lcom/huawei/hms/support/api/entity/auth/AbstractResp;->getRtnCode()I

    move-result v0

    return v0
.end method
