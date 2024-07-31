.class final Lcom/google/android/gms/cast/zzl;
.super Lcom/google/android/gms/internal/cast/zzdg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/Cast$CastApi$zza;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/cast/zzdg;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 7
    check-cast p1, Lcom/google/android/gms/internal/cast/zzct;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzdg;->zza(Lcom/google/android/gms/internal/cast/zzct;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/cast/zzct;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    :try_start_0
    const-string v0, ""

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/internal/cast/zzct;->zza(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/BaseImplementation$ResultHolder;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    return-void

    .line 4
    :catch_0
    move-exception p1

    .line 5
    const/16 p1, 0x7d1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/zzcl;->zzr(I)V

    .line 6
    return-void
.end method
