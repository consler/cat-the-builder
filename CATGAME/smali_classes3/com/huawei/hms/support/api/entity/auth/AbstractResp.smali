.class public abstract Lcom/huawei/hms/support/api/entity/auth/AbstractResp;
.super Ljava/lang/Object;
.source "AbstractResp.java"

# interfaces
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;


# instance fields
.field private errorReason:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private rtnCode:I
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/hms/support/api/entity/auth/AbstractResp;->rtnCode:I

    .line 35
    return-void
.end method


# virtual methods
.method public getErrorReason()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/huawei/hms/support/api/entity/auth/AbstractResp;->errorReason:Ljava/lang/String;

    return-object v0
.end method

.method public getRtnCode()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/huawei/hms/support/api/entity/auth/AbstractResp;->rtnCode:I

    return v0
.end method

.method public setErrorReason(Ljava/lang/String;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/huawei/hms/support/api/entity/auth/AbstractResp;->errorReason:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setRtnCode(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/huawei/hms/support/api/entity/auth/AbstractResp;->rtnCode:I

    .line 53
    return-void
.end method
