.class public abstract Lcom/huawei/hms/core/aidl/d$a;
.super Landroid/os/Binder;
.source "IAIDLInvoke.java"

# interfaces
.implements Lcom/huawei/hms/core/aidl/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/core/aidl/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/core/aidl/d$a$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/huawei/hms/core/aidl/d;
    .locals 2

    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 p0, 0x0

    return-object p0

    .line 26
    :cond_0
    const-string v0, "com.huawei.hms.core.aidl.IAIDLInvoke"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/huawei/hms/core/aidl/d;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/huawei/hms/core/aidl/d;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/huawei/hms/core/aidl/d$a$a;

    invoke-direct {v0, p0}, Lcom/huawei/hms/core/aidl/d$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    nop

    .line 39
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "com.huawei.hms.core.aidl.IAIDLInvoke"

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 43
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    return v1

    .line 62
    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 65
    sget-object p1, Lcom/huawei/hms/core/aidl/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/huawei/hms/core/aidl/b;

    goto :goto_0

    .line 68
    :cond_2
    nop

    .line 71
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/huawei/hms/core/aidl/c$a;->asInterface(Landroid/os/IBinder;)Lcom/huawei/hms/core/aidl/c;

    move-result-object p1

    .line 72
    invoke-virtual {p0, v0, p1}, Lcom/huawei/hms/core/aidl/d$a;->a(Lcom/huawei/hms/core/aidl/b;Lcom/huawei/hms/core/aidl/c;)V

    .line 73
    return v1

    .line 48
    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 51
    sget-object p1, Lcom/huawei/hms/core/aidl/b;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/huawei/hms/core/aidl/b;

    goto :goto_1

    .line 54
    :cond_4
    nop

    .line 56
    :goto_1
    invoke-virtual {p0, v0}, Lcom/huawei/hms/core/aidl/d$a;->a(Lcom/huawei/hms/core/aidl/b;)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    return v1
.end method
