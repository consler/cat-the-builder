.class final Lcom/google/android/gms/auth/api/signin/internal/zzn;
.super Lcom/google/android/gms/auth/api/signin/internal/zzc;


# instance fields
.field private final synthetic zzbm:Lcom/google/android/gms/auth/api/signin/internal/zzm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/zzm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzbm:Lcom/google/android/gms/auth/api/signin/internal/zzm;

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zzc;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzf(Lcom/google/android/gms/common/api/Status;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzbm:Lcom/google/android/gms/auth/api/signin/internal/zzm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/auth/api/signin/internal/zzm;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 3
    return-void
.end method
