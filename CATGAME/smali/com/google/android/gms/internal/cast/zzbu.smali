.class final Lcom/google/android/gms/internal/cast/zzbu;
.super Lcom/google/android/gms/internal/cast/zzcc;


# instance fields
.field final synthetic zzww:Lcom/google/android/gms/internal/cast/zzbs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzbs;Lcom/google/android/gms/cast/games/GameManagerClient;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzbu;->zzww:Lcom/google/android/gms/internal/cast/zzbs;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/cast/zzcc;-><init>(Lcom/google/android/gms/internal/cast/zzbs;Lcom/google/android/gms/cast/games/GameManagerClient;)V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 5

    .line 2
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbu;->zzww:Lcom/google/android/gms/internal/cast/zzbs;

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzbs;->zzb(Lcom/google/android/gms/internal/cast/zzbs;)Lcom/google/android/gms/cast/Cast$CastApi;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/cast/zzbu;->zzww:Lcom/google/android/gms/internal/cast/zzbs;

    .line 3
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/zzbs;->zza(Lcom/google/android/gms/internal/cast/zzbs;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzbu;->zzww:Lcom/google/android/gms/internal/cast/zzbs;

    .line 4
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/zzcu;->getNamespace()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/cast/zzbt;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/cast/zzbt;-><init>(Lcom/google/android/gms/internal/cast/zzbu;)V

    .line 5
    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/cast/Cast$CastApi;->setMessageReceivedCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Lcom/google/android/gms/cast/Cast$MessageReceivedCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    nop

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbu;->zzww:Lcom/google/android/gms/internal/cast/zzbs;

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzbs;->zzc(Lcom/google/android/gms/internal/cast/zzbs;)V

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbu;->zzww:Lcom/google/android/gms/internal/cast/zzbs;

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzbs;->zzd(Lcom/google/android/gms/internal/cast/zzbs;)V

    .line 15
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbu;->zzww:Lcom/google/android/gms/internal/cast/zzbs;

    const/16 v2, 0x44c

    .line 16
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzxb:Lcom/google/android/gms/internal/cast/zzdu;

    .line 17
    invoke-static {v1, v0, v2, v0, v3}, Lcom/google/android/gms/internal/cast/zzbs;->zza(Lcom/google/android/gms/internal/cast/zzbs;Ljava/lang/String;ILorg/json/JSONObject;Lcom/google/android/gms/internal/cast/zzdu;)V

    .line 18
    return-void

    .line 7
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 8
    :goto_0
    nop

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzbz;->zzxb:Lcom/google/android/gms/internal/cast/zzdu;

    .line 10
    const-wide/16 v2, -0x1

    const/16 v4, 0x8

    .line 11
    invoke-interface {v1, v2, v3, v4, v0}, Lcom/google/android/gms/internal/cast/zzdu;->zza(JILjava/lang/Object;)V

    .line 12
    return-void
.end method
