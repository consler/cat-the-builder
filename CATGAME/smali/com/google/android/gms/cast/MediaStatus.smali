.class public Lcom/google/android/gms/cast/MediaStatus;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final COMMAND_PAUSE:J = 0x1L

.field public static final COMMAND_SEEK:J = 0x2L

.field public static final COMMAND_SET_VOLUME:J = 0x4L

.field public static final COMMAND_SKIP_BACKWARD:J = 0x20L

.field public static final COMMAND_SKIP_FORWARD:J = 0x10L

.field public static final COMMAND_TOGGLE_MUTE:J = 0x8L

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final IDLE_REASON_CANCELED:I = 0x2

.field public static final IDLE_REASON_ERROR:I = 0x4

.field public static final IDLE_REASON_FINISHED:I = 0x1

.field public static final IDLE_REASON_INTERRUPTED:I = 0x3

.field public static final IDLE_REASON_NONE:I = 0x0

.field public static final PLAYER_STATE_BUFFERING:I = 0x4

.field public static final PLAYER_STATE_IDLE:I = 0x1

.field public static final PLAYER_STATE_LOADING:I = 0x5

.field public static final PLAYER_STATE_PAUSED:I = 0x3

.field public static final PLAYER_STATE_PLAYING:I = 0x2

.field public static final PLAYER_STATE_UNKNOWN:I = 0x0

.field public static final REPEAT_MODE_REPEAT_ALL:I = 0x1

.field public static final REPEAT_MODE_REPEAT_ALL_AND_SHUFFLE:I = 0x3

.field public static final REPEAT_MODE_REPEAT_OFF:I = 0x0

.field public static final REPEAT_MODE_REPEAT_SINGLE:I = 0x2


# instance fields
.field private zzdo:Lcom/google/android/gms/cast/MediaInfo;

.field private zzdr:D

