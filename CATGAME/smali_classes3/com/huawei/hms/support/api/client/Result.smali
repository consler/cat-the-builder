.class public abstract Lcom/huawei/hms/support/api/client/Result;
.super Ljava/lang/Object;
.source "Result.java"

# interfaces
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;


# instance fields
.field private status:Lcom/huawei/hms/support/api/client/Status;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcom/huawei/hms/support/api/client/Status;->FAILURE:Lcom/huawei/hms/support/api/client/Status;

    iput-object v0, p0, Lcom/huawei/hms/support/api/client/Result;->status:Lcom/huawei/hms/support/api/client/Status;

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/huawei/hms/support/api/client/Status;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/huawei/hms/support/api/client/Result;->status:Lcom/huawei/hms/support/api/client/Status;

    return-object v0
.end method

.method public setStatus(Lcom/huawei/hms/support/api/client/Status;)V
    .locals 0

    .line 37
    if-nez p1, :cond_0

    .line 38
    return-void

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/huawei/hms/support/api/client/Result;->status:Lcom/huawei/hms/support/api/client/Status;

    .line 42
    return-void
.end method
