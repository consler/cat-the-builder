.class final Lcom/huawei/hms/api/ConnectionResult$1;
.super Ljava/lang/Object;
.source "ConnectionResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/api/ConnectionResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/huawei/hms/api/ConnectionResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/huawei/hms/api/ConnectionResult;
    .locals 2

    .line 165
    new-instance v0, Lcom/huawei/hms/api/ConnectionResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/huawei/hms/api/ConnectionResult;-><init>(Landroid/os/Parcel;Lcom/huawei/hms/api/ConnectionResult$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/huawei/hms/api/ConnectionResult;
    .locals 0

    .line 170
    new-array p1, p1, [Lcom/huawei/hms/api/ConnectionResult;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lcom/huawei/hms/api/ConnectionResult$1;->a(Landroid/os/Parcel;)Lcom/huawei/hms/api/ConnectionResult;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 162
    invoke-virtual {p0, p1}, Lcom/huawei/hms/api/ConnectionResult$1;->a(I)[Lcom/huawei/hms/api/ConnectionResult;

    move-result-object p1

    return-object p1
.end method
