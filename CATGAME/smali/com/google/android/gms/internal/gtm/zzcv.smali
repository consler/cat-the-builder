.class final Lcom/google/android/gms/internal/gtm/zzcv;
.super Ljava/lang/Object;


# instance fields
.field private startTime:J

.field private final zzsd:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zzsd:Lcom/google/android/gms/common/util/Clock;

    .line 4
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/util/Clock;J)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zzsd:Lcom/google/android/gms/common/util/Clock;

    .line 8
    iput-wide p2, p0, Lcom/google/android/gms/internal/gtm/zzcv;->startTime:J

    .line 9
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 12
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->startTime:J

    .line 13
    return-void
.end method

.method public final start()V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zzsd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->startTime:J

    .line 11
    return-void
.end method

.method public final zzj(J)Z
    .locals 6

    .line 14
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 15
    return v1

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzcv;->zzsd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/gtm/zzcv;->startTime:J

    sub-long/2addr v2, v4

    cmp-long p1, v2, p1

    if-lez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
