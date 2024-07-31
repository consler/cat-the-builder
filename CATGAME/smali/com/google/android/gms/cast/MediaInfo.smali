.class public Lcom/google/android/gms/cast/MediaInfo;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STREAM_TYPE_BUFFERED:I = 0x1

.field public static final STREAM_TYPE_INVALID:I = -0x1

.field public static final STREAM_TYPE_LIVE:I = 0x2

.field public static final STREAM_TYPE_NONE:I = 0x0

.field public static final UNKNOWN_DURATION:J = -0x1L

.field public static final UNKNOWN_START_ABSOLUTE_TIME:J = -0x1L


# instance fields
.field private streamType:I

.field private zzde:Ljava/lang/String;

.field private zzdf:Lcom/google/android/gms/cast/MediaMetadata;

.field private zzdg:J

.field private zzdh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;"
        }
    .end annotation
.end field

.field private zzdi:Lcom/google/android/gms/cast/TextTrackStyle;

.field private zzdj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/AdBreakInfo;",
            ">;"
        }
    .end annotation
.end field

.field private zzdk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/AdBreakClipInfo;",
            ">;"
        }
    .end annotation
.end field

.field private zzdl:Ljava/lang/String;

.field private zzdm:Lcom/google/android/gms/cast/VastAdsRequest;

.field private zzdn:J

.field private zzj:Ljava/lang/String;

.field private final zzk:Ljava/lang/String;

