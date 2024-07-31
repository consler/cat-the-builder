.class public Lcom/google/android/gms/cast/LaunchOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/LaunchOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/LaunchOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzdc:Z

.field private zzdd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/google/android/gms/cast/zzai;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzai;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/LaunchOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/cast/LaunchOptions;-><init>(ZLjava/lang/String;)V

    .line 6
    return-void
.end method

.method constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/cast/LaunchOptions;->zzdc:Z

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/cast/LaunchOptions;->zzdd:Ljava/lang/String;

    .line 4
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 26
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 27
    return v0

    .line 28
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/LaunchOptions;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 29
    return v2

    .line 30
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/LaunchOptions;

    .line 31
    iget-boolean v1, p0, Lcom/google/android/gms/cast/LaunchOptions;->zzdc:Z

    iget-boolean v3, p1, Lcom/google/android/gms/cast/LaunchOptions;->zzdc:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/cast/LaunchOptions;->zzdd:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/cast/LaunchOptions;->zzdd:Ljava/lang/String;

    .line 32
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/cast/zzdc;->zza(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    nop

    .line 33
    return v2
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/cast/LaunchOptions;->zzdd:Ljava/lang/String;

    return-object v0
.end method

.method public getRelaunchIfRunning()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/google/android/gms/cast/LaunchOptions;->zzdc:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 34
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/gms/cast/LaunchOptions;->zzdc:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/LaunchOptions;->zzdd:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/cast/LaunchOptions;->zzdd:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public setRelaunchIfRunning(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/google/android/gms/cast/LaunchOptions;->zzdc:Z

    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 13
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/gms/cast/LaunchOptions;->zzdc:Z

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/cast/LaunchOptions;->zzdd:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 15
    const-string v1, "LaunchOptions(relaunchIfRunning=%b, language=%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 16
    nop

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 18
    nop

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/cast/LaunchOptions;->getRelaunchIfRunning()Z

    move-result v0

    .line 20
    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 21
    nop

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/cast/LaunchOptions;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 23
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 24
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 25
    return-void
.end method
