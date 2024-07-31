.class public Lcom/google/android/gms/cast/MediaQueueData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaQueueData$Builder;,
        Lcom/google/android/gms/cast/MediaQueueData$MediaQueueType;
    }
.end annotation


# static fields
.field public static final MEDIA_QUEUE_TYPE_ALBUM:I = 0x1

.field public static final MEDIA_QUEUE_TYPE_AUDIO_BOOK:I = 0x3

.field public static final MEDIA_QUEUE_TYPE_GENERIC:I = 0x0

.field public static final MEDIA_QUEUE_TYPE_LIVE_TV:I = 0x8

.field public static final MEDIA_QUEUE_TYPE_MOVIE:I = 0x9

.field public static final MEDIA_QUEUE_TYPE_PLAYLIST:I = 0x2

.field public static final MEDIA_QUEUE_TYPE_PODCAST_SERIES:I = 0x5

.field public static final MEDIA_QUEUE_TYPE_RADIO_STATION:I = 0x4

.field public static final MEDIA_QUEUE_TYPE_TV_SERIES:I = 0x6

.field public static final MEDIA_QUEUE_TYPE_VIDEO_PLAYLIST:I = 0x7


# instance fields
.field private name:Ljava/lang/String;

.field private repeatMode:I

.field private startTime:J

.field private zzdl:Ljava/lang/String;

.field private zzen:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

.field private zzeo:Ljava/lang/String;

.field private zzep:I

.field private zzeq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private zzer:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/cast/MediaQueueData;->clear()V

    .line 3
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/cast/MediaQueueData;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object v0, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzeo:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzeo:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzdl:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzdl:Ljava/lang/String;

    .line 7
    iget v0, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzep:I

    iput v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzep:I

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzen:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzen:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 10
    iget v0, p1, Lcom/google/android/gms/cast/MediaQueueData;->repeatMode:I

    iput v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->repeatMode:I

    .line 11
    iget-object v0, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzeq:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzeq:Ljava/util/List;

    .line 12
    iget v0, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzer:I

    iput v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzer:I

    .line 13
    iget-wide v0, p1, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    .line 14
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/MediaQueueData;Lcom/google/android/gms/cast/zzao;)V
    .locals 0

    .line 171
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueData;-><init>(Lcom/google/android/gms/cast/MediaQueueData;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/cast/zzao;)V
    .locals 0

    .line 161
    invoke-direct {p0}, Lcom/google/android/gms/cast/MediaQueueData;-><init>()V

    return-void
.end method

.method private final clear()V
    .locals 2

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzeo:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzdl:Ljava/lang/String;

    .line 17
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzep:I

    .line 18
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    .line 19
    iput v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->repeatMode:I

    .line 20
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzeq:Ljava/util/List;

    .line 21
    iput v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzer:I

    .line 22
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    .line 23
    return-void
.end method