.field private zzds:[J

.field private zzdy:Lcom/google/android/gms/cast/MediaQueueData;

.field private zzfb:J

.field private zzfc:I

.field private zzfd:I

.field private zzfe:I

.field private zzff:J

.field private zzfg:J

.field private zzfh:D

.field private zzfi:Z

.field private zzfj:I

.field private zzfk:I

.field private zzfl:I

.field private final zzfm:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private zzfn:Z

.field private zzfo:Lcom/google/android/gms/cast/AdBreakStatus;

.field private zzfp:Lcom/google/android/gms/cast/VideoInfo;

.field private zzfq:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

.field private final zzfr:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzj:Ljava/lang/String;

.field private zzp:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 415
    new-instance v0, Lcom/google/android/gms/cast/zzas;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzas;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/MediaStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/List;ZLcom/google/android/gms/cast/AdBreakStatus;Lcom/google/android/gms/cast/VideoInfo;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/cast/MediaInfo;",
            "JIDIIJJDZ[JII",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;Z",
            "Lcom/google/android/gms/cast/AdBreakStatus;",
            "Lcom/google/android/gms/cast/VideoInfo;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v1, p0

    move-object/from16 v0, p19

    move-object/from16 v2, p21

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v1, Lcom/google/android/gms/cast/MediaStatus;->zzfm:Ljava/util/ArrayList;

    .line 3
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v1, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Landroid/util/SparseArray;

    .line 4
    move-object v3, p1

    iput-object v3, v1, Lcom/google/android/gms/cast/MediaStatus;->zzdo:Lcom/google/android/gms/cast/MediaInfo;

    .line 5
    move-wide v3, p2

    iput-wide v3, v1, Lcom/google/android/gms/cast/MediaStatus;->zzfb:J

    .line 6
    move v3, p4

    iput v3, v1, Lcom/google/android/gms/cast/MediaStatus;->zzfc:I

    .line 7
    move-wide v3, p5

    iput-wide v3, v1, Lcom/google/android/gms/cast/MediaStatus;->zzdr:D

    .line 8
    move v3, p7

    iput v3, v1, Lcom/google/android/gms/cast/MediaStatus;->zzfd:I

    .line 9
    move v3, p8

    iput v3, v1, Lcom/google/android/gms/cast/MediaStatus;->zzfe:I

    .line 10
    move-wide v3, p9

    iput-wide v3, v1, Lcom/google/android/gms/cast/MediaStatus;->zzff:J

    .line 11
    move-wide/from16 v3, p11

    iput-wide v3, v1, Lcom/google/android/gms/cast/MediaStatus;->zzfg:J

    .line 12
    move-wide/from16 v3, p13

    iput-wide v3, v1, Lcom/google/android/gms/cast/MediaStatus;->zzfh:D

    .line 13
    move/from16 v3, p15

    iput-boolean v3, v1, Lcom/google/android/gms/cast/MediaStatus;->zzfi:Z

    .line 14
    move-object/from16 v3, p16

    iput-object v3, v1, Lcom/google/android/gms/cast/MediaStatus;->zzds:[J

    .line 15
    move/from16 v3, p17

    iput v3, v1, Lcom/google/android/gms/cast/MediaStatus;->zzfj:I

    .line 16
    move/from16 v3, p18

    iput v3, v1, Lcom/google/android/gms/cast/MediaStatus;->zzfk:I

    .line 17
    iput-object v0, v1, Lcom/google/android/gms/cast/MediaStatus;->zzj:Ljava/lang/String;

    .line 18
    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 19
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v4, v1, Lcom/google/android/gms/cast/MediaStatus;->zzj:Ljava/lang/String;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    iput-object v3, v1, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;

    .line 23
    iput-object v3, v1, Lcom/google/android/gms/cast/MediaStatus;->zzj:Ljava/lang/String;

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iput-object v3, v1, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;

    .line 26
    :goto_0
    move/from16 v3, p20

    iput v3, v1, Lcom/google/android/gms/cast/MediaStatus;->zzfl:I

    .line 27
    if-eqz v2, :cond_1

    invoke-interface/range {p21 .. p21}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    invoke-interface/range {p21 .. p21}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/MediaStatus;->zza([Lcom/google/android/gms/cast/MediaQueueItem;)V

    .line 29
    :cond_1
    move/from16 v2, p22

    iput-boolean v2, v1, Lcom/google/android/gms/cast/MediaStatus;->zzfn:Z

    .line 30
    move-object/from16 v2, p23

    iput-object v2, v1, Lcom/google/android/gms/cast/MediaStatus;->zzfo:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 31
    move-object/from16 v2, p24

    iput-object v2, v1, Lcom/google/android/gms/cast/MediaStatus;->zzfp:Lcom/google/android/gms/cast/VideoInfo;

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 33
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v0 .. v24}, Lcom/google/android/gms/cast/MediaStatus;-><init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/List;ZLcom/google/android/gms/cast/AdBreakStatus;Lcom/google/android/gms/cast/VideoInfo;)V

    .line 34
    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/cast/MediaStatus;->zza(Lorg/json/JSONObject;I)I

    .line 35
    return-void
.end method

.method private final zza([Lcom/google/android/gms/cast/MediaQueueItem;)V
    .locals 4

    .line 286
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 287
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 288
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 289
    aget-object v1, p1, v0

    .line 290
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfm:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaQueueItem;->getItemId()I

    move-result v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    return-void
.end method

.method private static zza(IIII)Z
    .locals 2

    .line 274
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    .line 275
    return v0

    .line 276
    :cond_0
    if-eq p1, v1, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_3

    .line 279
    return v1

    .line 278
    :cond_1
    if-eq p3, p0, :cond_2

    return v1

    :cond_2
    return v0

    .line 277
    :cond_3
    if-nez p2, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method private static zzj(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6

    .line 255
    const-string v0, "extendedStatus"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 256
    if-nez v1, :cond_0

    .line 257
    return-object p0

    .line 258
    :cond_0
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 259
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 260
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 261
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 262
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-direct {v3, p0, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 263
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 264
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 265
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 266
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    goto :goto_1

    .line 268
    :cond_2
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    return-object v3

    .line 270
    :catch_0
    move-exception v0

    .line 271
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 294
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 295
    return v0

    .line 296
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaStatus;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 297
    return v2

    .line 298
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaStatus;

    .line 299
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    if-eq v1, v3, :cond_4

    .line 300
    return v2

    .line 301
    :cond_4
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfb:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->zzfb:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfc:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzfc:I

    if-ne v1, v3, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdr:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->zzdr:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfd:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzfd:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfe:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzfe:I

    if-ne v1, v3, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzff:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->zzff:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfh:D

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaStatus;->zzfh:D

    cmpl-double v1, v3, v5

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfi:Z

    iget-boolean v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzfi:Z

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfj:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzfj:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfk:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzfk:I

    if-ne v1, v3, :cond_6

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfl:I

    iget v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzfl:I

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzds:[J

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzds:[J

    .line 302
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfg:J

    .line 303
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzfg:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfm:Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzfm:Ljava/util/ArrayList;

    .line 304
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdo:Lcom/google/android/gms/cast/MediaInfo;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzdo:Lcom/google/android/gms/cast/MediaInfo;

    .line 305
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 306
    nop

    .line 307
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;

    if-eqz v3, :cond_5

    .line 308
    invoke-static {v1, v3}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 309
    move v1, v2

    goto :goto_2

    .line 310
    :cond_5
    move v1, v0

    .line 311
    :goto_2
    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfn:Z

    .line 312
    invoke-virtual {p1}, Lcom/google/android/gms/cast/MediaStatus;->isPlayingAd()Z

    move-result v3

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfo:Lcom/google/android/gms/cast/AdBreakStatus;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzfo:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 313
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfp:Lcom/google/android/gms/cast/VideoInfo;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzfp:Lcom/google/android/gms/cast/VideoInfo;

    .line 314
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfq:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    iget-object v3, p1, Lcom/google/android/gms/cast/MediaStatus;->zzfq:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 315
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    iget-object p1, p1, Lcom/google/android/gms/cast/MediaStatus;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    .line 316
    invoke-static {v1, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    nop

    .line 317
    return v2
.end method

.method public getActiveTrackIds()[J
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzds:[J

    return-object v0
.end method

.method public getAdBreakStatus()Lcom/google/android/gms/cast/AdBreakStatus;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfo:Lcom/google/android/gms/cast/AdBreakStatus;

    return-object v0
.end method

.method public getCurrentAdBreak()Lcom/google/android/gms/cast/AdBreakInfo;
    .locals 5

    .line 389
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfo:Lcom/google/android/gms/cast/AdBreakStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdo:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v2, :cond_0

    goto :goto_2

    .line 391
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/AdBreakStatus;->getBreakId()Ljava/lang/String;

    move-result-object v0

    .line 392
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    return-object v1

    .line 394
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdo:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaInfo;->getAdBreaks()Ljava/util/List;

    move-result-object v2

    .line 395
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 397
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/AdBreakInfo;

    .line 398
    invoke-virtual {v3}, Lcom/google/android/gms/cast/AdBreakInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 399
    return-object v3

    .line 400
    :cond_3
    goto :goto_0

    .line 401
    :cond_4
    return-object v1

    .line 396
    :cond_5
    :goto_1
    return-object v1

    .line 390
    :cond_6
    :goto_2
    return-object v1
.end method

.method public getCurrentAdBreakClip()Lcom/google/android/gms/cast/AdBreakClipInfo;
    .locals 5

    .line 402
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfo:Lcom/google/android/gms/cast/AdBreakStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdo:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v2, :cond_0

    goto :goto_2

    .line 404
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/AdBreakStatus;->getBreakClipId()Ljava/lang/String;

    move-result-object v0

    .line 405
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 406
    return-object v1

    .line 407
    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdo:Lcom/google/android/gms/cast/MediaInfo;

    invoke-virtual {v2}, Lcom/google/android/gms/cast/MediaInfo;->getAdBreakClips()Ljava/util/List;

    move-result-object v2

    .line 408
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 410
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/AdBreakClipInfo;

    .line 411
    invoke-virtual {v3}, Lcom/google/android/gms/cast/AdBreakClipInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 412
    return-object v3

    .line 413
    :cond_3
    goto :goto_0

    .line 414
    :cond_4
    return-object v1

    .line 409
    :cond_5
    :goto_1
    return-object v1

    .line 403
    :cond_6
    :goto_2
    return-object v1
.end method

.method public getCurrentItemId()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfc:I

    return v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getIdleReason()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfe:I

    return v0
.end method

.method public getIndexById(I)Ljava/lang/Integer;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method public getItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 281
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfm:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/MediaQueueItem;

    return-object p1
.end method

.method public getItemByIndex(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 1

    .line 282
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfm:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/MediaQueueItem;

    return-object p1

    .line 283
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLiveSeekableRange()Lcom/google/android/gms/cast/MediaLiveSeekableRange;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfq:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    return-object v0
.end method

.method public getLoadingItemId()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfj:I

    return v0
.end method

.method public getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdo:Lcom/google/android/gms/cast/MediaInfo;

    return-object v0
.end method

.method public getPlaybackRate()D
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdr:D

    return-wide v0
.end method

.method public getPlayerState()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfd:I

    return v0
.end method

.method public getPreloadedItemId()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfk:I

    return v0
.end method

.method public getQueueData()Lcom/google/android/gms/cast/MediaQueueData;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    return-object v0
.end method

.method public getQueueItem(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 0

    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/MediaStatus;->getItemByIndex(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object p1

    return-object p1
.end method

.method public getQueueItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/gms/cast/MediaStatus;->getItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object p1

    return-object p1
.end method

.method public getQueueItemCount()I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getQueueItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/cast/MediaQueueItem;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfm:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getQueueRepeatMode()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfl:I

    return v0
.end method

.method public getStreamPosition()J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzff:J

    return-wide v0
.end method

.method public getStreamVolume()D
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfh:D

    return-wide v0
.end method

.method public getVideoInfo()Lcom/google/android/gms/cast/VideoInfo;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfp:Lcom/google/android/gms/cast/VideoInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 318
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdo:Lcom/google/android/gms/cast/MediaInfo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfb:J

    .line 319
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfc:I

    .line 320
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdr:D

    .line 321
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfd:I

    .line 322
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfe:I

    .line 323
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzff:J

    .line 324
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfg:J

    .line 325
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfh:D

    .line 326
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfi:Z

    .line 327
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzds:[J

    .line 328
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfj:I

    .line 329
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfk:I

    .line 330
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;

    .line 331
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfl:I

    .line 332
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfm:Ljava/util/ArrayList;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfn:Z

    .line 333
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfo:Lcom/google/android/gms/cast/AdBreakStatus;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfp:Lcom/google/android/gms/cast/VideoInfo;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfq:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 334
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isMediaCommandSupported(J)Z
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfg:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isMute()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfi:Z

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfn:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 335
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzj:Ljava/lang/String;

    .line 336
    nop

    .line 337
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 338
    const/4 v1, 0x2

    .line 339
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getMediaInfo()Lcom/google/android/gms/cast/MediaInfo;

    move-result-object v2

    .line 340
    const/4 v3, 0x0

    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 341
    const/4 v1, 0x3

    .line 342
    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfb:J

    .line 343
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 344
    const/4 v1, 0x4

    .line 345
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getCurrentItemId()I

    move-result v2

    .line 346
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 347
    const/4 v1, 0x5

    .line 348
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getPlaybackRate()D

    move-result-wide v4

    .line 349
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 350
    const/4 v1, 0x6

    .line 351
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getPlayerState()I

    move-result v2

    .line 352
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 353
    const/4 v1, 0x7

    .line 354
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getIdleReason()I

    move-result v2

    .line 355
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 356
    const/16 v1, 0x8

    .line 357
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getStreamPosition()J

    move-result-wide v4

    .line 358
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 359
    const/16 v1, 0x9

    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfg:J

    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 360
    const/16 v1, 0xa

    .line 361
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getStreamVolume()D

    move-result-wide v4

    .line 362
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 363
    const/16 v1, 0xb

    .line 364
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->isMute()Z

    move-result v2

    .line 365
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 366
    const/16 v1, 0xc

    .line 367
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getActiveTrackIds()[J

    move-result-object v2

    .line 368
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLongArray(Landroid/os/Parcel;I[JZ)V

    .line 369
    const/16 v1, 0xd

    .line 370
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getLoadingItemId()I

    move-result v2

    .line 371
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 372
    const/16 v1, 0xe

    .line 373
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getPreloadedItemId()I

    move-result v2

    .line 374
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 375
    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzj:Ljava/lang/String;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 376
    const/16 v1, 0x10

    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfl:I

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 377
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfm:Ljava/util/ArrayList;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 378
    const/16 v1, 0x12

    .line 379
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->isPlayingAd()Z

    move-result v2

    .line 380
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 381
    const/16 v1, 0x13

    .line 382
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getAdBreakStatus()Lcom/google/android/gms/cast/AdBreakStatus;

    move-result-object v2

    .line 383
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 384
    const/16 v1, 0x14

    .line 385
    invoke-virtual {p0}, Lcom/google/android/gms/cast/MediaStatus;->getVideoInfo()Lcom/google/android/gms/cast/VideoInfo;

    move-result-object v2

    .line 386
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 387
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 388
    return-void
.end method

.method public final zza(Lorg/json/JSONObject;I)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 62
    invoke-static {p1}, Lcom/google/android/gms/cast/MediaStatus;->zzj(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    .line 63
    nop

    .line 64
    const-string v0, "mediaSessionId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 65
    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfb:J

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 66
    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfb:J

    .line 67
    move v0, v4

    goto :goto_0

    .line 65
    :cond_0
    move v0, v3

    .line 68
    :goto_0
    const-string v1, "playerState"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 69
    nop

    .line 70
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    const-string v2, "IDLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    if-eqz v2, :cond_1

    .line 72
    move v1, v4

    goto :goto_1

    .line 73
    :cond_1
    const-string v2, "PLAYING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    move v1, v7

    goto :goto_1

    .line 75
    :cond_2
    const-string v2, "PAUSED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    move v1, v5

    goto :goto_1

    .line 77
    :cond_3
    const-string v2, "BUFFERING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 78
    move v1, v6

    goto :goto_1

    .line 79
    :cond_4
    const-string v2, "LOADING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 80
    const/4 v1, 0x5

    goto :goto_1

    .line 79
    :cond_5
    move v1, v3

    .line 81
    :goto_1
    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfd:I

    if-eq v1, v2, :cond_6

    .line 82
    iput v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfd:I

    .line 83
    or-int/lit8 v0, v0, 0x2

    .line 84
    :cond_6
    if-ne v1, v4, :cond_b

    const-string v1, "idleReason"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 85
    nop

    .line 86
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v2, "CANCELLED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 88
    move v5, v7

    goto :goto_2

    .line 89
    :cond_7
    const-string v2, "INTERRUPTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 90
    goto :goto_2

    .line 91
    :cond_8
    const-string v2, "FINISHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 92
    move v5, v4

    goto :goto_2

    .line 93
    :cond_9
    const-string v2, "ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 94
    move v5, v6

    goto :goto_2

    .line 93
    :cond_a
    move v5, v3

    .line 95
    :goto_2
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfe:I

    if-eq v5, v1, :cond_b

    .line 96
    iput v5, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfe:I

    .line 97
    or-int/lit8 v0, v0, 0x2

    .line 98
    :cond_b
    const-string v1, "playbackRate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 99
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 100
    iget-wide v5, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdr:D

    cmpl-double v5, v5, v1

    if-eqz v5, :cond_c

    .line 101
    iput-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdr:D

    .line 102
    or-int/lit8 v0, v0, 0x2

    .line 103
    :cond_c
    const-string v1, "currentTime"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 104
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 105
    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v5

    double-to-long v1, v1

    .line 106
    nop

    .line 107
    iget-wide v5, p0, Lcom/google/android/gms/cast/MediaStatus;->zzff:J

    cmp-long v5, v1, v5

    if-eqz v5, :cond_d

    .line 108
    iput-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzff:J

    .line 109
    or-int/lit8 v0, v0, 0x2

    .line 110
    :cond_d
    or-int/lit16 v0, v0, 0x80

    .line 111
    :cond_e
    const-string v1, "supportedMediaCommands"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 112
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 113
    iget-wide v5, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfg:J

    cmp-long v5, v1, v5

    if-eqz v5, :cond_f

    .line 114
    iput-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfg:J

    .line 115
    or-int/lit8 v0, v0, 0x2

    .line 116
    :cond_f
    const-string/jumbo v1, "volume"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    and-int/2addr p2, v4

    if-nez p2, :cond_11

    .line 117
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 118
    const-string v1, "level"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 119
    iget-wide v5, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfh:D

    cmpl-double v5, v1, v5

    if-eqz v5, :cond_10

    .line 120
    iput-wide v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfh:D

    .line 121
    or-int/lit8 v0, v0, 0x2

    .line 122
    :cond_10
    const-string v1, "muted"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 123
    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfi:Z

    if-eq p2, v1, :cond_11

    .line 124
    iput-boolean p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfi:Z

    .line 125
    or-int/lit8 v0, v0, 0x2

    .line 126
    :cond_11
    nop

    .line 127
    nop

    .line 128
    const-string p2, "activeTrackIds"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    .line 129
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    .line 130
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 131
    new-array v5, v1, [J

    .line 132
    move v6, v3

    :goto_3
    if-ge v6, v1, :cond_12

    .line 133
    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getLong(I)J

    move-result-wide v7

    aput-wide v7, v5, v6

    .line 134
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 135
    :cond_12
    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzds:[J

    if-nez p2, :cond_13

    .line 136
    move p2, v4

    goto :goto_5

    .line 137
    :cond_13
    array-length p2, p2

    if-eq p2, v1, :cond_14

    .line 138
    move p2, v4

    goto :goto_5

    .line 139
    :cond_14
    move p2, v3

    :goto_4
    if-ge p2, v1, :cond_16

    .line 140
    iget-object v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzds:[J

    aget-wide v7, v6, p2

    aget-wide v9, v5, p2

    cmp-long v6, v7, v9

    if-eqz v6, :cond_15

    .line 141
    nop

    .line 142
    move p2, v4

    goto :goto_5

    .line 143
    :cond_15
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 139
    :cond_16
    move p2, v3

    .line 144
    :goto_5
    if-eqz p2, :cond_17

    .line 145
    iput-object v5, p0, Lcom/google/android/gms/cast/MediaStatus;->zzds:[J

    .line 146
    :cond_17
    goto :goto_6

    .line 147
    :cond_18
    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzds:[J

    if-eqz p2, :cond_19

    .line 148
    move-object v5, v2

    move p2, v4

    goto :goto_6

    .line 147
    :cond_19
    move-object v5, v2

    move p2, v3

    .line 149
    :goto_6
    if-eqz p2, :cond_1a

    .line 150
    iput-object v5, p0, Lcom/google/android/gms/cast/MediaStatus;->zzds:[J

    .line 151
    or-int/lit8 v0, v0, 0x2

    .line 152
    :cond_1a
    const-string p2, "customData"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 153
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzp:Lorg/json/JSONObject;

    .line 154
    iput-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzj:Ljava/lang/String;

    .line 155
    or-int/lit8 v0, v0, 0x2

    .line 156
    :cond_1b
    const-string p2, "media"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 157
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    .line 158
    new-instance v1, Lcom/google/android/gms/cast/MediaInfo;

    invoke-direct {v1, p2}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Lorg/json/JSONObject;)V

    .line 159
    iget-object v5, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdo:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v5, :cond_1c

    if-eqz v5, :cond_1d

    .line 160
    invoke-virtual {v5, v1}, Lcom/google/android/gms/cast/MediaInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 161
    :cond_1c
    iput-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdo:Lcom/google/android/gms/cast/MediaInfo;

    .line 162
    or-int/lit8 v0, v0, 0x2

    .line 163
    :cond_1d
    const-string v1, "metadata"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1e

    .line 164
    or-int/lit8 v0, v0, 0x4

    .line 165
    :cond_1e
    const-string p2, "currentItemId"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 166
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 167
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfc:I

    if-eq v1, p2, :cond_1f

    .line 168
    iput p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfc:I

    .line 169
    or-int/lit8 v0, v0, 0x2

    .line 170
    :cond_1f
    const-string p2, "preloadedItemId"

    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    .line 171
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfk:I

    if-eq v1, p2, :cond_20

    .line 172
    iput p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfk:I

    .line 173
    or-int/lit8 v0, v0, 0x10

    .line 174
    :cond_20
    const-string p2, "loadingItemId"

    invoke-virtual {p1, p2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    .line 175
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfj:I

    if-eq v1, p2, :cond_21

    .line 176
    iput p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfj:I

    .line 177
    or-int/lit8 v0, v0, 0x2

    .line 178
    :cond_21
    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdo:Lcom/google/android/gms/cast/MediaInfo;

    if-nez p2, :cond_22

    const/4 p2, -0x1

    goto :goto_7

    :cond_22
    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result p2

    .line 179
    :goto_7
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfd:I

    iget v5, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfe:I

    iget v6, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfj:I

    invoke-static {v1, v5, v6, p2}, Lcom/google/android/gms/cast/MediaStatus;->zza(IIII)Z

    move-result p2

    if-nez p2, :cond_2c

    .line 180
    nop

    .line 181
    nop

    .line 182
    const-string p2, "repeatMode"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 183
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 184
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/zzdv;->zzw(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 185
    if-nez p2, :cond_23

    iget p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfl:I

    goto :goto_8

    :cond_23
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :goto_8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 186
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfl:I

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v1, v5, :cond_24

    .line 187
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfl:I

    .line 188
    move p2, v4

    goto :goto_9

    .line 189
    :cond_24
    move p2, v3

    :goto_9
    const-string v1, "items"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 190
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 191
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 192
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 193
    move v7, v3

    :goto_a
    if-ge v7, v5, :cond_25

    .line 194
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "itemId"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 195
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 196
    :cond_25
    new-array v7, v5, [Lcom/google/android/gms/cast/MediaQueueItem;

    .line 197
    move v8, v3

    :goto_b
    if-ge v8, v5, :cond_29

    .line 198
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 199
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 200
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/google/android/gms/cast/MediaStatus;->getItemById(I)Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object v11

    .line 201
    if-eqz v11, :cond_26

    .line 202
    invoke-virtual {v11, v10}, Lcom/google/android/gms/cast/MediaQueueItem;->zzi(Lorg/json/JSONObject;)Z

    move-result v10

    or-int/2addr p2, v10

    .line 203
    aput-object v11, v7, v8

    .line 204
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/google/android/gms/cast/MediaStatus;->getIndexById(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eq v8, v9, :cond_28

    .line 205
    move p2, v4

    goto :goto_d

    .line 206
    :cond_26
    nop

    .line 207
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iget v9, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfc:I

    if-ne p2, v9, :cond_27

    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdo:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz p2, :cond_27

    .line 208
    new-instance v9, Lcom/google/android/gms/cast/MediaQueueItem$Builder;

    invoke-direct {v9, p2}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;-><init>(Lcom/google/android/gms/cast/MediaInfo;)V

    invoke-virtual {v9}, Lcom/google/android/gms/cast/MediaQueueItem$Builder;->build()Lcom/google/android/gms/cast/MediaQueueItem;

    move-result-object p2

    aput-object p2, v7, v8

    .line 209
    aget-object p2, v7, v8

    invoke-virtual {p2, v10}, Lcom/google/android/gms/cast/MediaQueueItem;->zzi(Lorg/json/JSONObject;)Z

    goto :goto_c

    .line 210
    :cond_27
    new-instance p2, Lcom/google/android/gms/cast/MediaQueueItem;

    invoke-direct {p2, v10}, Lcom/google/android/gms/cast/MediaQueueItem;-><init>(Lorg/json/JSONObject;)V

    aput-object p2, v7, v8

    .line 211
    :goto_c
    move p2, v4

    :cond_28
    :goto_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 212
    :cond_29
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfm:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v1, v5, :cond_2a

    .line 213
    move p2, v4

    .line 214
    :cond_2a
    invoke-direct {p0, v7}, Lcom/google/android/gms/cast/MediaStatus;->zza([Lcom/google/android/gms/cast/MediaQueueItem;)V

    .line 215
    :cond_2b
    nop

    .line 216
    if-eqz p2, :cond_2d

    .line 217
    or-int/lit8 v0, v0, 0x8

    goto :goto_e

    .line 218
    :cond_2c
    iput v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfc:I

    .line 219
    iput v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfj:I

    .line 220
    iput v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfk:I

    .line 221
    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfm:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2d

    .line 222
    nop

    .line 223
    iput v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfl:I

    .line 224
    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfm:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 225
    iget-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfr:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 226
    or-int/lit8 v0, v0, 0x8

    .line 227
    :cond_2d
    :goto_e
    const-string p2, "breakStatus"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/cast/AdBreakStatus;->zzc(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/AdBreakStatus;

    move-result-object p2

    .line 228
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfo:Lcom/google/android/gms/cast/AdBreakStatus;

    if-nez v1, :cond_2e

    if-nez p2, :cond_2f

    :cond_2e
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfo:Lcom/google/android/gms/cast/AdBreakStatus;

    if-eqz v1, :cond_31

    .line 229
    invoke-virtual {v1, p2}, Lcom/google/android/gms/cast/AdBreakStatus;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 230
    :cond_2f
    if-eqz p2, :cond_30

    move v3, v4

    .line 231
    :cond_30
    iput-boolean v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfn:Z

    .line 232
    iput-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfo:Lcom/google/android/gms/cast/AdBreakStatus;

    .line 233
    or-int/lit8 v0, v0, 0x20

    .line 234
    :cond_31
    const-string/jumbo p2, "videoInfo"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/cast/VideoInfo;->zzk(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/VideoInfo;

    move-result-object p2

    .line 235
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfp:Lcom/google/android/gms/cast/VideoInfo;

    if-nez v1, :cond_32

    if-nez p2, :cond_33

    :cond_32
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfp:Lcom/google/android/gms/cast/VideoInfo;

    if-eqz v1, :cond_34

    .line 236
    invoke-virtual {v1, p2}, Lcom/google/android/gms/cast/VideoInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 237
    :cond_33
    iput-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfp:Lcom/google/android/gms/cast/VideoInfo;

    .line 238
    or-int/lit8 v0, v0, 0x40

    .line 239
    :cond_34
    const-string p2, "breakInfo"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdo:Lcom/google/android/gms/cast/MediaInfo;

    if-eqz v1, :cond_35

    .line 240
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/cast/MediaInfo;->zzd(Lorg/json/JSONObject;)V

    .line 241
    or-int/lit8 v0, v0, 0x2

    .line 242
    :cond_35
    sget-boolean p2, Lcom/google/android/gms/internal/cast/zzdl;->zzaaa:Z

    if-eqz p2, :cond_36

    .line 243
    const-string p2, "queueData"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 244
    new-instance v1, Lcom/google/android/gms/cast/MediaQueueData$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/cast/MediaQueueData$Builder;-><init>()V

    .line 245
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/google/android/gms/cast/MediaQueueData$Builder;->zzh(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaQueueData$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/cast/MediaQueueData$Builder;->build()Lcom/google/android/gms/cast/MediaQueueData;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdy:Lcom/google/android/gms/cast/MediaQueueData;

    .line 246
    :cond_36
    sget-boolean p2, Lcom/google/android/gms/internal/cast/zzdl;->zzaaa:Z

    if-eqz p2, :cond_39

    .line 247
    const-string p2, "liveSeekableRange"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 248
    nop

    .line 249
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->zze(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfq:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 250
    or-int/lit8 v0, v0, 0x2

    goto :goto_f

    .line 251
    :cond_37
    iget-object p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfq:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    if-eqz p1, :cond_38

    .line 252
    or-int/lit8 p1, v0, 0x2

    move v0, p1

    .line 253
    :cond_38
    iput-object v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfq:Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 254
    :cond_39
    :goto_f
    return v0
.end method

.method public final zzf(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfn:Z

    .line 57
    return-void
.end method

.method public final zzk()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfb:J

    return-wide v0
.end method

.method public final zzl()Z
    .locals 4

    .line 272
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaStatus;->zzdo:Lcom/google/android/gms/cast/MediaInfo;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/cast/MediaInfo;->getStreamType()I

    move-result v0

    .line 273
    :goto_0
    iget v1, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfd:I

    iget v2, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfe:I

    iget v3, p0, Lcom/google/android/gms/cast/MediaStatus;->zzfj:I

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/gms/cast/MediaStatus;->zza(IIII)Z

    move-result v0

    return v0
.end method
