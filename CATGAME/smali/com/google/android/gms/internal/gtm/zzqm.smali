.class final Lcom/google/android/gms/internal/gtm/zzqm;
.super Lcom/google/android/gms/internal/gtm/zzpo;

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzrj;
.implements Lcom/google/android/gms/internal/gtm/zzsv;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/gtm/zzpo<",
        "Ljava/lang/Double;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzrj<",
        "Ljava/lang/Double;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzsv;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final zzaxe:Lcom/google/android/gms/internal/gtm/zzqm;


# instance fields
.field private size:I

.field private zzaxf:[D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 113
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzqm;

    const/4 v1, 0x0

    new-array v2, v1, [D

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/gtm/zzqm;-><init>([DI)V

    .line 114
    sput-object v0, Lcom/google/android/gms/internal/gtm/zzqm;->zzaxe:Lcom/google/android/gms/internal/gtm/zzqm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzpo;->zzmi()V

    .line 115
    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    const/16 v0, 0xa

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzqm;-><init>([DI)V

    .line 2
    return-void
.end method

.method private constructor <init>([DI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzpo;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->zzaxf:[D

    .line 5
    iput p2, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    .line 6
    return-void
.end method

.method private final zzah(I)V
    .locals 1

    .line 76
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    if-ge p1, v0, :cond_0

    .line 78
    return-void

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqm;->zzai(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzai(I)Ljava/lang/String;
    .locals 3

    .line 79
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x23

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final zzc(ID)V
    .locals 4

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzpo;->zzmz()V

    .line 37
    if-ltz p1, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    if-gt p1, v0, :cond_1

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->zzaxf:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 40
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 41
    :cond_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 42
    new-array v0, v0, [D

    .line 43
    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->zzaxf:[D

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    sub-int/2addr v3, p1

    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqm;->zzaxf:[D

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqm;->zzaxf:[D

    aput-wide p2, v0, p1

    .line 47
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    .line 48
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->modCount:I

    .line 49
    return-void

    .line 38
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqm;->zzai(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final synthetic add(ILjava/lang/Object;)V
    .locals 2

    .line 99
    check-cast p2, Ljava/lang/Double;

    .line 100
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/gtm/zzqm;->zzc(ID)V

    .line 101
    return-void
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzpo;->zzmz()V

    .line 51
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzre;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzqm;

    if-nez v0, :cond_0

    .line 53
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/gtm/zzpo;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    .line 54
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzqm;

    .line 55
    iget v0, p1, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 56
    return v1

    .line 57
    :cond_1
    const v2, 0x7fffffff

    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    sub-int/2addr v2, v3

    .line 58
    if-lt v2, v0, :cond_3

    .line 60
    add-int/2addr v3, v0

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqm;->zzaxf:[D

    array-length v2, v0

    if-le v3, v2, :cond_2

    .line 62
    invoke-static {v0, v3}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqm;->zzaxf:[D

    .line 63
    :cond_2
    iget-object v0, p1, Lcom/google/android/gms/internal/gtm/zzqm;->zzaxf:[D

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzqm;->zzaxf:[D

    iget v4, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    iget p1, p1, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    invoke-static {v0, v1, v2, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iput v3, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    .line 65
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->modCount:I

    .line 66
    return v0

    .line 59
    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 14
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 15
    return v0

    .line 16
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/gtm/zzqm;

    if-nez v1, :cond_1

    .line 17
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/gtm/zzpo;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 18
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzqm;

    .line 19
    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    iget v2, p1, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    .line 20
    return v3

    .line 21
    :cond_2
    iget-object p1, p1, Lcom/google/android/gms/internal/gtm/zzqm;->zzaxf:[D

    .line 22
    move v1, v3

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    if-ge v1, v2, :cond_4

    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzqm;->zzaxf:[D

    aget-wide v4, v2, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    aget-wide v6, p1, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3

    .line 24
    return v3

    .line 25
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_4
    return v0
.end method

.method public final synthetic get(I)Ljava/lang/Object;
    .locals 3

    .line 107
    nop

    .line 108
    nop

    .line 109
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqm;->zzah(I)V

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqm;->zzaxf:[D

    aget-wide v1, v0, p1

    .line 111
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 112
    return-object p1
.end method

.method public final hashCode()I
    .locals 5

    .line 27
    nop

    .line 28
    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    if-ge v1, v2, :cond_0

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzqm;->zzaxf:[D

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/gtm/zzre;->zzz(J)I

    move-result v2

    add-int/2addr v0, v2

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return v0
.end method

.method public final synthetic remove(I)Ljava/lang/Object;
    .locals 5

    .line 89
    nop

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzpo;->zzmz()V

    .line 91
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqm;->zzah(I)V

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqm;->zzaxf:[D

    aget-wide v1, v0, p1

    .line 93
    iget v3, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    add-int/lit8 v4, v3, -0x1

    if-ge p1, v4, :cond_0

    .line 94
    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v4, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 95
    :cond_0
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    .line 96
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->modCount:I

    .line 97
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 98
    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 5

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzpo;->zzmz()V

    .line 68
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    if-ge v1, v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzqm;->zzaxf:[D

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 70
    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->zzaxf:[D

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    .line 72
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->modCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->modCount:I

    .line 73
    return v3

    .line 74
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_1
    return v0
.end method

.method protected final removeRange(II)V
    .locals 2

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzpo;->zzmz()V

    .line 8
    if-lt p2, p1, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqm;->zzaxf:[D

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    .line 12
    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->modCount:I

    .line 13
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 80
    check-cast p2, Ljava/lang/Double;

    .line 81
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzpo;->zzmz()V

    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzqm;->zzah(I)V

    .line 84
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzqm;->zzaxf:[D

    aget-wide v2, p2, p1

    .line 85
    aput-wide v0, p2, p1

    .line 86
    nop

    .line 87
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    .line 88
    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    return v0
.end method

.method public final synthetic zzaj(I)Lcom/google/android/gms/internal/gtm/zzrj;
    .locals 2

    .line 102
    nop

    .line 103
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    if-lt p1, v0, :cond_0

    .line 105
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzqm;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->zzaxf:[D

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    iget v1, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/gtm/zzqm;-><init>([DI)V

    .line 106
    return-object v0

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zzd(D)V
    .locals 1

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzqm;->size:I

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzqm;->zzc(ID)V

    .line 35
    return-void
.end method
