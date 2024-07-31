.class final Lcom/google/android/gms/tagmanager/zzdg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzej;


# instance fields
.field private final zzabf:J

.field private final zzabg:I

.field private zzabh:D

.field private zzabi:J

.field private final zzabj:Ljava/lang/Object;

.field private final zzaia:J

.field private final zzsd:Lcom/google/android/gms/common/util/Clock;

.field private final zzup:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIJJLjava/lang/String;Lcom/google/android/gms/common/util/Clock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabj:Ljava/lang/Object;

    .line 3
    const/4 p1, 0x5

    iput p1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabg:I

    .line 4
    const/4 p2, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-double p1, p1

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabh:D

    .line 5
    const-wide/32 p1, 0xdbba0

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabf:J

    .line 6
    const-wide/16 p1, 0x1388

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzaia:J

    .line 7
    iput-object p7, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzup:Ljava/lang/String;

    .line 8
    iput-object p8, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzsd:Lcom/google/android/gms/common/util/Clock;

    .line 9
    return-void
.end method


# virtual methods
.method public final zzfm()Z
    .locals 11

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabj:Ljava/lang/Object;

    monitor-enter v0

    .line 11
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzsd:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    .line 12
    iget-wide v3, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabi:J

    sub-long v3, v1, v3

    iget-wide v5, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzaia:J

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-gez v3, :cond_0

    .line 13
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzup:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Excessive "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " detected; call ignored."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdi;->zzac(Ljava/lang/String;)V

    .line 14
    monitor-exit v0

    return v4

    .line 15
    :cond_0
    iget-wide v5, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabh:D

    iget v3, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabg:I

    int-to-double v7, v3

    cmpg-double v3, v5, v7

    if-gez v3, :cond_1

    .line 16
    iget-wide v5, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabi:J

    sub-long v5, v1, v5

    .line 17
    long-to-double v5, v5

    iget-wide v7, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabf:J

    long-to-double v7, v7

    div-double/2addr v5, v7

    .line 18
    const-wide/16 v7, 0x0

    cmpl-double v3, v5, v7

    if-lez v3, :cond_1

    .line 19
    iget v3, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabg:I

    int-to-double v7, v3

    iget-wide v9, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabh:D

    add-double/2addr v9, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabh:D

    .line 20
    :cond_1
    iput-wide v1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabi:J

    .line 21
    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabh:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v1, v5

    if-ltz v1, :cond_2

    .line 22
    iget-wide v1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabh:D

    sub-double/2addr v1, v5

    iput-wide v1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzabh:D

    .line 23
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzdg;->zzup:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x22

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Excessive "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " detected; call ignored."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzdi;->zzac(Ljava/lang/String;)V

    .line 25
    monitor-exit v0

    return v4

    .line 26
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
