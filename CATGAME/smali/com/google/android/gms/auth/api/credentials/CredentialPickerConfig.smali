.class public final Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Prompt;,
        Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mShowCancelButton:Z

.field private final zzu:I

.field private final zzv:Z

.field private final zzw:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/zze;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZZZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zzu:I

    .line 3
    iput-boolean p2, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zzv:Z

    .line 4
    iput-boolean p3, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->mShowCancelButton:Z

    .line 5
    const/4 p2, 0x1

    const/4 p3, 0x3

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    .line 6
    iput-boolean p4, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zzw:Z

    .line 7
    if-eqz p4, :cond_0

    move p2, p3

    :cond_0
    iput p2, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zzx:I

    return-void

    .line 8
    :cond_1
    if-ne p5, p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zzw:Z

    .line 9
    iput p5, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zzx:I

    .line 10
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;)V
    .locals 6

    .line 11
    nop

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->zzc(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;)Z

    move-result v2

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->zzd(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;)Z

    move-result v3

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->zze(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;)I

    move-result v5

    .line 15
    const/4 v1, 0x2

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;-><init>(IZZZI)V

    .line 16
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;Lcom/google/android/gms/auth/api/credentials/zzd;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;-><init>(Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;)V

    return-void
.end method


# virtual methods
.method public final isForNewAccount()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 19
    iget v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zzx:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final shouldShowAddAccountButton()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zzv:Z

    return v0
.end method

.method public final shouldShowCancelButton()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->mShowCancelButton:Z

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 20
    nop

    .line 21
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 22
    nop

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->shouldShowAddAccountButton()Z

    move-result v0

    .line 24
    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 25
    nop

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->shouldShowCancelButton()Z

    move-result v0

    .line 27
    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 28
    nop

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->isForNewAccount()Z

    move-result v0

    .line 30
    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 31
    nop

    .line 32
    iget v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zzx:I

    .line 33
    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 34
    iget v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;->zzu:I

    const/16 v1, 0x3e8

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 35
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 36
    return-void
.end method
