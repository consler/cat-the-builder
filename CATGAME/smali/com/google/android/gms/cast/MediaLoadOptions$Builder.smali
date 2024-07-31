.class public Lcom/google/android/gms/cast/MediaLoadOptions$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/MediaLoadOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzdp:Z

.field private zzdq:J

.field private zzdr:D

.field private zzds:[J

.field private zzdt:Ljava/lang/String;

.field private zzdu:Ljava/lang/String;

.field private zzp:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzdp:Z

    .line 3
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzdq:J

    .line 4
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzdr:D

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzds:[J

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzp:Lorg/json/JSONObject;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzdt:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzdu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/MediaLoadOptions;
    .locals 12

    .line 26
    new-instance v11, Lcom/google/android/gms/cast/MediaLoadOptions;

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzdp:Z

    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzdq:J

    iget-wide v4, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzdr:D

    iget-object v6, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzds:[J

    iget-object v7, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzp:Lorg/json/JSONObject;

    iget-object v8, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzdt:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzdu:Ljava/lang/String;

    const/4 v10, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/cast/MediaLoadOptions;-><init>(ZJD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzak;)V

    return-object v11
.end method

.method public setActiveTrackIds([J)Lcom/google/android/gms/cast/MediaLoadOptions$Builder;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzds:[J

    .line 19
    return-object p0
.end method

.method public setAutoplay(Z)Lcom/google/android/gms/cast/MediaLoadOptions$Builder;
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzdp:Z

    .line 10
    return-object p0
.end method

.method public setCredentials(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaLoadOptions$Builder;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzdt:Ljava/lang/String;

    .line 23
    return-object p0
.end method

.method public setCredentialsType(Ljava/lang/String;)Lcom/google/android/gms/cast/MediaLoadOptions$Builder;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzdu:Ljava/lang/String;

    .line 25
    return-object p0
.end method

.method public setCustomData(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaLoadOptions$Builder;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzp:Lorg/json/JSONObject;

    .line 21
    return-object p0
.end method

.method public setPlayPosition(J)Lcom/google/android/gms/cast/MediaLoadOptions$Builder;
    .locals 0

    .line 11
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzdq:J

    .line 12
    return-object p0
.end method

.method public setPlaybackRate(D)Lcom/google/android/gms/cast/MediaLoadOptions$Builder;
    .locals 2

    .line 13
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 14
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-ltz v0, :cond_0

    .line 16
    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaLoadOptions$Builder;->zzdr:D

    .line 17
    return-object p0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "playbackRate must be between PLAYBACK_RATE_MIN and PLAYBACK_RATE_MAX"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
