.class public Lcom/google/android/gms/cast/MediaQueueItem;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaQueueItem$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PLAYBACK_DURATION:D = Infinity

.field public static final INVALID_ITEM_ID:I


# instance fields
.field private zzdp:Z

.field private zzds:[J

.field private zzes:Lcom/google/android/gms/cast/MediaInfo;

.field private zzet:I

.field private zzeu:D

.field private zzev:D

.field private zzew:D

.field private zzj:Ljava/lang/String;

.field private zzp:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 209
    new-instance v0, Lcom/google/android/gms/cast/zzaq;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzaq;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/MediaQueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/cast/MediaInfo;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 20
    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lcom/google/android/gms/cast/MediaInfo;IZDDD[JLjava/lang/String;)V

    .line 21
    if-eqz p1, :cond_0

    .line 23
    return-void

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "media cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lcom/google/android/gms/cast/MediaInfo;IZDDD[JLjava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzeu:D

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzes:Lcom/google/android/gms/cast/MediaInfo;

    .line 4
    iput p2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzet:I

    .line 5
    iput-boolean p3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzdp:Z

    .line 6
    iput-wide p4, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzeu:D

    .line 7
    iput-wide p6, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzev:D

    .line 8
    iput-wide p8, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzew:D

    .line 9
    iput-object p10, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzds:[J

    .line 10
    iput-object p11, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzj:Ljava/lang/String;

    .line 11
    const/4 p1, 0x0

    if-eqz p11, :cond_0

    .line 12
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzj:Ljava/lang/String;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzp:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p2

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzp:Lorg/json/JSONObject;

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzj:Ljava/lang/String;

    .line 17
    return-void

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzp:Lorg/json/JSONObject;

    .line 19
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/MediaInfo;Lcom/google/android/gms/cast/zzap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 207
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lcom/google/android/gms/cast/MediaInfo;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/cast/MediaQueueItem;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 27
    nop

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaQueueItem;->getMedia()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaQueueItem;->getItemId()I

    move-result v2

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaQueueItem;->getAutoplay()Z

    move-result v3

    .line 31
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaQueueItem;->getStartTime()D

    move-result-wide v4

    .line 32
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaQueueItem;->getPlaybackDuration()D

    move-result-wide v6

    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaQueueItem;->getPreloadTime()D

    move-result-wide v8

    .line 34
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaQueueItem;->getActiveTrackIds()[J

    move-result-object v10

    .line 35
    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lcom/google/android/gms/cast/MediaInfo;IZDDD[JLjava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzes:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaQueueItem;->getCustomData()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzp:Lorg/json/JSONObject;

    .line 39
    return-void

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "media cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/MediaQueueItem;Lcom/google/android/gms/cast/zzap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 208
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lcom/google/android/gms/cast/MediaQueueItem;)V

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 24
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lcom/google/android/gms/cast/MediaInfo;IZDDD[JLjava/lang/String;)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/MediaQueueItem;->zzi(Lorg/json/JSONObject;)Z

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 157
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 158
    return v0

    .line 159
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaQueueItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 160
    return v2

    .line 161
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 162
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzp:Lorg/json/JSONObject;

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueItem;->zzp:Lorg/json/JSONObject;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eq v1, v3, :cond_4

    .line 163
    return v2

    .line 164
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzp:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueItem;->zzp:Lorg/json/JSONObject;

    if-eqz v3, :cond_5

    .line 165
    invoke-static {v1, v3}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 166
    return v2

    .line 167
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzes:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueItem;->zzes:Lcom/google/android/gms/cast/MediaInfo;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzet:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaQueueItem;->zzet:I

    if-ne v1, v3, :cond_8

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzdp:Z

    iget-boolean v3, p1, Lcom/google/android/gms/cast/MediaQueueItem;->zzdp:Z

    if-ne v1, v3, :cond_8

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzeu:D

    .line 168
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-wide v3, p1, Lcom/google/android/gms/cast/MediaQueueItem;->zzeu:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzeu:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaQueueItem;->zzeu:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_8

    :cond_7
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzev:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaQueueItem;->zzev:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_8

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzew:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaQueueItem;->zzew:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzds:[J

    iget-object p1, p1, Lcom/google/android/gms/cast/MediaQueueItem;->zzds:[J

    .line 169
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    if-eqz p1, :cond_8

    return v0

    :cond_8
    nop

    .line 170
    return v2
.end method

.method public getActiveTrackIds()[J
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzds:[J

    return-object v0
.end method

.method public getAutoplay()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzdp:Z

    return v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzp:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getItemId()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzet:I

    return v0
.end method

.method public getMedia()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzes:Lcom/google/android/gms/cast/MediaInfo;

    return-object v0
.end method

.method public getPlaybackDuration()D
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzev:D

    return-wide v0
.end method

.method public getPreloadTime()D
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzew:D

    return-wide v0
.end method

.method public getStartTime()D
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzeu:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 171
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzes:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzet:I

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzdp:Z

    .line 173
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzeu:D

    .line 174
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzev:D

    .line 175
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzew:D

    .line 176
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzds:[J

    .line 177
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzp:Lorg/json/JSONObject;

    .line 178
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 179
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final setCustomData(Lorg/json/JSONObject;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzp:Lorg/json/JSONObject;

    .line 126
    return-void
.end method

.method public final toJson()Lorg/json/JSONObject;
    .locals 7

    .line 136
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 137
    :try_start_0
    const-string v1, "media"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzes:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzet:I

    if-eqz v1, :cond_0

    .line 139
    const-string v1, "itemId"

    iget v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzet:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    :cond_0
    const-string v1, "autoplay"

    iget-boolean v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzdp:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 141
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzeu:D

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    const-string v1, "startTime"

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzeu:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 143
    :cond_1
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzev:D

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_2

    .line 144
    const-string v1, "playbackDuration"

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzev:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 145
    :cond_2
    const-string v1, "preloadTime"

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzew:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 146
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzds:[J

    if-eqz v1, :cond_4

    .line 147
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 148
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzds:[J

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-wide v5, v2, v4

    .line 149
    invoke-virtual {v1, v5, v6}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 150
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    :cond_3
    const-string v2, "activeTrackIds"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzp:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    .line 153
    const-string v1, "customData"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzp:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_5
    goto :goto_1

    .line 155
    :catch_0
    move-exception v1

    .line 156
    :goto_1
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 180
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzp:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzj:Ljava/lang/String;

    .line 181
    nop

    .line 182
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 183
    const/4 v1, 0x2

    .line 184
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaQueueItem;->getMedia()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v2

    .line 185
    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 186
    const/4 p2, 0x3

    .line 187
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaQueueItem;->getItemId()I

    move-result v1

    .line 188
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 189
    const/4 p2, 0x4

    .line 190
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaQueueItem;->getAutoplay()Z

    move-result v1

    .line 191
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 192
    const/4 p2, 0x5

    .line 193
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaQueueItem;->getStartTime()D

    move-result-wide v1

    .line 194
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 195
    const/4 p2, 0x6

    .line 196
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaQueueItem;->getPlaybackDuration()D

    move-result-wide v1

    .line 197
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 198
    const/4 p2, 0x7

    .line 199
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaQueueItem;->getPreloadTime()D

    move-result-wide v1

    .line 200
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 201
    const/16 p2, 0x8

    .line 202
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaQueueItem;->getActiveTrackIds()[J

    move-result-object v1

    .line 203
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLongArray(Landroid/os/Parcel;I[JZ)V

    .line 204
    const/16 p2, 0x9

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzj:Ljava/lang/String;

    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 205
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 206
    return-void
.end method

.method final zza([J)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzds:[J

    .line 123
    return-void
.end method

.method final zzb(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 107
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "startTime cannot be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzeu:D

    .line 110
    return-void
.end method

.method final zzc(D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 112
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzev:D

    .line 115
    return-void

    .line 113
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "playbackDuration cannot be NaN."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zzd(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 117
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    .line 119
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzew:D

    .line 120
    return-void

    .line 118
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "preloadTime cannot be negative or NaN."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final zzd(I)V
    .locals 0

    .line 101
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzet:I

    .line 102
    return-void
.end method

.method final zze(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzdp:Z

    .line 105
    return-void
.end method

.method public final zzi(Lorg/json/JSONObject;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 40
    nop

    .line 41
    const-string v0, "media"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 42
    new-instance v1, Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Lorg/json/JSONObject;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzes:Lcom/google/android/gms/cast/MediaInfo;

    .line 43
    move v0, v3

    goto :goto_0

    .line 41
    :cond_0
    move v0, v2

    .line 44
    :goto_0
    const-string v1, "itemId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 45
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 46
    iget v4, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzet:I

    if-eq v4, v1, :cond_1

    .line 47
    iput v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzet:I

    .line 48
    move v0, v3

    .line 49
    :cond_1
    const-string v1, "autoplay"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 50
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 51
    iget-boolean v4, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzdp:Z

    if-eq v4, v1, :cond_2

    .line 52
    iput-boolean v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzdp:Z

    .line 53
    move v0, v3

    .line 54
    :cond_2
    const-string v1, "startTime"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 55
    nop

    .line 56
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    iget-wide v6, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzeu:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    if-eq v1, v6, :cond_3

    .line 57
    move v1, v3

    goto :goto_1

    .line 58
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_4

    iget-wide v9, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzeu:D

    sub-double v9, v4, v9

    .line 59
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v1, v9, v7

    if-lez v1, :cond_4

    .line 60
    move v1, v3

    goto :goto_1

    .line 61
    :cond_4
    move v1, v2

    :goto_1
    if-eqz v1, :cond_5

    .line 62
    iput-wide v4, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzeu:D

    .line 63
    move v0, v3

    .line 64
    :cond_5
    const-string v1, "playbackDuration"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 65
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 66
    iget-wide v9, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzev:D

    sub-double v9, v4, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v1, v9, v7

    if-lez v1, :cond_6

    .line 67
    iput-wide v4, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzev:D

    .line 68
    move v0, v3

    .line 69
    :cond_6
    const-string v1, "preloadTime"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 70
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 71
    iget-wide v9, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzew:D

    sub-double v9, v4, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpl-double v1, v9, v7

    if-lez v1, :cond_7

    .line 72
    iput-wide v4, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzew:D

    .line 73
    move v0, v3

    .line 74
    :cond_7
    nop

    .line 75
    const/4 v1, 0x0

    .line 76
    const-string v4, "activeTrackIds"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 77
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 79
    new-array v5, v4, [J

    .line 80
    move v6, v2

    :goto_2
    if-ge v6, v4, :cond_8

    .line 81
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v7

    aput-wide v7, v5, v6

    .line 82
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 83
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzds:[J

    if-nez v1, :cond_9

    .line 84
    move v2, v3

    move-object v1, v5

    goto :goto_4

    .line 85
    :cond_9
    array-length v1, v1

    if-eq v1, v4, :cond_a

    .line 86
    move v2, v3

    move-object v1, v5

    goto :goto_4

    .line 87
    :cond_a
    move v1, v2

    :goto_3
    if-ge v1, v4, :cond_c

    .line 88
    iget-object v6, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzds:[J

    aget-wide v7, v6, v1

    aget-wide v9, v5, v1

    cmp-long v6, v7, v9

    if-eqz v6, :cond_b

    .line 89
    nop

    .line 90
    move v2, v3

    move-object v1, v5

    goto :goto_4

    .line 91
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 87
    :cond_c
    move-object v1, v5

    .line 92
    :cond_d
    :goto_4
    if-eqz v2, :cond_e

    .line 93
    iput-object v1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzds:[J

    .line 94
    move v0, v3

    .line 95
    :cond_e
    const-string v1, "customData"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 96
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzp:Lorg/json/JSONObject;

    .line 97
    goto :goto_5

    .line 95
    :cond_f
    move v3, v0

    .line 98
    :goto_5
    return v3
.end method

.method final zzj()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzes:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v0, :cond_4

    .line 129
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzeu:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzeu:D

    cmpg-double v0, v3, v1

    if-ltz v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "startTime cannot be negative or NaN."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    :goto_0
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzev:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    .line 133
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzew:D

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaQueueItem;->zzew:D

    cmpg-double v0, v3, v1

    if-ltz v0, :cond_2

    .line 135
    return-void

    .line 134
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "preloadTime cannot be negative or Nan."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "playbackDuration cannot be NaN."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "media cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