.field private zzp:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 266
    new-instance v0, Lcom/google/android/gms/cast/zzaj;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzaj;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 24
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/cast/MediaMetadata;JLjava/util/List;Lcom/google/android/gms/cast/TextTrackStyle;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/cast/VastAdsRequest;J)V

    .line 25
    if-eqz p1, :cond_0

    .line 27
    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentID cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/cast/MediaMetadata;JLjava/util/List;Lcom/google/android/gms/cast/TextTrackStyle;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/cast/VastAdsRequest;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/MediaMetadata;",
            "J",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;",
            "Lcom/google/android/gms/cast/TextTrackStyle;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/AdBreakInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/AdBreakClipInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/cast/VastAdsRequest;",
            "J)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzk:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/google/android/gms/cast/MediaInfo;->streamType:I

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/cast/MediaInfo;->zzde:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdf:Lcom/google/android/gms/cast/MediaMetadata;

    .line 6
    iput-wide p5, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdg:J

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdh:Ljava/util/List;

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdi:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 9
    iput-object p9, p0, Lcom/google/android/gms/cast/MediaInfo;->zzj:Ljava/lang/String;

    .line 10
    const/4 p1, 0x0

    if-eqz p9, :cond_0

    .line 11
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/google/android/gms/cast/MediaInfo;->zzj:Ljava/lang/String;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzp:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p2

    .line 14
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzp:Lorg/json/JSONObject;

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzj:Ljava/lang/String;

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzp:Lorg/json/JSONObject;

    .line 18
    :goto_0
    iput-object p10, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdj:Ljava/util/List;

    .line 19
    iput-object p11, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdk:Ljava/util/List;

    .line 20
    iput-object p12, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdl:Ljava/lang/String;

    .line 21
    iput-object p13, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdm:Lcom/google/android/gms/cast/VastAdsRequest;

    .line 22
    iput-wide p14, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdn:J

    .line 23
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 28
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/cast/MediaMetadata;JLjava/util/List;Lcom/google/android/gms/cast/TextTrackStyle;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/cast/VastAdsRequest;J)V

    .line 29
    if-eqz p1, :cond_0

    .line 31
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "contentID cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 32
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    .line 33
    const-string v0, "contentId"

    invoke-virtual {v15, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 34
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v16, -0x1

    move-object/from16 v0, p0

    move-wide/from16 v14, v16

    invoke-direct/range {v0 .. v15}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/cast/MediaMetadata;JLjava/util/List;Lcom/google/android/gms/cast/TextTrackStyle;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/cast/VastAdsRequest;J)V

    .line 35
    const-string v0, "streamType"

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    const-string v2, "NONE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 37
    move-object/from16 v2, p0

    iput v3, v2, Lcom/google/android/gms/cast/MediaInfo;->streamType:I

    goto :goto_0

    .line 38
    :cond_0
    move-object/from16 v2, p0

    const-string v4, "BUFFERED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 39
    const/4 v0, 0x1

    iput v0, v2, Lcom/google/android/gms/cast/MediaInfo;->streamType:I

    goto :goto_0

    .line 40
    :cond_1
    const-string v4, "LIVE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    const/4 v0, 0x2

    iput v0, v2, Lcom/google/android/gms/cast/MediaInfo;->streamType:I

    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, -0x1

    iput v0, v2, Lcom/google/android/gms/cast/MediaInfo;->streamType:I

    .line 43
    :goto_0
    const-string v0, "contentType"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/cast/MediaInfo;->zzde:Ljava/lang/String;

    .line 44
    const-string v0, "metadata"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 45
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 46
    const-string v5, "metadataType"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 47
    new-instance v6, Lcom/google/android/gms/cast/MediaMetadata;

    invoke-direct {v6, v5}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(I)V

    iput-object v6, v2, Lcom/google/android/gms/cast/MediaInfo;->zzdf:Lcom/google/android/gms/cast/MediaMetadata;

    .line 48
    invoke-virtual {v6, v0}, Lcom/google/android/gms/cast/MediaMetadata;->zzf(Lorg/json/JSONObject;)V

    .line 49
    :cond_3
    const-wide/16 v5, -0x1

    iput-wide v5, v2, Lcom/google/android/gms/cast/MediaInfo;->zzdg:J

    .line 50
    const-string v0, "duration"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    const-wide v6, 0x408f400000000000L    # 1000.0

    const-wide/16 v8, 0x0

    if-eqz v5, :cond_4

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 51
    invoke-virtual {v1, v0, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    .line 52
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v10, v11}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_4

    .line 53
    nop

    .line 54
    mul-double/2addr v10, v6

    double-to-long v10, v10

    .line 55
    iput-wide v10, v2, Lcom/google/android/gms/cast/MediaInfo;->zzdg:J

    .line 56
    :cond_4
    const-string/jumbo v0, "tracks"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 57
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/google/android/gms/cast/MediaInfo;->zzdh:Ljava/util/List;

    .line 58
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 59
    nop

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 60
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 61
    new-instance v10, Lcom/google/android/gms/cast/MediaTrack;

    invoke-direct {v10, v5}, Lcom/google/android/gms/cast/MediaTrack;-><init>(Lorg/json/JSONObject;)V

    .line 62
    iget-object v5, v2, Lcom/google/android/gms/cast/MediaInfo;->zzdh:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 64
    :cond_5
    goto :goto_2

    .line 65
    :cond_6
    iput-object v4, v2, Lcom/google/android/gms/cast/MediaInfo;->zzdh:Ljava/util/List;

    .line 66
    :goto_2
    const-string v0, "textTrackStyle"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 67
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 68
    new-instance v3, Lcom/google/android/gms/cast/TextTrackStyle;

    invoke-direct {v3}, Lcom/google/android/gms/cast/TextTrackStyle;-><init>()V

    .line 69
    invoke-virtual {v3, v0}, Lcom/google/android/gms/cast/TextTrackStyle;->zzf(Lorg/json/JSONObject;)V

    .line 70
    iput-object v3, v2, Lcom/google/android/gms/cast/MediaInfo;->zzdi:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 71
    goto :goto_3

    .line 72
    :cond_7
    iput-object v4, v2, Lcom/google/android/gms/cast/MediaInfo;->zzdi:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 73
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/cast/MediaInfo;->zzd(Lorg/json/JSONObject;)V

    .line 74
    const-string v0, "customData"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/cast/MediaInfo;->zzp:Lorg/json/JSONObject;

    .line 75
    const-string v0, "entity"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 76
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/cast/MediaInfo;->zzdl:Ljava/lang/String;

    .line 77
    :cond_8
    const-string/jumbo v0, "vmapAdsRequest"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/VastAdsRequest;->fromJson(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/VastAdsRequest;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/cast/MediaInfo;->zzdm:Lcom/google/android/gms/cast/VastAdsRequest;

    .line 78
    sget-boolean v0, Lcom/google/android/gms/internal/cast/zzdl;->zzaaa:Z

    if-eqz v0, :cond_9

    .line 79
    const-string v0, "startAbsoluteTime"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 80
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 81
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_9

    cmpl-double v3, v0, v8

    if-ltz v3, :cond_9

    .line 82
    nop

    .line 83
    mul-double/2addr v0, v6

    double-to-long v0, v0

    .line 84
    iput-wide v0, v2, Lcom/google/android/gms/cast/MediaInfo;->zzdn:J

    .line 85
    :cond_9
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 198
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 199
    return v0

    .line 200
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 201
    return v2

    .line 202
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaInfo;

    .line 203
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzp:Lorg/json/JSONObject;

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->zzp:Lorg/json/JSONObject;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eq v1, v3, :cond_4

    .line 204
    return v2

    .line 205
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzp:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->zzp:Lorg/json/JSONObject;

    if-eqz v3, :cond_5

    .line 206
    invoke-static {v1, v3}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 207
    return v2

    .line 208
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzk:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->zzk:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaInfo;->streamType:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaInfo;->streamType:I

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzde:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->zzde:Ljava/lang/String;

    .line 209
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdf:Lcom/google/android/gms/cast/MediaMetadata;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->zzdf:Lcom/google/android/gms/cast/MediaMetadata;

    .line 210
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdg:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaInfo;->zzdg:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdh:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->zzdh:Ljava/util/List;

    .line 211
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdi:Lcom/google/android/gms/cast/TextTrackStyle;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->zzdi:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 212
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdj:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->zzdj:Ljava/util/List;

    .line 213
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdk:Ljava/util/List;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->zzdk:Ljava/util/List;

    .line 214
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdl:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->zzdl:Ljava/lang/String;

    .line 215
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdm:Lcom/google/android/gms/cast/VastAdsRequest;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->zzdm:Lcom/google/android/gms/cast/VastAdsRequest;

    .line 216
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdn:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaInfo;->zzdn:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_6

    return v0

    :cond_6
    nop

    .line 217
    return v2
.end method

.method public getAdBreakClips()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/AdBreakClipInfo;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdk:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAdBreaks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/AdBreakInfo;",
            ">;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdj:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContentId()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzk:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzde:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzp:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getEntity()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdl:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdh:Ljava/util/List;

    return-object v0
.end method

.method public getMetadata()Lcom/google/android/gms/cast/MediaMetadata;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdf:Lcom/google/android/gms/cast/MediaMetadata;

    return-object v0
.end method

.method public getStartAbsoluteTime()J
    .locals 2

    .line 146
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdn:J

    return-wide v0
.end method

.method public getStreamDuration()J
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdg:J

    return-wide v0
.end method

.method public getStreamType()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/google/android/gms/cast/MediaInfo;->streamType:I

    return v0
.end method

.method public getTextTrackStyle()Lcom/google/android/gms/cast/TextTrackStyle;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdi:Lcom/google/android/gms/cast/TextTrackStyle;

    return-object v0
.end method

.method public getVmapAdsRequest()Lcom/google/android/gms/cast/VastAdsRequest;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdm:Lcom/google/android/gms/cast/VastAdsRequest;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 218
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzk:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaInfo;->streamType:I

    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzde:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdf:Lcom/google/android/gms/cast/MediaMetadata;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdg:J

    .line 220
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzp:Lorg/json/JSONObject;

    .line 221
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdh:Ljava/util/List;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdi:Lcom/google/android/gms/cast/TextTrackStyle;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdj:Ljava/util/List;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdk:Ljava/util/List;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdl:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdm:Lcom/google/android/gms/cast/VastAdsRequest;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdn:J

    .line 222
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 223
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method final setContentType(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzde:Ljava/lang/String;

    .line 93
    return-void
.end method

.method final setCustomData(Lorg/json/JSONObject;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzp:Lorg/json/JSONObject;

    .line 110
    return-void
.end method

.method final setStreamType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 87
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    .line 89
    iput p1, p0, Lcom/google/android/gms/cast/MediaInfo;->streamType:I

    .line 90
    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid stream type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTextTrackStyle(Lcom/google/android/gms/cast/TextTrackStyle;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdi:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 107
    return-void
.end method

.method public final toJson()Lorg/json/JSONObject;
    .locals 9

    .line 147
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 148
    :try_start_0
    const-string v1, "contentId"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    iget v1, p0, Lcom/google/android/gms/cast/MediaInfo;->streamType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 154
    const-string v1, "NONE"

    goto :goto_0

    .line 152
    :cond_0
    const-string v1, "LIVE"

    .line 153
    goto :goto_0

    .line 150
    :cond_1
    const-string v1, "BUFFERED"

    .line 151
    nop

    .line 155
    :goto_0
    const-string v2, "streamType"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzde:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 157
    const-string v1, "contentType"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzde:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdf:Lcom/google/android/gms/cast/MediaMetadata;

    if-eqz v1, :cond_3

    .line 159
    const-string v1, "metadata"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdf:Lcom/google/android/gms/cast/MediaMetadata;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaMetadata;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    :cond_3
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdg:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    const-string v2, "duration"

    if-gtz v1, :cond_4

    .line 161
    :try_start_1
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 162
    :cond_4
    iget-wide v7, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdg:J

    .line 163
    long-to-double v7, v7

    div-double/2addr v7, v5

    .line 164
    invoke-virtual {v0, v2, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 165
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdh:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 166
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 167
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdh:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/cast/MediaTrack;

    .line 168
    invoke-virtual {v7}, Lcom/google/android/gms/cast/MediaTrack;->toJson()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 169
    goto :goto_2

    .line 170
    :cond_5
    const-string/jumbo v2, "tracks"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdi:Lcom/google/android/gms/cast/TextTrackStyle;

    if-eqz v1, :cond_7

    .line 172
    const-string v1, "textTrackStyle"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdi:Lcom/google/android/gms/cast/TextTrackStyle;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/TextTrackStyle;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzp:Lorg/json/JSONObject;

    if-eqz v1, :cond_8

    .line 174
    const-string v1, "customData"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzp:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdl:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 176
    const-string v1, "entity"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdj:Ljava/util/List;

    if-eqz v1, :cond_b

    .line 178
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 179
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdj:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/cast/AdBreakInfo;

    .line 180
    invoke-virtual {v7}, Lcom/google/android/gms/cast/AdBreakInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 181
    goto :goto_3

    .line 182
    :cond_a
    const-string v2, "breaks"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdk:Ljava/util/List;

    if-eqz v1, :cond_d

    .line 184
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 185
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdk:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/cast/AdBreakClipInfo;

    .line 186
    invoke-virtual {v7}, Lcom/google/android/gms/cast/AdBreakClipInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 187
    goto :goto_4

    .line 188
    :cond_c
    const-string v2, "breakClips"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdm:Lcom/google/android/gms/cast/VastAdsRequest;

    if-eqz v1, :cond_e

    .line 190
    const-string/jumbo v1, "vmapAdsRequest"

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdm:Lcom/google/android/gms/cast/VastAdsRequest;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/VastAdsRequest;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    :cond_e
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdn:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_f

    .line 192
    const-string v1, "startAbsoluteTime"

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdn:J

    .line 193
    long-to-double v2, v2

    div-double/2addr v2, v5

    .line 194
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    :cond_f
    goto :goto_5

    .line 196
    :catch_0
    move-exception v1

    .line 197
    :goto_5
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 224
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzp:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzj:Ljava/lang/String;

    .line 225
    nop

    .line 226
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 227
    const/4 v1, 0x2

    .line 228
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getContentId()Ljava/lang/String;

    move-result-object v2

    .line 229
    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 230
    const/4 v1, 0x3

    .line 231
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v2

    .line 232
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 233
    const/4 v1, 0x4

    .line 234
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 236
    const/4 v1, 0x5

    .line 237
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getMetadata()Lcom/google/android/gms/cast/MediaMetadata;

    move-result-object v2

    .line 238
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 239
    const/4 v1, 0x6

    .line 240
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamDuration()J

    move-result-wide v4

    .line 241
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 242
    const/4 v1, 0x7

    .line 243
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getMediaTracks()Ljava/util/List;

    move-result-object v2

    .line 244
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 245
    const/16 v1, 0x8

    .line 246
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getTextTrackStyle()Lcom/google/android/gms/cast/TextTrackStyle;

    move-result-object v2

    .line 247
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 248
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->zzj:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 249
    const/16 v1, 0xa

    .line 250
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getAdBreaks()Ljava/util/List;

    move-result-object v2

    .line 251
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 252
    const/16 v1, 0xb

    .line 253
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getAdBreakClips()Ljava/util/List;

    move-result-object v2

    .line 254
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 255
    const/16 v1, 0xc

    .line 256
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getEntity()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 258
    const/16 v1, 0xd

    .line 259
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getVmapAdsRequest()Lcom/google/android/gms/cast/VastAdsRequest;

    move-result-object v2

    .line 260
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 261
    const/16 p2, 0xe

    .line 262
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaInfo;->getStartAbsoluteTime()J

    move-result-wide v1

    .line 263
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 264
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 265
    return-void
.end method

.method public final zza(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 98
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid stream duration"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 100
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdg:J

    .line 101
    return-void
.end method

.method final zza(Lcom/google/android/gms/cast/MediaMetadata;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdf:Lcom/google/android/gms/cast/MediaMetadata;

    .line 96
    return-void
.end method

.method public final zza(Lcom/google/android/gms/cast/VastAdsRequest;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdm:Lcom/google/android/gms/cast/VastAdsRequest;

    .line 145
    return-void
.end method

.method final zza(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaTrack;",
            ">;)V"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdh:Ljava/util/List;

    .line 104
    return-void
.end method

.method public final zzb(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/AdBreakInfo;",
            ">;)V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdj:Ljava/util/List;

    .line 115
    return-void
.end method

.method final zzc(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/AdBreakClipInfo;",
            ">;)V"
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdk:Ljava/util/List;

    .line 117
    return-void
.end method

.method public final zzd(Ljava/lang/String;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdl:Ljava/lang/String;

    .line 142
    return-void
.end method

.method final zzd(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 118
    const-string v0, "breaks"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdj:Ljava/util/List;

    .line 121
    move v1, v2

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 122
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/cast/AdBreakInfo;->zzb(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/AdBreakInfo;

    move-result-object v3

    .line 123
    if-eqz v3, :cond_0

    .line 124
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdj:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    :cond_1
    const-string v0, "breakClips"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdk:Ljava/util/List;

    .line 131
    nop

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 132
    nop

    .line 133
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/cast/AdBreakClipInfo;->zza(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/AdBreakClipInfo;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_2

    .line 135
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdk:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 136
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->zzdk:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 137
    return-void

    .line 139
    :cond_3
    return-void
.end method
