.class public final Lcom/google/android/gms/internal/gtm/zzuz;
.super Ljava/lang/Object;


# static fields
.field public static final zzbcw:[I

.field private static final zzbhm:I

.field private static final zzbhn:I

.field private static final zzbho:I

.field private static final zzbhp:I

.field private static final zzbhq:[J

.field private static final zzbhr:[F

.field private static final zzbhs:[D

.field private static final zzbht:[Z

.field public static final zzbhu:[Ljava/lang/String;

.field private static final zzbhv:[[B

.field public static final zzbhw:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    nop

    .line 10
    const/16 v0, 0xb

    sput v0, Lcom/google/android/gms/internal/gtm/zzuz;->zzbhm:I

    .line 11
    nop

    .line 12
    const/16 v0, 0xc

    sput v0, Lcom/google/android/gms/internal/gtm/zzuz;->zzbhn:I

    .line 13
    nop

    .line 14
    const/16 v0, 0x10

    sput v0, Lcom/google/android/gms/internal/gtm/zzuz;->zzbho:I

    .line 15
    nop

    .line 16
    const/16 v0, 0x1a

    sput v0, Lcom/google/android/gms/internal/gtm/zzuz;->zzbhp:I

    .line 17
    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzuz;->zzbcw:[I

    .line 18
    new-array v1, v0, [J

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzuz;->zzbhq:[J

    .line 19
    new-array v1, v0, [F

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzuz;->zzbhr:[F

    .line 20
    new-array v1, v0, [D

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzuz;->zzbhs:[D

    .line 21
    new-array v1, v0, [Z

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzuz;->zzbht:[Z

    .line 22
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzuz;->zzbhu:[Ljava/lang/String;

    .line 23
    new-array v1, v0, [[B

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzuz;->zzbhv:[[B

    .line 24
    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzuz;->zzbhw:[B

    return-void
.end method

.method public static final zzb(Lcom/google/android/gms/internal/gtm/zzun;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    nop

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzun;->getPosition()I

    move-result v0

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzao(I)Z

    const/4 v1, 0x1

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzun;->zzni()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzao(I)Z

    .line 6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzun;->zzu(II)V

    .line 8
    return v1
.end method
