.class public abstract Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;
.super Landroid/os/Binder;
.source "IWorkManagerImplCallback.java"

# interfaces
.implements Landroidx/work/multiprocess/IWorkManagerImplCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/IWorkManagerImplCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "androidx.work.multiprocess.IWorkManagerImplCallback"

.field static final TRANSACTION_onFailure:I = 0x2

.field static final TRANSACTION_onSuccess:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "androidx.work.multiprocess.IWorkManagerImplCallback"

    invoke-virtual {p0, p0, v0}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    const-string v0, "androidx.work.multiprocess.IWorkManagerImplCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroidx/work/multiprocess/IWorkManagerImplCallback;

    if-eqz v1, :cond_1

    .line 46
    move-object v1, v0

    check-cast v1, Landroidx/work/multiprocess/IWorkManagerImplCallback;

    return-object v1

    .line 48
    :cond_1
    new-instance v1, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroidx/work/multiprocess/IWorkManagerImplCallback;
    .locals 1

    .line 151
    sget-object v0, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub$Proxy;->sDefaultImpl:Landroidx/work/multiprocess/IWorkManagerImplCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Landroidx/work/multiprocess/IWorkManagerImplCallback;)Z
    .locals 2
    .param p0, "impl"    # Landroidx/work/multiprocess/IWorkManagerImplCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 141
    sget-object v0, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub$Proxy;->sDefaultImpl:Landroidx/work/multiprocess/IWorkManagerImplCallback;

    if-nez v0, :cond_1

    .line 144
    if-eqz p0, :cond_0

    .line 145
    sput-object p0, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub$Proxy;->sDefaultImpl:Landroidx/work/multiprocess/IWorkManagerImplCallback;

    .line 146
    const/4 v0, 0x1

    return v0

    .line 148
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 52
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    const-string v0, "androidx.work.multiprocess.IWorkManagerImplCallback"

    .line 57
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 61
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v1

    .line 74
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->onFailure(Ljava/lang/String;)V

    .line 78
    return v1

    .line 66
    .end local v2    # "_arg0":Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 69
    .local v2, "_arg0":[B
    invoke-virtual {p0, v2}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->onSuccess([B)V

    .line 70
    return v1
.end method
