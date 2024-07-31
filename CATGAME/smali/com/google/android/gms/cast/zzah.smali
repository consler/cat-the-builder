.class public final Lcom/google/android/gms/cast/zzah;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/zzah;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzda:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/google/android/gms/cast/zzag;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzag;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/zzah;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/cast/zzah;-><init>(I)V

    .line 5
    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/cast/zzah;->zzda:I

    .line 3
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 20
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 21
    return v0

    .line 22
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/zzah;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 23
    return v2

    .line 24
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/zzah;

    .line 25
    iget v1, p0, Lcom/google/android/gms/cast/zzah;->zzda:I

    iget p1, p1, Lcom/google/android/gms/cast/zzah;->zzda:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/cast/zzah;->zzda:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 6
    iget v0, p0, Lcom/google/android/gms/cast/zzah;->zzda:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 11
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 9
    :cond_0
    nop

    .line 10
    const-string v0, "INVISIBLE"

    goto :goto_0

    .line 7
    :cond_1
    nop

    .line 8
    const-string v0, "STRONG"

    .line 12
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "joinOptions(connectionType=%s)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 13
    nop

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 15
    nop

    .line 16
    iget v0, p0, Lcom/google/android/gms/cast/zzah;->zzda:I

    .line 17
    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 18
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 19
    return-void
.end method
