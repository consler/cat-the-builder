.class final Lcom/google/android/gms/internal/gtm/zztt;
.super Lcom/google/android/gms/internal/gtm/zztr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zztr<",
        "Lcom/google/android/gms/internal/gtm/zzts;",
        "Lcom/google/android/gms/internal/gtm/zzts;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zztr;-><init>()V

    return-void
.end method

.method private static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzts;)V
    .locals 0

    .line 3
    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrc;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzrc;->zzbak:Lcom/google/android/gms/internal/gtm/zzts;

    .line 4
    return-void
.end method


# virtual methods
.method final synthetic zza(Ljava/lang/Object;IJ)V
    .locals 0

    .line 68
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzts;

    .line 69
    nop

    .line 70
    shl-int/lit8 p2, p2, 0x3

    .line 71
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzts;->zzb(ILjava/lang/Object;)V

    .line 72
    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;ILcom/google/android/gms/internal/gtm/zzps;)V
    .locals 0

    .line 53
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzts;

    .line 54
    nop

    .line 55
    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x2

    .line 56
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzts;->zzb(ILjava/lang/Object;)V

    .line 57
    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzts;

    check-cast p3, Lcom/google/android/gms/internal/gtm/zzts;

    .line 49
    nop

    .line 50
    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x3

    .line 51
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzts;->zzb(ILjava/lang/Object;)V

    .line 52
    return-void
.end method

.method final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzts;

    .line 24
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/gtm/zzts;->zzb(Lcom/google/android/gms/internal/gtm/zzum;)V

    .line 25
    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/gtm/zzsy;)Z
    .locals 0

    .line 2
    const/4 p1, 0x0

    return p1
.end method

.method final synthetic zzaa(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzts;

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzts;->zzmi()V

    .line 44
    nop

    .line 45
    return-object p1
.end method

.method final synthetic zzad(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzts;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzts;->zzpe()I

    move-result p1

    .line 11
    return p1
.end method

.method final synthetic zzag(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    nop

    .line 39
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzrc;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzrc;->zzbak:Lcom/google/android/gms/internal/gtm/zzts;

    .line 40
    return-object p1
.end method

.method final synthetic zzah(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 29
    nop

    .line 30
    nop

    .line 31
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrc;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzrc;->zzbak:Lcom/google/android/gms/internal/gtm/zzts;

    .line 32
    nop

    .line 33
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzts;->zzrj()Lcom/google/android/gms/internal/gtm/zzts;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzts;->zzrk()Lcom/google/android/gms/internal/gtm/zzts;

    move-result-object v0

    .line 35
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gtm/zztt;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzts;)V

    .line 36
    :cond_0
    nop

    .line 37
    return-object v0
.end method

.method final synthetic zzai(Ljava/lang/Object;)I
    .locals 0

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzts;

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzts;->zzrl()I

    move-result p1

    .line 14
    return p1
.end method

.method final synthetic zzb(Ljava/lang/Object;IJ)V
    .locals 0

    .line 58
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzts;

    .line 59
    nop

    .line 60
    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x1

    .line 61
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzts;->zzb(ILjava/lang/Object;)V

    .line 62
    return-void
.end method

.method final synthetic zzc(Ljava/lang/Object;II)V
    .locals 0

    .line 63
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzts;

    .line 64
    nop

    .line 65
    shl-int/lit8 p2, p2, 0x3

    or-int/lit8 p2, p2, 0x5

    .line 66
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzts;->zzb(ILjava/lang/Object;)V

    .line 67
    return-void
.end method

.method final synthetic zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzum;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzts;

    .line 21
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/gtm/zzts;->zza(Lcom/google/android/gms/internal/gtm/zzum;)V

    .line 22
    return-void
.end method

.method final synthetic zzf(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Lcom/google/android/gms/internal/gtm/zzts;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gtm/zztt;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzts;)V

    return-void
.end method

.method final synthetic zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/google/android/gms/internal/gtm/zzts;

    .line 27
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gtm/zztt;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzts;)V

    .line 28
    return-void
.end method

.method final synthetic zzh(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 15
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzts;

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzts;

    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzts;->zzrj()Lcom/google/android/gms/internal/gtm/zzts;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/gtm/zzts;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    return-object p1

    .line 18
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gtm/zzts;->zza(Lcom/google/android/gms/internal/gtm/zzts;Lcom/google/android/gms/internal/gtm/zzts;)Lcom/google/android/gms/internal/gtm/zzts;

    move-result-object p1

    .line 19
    return-object p1
.end method

.method final synthetic zzri()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzts;->zzrk()Lcom/google/android/gms/internal/gtm/zzts;

    move-result-object v0

    .line 47
    return-object v0
.end method

.method final zzt(Ljava/lang/Object;)V
    .locals 0

    .line 5
    nop

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzrc;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzrc;->zzbak:Lcom/google/android/gms/internal/gtm/zzts;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzts;->zzmi()V

    .line 8
    return-void
.end method
