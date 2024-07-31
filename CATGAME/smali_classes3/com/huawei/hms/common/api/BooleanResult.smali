.class public Lcom/huawei/hms/common/api/BooleanResult;
.super Lcom/huawei/hms/support/api/client/Result;
.source "BooleanResult.java"


# instance fields
.field private final myStatus:Lcom/huawei/hms/support/api/client/Status;

.field private final resultValue:Z


# direct methods
.method public constructor <init>(Lcom/huawei/hms/support/api/client/Status;Z)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/huawei/hms/support/api/client/Result;-><init>()V

    .line 23
    const-string v0, "status cannot be null"

    invoke-static {p1, v0}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iput-object p1, p0, Lcom/huawei/hms/common/api/BooleanResult;->myStatus:Lcom/huawei/hms/support/api/client/Status;

    .line 25
    iput-boolean p2, p0, Lcom/huawei/hms/common/api/BooleanResult;->resultValue:Z

    .line 26
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 46
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 47
    return v0

    .line 49
    :cond_0
    instance-of v1, p1, Lcom/huawei/hms/common/api/BooleanResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 50
    check-cast p1, Lcom/huawei/hms/common/api/BooleanResult;

    .line 51
    iget-boolean v1, p0, Lcom/huawei/hms/common/api/BooleanResult;->resultValue:Z

    invoke-virtual {p1}, Lcom/huawei/hms/common/api/BooleanResult;->getValue()Z

    move-result v3

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/huawei/hms/common/api/BooleanResult;->myStatus:Lcom/huawei/hms/support/api/client/Status;

    invoke-virtual {p1}, Lcom/huawei/hms/common/api/BooleanResult;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/huawei/hms/support/api/client/Status;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    return v0

    .line 53
    :cond_3
    return v2
.end method

.method public getStatus()Lcom/huawei/hms/support/api/client/Status;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/huawei/hms/common/api/BooleanResult;->myStatus:Lcom/huawei/hms/support/api/client/Status;

    return-object v0
.end method

.method public getValue()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/huawei/hms/common/api/BooleanResult;->resultValue:Z

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 37
    nop

    .line 38
    iget-boolean v0, p0, Lcom/huawei/hms/common/api/BooleanResult;->resultValue:Z

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x1

    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    iget-object v1, p0, Lcom/huawei/hms/common/api/BooleanResult;->myStatus:Lcom/huawei/hms/support/api/client/Status;

    invoke-virtual {v1}, Lcom/huawei/hms/support/api/client/Status;->hashCode()I

    move-result v1

    add-int/lit8 v1, v1, 0x7f

    mul-int/lit8 v1, v1, 0x4d

    .line 42
    add-int/2addr v0, v1

    return v0
.end method
