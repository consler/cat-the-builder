.class public final Lcom/google/android/gms/internal/gtm/zzh;
.super Lcom/google/android/gms/internal/gtm/zzuq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzuq<",
        "Lcom/google/android/gms/internal/gtm/zzh;",
        ">;"
    }
.end annotation


# instance fields
.field public zzpe:[Lcom/google/android/gms/internal/gtm/zzl;

.field public zzpf:[Lcom/google/android/gms/internal/gtm/zzl;

.field public zzpg:[Lcom/google/android/gms/internal/gtm/zzc$zzc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuq;-><init>()V

    .line 2
    nop

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzl;->zzaa()[Lcom/google/android/gms/internal/gtm/zzl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpe:[Lcom/google/android/gms/internal/gtm/zzl;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzl;->zzaa()[Lcom/google/android/gms/internal/gtm/zzl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpf:[Lcom/google/android/gms/internal/gtm/zzl;

    .line 5
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/gtm/zzc$zzc;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpg:[Lcom/google/android/gms/internal/gtm/zzc$zzc;

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    .line 7
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzbhl:I

    .line 8
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 9
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 10
    return v0

    .line 11
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/gtm/zzh;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 12
    return v2

    .line 13
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzh;

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpe:[Lcom/google/android/gms/internal/gtm/zzl;

    iget-object v3, p1, Lcom/google/android/gms/internal/gtm/zzh;->zzpe:[Lcom/google/android/gms/internal/gtm/zzl;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/gtm/zzuu;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 15
    return v2

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpf:[Lcom/google/android/gms/internal/gtm/zzl;

    iget-object v3, p1, Lcom/google/android/gms/internal/gtm/zzh;->zzpf:[Lcom/google/android/gms/internal/gtm/zzl;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/gtm/zzuu;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 17
    return v2

    .line 18
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpg:[Lcom/google/android/gms/internal/gtm/zzc$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/gtm/zzh;->zzpg:[Lcom/google/android/gms/internal/gtm/zzc$zzc;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/gtm/zzuu;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 19
    return v2

    .line 20
    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzus;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    .line 22
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzh;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzus;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 21
    :cond_6
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/gtm/zzh;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    if-eqz v1, :cond_8

    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzh;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzus;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    return v2

    :cond_8
    :goto_1
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpe:[Lcom/google/android/gms/internal/gtm/zzl;

    .line 25
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzuu;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 26
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpf:[Lcom/google/android/gms/internal/gtm/zzl;

    .line 27
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzuu;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 28
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpg:[Lcom/google/android/gms/internal/gtm/zzc$zzc;

    .line 29
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzuu;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzus;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzus;->hashCode()I

    move-result v1

    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 32
    :goto_1
    add-int/2addr v0, v1

    .line 33
    return v0
.end method

.method public final synthetic zza(Lcom/google/android/gms/internal/gtm/zzun;)Lcom/google/android/gms/internal/gtm/zzuw;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    nop

    .line 78
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzni()I

    move-result v0

    .line 79
    if-eqz v0, :cond_d

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    const/16 v1, 0x12

    if-eq v0, v1, :cond_5

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    .line 81
    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/gtm/zzuq;->zza(Lcom/google/android/gms/internal/gtm/zzun;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 82
    return-object p0

    .line 113
    :cond_0
    nop

    .line 114
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/gtm/zzuz;->zzb(Lcom/google/android/gms/internal/gtm/zzun;I)I

    move-result v0

    .line 115
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpg:[Lcom/google/android/gms/internal/gtm/zzc$zzc;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    array-length v1, v1

    .line 116
    :goto_1
    add-int/2addr v0, v1

    new-array v3, v0, [Lcom/google/android/gms/internal/gtm/zzc$zzc;

    .line 117
    if-eqz v1, :cond_2

    .line 118
    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpg:[Lcom/google/android/gms/internal/gtm/zzc$zzc;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    :cond_2
    :goto_2
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_3

    .line 120
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zza()Lcom/google/android/gms/internal/gtm/zzsu;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/gtm/zzun;->zza(Lcom/google/android/gms/internal/gtm/zzsu;)Lcom/google/android/gms/internal/gtm/zzrc;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzc$zzc;

    aput-object v2, v3, v1

    .line 121
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzni()I

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 123
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzc$zzc;->zza()Lcom/google/android/gms/internal/gtm/zzsu;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzun;->zza(Lcom/google/android/gms/internal/gtm/zzsu;)Lcom/google/android/gms/internal/gtm/zzrc;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzc$zzc;

    aput-object v0, v3, v1

    .line 124
    iput-object v3, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpg:[Lcom/google/android/gms/internal/gtm/zzc$zzc;

    .line 125
    :cond_4
    goto :goto_0

    .line 98
    :cond_5
    nop

    .line 99
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/gtm/zzuz;->zzb(Lcom/google/android/gms/internal/gtm/zzun;I)I

    move-result v0

    .line 100
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpf:[Lcom/google/android/gms/internal/gtm/zzl;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_3

    :cond_6
    array-length v1, v1

    .line 101
    :goto_3
    add-int/2addr v0, v1

    new-array v3, v0, [Lcom/google/android/gms/internal/gtm/zzl;

    .line 102
    if-eqz v1, :cond_7

    .line 103
    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpf:[Lcom/google/android/gms/internal/gtm/zzl;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 104
    :cond_7
    :goto_4
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_8

    .line 105
    new-instance v2, Lcom/google/android/gms/internal/gtm/zzl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/gtm/zzl;-><init>()V

    aput-object v2, v3, v1

    .line 106
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/gtm/zzun;->zza(Lcom/google/android/gms/internal/gtm/zzuw;)V

    .line 107
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzni()I

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 109
    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzl;-><init>()V

    aput-object v0, v3, v1

    .line 110
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzun;->zza(Lcom/google/android/gms/internal/gtm/zzuw;)V

    .line 111
    iput-object v3, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpf:[Lcom/google/android/gms/internal/gtm/zzl;

    .line 112
    goto/16 :goto_0

    .line 83
    :cond_9
    nop

    .line 84
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/gtm/zzuz;->zzb(Lcom/google/android/gms/internal/gtm/zzun;I)I

    move-result v0

    .line 85
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpe:[Lcom/google/android/gms/internal/gtm/zzl;

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_5

    :cond_a
    array-length v1, v1

    .line 86
    :goto_5
    add-int/2addr v0, v1

    new-array v3, v0, [Lcom/google/android/gms/internal/gtm/zzl;

    .line 87
    if-eqz v1, :cond_b

    .line 88
    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpe:[Lcom/google/android/gms/internal/gtm/zzl;

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    :cond_b
    :goto_6
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_c

    .line 90
    new-instance v2, Lcom/google/android/gms/internal/gtm/zzl;

    invoke-direct {v2}, Lcom/google/android/gms/internal/gtm/zzl;-><init>()V

    aput-object v2, v3, v1

    .line 91
    aget-object v2, v3, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/gtm/zzun;->zza(Lcom/google/android/gms/internal/gtm/zzuw;)V

    .line 92
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzni()I

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 94
    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzl;-><init>()V

    aput-object v0, v3, v1

    .line 95
    aget-object v0, v3, v1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzun;->zza(Lcom/google/android/gms/internal/gtm/zzuw;)V

    .line 96
    iput-object v3, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpe:[Lcom/google/android/gms/internal/gtm/zzl;

    .line 97
    goto/16 :goto_0

    .line 80
    :cond_d
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzuo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpe:[Lcom/google/android/gms/internal/gtm/zzl;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    .line 35
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpe:[Lcom/google/android/gms/internal/gtm/zzl;

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 36
    aget-object v2, v2, v0

    .line 37
    if-eqz v2, :cond_0

    .line 38
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/gtm/zzuo;->zza(ILcom/google/android/gms/internal/gtm/zzuw;)V

    .line 39
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpf:[Lcom/google/android/gms/internal/gtm/zzl;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-lez v0, :cond_3

    .line 41
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpf:[Lcom/google/android/gms/internal/gtm/zzl;

    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 42
    aget-object v2, v2, v0

    .line 43
    if-eqz v2, :cond_2

    .line 44
    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/gtm/zzuo;->zza(ILcom/google/android/gms/internal/gtm/zzuw;)V

    .line 45
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpg:[Lcom/google/android/gms/internal/gtm/zzc$zzc;

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    .line 47
    nop

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpg:[Lcom/google/android/gms/internal/gtm/zzc$zzc;

    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 48
    aget-object v0, v0, v1

    .line 49
    if-eqz v0, :cond_4

    .line 50
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/gtm/zzuo;->zze(ILcom/google/android/gms/internal/gtm/zzsk;)V

    .line 51
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 52
    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/gtm/zzuq;->zza(Lcom/google/android/gms/internal/gtm/zzuo;)V

    .line 53
    return-void
.end method

.method protected final zzy()I
    .locals 5

    .line 54
    invoke-super {p0}, Lcom/google/android/gms/internal/gtm/zzuq;->zzy()I

    move-result v0

    .line 55
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpe:[Lcom/google/android/gms/internal/gtm/zzl;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    .line 56
    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpe:[Lcom/google/android/gms/internal/gtm/zzl;

    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 57
    aget-object v3, v3, v1

    .line 58
    if-eqz v3, :cond_0

    .line 59
    nop

    .line 60
    const/4 v4, 0x1

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/gtm/zzuo;->zzb(ILcom/google/android/gms/internal/gtm/zzuw;)I

    move-result v3

    add-int/2addr v0, v3

    .line 61
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpf:[Lcom/google/android/gms/internal/gtm/zzl;

    if-eqz v1, :cond_3

    array-length v1, v1

    if-lez v1, :cond_3

    .line 63
    move v1, v2

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpf:[Lcom/google/android/gms/internal/gtm/zzl;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 64
    aget-object v3, v3, v1

    .line 65
    if-eqz v3, :cond_2

    .line 66
    const/4 v4, 0x2

    .line 67
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/gtm/zzuo;->zzb(ILcom/google/android/gms/internal/gtm/zzuw;)I

    move-result v3

    add-int/2addr v0, v3

    .line 68
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 69
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpg:[Lcom/google/android/gms/internal/gtm/zzc$zzc;

    if-eqz v1, :cond_5

    array-length v1, v1

    if-lez v1, :cond_5

    .line 70
    nop

    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzh;->zzpg:[Lcom/google/android/gms/internal/gtm/zzc$zzc;

    array-length v3, v1

    if-ge v2, v3, :cond_5

    .line 71
    aget-object v1, v1, v2

    .line 72
    if-eqz v1, :cond_4

    .line 73
    const/4 v3, 0x3

    .line 74
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/gtm/zzqj;->zzc(ILcom/google/android/gms/internal/gtm/zzsk;)I

    move-result v1

    add-int/2addr v0, v1

    .line 75
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 76
    :cond_5
    return v0
.end method
