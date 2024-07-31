.class public Lcom/google/android/gms/cast/MediaQueueData$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/MediaQueueData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final zzdy:Lcom/google/android/gms/cast/MediaQueueData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/cast/MediaQueueData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/MediaQueueData;-><init>(Lcom/google/android/gms/cast/zzao;)V

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData$Builder;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/MediaQueueData;
    .locals 3

    .line 21
    new-instance v0, Lcom/google/android/gms/cast/MediaQueueData;

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData$Builder;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/MediaQueueData;-><init>(Lcom/google/android/gms/cast/MediaQueueData;Lcom/google/android/gms/cast/zzao;)V

    return-object v0
.end method

.method public setContainerMetadata(Lcom/google/android/gms/cast/MediaQueueContainerMetadata;)Lcom/google/android/gms/cast/MediaQueueData$Builder;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData$Builder;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->zza(Lcom/google/android/gms/cast/MediaQueueData;Lcom/google/android/gms/cast/MediaQueueContainerMetadata;)V

    .line 12
    return-object p0
.end method

.method public setEntity(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaQueueData$Builder;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData$Builder;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->zzb(Lcom/google/android/gms/cast/MediaQueueData;Ljava/lang/String;)V

    .line 6
    return-object p0
.end method

.method public setItems(Ljava/util/List;)Lcom/google/android/gms/cast/MediaQueueData$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;)",
            "Lcom/google/android/gms/cast/MediaQueueData$Builder;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData$Builder;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->zza(Lcom/google/android/gms/cast/MediaQueueData;Ljava/util/List;)V

    .line 16
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaQueueData$Builder;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData$Builder;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->zzc(Lcom/google/android/gms/cast/MediaQueueData;Ljava/lang/String;)V

    .line 10
    return-object p0
.end method

.method public setQueueId(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaQueueData$Builder;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData$Builder;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->zza(Lcom/google/android/gms/cast/MediaQueueData;Ljava/lang/String;)V

    .line 4
    return-object p0
.end method

.method public setQueueType(I)Lcom/google/android/gms/cast/MediaQueueData$Builder;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData$Builder;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->zza(Lcom/google/android/gms/cast/MediaQueueData;I)V

    .line 8
    return-object p0
.end method

.method public setRepeatMode(I)Lcom/google/android/gms/cast/MediaQueueData$Builder;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData$Builder;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->zzb(Lcom/google/android/gms/cast/MediaQueueData;I)V

    .line 14
    return-object p0
.end method

.method public setStartIndex(I)Lcom/google/android/gms/cast/MediaQueueData$Builder;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData$Builder;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->zzc(Lcom/google/android/gms/cast/MediaQueueData;I)V

    .line 18
    return-object p0
.end method

.method public setStartTime(J)Lcom/google/android/gms/cast/MediaQueueData$Builder;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData$Builder;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/cast/MediaQueueData;->zza(Lcom/google/android/gms/cast/MediaQueueData;J)V

    .line 20
    return-object p0
.end method

.method public final zzh(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaQueueData$Builder;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData$Builder;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    invoke-static {v0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->zza(Lcom/google/android/gms/cast/MediaQueueData;Lorg/json/JSONObject;)V

    .line 23
    return-object p0
.end method
