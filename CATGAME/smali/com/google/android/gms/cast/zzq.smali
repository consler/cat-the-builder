.class final Lcom/google/android/gms/cast/zzq;
.super Lcom/google/android/gms/cast/CastRemoteDisplayClient$zza;


# instance fields
.field private final synthetic zzbh:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private final synthetic zzbi:Lcom/google/android/gms/internal/cast/zzei;

.field private final synthetic zzbj:Lcom/google/android/gms/cast/zzr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/zzr;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/cast/zzei;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/zzq;->zzbj:Lcom/google/android/gms/cast/zzr;

    iput-object p2, p0, Lcom/google/android/gms/cast/zzq;->zzbh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iput-object p3, p0, Lcom/google/android/gms/cast/zzq;->zzbi:Lcom/google/android/gms/internal/cast/zzei;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/CastRemoteDisplayClient$zza;-><init>(Lcom/google/android/gms/cast/zzp;)V

    return-void
.end method


# virtual methods
.method public final onError(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/cast/zzq;->zzbj:Lcom/google/android/gms/cast/zzr;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzr;->zzbn:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Lcom/google/android/gms/internal/cast/zzdo;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onError: %d"

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lcom/google/android/gms/cast/zzq;->zzbj:Lcom/google/android/gms/cast/zzr;

    iget-object p1, p1, Lcom/google/android/gms/cast/zzr;->zzbn:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zzb(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)V

    .line 42
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/cast/zzq;->zzbh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 43
    return-void
.end method

.method public final zza(IILandroid/view/Surface;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cast/zzq;->zzbj:Lcom/google/android/gms/cast/zzr;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzr;->zzbn:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Lcom/google/android/gms/internal/cast/zzdo;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onConnected"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/cast/zzq;->zzbj:Lcom/google/android/gms/cast/zzr;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzr;->zzbn:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "display"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 5
    const/4 v0, 0x0

    if-nez v2, :cond_0

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/cast/zzq;->zzbj:Lcom/google/android/gms/cast/zzr;

    iget-object p1, p1, Lcom/google/android/gms/cast/zzr;->zzbn:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Lcom/google/android/gms/internal/cast/zzdo;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Unable to get the display manager"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/cast/zzdo;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    iget-object p2, p0, Lcom/google/android/gms/cast/zzq;->zzbh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/cast/zzq;->zzbj:Lcom/google/android/gms/cast/zzr;

    iget-object v3, v3, Lcom/google/android/gms/cast/zzr;->zzbn:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {v3}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zzb(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)V

    .line 10
    iget-object v3, p0, Lcom/google/android/gms/cast/zzq;->zzbj:Lcom/google/android/gms/cast/zzr;

    iget-object v3, v3, Lcom/google/android/gms/cast/zzr;->zzbn:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {v3, p1, p2}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;II)I

    move-result v6

    .line 11
    iget-object v3, p0, Lcom/google/android/gms/cast/zzq;->zzbj:Lcom/google/android/gms/cast/zzr;

    iget-object v9, v3, Lcom/google/android/gms/cast/zzr;->zzbn:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    const/4 v8, 0x2

    .line 12
    const-string v3, "private_display"

    move v4, p1

    move v5, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v8}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;I)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    .line 13
    invoke-static {v9, p1}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;Landroid/hardware/display/VirtualDisplay;)Landroid/hardware/display/VirtualDisplay;

    .line 14
    iget-object p1, p0, Lcom/google/android/gms/cast/zzq;->zzbj:Lcom/google/android/gms/cast/zzr;

    iget-object p1, p1, Lcom/google/android/gms/cast/zzr;->zzbn:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zzc(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    if-nez p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/google/android/gms/cast/zzq;->zzbj:Lcom/google/android/gms/cast/zzr;

    iget-object p1, p1, Lcom/google/android/gms/cast/zzr;->zzbn:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Lcom/google/android/gms/internal/cast/zzdo;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Unable to create virtual display"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/cast/zzdo;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    iget-object p2, p0, Lcom/google/android/gms/cast/zzq;->zzbh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 17
    return-void

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/cast/zzq;->zzbj:Lcom/google/android/gms/cast/zzr;

    iget-object p1, p1, Lcom/google/android/gms/cast/zzr;->zzbn:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zzc(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Landroid/hardware/display/VirtualDisplay;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object p1

    .line 19
    if-nez p1, :cond_2

    .line 20
    iget-object p1, p0, Lcom/google/android/gms/cast/zzq;->zzbj:Lcom/google/android/gms/cast/zzr;

    iget-object p1, p1, Lcom/google/android/gms/cast/zzr;->zzbn:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Lcom/google/android/gms/internal/cast/zzdo;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Virtual display does not have a display"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/cast/zzdo;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    iget-object p2, p0, Lcom/google/android/gms/cast/zzq;->zzbh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 22
    return-void

    .line 23
    :cond_2
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/cast/zzq;->zzbi:Lcom/google/android/gms/internal/cast/zzei;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/zzei;->getService()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/cast/zzel;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/cast/zzel;->zza(Lcom/google/android/gms/internal/cast/zzej;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return-void

    .line 25
    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 26
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/cast/zzq;->zzbj:Lcom/google/android/gms/cast/zzr;

    iget-object p1, p1, Lcom/google/android/gms/cast/zzr;->zzbn:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {p1}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Lcom/google/android/gms/internal/cast/zzdo;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "Unable to provision the route\'s new virtual Display"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/internal/cast/zzdo;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    sget-object p1, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    iget-object p2, p0, Lcom/google/android/gms/cast/zzq;->zzbh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 28
    return-void
.end method

.method public final zzd()V
    .locals 4

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/cast/zzq;->zzbj:Lcom/google/android/gms/cast/zzr;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzr;->zzbn:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Lcom/google/android/gms/internal/cast/zzdo;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onConnectedWithDisplay"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/cast/zzq;->zzbj:Lcom/google/android/gms/cast/zzr;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzr;->zzbn:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zzc(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/cast/zzq;->zzbj:Lcom/google/android/gms/cast/zzr;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzr;->zzbn:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Lcom/google/android/gms/internal/cast/zzdo;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "There is no virtual display"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/cast/zzdo;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    iget-object v1, p0, Lcom/google/android/gms/cast/zzq;->zzbh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 33
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/zzq;->zzbj:Lcom/google/android/gms/cast/zzr;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzr;->zzbn:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zzc(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    sget-object v1, Lcom/google/android/gms/common/api/Status;->RESULT_SUCCESS:Lcom/google/android/gms/common/api/Status;

    iget-object v2, p0, Lcom/google/android/gms/cast/zzq;->zzbh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzq;->zzbj:Lcom/google/android/gms/cast/zzr;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzr;->zzbn:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-static {v0}, Lcom/google/android/gms/cast/CastRemoteDisplayClient;->zza(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)Lcom/google/android/gms/internal/cast/zzdo;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v3, "Virtual display no longer has a display"

    invoke-virtual {v0, v3, v1}, Lcom/google/android/gms/internal/cast/zzdo;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/google/android/gms/common/api/Status;->RESULT_INTERNAL_ERROR:Lcom/google/android/gms/common/api/Status;

    iget-object v1, p0, Lcom/google/android/gms/cast/zzq;->zzbh:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/common/api/internal/TaskUtil;->setResultOrApiException(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 39
    return-void
.end method
