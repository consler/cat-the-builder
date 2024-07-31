.class final Lcom/google/android/gms/cast/zzt;
.super Lcom/google/android/gms/common/api/internal/TaskApiCall;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/TaskApiCall<",
        "Lcom/google/android/gms/internal/cast/zzei;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbn:Lcom/google/android/gms/cast/CastRemoteDisplayClient;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/CastRemoteDisplayClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/zzt;->zzbn:Lcom/google/android/gms/cast/CastRemoteDisplayClient;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/TaskApiCall;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/cast/zzei;

    .line 3
    new-instance v0, Lcom/google/android/gms/cast/zzs;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/cast/zzs;-><init>(Lcom/google/android/gms/cast/zzt;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zzei;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/cast/zzel;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/cast/zzel;->zza(Lcom/google/android/gms/internal/cast/zzej;)V

    .line 5
    return-void
.end method
