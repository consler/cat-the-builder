.class public abstract Landroidx/work/multiprocess/IWorkManagerImpl$Stub;
.super Landroid/os/Binder;
.source "IWorkManagerImpl.java"

# interfaces
.implements Landroidx/work/multiprocess/IWorkManagerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/work/multiprocess/IWorkManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/multiprocess/IWorkManagerImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "androidx.work.multiprocess.IWorkManagerImpl"

.field static final TRANSACTION_cancelAllWork:I = 0x6

.field static final TRANSACTION_cancelAllWorkByTag:I = 0x4

.field static final TRANSACTION_cancelUniqueWork:I = 0x5

.field static final TRANSACTION_cancelWorkById:I = 0x3

.field static final TRANSACTION_enqueueContinuation:I = 0x2

.field static final TRANSACTION_enqueueWorkRequests:I = 0x1

.field static final TRANSACTION_queryWorkInfo:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 56
    const-string v0, "androidx.work.multiprocess.IWorkManagerImpl"

    invoke-virtual {p0, p0, v0}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImpl;
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

    .line 64
    if-nez p0, :cond_0

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_0
    const-string v0, "androidx.work.multiprocess.IWorkManagerImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 68
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroidx/work/multiprocess/IWorkManagerImpl;

    if-eqz v1, :cond_1

    .line 69
    move-object v1, v0

    check-cast v1, Landroidx/work/multiprocess/IWorkManagerImpl;

    return-object v1

    .line 71
    :cond_1
    new-instance v1, Landroidx/work/multiprocess/IWorkManagerImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Landroidx/work/multiprocess/IWorkManagerImpl;
    .locals 1

    .line 325
    sget-object v0, Landroidx/work/multiprocess/IWorkManagerImpl$Stub$Proxy;->sDefaultImpl:Landroidx/work/multiprocess/IWorkManagerImpl;

    return-object v0
.end method

.method public static setDefaultImpl(Landroidx/work/multiprocess/IWorkManagerImpl;)Z
    .locals 2
    .param p0, "impl"    # Landroidx/work/multiprocess/IWorkManagerImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 315
    sget-object v0, Landroidx/work/multiprocess/IWorkManagerImpl$Stub$Proxy;->sDefaultImpl:Landroidx/work/multiprocess/IWorkManagerImpl;

    if-nez v0, :cond_1

    .line 318
    if-eqz p0, :cond_0

    .line 319
    sput-object p0, Landroidx/work/multiprocess/IWorkManagerImpl$Stub$Proxy;->sDefaultImpl:Landroidx/work/multiprocess/IWorkManagerImpl;

    .line 320
    const/4 v0, 0x1

    return v0

    .line 322
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 316
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 75
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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

    .line 79
    const-string v0, "androidx.work.multiprocess.IWorkManagerImpl"

    .line 80
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 157
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 147
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 151
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object v3

    .line 152
    .local v3, "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    invoke-virtual {p0, v1, v3}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->queryWorkInfo([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    .line 153
    return v2

    .line 139
    .end local v1    # "_arg0":[B
    .end local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object v1

    .line 142
    .local v1, "_arg0":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    invoke-virtual {p0, v1}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->cancelAllWork(Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    .line 143
    return v2

    .line 129
    .end local v1    # "_arg0":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object v3

    .line 134
    .restart local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    invoke-virtual {p0, v1, v3}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->cancelUniqueWork(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    .line 135
    return v2

    .line 119
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object v3

    .line 124
    .restart local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    invoke-virtual {p0, v1, v3}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->cancelAllWorkByTag(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    .line 125
    return v2

    .line 109
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object v3

    .line 114
    .restart local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    invoke-virtual {p0, v1, v3}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->cancelWorkById(Ljava/lang/String;Landroidx/work/multiprocess/IWorkManagerImplCallback;)V

    .line 115
    return v2

    .line 99
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 103
    .local v1, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object v3

    .line 104
    .restart local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    invoke-virtual {p0, v1, v3}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->enqueueContinuation([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    .line 105
    return v2

    .line 89
    .end local v1    # "_arg0":[B
    .end local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 93
    .restart local v1    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroidx/work/multiprocess/IWorkManagerImplCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroidx/work/multiprocess/IWorkManagerImplCallback;

    move-result-object v3

    .line 94
    .restart local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    invoke-virtual {p0, v1, v3}, Landroidx/work/multiprocess/IWorkManagerImpl$Stub;->enqueueWorkRequests([BLandroidx/work/multiprocess/IWorkManagerImplCallback;)V

    .line 95
    return v2

    .line 84
    .end local v1    # "_arg0":[B
    .end local v3    # "_arg1":Landroidx/work/multiprocess/IWorkManagerImplCallback;
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
