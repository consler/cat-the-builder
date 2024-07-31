.class public Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/AdBreakClipInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mimeType:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:J

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;

.field private zzl:Ljava/lang/String;

.field private zzm:J

.field private zzn:Ljava/lang/String;

.field private zzo:Lcom/google/android/gms/cast/VastAdsRequest;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zze:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzf:Ljava/lang/String;

    .line 4
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzg:J

    .line 5
    iput-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzh:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->mimeType:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzi:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzj:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzk:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzl:Ljava/lang/String;

    .line 11
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzm:J

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzo:Lcom/google/android/gms/cast/VastAdsRequest;

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zze:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/AdBreakClipInfo;
    .locals 17

    .line 37
    move-object/from16 v0, p0

    new-instance v16, Lcom/google/android/gms/cast/AdBreakClipInfo;

    iget-object v2, v0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zze:Ljava/lang/String;

    iget-object v3, v0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzf:Ljava/lang/String;

    iget-wide v4, v0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzg:J

    iget-object v6, v0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzh:Ljava/lang/String;

    iget-object v7, v0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->mimeType:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzi:Ljava/lang/String;

    iget-object v9, v0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzj:Ljava/lang/String;

    iget-object v10, v0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzk:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzl:Ljava/lang/String;

    iget-wide v12, v0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzm:J

    iget-object v14, v0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzn:Ljava/lang/String;

    iget-object v15, v0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzo:Lcom/google/android/gms/cast/VastAdsRequest;

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/cast/AdBreakClipInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/cast/VastAdsRequest;)V

    return-object v16
.end method

.method public setClickThroughUrl(Ljava/lang/String;)Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzi:Ljava/lang/String;

    .line 24
    return-object p0
.end method

.method public setContentId(Ljava/lang/String;)Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzk:Ljava/lang/String;

    .line 28
    return-object p0
.end method

.method public setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzh:Ljava/lang/String;

    .line 20
    return-object p0
.end method

.method public setCustomDataJsonString(Ljava/lang/String;)Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzj:Ljava/lang/String;

    .line 26
    return-object p0
.end method

.method public setDurationInMs(J)Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzg:J

    .line 18
    return-object p0
.end method

.method public setHlsSegmentFormat(Ljava/lang/String;)Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzn:Ljava/lang/String;

    .line 34
    return-object p0
.end method

.method public setImageUrl(Ljava/lang/String;)Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzl:Ljava/lang/String;

    .line 30
    return-object p0
.end method

.method public setMimeType(Ljava/lang/String;)Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->mimeType:Ljava/lang/String;

    .line 22
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzf:Ljava/lang/String;

    .line 16
    return-object p0
.end method

.method public setVastAdsRequest(Lcom/google/android/gms/cast/VastAdsRequest;)Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzo:Lcom/google/android/gms/cast/VastAdsRequest;

    .line 36
    return-object p0
.end method

.method public setWhenSkippableInMs(J)Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;
    .locals 0

    .line 31
    iput-wide p1, p0, Lcom/google/android/gms/cast/AdBreakClipInfo$Builder;->zzm:J

    .line 32
    return-object p0
.end method
