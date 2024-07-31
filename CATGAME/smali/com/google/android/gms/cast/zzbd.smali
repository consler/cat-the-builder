.class final Lcom/google/android/gms/cast/zzbd;
.super Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;


# instance fields
.field private final synthetic zzgb:Lcom/google/android/gms/cast/RemoteMediaPlayer;

.field private final synthetic zzgg:Lorg/json/JSONObject;

.field private final synthetic zzgj:I

.field private final synthetic zzgn:[I


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;[IILorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/zzbd;->zzgb:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iput-object p3, p0, Lcom/google/android/gms/cast/zzbd;->zzgn:[I

    iput p4, p0, Lcom/google/android/gms/cast/zzbd;->zzgj:I

    iput-object p5, p0, Lcom/google/android/gms/cast/zzbd;->zzgg:Lorg/json/JSONObject;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zzb(Lcom/google/android/gms/internal/cast/zzct;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cast/zzds;
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/cast/zzbd;->zzgb:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzf(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/internal/cast/zzdn;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/cast/zzbd;->zzgz:Lcom/google/android/gms/internal/cast/zzdu;

    iget-object v1, p0, Lcom/google/android/gms/cast/zzbd;->zzgn:[I

    iget v2, p0, Lcom/google/android/gms/cast/zzbd;->zzgj:I

    iget-object v3, p0, Lcom/google/android/gms/cast/zzbd;->zzgg:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/android/gms/internal/cast/zzdn;->zza(Lcom/google/android/gms/internal/cast/zzdu;[IILorg/json/JSONObject;)J

    .line 3
    return-void
.end method
