.class public final Lcom/google/android/gms/internal/cast/zzeh;
.super Lcom/google/android/gms/common/internal/GmsClient;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/GmsClient<",
        "Lcom/google/android/gms/internal/cast/zzel;",
        ">;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final zzbf:Lcom/google/android/gms/internal/cast/zzdo;


# instance fields
.field private zzabr:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

.field private zzabs:Landroid/os/Bundle;

.field private zzaj:Lcom/google/android/gms/cast/CastDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdo;

    const-string v1, "CastRemoteDisplayClientImpl"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzeh;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/cast/CastDevice;Landroid/os/Bundle;Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 7

    .line 1
    const/16 v3, 0x53

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p7

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/GmsClient;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/ClientSettings;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/cast/zzeh;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "instance created"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iput-object p6, p0, Lcom/google/android/gms/internal/cast/zzeh;->zzabr:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/cast/zzeh;->zzaj:Lcom/google/android/gms/cast/CastDevice;

    .line 5
    iput-object p5, p0, Lcom/google/android/gms/internal/cast/zzeh;->zzabs:Landroid/os/Bundle;

    .line 6
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/cast/zzeh;)Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/android/gms/internal/cast/zzeh;->zzabr:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    return-object p0
.end method

.method static synthetic zzeq()Lcom/google/android/gms/internal/cast/zzdo;
    .locals 1

    .line 39
    sget-object v0, Lcom/google/android/gms/internal/cast/zzeh;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    return-object v0
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    .line 26
    return-void
.end method

.method public final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    .line 30
    nop

    .line 31
    nop

    .line 32
    if-nez p1, :cond_0

    .line 33
    const/4 p1, 0x0

    return-object p1

    .line 34
    :cond_0
    const-string v0, "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    instance-of v1, v0, Lcom/google/android/gms/internal/cast/zzel;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Lcom/google/android/gms/internal/cast/zzel;

    return-object v0

    .line 37
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/cast/zzeo;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/cast/zzeo;-><init>(Landroid/os/IBinder;)V

    .line 38
    return-object v0
.end method

.method public final disconnect()V
    .locals 3

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/cast/zzeh;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "disconnect"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzeh;->zzabr:Lcom/google/android/gms/cast/CastRemoteDisplay$CastRemoteDisplaySessionCallbacks;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/cast/zzeh;->zzaj:Lcom/google/android/gms/cast/CastDevice;

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzeh;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzel;

    invoke-interface {v0}, Lcom/google/android/gms/internal/cast/zzel;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    invoke-super {p0}, Lcom/google/android/gms/common/internal/GmsClient;->disconnect()V

    .line 12
    return-void

    .line 16
    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/GmsClient;->disconnect()V

    throw v0

    .line 13
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 14
    :goto_0
    invoke-super {p0}, Lcom/google/android/gms/common/internal/GmsClient;->disconnect()V

    .line 15
    return-void
.end method

.method public final getMinApkVersion()I
    .locals 1

    .line 29
    const v0, 0xbdfcb8

    return v0
.end method

.method protected final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    .line 27
    const-string v0, "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService"

    return-object v0
.end method

.method protected final getStartServiceAction()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, "com.google.android.gms.cast.remote_display.service.START"

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzej;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    sget-object v0, Lcom/google/android/gms/internal/cast/zzeh;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "stopRemoteDisplay"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzeh;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzel;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/cast/zzel;->zza(Lcom/google/android/gms/internal/cast/zzej;)V

    .line 25
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzej;Lcom/google/android/gms/internal/cast/zzen;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    sget-object v0, Lcom/google/android/gms/internal/cast/zzeh;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "startRemoteDisplay"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance v5, Lcom/google/android/gms/internal/cast/zzek;

    invoke-direct {v5, p0, p2}, Lcom/google/android/gms/internal/cast/zzek;-><init>(Lcom/google/android/gms/internal/cast/zzeh;Lcom/google/android/gms/internal/cast/zzen;)V

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/zzeh;->getService()Landroid/os/IInterface;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Lcom/google/android/gms/internal/cast/zzel;

    iget-object p2, p0, Lcom/google/android/gms/internal/cast/zzeh;->zzaj:Lcom/google/android/gms/cast/CastDevice;

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/cast/CastDevice;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/google/android/gms/internal/cast/zzeh;->zzabs:Landroid/os/Bundle;

    .line 21
    move-object v4, p1

    move-object v7, p3

    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/cast/zzel;->zza(Lcom/google/android/gms/internal/cast/zzej;Lcom/google/android/gms/internal/cast/zzen;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 22
    return-void
.end method
