.class public Lcom/google/android/gms/cast/AdBreakInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/AdBreakInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zze:Ljava/lang/String;

.field private zzg:J

.field private zzq:J

.field private zzr:Z

.field private zzs:[Ljava/lang/String;

.field private zzt:Z


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->zzq:J

    .line 3
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->zze:Ljava/lang/String;

    .line 4
    iput-wide v0, p0, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->zzg:J

    .line 5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->zzr:Z

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->zzt:Z

    .line 7
    iput-object v2, p0, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->zzs:[Ljava/lang/String;

    .line 8
    iput-wide p1, p0, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->zzq:J

    .line 9
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/AdBreakInfo;
    .locals 10

    .line 20
    new-instance v9, Lcom/google/android/gms/cast/AdBreakInfo;

    iget-wide v1, p0, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->zzq:J

    iget-object v3, p0, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->zze:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->zzg:J

    iget-boolean v6, p0, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->zzr:Z

    iget-object v7, p0, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->zzs:[Ljava/lang/String;

    iget-boolean v8, p0, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->zzt:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/cast/AdBreakInfo;-><init>(JLjava/lang/String;JZ[Ljava/lang/String;Z)V

    return-object v9
.end method

.method public setBreakClipIds([Ljava/lang/String;)Lcom/google/android/gms/cast/AdBreakInfo$Builder;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->zzs:[Ljava/lang/String;

    .line 19
    return-object p0
.end method

.method public setDurationInMs(J)Lcom/google/android/gms/cast/AdBreakInfo$Builder;
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->zzg:J

    .line 13
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/gms/cast/AdBreakInfo$Builder;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->zze:Ljava/lang/String;

    .line 11
    return-object p0
.end method

.method public setIsEmbedded(Z)Lcom/google/android/gms/cast/AdBreakInfo$Builder;
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->zzt:Z

    .line 17
    return-object p0
.end method

.method public setIsWatched(Z)Lcom/google/android/gms/cast/AdBreakInfo$Builder;
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/google/android/gms/cast/AdBreakInfo$Builder;->zzr:Z

    .line 15
    return-object p0
.end method
