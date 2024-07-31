.class public abstract Lcom/google/android/gms/internal/gtm/zzuq;
.super Lcom/google/android/gms/internal/gtm/zzuw;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/gtm/zzuq<",
        "TM;>;>",
        "Lcom/google/android/gms/internal/gtm/zzuw;"
    }
.end annotation


# instance fields
.field protected zzbhb:Lcom/google/android/gms/internal/gtm/zzus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzuw;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 41
    nop

    .line 42
    invoke-super {p0}, Lcom/google/android/gms/internal/gtm/zzuw;->zzry()Lcom/google/android/gms/internal/gtm/zzuw;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzuq;

    .line 43
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/gtm/zzuu;->zza(Lcom/google/android/gms/internal/gtm/zzuq;Lcom/google/android/gms/internal/gtm/zzuq;)V

    .line 44
    nop

    .line 45
    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/internal/gtm/zzur;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/gtm/zzur<",
            "TM;TT;>;)TT;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 17
    return-object v1

    .line 18
    :cond_0
    iget v2, p1, Lcom/google/android/gms/internal/gtm/zzur;->tag:I

    .line 19
    ushr-int/lit8 v2, v2, 0x3

    .line 20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/gtm/zzus;->zzcd(I)Lcom/google/android/gms/internal/gtm/zzut;

    move-result-object v0

    .line 21
    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzut;->zzb(Lcom/google/android/gms/internal/gtm/zzur;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/internal/gtm/zzuo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    if-nez v0, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzus;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzus;->zzce(I)Lcom/google/android/gms/internal/gtm/zzut;

    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/gtm/zzut;->zza(Lcom/google/android/gms/internal/gtm/zzuo;)V

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15
    :cond_1
    return-void
.end method

.method protected final zza(Lcom/google/android/gms/internal/gtm/zzun;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->getPosition()I

    move-result v0

    .line 23
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/gtm/zzun;->zzao(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 24
    const/4 p1, 0x0

    return p1

    .line 25
    :cond_0
    nop

    .line 26
    ushr-int/lit8 v1, p2, 0x3

    .line 27
    nop

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzun;->getPosition()I

    move-result v2

    .line 29
    sub-int/2addr v2, v0

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/gtm/zzun;->zzt(II)[B

    move-result-object p1

    .line 30
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzuy;

    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/gtm/zzuy;-><init>(I[B)V

    .line 31
    const/4 p1, 0x0

    .line 32
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    if-nez p2, :cond_1

    .line 33
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzus;

    invoke-direct {p2}, Lcom/google/android/gms/internal/gtm/zzus;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/gtm/zzus;->zzcd(I)Lcom/google/android/gms/internal/gtm/zzut;

    move-result-object p1

    .line 35
    :goto_0
    if-nez p1, :cond_2

    .line 36
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzut;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzut;-><init>()V

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/internal/gtm/zzus;->zza(ILcom/google/android/gms/internal/gtm/zzut;)V

    .line 38
    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzut;->zza(Lcom/google/android/gms/internal/gtm/zzuy;)V

    .line 39
    const/4 p1, 0x1

    return p1
.end method

.method public final synthetic zzry()Lcom/google/android/gms/internal/gtm/zzuw;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzuw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzuq;

    return-object v0
.end method

.method protected zzy()I
    .locals 3

    .line 2
    nop

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzus;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzuq;->zzbhb:Lcom/google/android/gms/internal/gtm/zzus;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/gtm/zzus;->zzce(I)Lcom/google/android/gms/internal/gtm/zzut;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzut;->zzy()I

    move-result v2

    add-int/2addr v0, v2

    .line 7
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    move v1, v0

    .line 8
    :cond_1
    return v1
.end method
