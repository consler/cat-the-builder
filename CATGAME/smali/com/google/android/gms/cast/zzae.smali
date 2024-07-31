.class public final Lcom/google/android/gms/cast/zzae;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/zzae;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzcw:Lcom/google/android/gms/cast/zzac;

.field private final zzcx:Lcom/google/android/gms/cast/zzac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/google/android/gms/cast/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzad;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/zzae;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/cast/zzac;Lcom/google/android/gms/cast/zzac;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/cast/zzae;->zzcw:Lcom/google/android/gms/cast/zzac;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/cast/zzae;->zzcx:Lcom/google/android/gms/cast/zzac;

    .line 4
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 17
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 18
    return v0

    .line 19
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/zzae;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 20
    return v2

    .line 21
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/zzae;

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/cast/zzae;->zzcw:Lcom/google/android/gms/cast/zzac;

    iget-object v3, p1, Lcom/google/android/gms/cast/zzae;->zzcw:Lcom/google/android/gms/cast/zzac;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/zzae;->zzcx:Lcom/google/android/gms/cast/zzac;

    iget-object p1, p1, Lcom/google/android/gms/cast/zzae;->zzcx:Lcom/google/android/gms/cast/zzac;

    .line 23
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    nop

    .line 24
    return v2
.end method

.method public final hashCode()I
    .locals 3

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/cast/zzae;->zzcw:Lcom/google/android/gms/cast/zzac;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/zzae;->zzcx:Lcom/google/android/gms/cast/zzac;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 5
    nop

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 7
    nop

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/cast/zzae;->zzcw:Lcom/google/android/gms/cast/zzac;

    .line 9
    nop

    .line 10
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 11
    nop

    .line 12
    iget-object v1, p0, Lcom/google/android/gms/cast/zzae;->zzcx:Lcom/google/android/gms/cast/zzac;

    .line 13
    nop

    .line 14
    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 15
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 16
    return-void
.end method
