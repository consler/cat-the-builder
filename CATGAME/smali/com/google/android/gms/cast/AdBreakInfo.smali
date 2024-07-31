.class public Lcom/google/android/gms/cast/AdBreakInfo;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/AdBreakInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/AdBreakInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zze:Ljava/lang/String;

.field private final zzg:J

.field private final zzq:J

.field private final zzr:Z

.field private zzs:[Ljava/lang/String;

.field private final zzt:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/google/android/gms/cast/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/AdBreakInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;JZ[Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzq:J

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zze:Ljava/lang/String;

    .line 4
    iput-wide p4, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzg:J

    .line 5
    iput-boolean p6, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzr:Z

    .line 6
    iput-object p7, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzs:[Ljava/lang/String;

    .line 7
    iput-boolean p8, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzt:Z

    .line 8
    return-void
.end method

.method static zzb(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/AdBreakInfo;
    .locals 13

    .line 46
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 47
    return-object v0

    .line 48
    :cond_0
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "position"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    .line 50
    :cond_1
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 51
    nop

    .line 52
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-double v1, v1

    .line 53
    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v1, v4

    double-to-long v1, v1

    .line 54
    nop

    .line 55
    const-string v6, "isWatched"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 56
    const-string v6, "duration"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    long-to-double v8, v8

    .line 57
    mul-double/2addr v8, v4

    double-to-long v8, v8

    .line 58
    nop

    .line 59
    const-string v4, "breakClipIds"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 60
    nop

    .line 61
    if-eqz v4, :cond_3

    .line 62
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 63
    move v6, v3

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v6, v11, :cond_2

    .line 64
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v6

    .line 65
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 63
    :cond_2
    move-object v11, v5

    goto :goto_1

    .line 61
    :cond_3
    move-object v11, v0

    .line 66
    :goto_1
    const-string v4, "isEmbedded"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 67
    new-instance p0, Lcom/google/android/gms/cast/AdBreakInfo;

    move-object v4, p0

    move-wide v5, v1

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/cast/AdBreakInfo;-><init>(JLjava/lang/String;JZ[Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 68
    :catch_0
    move-exception p0

    .line 69
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 70
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v3

    .line 71
    const-string p0, "Error while creating an AdBreakInfo from JSON: %s"

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 72
    const-string v1, "AdBreakInfo"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-object v0

    .line 49
    :cond_4
    :goto_2
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 38
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 39
    return v0

    .line 40
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/AdBreakInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 41
    return v2

    .line 42
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/AdBreakInfo;

    .line 43
    iget-object v1, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zze:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/AdBreakInfo;->zze:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzq:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/AdBreakInfo;->zzq:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzg:J

    iget-wide v5, p1, Lcom/google/android/gms/cast/AdBreakInfo;->zzg:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzr:Z

    iget-boolean v3, p1, Lcom/google/android/gms/cast/AdBreakInfo;->zzr:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzs:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/cast/AdBreakInfo;->zzs:[Ljava/lang/String;

    .line 44
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzt:Z

    iget-boolean p1, p1, Lcom/google/android/gms/cast/AdBreakInfo;->zzt:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    nop

    .line 45
    return v2
.end method

.method public getBreakClipIds()[Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzs:[Ljava/lang/String;

    return-object v0
.end method

.method public getDurationInMs()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzg:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zze:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackPositionInMs()J
    .locals 2

    .line 9
    iget-wide v0, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzq:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zze:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmbedded()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzt:Z

    return v0
.end method

.method public isWatched()Z
    .locals 1

    .line 12
    iget-boolean v0, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzr:Z

    return v0
.end method

.method public final toJson()Lorg/json/JSONObject;
    .locals 6

    .line 74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 75
    :try_start_0
    const-string v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zze:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v1, "position"

    iget-wide v2, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzq:J

    .line 77
    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    .line 78
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 79
    const-string v1, "isWatched"

    iget-boolean v2, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzr:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 80
    const-string v1, "isEmbedded"

    iget-boolean v2, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzt:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 81
    const-string v1, "duration"

    iget-wide v2, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzg:J

    .line 82
    long-to-double v2, v2

    div-double/2addr v2, v4

    .line 83
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 84
    iget-object v1, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzs:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 85
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 86
    iget-object v2, p0, Lcom/google/android/gms/cast/AdBreakInfo;->zzs:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 87
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 88
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 89
    :cond_0
    const-string v2, "breakClipIds"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_1
    goto :goto_1

    .line 91
    :catch_0
    move-exception v1

    .line 92
    :goto_1
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 15
    nop

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 17
    nop

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/cast/AdBreakInfo;->getPlaybackPositionInMs()J

    move-result-wide v0

    .line 19
    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 20
    nop

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/cast/AdBreakInfo;->getId()Ljava/lang/String;

    move-result-object v0

    .line 22
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 23
    nop

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/cast/AdBreakInfo;->getDurationInMs()J

    move-result-wide v0

    .line 25
    const/4 v3, 0x4

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 26
    nop

    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/cast/AdBreakInfo;->isWatched()Z

    move-result v0

    .line 28
    const/4 v1, 0x5

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 29
    nop

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/cast/AdBreakInfo;->getBreakClipIds()[Ljava/lang/String;

    move-result-object v0

    .line 31
    const/4 v1, 0x6

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringArray(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    .line 32
    nop

    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/cast/AdBreakInfo;->isEmbedded()Z

    move-result v0

    .line 34
    const/4 v1, 0x7

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 35
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 36
    return-void
.end method
