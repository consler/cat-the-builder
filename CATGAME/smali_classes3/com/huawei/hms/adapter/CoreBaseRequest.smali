.class Lcom/huawei/hms/adapter/CoreBaseRequest;
.super Ljava/lang/Object;
.source "CoreBaseRequest.java"

# interfaces
.implements Lcom/huawei/hms/core/aidl/IMessageEntity;


# instance fields
.field private jsonHeader:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private jsonObject:Ljava/lang/String;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field

.field private parcelable:Landroid/os/Parcelable;
    .annotation runtime Lcom/huawei/hms/core/aidl/annotation/Packed;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public getJsonHeader()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/huawei/hms/adapter/CoreBaseRequest;->jsonHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonObject()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/huawei/hms/adapter/CoreBaseRequest;->jsonObject:Ljava/lang/String;

    return-object v0
.end method

.method public getParcelable()Landroid/os/Parcelable;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/huawei/hms/adapter/CoreBaseRequest;->parcelable:Landroid/os/Parcelable;

    return-object v0
.end method

.method public setJsonHeader(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/huawei/hms/adapter/CoreBaseRequest;->jsonHeader:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setJsonObject(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/huawei/hms/adapter/CoreBaseRequest;->jsonObject:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setParcelable(Landroid/os/Parcelable;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/huawei/hms/adapter/CoreBaseRequest;->parcelable:Landroid/os/Parcelable;

    .line 54
    return-void
.end method
