.class public Lcom/google/android/gms/cast/MediaLiveSeekableRange;
.super Ljava/lang/Object;


# static fields
.field private static final zzbf:Lcom/google/android/gms/internal/cast/zzdo;


# instance fields
.field private final startTime:J

.field private final zzdv:J

.field private final zzdw:Z

.field private final zzdx:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdo;

    const-string v1, "MediaLiveSeekableRange"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    return-void
.end method

.method private constructor <init>(JJZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->startTime:J

    .line 3
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->zzdv:J

    .line 4
    iput-boolean p5, p0, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->zzdw:Z

    .line 5
    iput-boolean p6, p0, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->zzdx:Z

    .line 6
    return-void
.end method

.method static zze(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaLiveSeekableRange;
    .locals 14

    .line 18
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 19
    return-object v0

    .line 20
    :cond_0
    const-string v1, "start"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "end"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 22
    :cond_1
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 23
    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v5

    double-to-long v8, v3

    .line 24
    nop

    .line 25
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 26
    mul-double/2addr v1, v5

    double-to-long v10, v1

    .line 27
    nop

    .line 28
    const-string v1, "isMovingWindow"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 29
    const-string v1, "isLiveDone"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 30
    new-instance v1, Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Lcom/google/android/gms/cast/MediaLiveSeekableRange;-><init>(JJZZ)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 31
    :catch_0
    move-exception v1

    .line 32
    sget-object v1, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->zzbf:Lcom/google/android/gms/internal/cast/zzdo;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Ignoring Malformed MediaLiveSeekableRange: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/internal/cast/zzdo;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    return-object v0

    .line 21
    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 12
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 13
    return v0

    .line 14
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 15
    return v2

    .line 16
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaLiveSeekableRange;

    .line 17
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->startTime:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->startTime:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->zzdv:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->zzdv:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->zzdw:Z

    iget-boolean v3, p1, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->zzdw:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->zzdx:Z

    iget-boolean p1, p1, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->zzdx:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public getEndTime()J
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->zzdv:J

    return-wide v0
.end method

.method public getStartTime()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->startTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 11
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->startTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->zzdv:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->zzdw:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->zzdx:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isLiveDone()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->zzdx:Z

    return v0
.end method

.method public isMovingWindow()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/cast/MediaLiveSeekableRange;->zzdw:Z

    return v0
.end method
