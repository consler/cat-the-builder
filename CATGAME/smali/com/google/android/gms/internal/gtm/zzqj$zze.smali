.class final Lcom/google/android/gms/internal/gtm/zzqj$zze;
.super Lcom/google/android/gms/internal/gtm/zzqj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/gtm/zzqj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zze"
.end annotation


# instance fields
.field private final zzawx:Ljava/nio/ByteBuffer;

.field private final zzawy:Ljava/nio/ByteBuffer;

.field private final zzawz:J

.field private final zzaxa:J

.field private final zzaxb:J

.field private final zzaxc:J

.field private zzaxd:J


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqj;-><init>(Lcom/google/android/gms/internal/gtm/zzqk;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawx:Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawy:Ljava/nio/ByteBuffer;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zztx;->zzb(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawz:J

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxa:J

    .line 6
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawz:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxb:J

    .line 7
    const-wide/16 v2, 0xa

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxc:J

    .line 8
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxa:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    .line 9
    return-void
.end method

.method private final zzy(J)V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawy:Ljava/nio/ByteBuffer;

    .line 164
    iget-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawz:J

    sub-long/2addr p1, v1

    long-to-int p1, p1

    .line 165
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 166
    return-void
.end method


# virtual methods
.method public final flush()V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawx:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    .line 159
    iget-wide v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawz:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 160
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 161
    return-void
.end method

.method public final write([BII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p3

    if-lt v0, p2, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxb:J

    int-to-long v9, p3

    sub-long/2addr v0, v9

    iget-wide v5, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    cmp-long v0, v0, v5

    if-gez v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    int-to-long v3, p2

    move-object v2, p1

    move-wide v7, v9

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/gtm/zztx;->zza([BJJJ)V

    .line 125
    iget-wide p1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    add-long/2addr p1, v9

    iput-wide p1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    .line 126
    return-void

    .line 120
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 121
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo p2, "value"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzqj$zzc;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    .line 123
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxb:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "Pos: %d, limit: %d, len: %d"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzqj$zzc;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zza(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    .line 24
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/gtm/zzqj;->zzp(J)V

    .line 25
    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/gtm/zzps;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    .line 36
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gtm/zzqj;->zza(Lcom/google/android/gms/internal/gtm/zzps;)V

    .line 37
    return-void
.end method

.method public final zza(ILcom/google/android/gms/internal/gtm/zzsk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    .line 39
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gtm/zzqj;->zzb(Lcom/google/android/gms/internal/gtm/zzsk;)V

    .line 40
    return-void
.end method

.method final zza(ILcom/google/android/gms/internal/gtm/zzsk;Lcom/google/android/gms/internal/gtm/zzsz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    .line 42
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/gtm/zzqj;->zza(Lcom/google/android/gms/internal/gtm/zzsk;Lcom/google/android/gms/internal/gtm/zzsz;)V

    .line 43
    return-void
.end method

.method public final zza(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gtm/zzqj;->zzcz(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzps;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzps;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzay(I)V

    .line 72
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/gtm/zzps;->zza(Lcom/google/android/gms/internal/gtm/zzpr;)V

    .line 73
    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/gtm/zzsk;Lcom/google/android/gms/internal/gtm/zzsz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzpl;

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzpl;->zzmw()I

    move-result v1

    .line 59
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 60
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/gtm/zzsz;->zzad(Ljava/lang/Object;)I

    move-result v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzpl;->zzag(I)V

    .line 62
    :cond_0
    nop

    .line 63
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzay(I)V

    .line 64
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawu:Lcom/google/android/gms/internal/gtm/zzql;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/gtm/zzsz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzum;)V

    .line 65
    return-void
.end method

.method public final zza([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzqj;->write([BII)V

    .line 128
    return-void
.end method

.method public final zzax(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    if-ltz p1, :cond_0

    .line 78
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzay(I)V

    return-void

    .line 79
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzp(J)V

    .line 80
    return-void
.end method

.method public final zzay(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxc:J

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x1

    if-gtz v0, :cond_1

    .line 82
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 83
    iget-wide v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    int-to-byte p1, p1

    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/gtm/zztx;->zza(JB)V

    .line 84
    return-void

    .line 85
    :cond_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    add-long v5, v3, v1

    iput-wide v5, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v3, v4, v0}, Lcom/google/android/gms/internal/gtm/zztx;->zza(JB)V

    .line 86
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    .line 87
    :cond_1
    :goto_1
    iget-wide v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxb:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    .line 88
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    .line 89
    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    int-to-byte p1, p1

    invoke-static {v3, v4, p1}, Lcom/google/android/gms/internal/gtm/zztx;->zza(JB)V

    .line 90
    return-void

    .line 91
    :cond_2
    add-long v5, v3, v1

    iput-wide v5, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v3, v4, v0}, Lcom/google/android/gms/internal/gtm/zztx;->zza(JB)V

    .line 92
    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1

    .line 93
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzqj$zzc;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    .line 94
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxb:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj$zzc;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb(ILcom/google/android/gms/internal/gtm/zzps;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    .line 50
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzf(II)V

    .line 51
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/gtm/zzqj;->zza(ILcom/google/android/gms/internal/gtm/zzps;)V

    .line 52
    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    .line 53
    return-void
.end method

.method public final zzb(ILcom/google/android/gms/internal/gtm/zzsk;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    .line 45
    const/4 v2, 0x2

    invoke-virtual {p0, v2, p1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzf(II)V

    .line 46
    invoke-virtual {p0, v1, p2}, Lcom/google/android/gms/internal/gtm/zzqj;->zza(ILcom/google/android/gms/internal/gtm/zzsk;)V

    .line 47
    const/4 p1, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    .line 48
    return-void
.end method

.method public final zzb(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    .line 30
    int-to-byte p1, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzc(B)V

    .line 31
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/gtm/zzsk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-interface {p1}, Lcom/google/android/gms/internal/gtm/zzsk;->zzpe()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzay(I)V

    .line 55
    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/gtm/zzsk;->zzb(Lcom/google/android/gms/internal/gtm/zzqj;)V

    .line 56
    return-void
.end method

.method public final zzba(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawy:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    .line 96
    iget-wide v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawz:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 97
    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 98
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    .line 99
    return-void
.end method

.method public final zzc(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxb:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 69
    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/gtm/zztx;->zza(JB)V

    .line 70
    return-void

    .line 67
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzqj$zzc;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    .line 68
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    iget-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxb:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj$zzc;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzc(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    .line 27
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/gtm/zzqj;->zzr(J)V

    .line 28
    return-void
.end method

.method public final zzcz(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    .line 130
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    .line 131
    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzbd(I)I

    move-result v2

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzbd(I)I

    move-result v3

    .line 133
    if-ne v3, v2, :cond_0

    .line 134
    iget-wide v4, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    .line 135
    iget-wide v6, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawz:J

    sub-long/2addr v4, v6

    long-to-int v2, v4

    .line 136
    add-int/2addr v2, v3

    .line 137
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawy:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 138
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawy:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/gtm/zztz;->zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 139
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawy:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v3, v2

    .line 140
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/gtm/zzqj;->zzay(I)V

    .line 141
    iget-wide v4, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    int-to-long v2, v3

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    .line 142
    return-void

    .line 143
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zztz;->zza(Ljava/lang/CharSequence;)I

    move-result v2

    .line 144
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/gtm/zzqj;->zzay(I)V

    .line 145
    iget-wide v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    invoke-direct {p0, v3, v4}, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzy(J)V

    .line 146
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawy:Ljava/nio/ByteBuffer;

    invoke-static {p1, v3}, Lcom/google/android/gms/internal/gtm/zztz;->zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    .line 147
    iget-wide v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J
    :try_end_0
    .catch Lcom/google/android/gms/internal/gtm/zzud; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    return-void

    .line 156
    :catch_0
    move-exception p1

    .line 157
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzqj$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzqj$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 154
    :catch_1
    move-exception p1

    .line 155
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzqj$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzqj$zzc;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 149
    :catch_2
    move-exception v2

    .line 150
    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    .line 151
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzy(J)V

    .line 152
    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/internal/gtm/zzqj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzud;)V

    .line 153
    return-void
.end method

.method public final zzd(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    nop

    .line 11
    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzay(I)V

    .line 13
    return-void
.end method

.method public final zze(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    .line 15
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gtm/zzqj;->zzax(I)V

    .line 16
    return-void
.end method

.method public final zze([BII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/gtm/zzqj;->zzay(I)V

    .line 75
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzqj;->write([BII)V

    .line 76
    return-void
.end method

.method public final zzf(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gtm/zzqj;->zzay(I)V

    .line 19
    return-void
.end method

.method public final zzh(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzqj;->zzd(II)V

    .line 21
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/gtm/zzqj;->zzba(I)V

    .line 22
    return-void
.end method

.method public final zzoi()I
    .locals 4

    .line 162
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxb:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final zzp(J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxc:J

    cmp-long v0, v0, v2

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    const-wide/16 v6, 0x1

    if-gtz v0, :cond_1

    .line 101
    :goto_0
    and-long v8, p1, v4

    cmp-long v0, v8, v2

    if-nez v0, :cond_0

    .line 102
    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/gtm/zztx;->zza(JB)V

    .line 103
    return-void

    .line 104
    :cond_0
    iget-wide v8, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    add-long v10, v8, v6

    iput-wide v10, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v8, v9, v0}, Lcom/google/android/gms/internal/gtm/zztx;->zza(JB)V

    .line 105
    ushr-long/2addr p1, v1

    goto :goto_0

    .line 106
    :cond_1
    :goto_1
    iget-wide v8, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    iget-wide v10, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxb:J

    cmp-long v0, v8, v10

    if-gez v0, :cond_3

    .line 107
    and-long v10, p1, v4

    cmp-long v0, v10, v2

    if-nez v0, :cond_2

    .line 108
    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-static {v8, v9, p1}, Lcom/google/android/gms/internal/gtm/zztx;->zza(JB)V

    .line 109
    return-void

    .line 110
    :cond_2
    add-long v10, v8, v6

    iput-wide v10, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    invoke-static {v8, v9, v0}, Lcom/google/android/gms/internal/gtm/zztx;->zza(JB)V

    .line 111
    ushr-long/2addr p1, v1

    goto :goto_1

    .line 112
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzqj$zzc;

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    .line 113
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxb:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, p2, v1

    const/4 v0, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzqj$zzc;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzr(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawy:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    .line 115
    iget-wide v3, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzawz:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 116
    invoke-virtual {v0, v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 117
    iget-wide p1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    const-wide/16 v0, 0x8

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/gtm/zzqj$zze;->zzaxd:J

    .line 118
    return-void
.end method
