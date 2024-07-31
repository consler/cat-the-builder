.class public Lcom/google/android/gms/cast/MediaLoadOptions;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaLoadOptions$Builder;
    }
.end annotation


# static fields
.field public static final PLAYBACK_RATE_MAX:D = 2.0

.field public static final PLAYBACK_RATE_MIN:D = 0.5


# instance fields
.field private zzdp:Z

.field private zzdq:J

.field private zzdr:D

.field private zzds:[J

.field private zzdt:Ljava/lang/String;

.field private zzdu:Ljava/lang/String;

.field private zzp:Lorg/json/JSONObject;


# direct methods
.method private constructor <init>(ZJD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzdp:Z

    .line 3
    iput-wide p2, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzdq:J

    .line 4
    iput-wide p4, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzdr:D

    .line 5
    iput-object p6, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzds:[J

    .line 6
    iput-object p7, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzp:Lorg/json/JSONObject;

    .line 7
    iput-object p8, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzdt:Ljava/lang/String;

    .line 8
    iput-object p9, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzdu:Ljava/lang/String;

    .line 9
    return-void
.end method

.method synthetic constructor <init>(ZJD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzak;)V
    .locals 0

    .line 17
    invoke-direct/range {p0 .. p9}, Lcom/google/android/gms/cast/MediaLoadOptions;-><init>(ZJD[JLorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getActiveTrackIds()[J
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzds:[J

    return-object v0
.end method

.method public getAutoplay()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzdp:Z

    return v0
.end method

.method public getCredentials()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzdt:Ljava/lang/String;

    return-object v0
.end method

.method public getCredentialsType()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzdu:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomData()Lorg/json/JSONObject;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzp:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPlayPosition()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzdq:J

    return-wide v0
.end method

.method public getPlaybackRate()D
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaLoadOptions;->zzdr:D

    return-wide v0
.end method
