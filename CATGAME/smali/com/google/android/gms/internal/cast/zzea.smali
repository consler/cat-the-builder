.class final Lcom/google/android/gms/internal/cast/zzea;
.super Lcom/google/android/gms/internal/cast/zzeq;


# instance fields
.field private final synthetic zzabo:Lcom/google/android/gms/internal/cast/zzdx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzdx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzea;->zzabo:Lcom/google/android/gms/internal/cast/zzdx;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzeq;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzy(I)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzdx;->zzeq()Lcom/google/android/gms/internal/cast/zzdo;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onRemoteDisplayEnded"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/cast/zzdo;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzea;->zzabo:Lcom/google/android/gms/internal/cast/zzdx;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzdx;->zza(Lcom/google/android/gms/internal/cast/zzdx;)V

    .line 4
    return-void
.end method
