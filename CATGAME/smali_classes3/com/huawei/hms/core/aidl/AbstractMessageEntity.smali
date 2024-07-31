.class public Lcom/huawei/hms/core/aidl/AbstractMessageEntity;
.super Ljava/lang/Object;
.source "AbstractMessageEntity.java"

# interfaces
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;


# instance fields
.field private commonStatus:Lcom/huawei/hms/support/api/client/Status;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public getCommonStatus()Lcom/huawei/hms/support/api/client/Status;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/huawei/hms/core/aidl/AbstractMessageEntity;->commonStatus:Lcom/huawei/hms/support/api/client/Status;

    .line 38
    return-object v0
.end method

.method public setCommonStatus(Lcom/huawei/hms/support/api/client/Status;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/huawei/hms/core/aidl/AbstractMessageEntity;->commonStatus:Lcom/huawei/hms/support/api/client/Status;

    .line 48
    return-void
.end method