.method private final setName(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private final setRepeatMode(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/google/android/gms/cast/MediaQueueData;->repeatMode:I

    .line 41
    return-void
.end method

.method private final setStartTime(J)V
    .locals 0

    .line 49
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    .line 50
    return-void
.end method

.method private final zza(Lcom/google/android/gms/cast/MediaQueueContainerMetadata;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzen:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 38
    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaQueueData;I)V
    .locals 0

    .line 164
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->zzb(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaQueueData;J)V
    .locals 0

    .line 170
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/cast/MediaQueueData;->setStartTime(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaQueueData;Lcom/google/android/gms/cast/MediaQueueContainerMetadata;)V
    .locals 0

    .line 166
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->zza(Lcom/google/android/gms/cast/MediaQueueContainerMetadata;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaQueueData;Ljava/lang/String;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->zzh(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaQueueData;Ljava/util/List;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->zzf(Ljava/util/List;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/cast/MediaQueueData;Lorg/json/JSONObject;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->zzf(Lorg/json/JSONObject;)V

    return-void
.end method

.method private final zzb(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzep:I

    .line 32
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/MediaQueueData;I)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->setRepeatMode(I)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/cast/MediaQueueData;Ljava/lang/String;)V
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->zzd(Ljava/lang/String;)V

    return-void
.end method

.method private final zzc(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzer:I

    .line 47
    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/cast/MediaQueueData;I)V
    .locals 0

    .line 169
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->zzc(I)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/cast/MediaQueueData;Ljava/lang/String;)V
    .locals 0

    .line 165
    invoke-direct {p0, p1}, Lcom/google/android/gms/cast/MediaQueueData;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private final zzd(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzdl:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private final zzf(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;)V"
        }
    .end annotation

    .line 43
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzeq:Ljava/util/List;

    .line 44
    return-void
.end method

.method private final zzf(Lorg/json/JSONObject;)V
    .locals 13

    .line 51
    invoke-direct {p0}, Lcom/google/android/gms/cast/MediaQueueData;->clear()V

    .line 52
    if-nez p1, :cond_0

    .line 53
    return-void

    .line 54
    :cond_0
    const-string v0, "id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzeo:Ljava/lang/String;

    .line 55
    const-string v0, "entity"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzdl:Ljava/lang/String;

    .line 56
    const-string v0, "queueType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    sparse-switch v3, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v3, "LIVE_TV"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v6

    goto :goto_0

    :sswitch_1
    const-string v3, "VIDEO_PLAYLIST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v7

    goto :goto_0

    :sswitch_2
    const-string v3, "MOVIE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v5

    goto :goto_0

    :sswitch_3
    const-string v3, "ALBUM"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v4

    goto :goto_0

    :sswitch_4
    const-string v3, "TV_SERIES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v8

    goto :goto_0

    :sswitch_5
    const-string v3, "AUDIOBOOK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v11

    goto :goto_0

    :sswitch_6
    const-string v3, "PLAYLIST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v12

    goto :goto_0

    :sswitch_7
    const-string v3, "RADIO_STATION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v10

    goto :goto_0

    :sswitch_8
    const-string v3, "PODCAST_SERIES"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v2, v9

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 74
    :pswitch_0
    const/16 v0, 0x9

    iput v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzep:I

    goto :goto_1

    .line 72
    :pswitch_1
    iput v5, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzep:I

    .line 73
    goto :goto_1

    .line 70
    :pswitch_2
    iput v6, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzep:I

    .line 71
    goto :goto_1

    .line 68
    :pswitch_3
    iput v7, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzep:I

    .line 69
    goto :goto_1

    .line 66
    :pswitch_4
    iput v8, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzep:I

    .line 67
    goto :goto_1

    .line 64
    :pswitch_5
    iput v9, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzep:I

    .line 65
    goto :goto_1

    .line 62
    :pswitch_6
    iput v10, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzep:I

    .line 63
    goto :goto_1

    .line 60
    :pswitch_7
    iput v11, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzep:I

    .line 61
    goto :goto_1

    .line 58
    :pswitch_8
    iput v12, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzep:I

    .line 59
    nop

    .line 75
    :goto_1
    const-string v0, "name"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    .line 76
    const-string v0, "containerMetadata"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    new-instance v1, Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;-><init>()V

    .line 78
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;->zzg(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata$Builder;->build()Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzen:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 80
    :cond_2
    const-string v0, "repeatMode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzdv;->zzw(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_3

    .line 82
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->repeatMode:I

    .line 83
    :cond_3
    const-string v0, "items"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_5

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzeq:Ljava/util/List;

    .line 86
    nop

    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_5

    .line 87
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 88
    if-eqz v1, :cond_4

    .line 89
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzeq:Ljava/util/List;

    new-instance v3, Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-direct {v3, v1}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_3

    .line 91
    :catch_0
    move-exception v1

    .line 92
    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 93
    :cond_5
    iget v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzer:I

    const-string v1, "startIndex"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzer:I

    .line 94
    const-string v0, "startTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 95
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    long-to-double v1, v1

    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 96
    nop

    .line 97
    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    .line 98
    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    .line 99
    :cond_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6b79e7ce -> :sswitch_8
        -0x68d6bb50 -> :sswitch_7
        -0x61538e2e -> :sswitch_6
        -0x4ea9f461 -> :sswitch_5
        -0x40e1912c -> :sswitch_4
        0x3b7864f -> :sswitch_3
        0x4624710 -> :sswitch_2
        0x176e3d36 -> :sswitch_1
        0x35c80eb5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzh(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzeo:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 144
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 145
    return v0

    .line 146
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaQueueData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 147
    return v2

    .line 148
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaQueueData;

    .line 149
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzeo:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzeo:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzdl:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzdl:Ljava/lang/String;

    .line 150
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzep:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzep:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    .line 151
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzen:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzen:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    .line 152
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->repeatMode:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaQueueData;->repeatMode:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzeq:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzeq:Ljava/util/List;

    .line 153
    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzer:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaQueueData;->zzer:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    return v0

    :cond_2
    nop

    .line 154
    return v2
.end method

.method public getContainerMetadata()Lcom/google/android/gms/cast/MediaQueueContainerMetadata;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzen:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    return-object v0
.end method

.method public getEntity()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzdl:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzeq:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getQueueId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzeo:Ljava/lang/String;

    return-object v0
.end method

.method public getQueueType()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzep:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->repeatMode:I

    return v0
.end method

.method public getStartIndex()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzer:I

    return v0
.end method

.method public getStartTime()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 155
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzeo:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzdl:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzep:I

    .line 156
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzen:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->repeatMode:I

    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzeq:Ljava/util/List;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzer:I

    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    .line 159
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 160
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toJson()Lorg/json/JSONObject;
    .locals 6

    .line 100
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzeo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    const-string v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzeo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzdl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 104
    const-string v1, "entity"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzdl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    :cond_1
    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzep:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "queueType"

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 122
    :pswitch_0
    :try_start_1
    const-string v1, "MOVIE"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 120
    :pswitch_1
    const-string v1, "LIVE_TV"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 121
    goto :goto_0

    .line 118
    :pswitch_2
    const-string v1, "VIDEO_PLAYLIST"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    goto :goto_0

    .line 116
    :pswitch_3
    const-string v1, "TV_SERIES"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    goto :goto_0

    .line 114
    :pswitch_4
    const-string v1, "PODCAST_SERIES"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    goto :goto_0

    .line 112
    :pswitch_5
    const-string v1, "RADIO_STATION"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    goto :goto_0

    .line 110
    :pswitch_6
    const-string v1, "AUDIOBOOK"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    goto :goto_0

    .line 108
    :pswitch_7
    const-string v1, "PLAYLIST"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    goto :goto_0

    .line 106
    :pswitch_8
    const-string v1, "ALBUM"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    nop

    .line 123
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 124
    const-string v1, "name"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzen:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    if-eqz v1, :cond_3

    .line 126
    const-string v1, "containerMetadata"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzen:Lcom/google/android/gms/cast/MediaQueueContainerMetadata;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaQueueContainerMetadata;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    :cond_3
    iget v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->repeatMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/cast/zzdv;->zza(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_4

    .line 129
    const-string v2, "repeatMode"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzeq:Ljava/util/List;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzeq:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 131
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 132
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzeq:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/MediaQueueItem;

    .line 133
    invoke-virtual {v3}, Lcom/google/android/gms/cast/MediaQueueItem;->toJson()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 134
    goto :goto_1

    .line 135
    :cond_5
    const-string v2, "items"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    :cond_6
    const-string v1, "startIndex"

    iget v2, p0, Lcom/google/android/gms/cast/MediaQueueData;->zzer:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7

    .line 138
    const-string v1, "startTime"

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaQueueData;->startTime:J

    .line 139
    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 140
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    :cond_7
    goto :goto_2

    .line 142
    :catch_0
    move-exception v1

    .line 143
    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
