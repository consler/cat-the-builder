.class final Lcom/google/android/gms/cast/zzaw;
.super Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;


# instance fields
.field private final synthetic zzgb:Lcom/google/android/gms/cast/RemoteMediaPlayer;

.field private final synthetic zzgc:[Lcom/google/android/gms/cast/MediaQueueItem;

.field private final synthetic zzgd:I

.field private final synthetic zzge:I

.field private final synthetic zzgf:J

.field private final synthetic zzgg:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/zzaw;->zzgb:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iput-object p3, p0, Lcom/google/android/gms/cast/zzaw;->zzgc:[Lcom/google/android/gms/cast/MediaQueueItem;

    iput p4, p0, Lcom/google/android/gms/cast/zzaw;->zzgd:I

    iput p5, p0, Lcom/google/android/gms/cast/zzaw;->zzge:I

    iput-wide p6, p0, Lcom/google/android/gms/cast/zzaw;->zzgf:J

    iput-object p8, p0, Lcom/google/android/gms/cast/zzaw;->zzgg:Lorg/json/JSONObject;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zzb(Lcom/google/android/gms/internal/cast/zzct;)V
    .locals 8

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/cast/zzaw;->zzgb:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzf(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/internal/cast/zzdn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/cast/zzaw;->zzgz:Lcom/google/android/gms/internal/cast/zzdu;

    iget-object v2, p0, Lcom/google/android/gms/cast/zzaw;->zzgc:[Lcom/google/android/gms/cast/MediaQueueItem;

    iget v3, p0, Lcom/google/android/gms/cast/zzaw;->zzgd:I

    iget v4, p0, Lcom/google/android/gms/cast/zzaw;->zzge:I

    iget-wide v5, p0, Lcom/google/android/gms/cast/zzaw;->zzgf:J

    iget-object v7, p0, Lcom/google/android/gms/cast/zzaw;->zzgg:Lorg/json/JSONObject;

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/cast/zzdn;->zza(Lcom/google/android/gms/internal/cast/zzdu;[Lcom/google/android/gms/cast/MediaQueueItem;IIJLorg/json/JSONObject;)J

    .line 3
    return-void
.end method
