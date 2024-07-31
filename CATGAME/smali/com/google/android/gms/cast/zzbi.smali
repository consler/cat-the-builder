.class final Lcom/google/android/gms/cast/zzbi;
.super Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;


# instance fields
.field private final synthetic zzgb:Lcom/google/android/gms/cast/RemoteMediaPlayer;

.field private final synthetic zzgg:Lorg/json/JSONObject;

.field private final synthetic zzgr:I

.field private final synthetic zzgs:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;IILorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/zzbi;->zzgb:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iput p3, p0, Lcom/google/android/gms/cast/zzbi;->zzgr:I

    iput p4, p0, Lcom/google/android/gms/cast/zzbi;->zzgs:I

    iput-object p5, p0, Lcom/google/android/gms/cast/zzbi;->zzgg:Lorg/json/JSONObject;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;-><init>(Lcom/google/android/gms/cast/RemoteMediaPlayer;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected final zzb(Lcom/google/android/gms/internal/cast/zzct;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/cast/zzds;
        }
    .end annotation

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/cast/zzbi;->zzgb:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    iget v0, p0, Lcom/google/android/gms/cast/zzbi;->zzgr:I

    invoke-static {p1, v0}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zza(Lcom/google/android/gms/cast/RemoteMediaPlayer;I)I

    move-result p1

    .line 3
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 4
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/zzbi;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 5
    return-void

    .line 6
    :cond_0
    iget v1, p0, Lcom/google/android/gms/cast/zzbi;->zzgs:I

    const/4 v2, 0x1

    if-gez v1, :cond_1

    .line 7
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x7d1

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/google/android/gms/cast/zzbi;->zzgs:I

    .line 8
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    .line 9
    const-string v0, "Invalid request: Invalid newIndex %d."

    invoke-static {v3, v0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/zzbi;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 12
    return-void

    .line 13
    :cond_1
    if-ne p1, v1, :cond_2

    .line 14
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer$zzb;->createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/RemoteMediaPlayer$MediaChannelResult;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/zzbi;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 15
    return-void

    .line 16
    :cond_2
    if-le v1, p1, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/cast/zzbi;->zzgb:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->getMediaStatus()Lcom/google/android/gms/cast/MediaStatus;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/cast/MediaStatus;->getQueueItem(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object p1

    .line 19
    nop

    .line 20
    if-eqz p1, :cond_4

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaQueueItem;->getItemId()I

    move-result p1

    goto :goto_0

    .line 20
    :cond_4
    move p1, v0

    .line 22
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/cast/zzbi;->zzgb:Lcom/google/android/gms/cast/RemoteMediaPlayer;

    invoke-static {v1}, Lcom/google/android/gms/cast/RemoteMediaPlayer;->zzf(Lcom/google/android/gms/cast/RemoteMediaPlayer;)Lcom/google/android/gms/internal/cast/zzdn;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/cast/zzbi;->zzgz:Lcom/google/android/gms/internal/cast/zzdu;

    new-array v2, v2, [I

    iget v4, p0, Lcom/google/android/gms/cast/zzbi;->zzgr:I

    aput v4, v2, v0

    iget-object v0, p0, Lcom/google/android/gms/cast/zzbi;->zzgg:Lorg/json/JSONObject;

    invoke-virtual {v1, v3, v2, p1, v0}, Lcom/google/android/gms/internal/cast/zzdn;->zza(Lcom/google/android/gms/internal/cast/zzdu;[IILorg/json/JSONObject;)J

    .line 23
    return-void
.end method
