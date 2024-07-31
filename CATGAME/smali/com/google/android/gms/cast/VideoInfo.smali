.class public final Lcom/google/android/gms/cast/VideoInfo;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/VideoInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final HDR_TYPE_DV:I = 0x3

.field public static final HDR_TYPE_HDR:I = 0x4

.field public static final HDR_TYPE_HDR10:I = 0x2

.field public static final HDR_TYPE_SDR:I = 0x1

.field public static final HDR_TYPE_UNKNOWN:I


# instance fields
.field private height:I

.field private width:I

.field private zzho:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lcom/google/android/gms/cast/zzby;

    invoke-direct {v0}, Lcom/google/android/gms/cast/zzby;-><init>()V

    sput-object v0, Lcom/google/android/gms/cast/VideoInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/gms/cast/VideoInfo;->width:I

    .line 3
    iput p2, p0, Lcom/google/android/gms/cast/VideoInfo;->height:I

    .line 4
    iput p3, p0, Lcom/google/android/gms/cast/VideoInfo;->zzho:I

    .line 5
    return-void
.end method

.method static zzk(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/VideoInfo;
    .locals 10

    .line 32
    const-string v0, "VideoInfo"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 33
    return-object v1

    .line 34
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "hdrType"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/16 v7, 0xc92

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eq v6, v7, :cond_5

    const v7, 0x192f6

    if-eq v6, v7, :cond_4

    const v7, 0x1bc41

    if-eq v6, v7, :cond_3

    const v7, 0x5e8b395

    if-eq v6, v7, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const-string v6, "hdr10"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v3

    goto :goto_0

    :cond_3
    const-string v6, "sdr"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v8

    goto :goto_0

    :cond_4
    const-string v6, "hdr"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v9

    goto :goto_0

    :cond_5
    const-string v6, "dv"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v5, v2

    :goto_0
    if-eqz v5, :cond_9

    if-eq v5, v3, :cond_8

    if-eq v5, v9, :cond_7

    if-eq v5, v8, :cond_6

    .line 44
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "Unknown HDR type: %s"

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v4, v7, v2

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    move v8, v2

    goto :goto_1

    .line 42
    :cond_6
    nop

    .line 43
    move v8, v3

    goto :goto_1

    .line 40
    :cond_7
    const/4 v8, 0x4

    .line 41
    goto :goto_1

    .line 38
    :cond_8
    nop

    .line 39
    move v8, v9

    goto :goto_1

    .line 36
    :cond_9
    nop

    .line 37
    nop

    .line 46
    :goto_1
    new-instance v4, Lcom/google/android/gms/cast/VideoInfo;

    const-string/jumbo v5, "width"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "height"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-direct {v4, v5, p0, v8}, Lcom/google/android/gms/cast/VideoInfo;-><init>(III)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 47
    :catch_0
    move-exception p0

    .line 48
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    .line 49
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v2

    .line 50
    const-string p0, "Error while creating a VideoInfo instance from JSON: %s"

    invoke-static {v4, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 51
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-object v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 22
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 23
    return v0

    .line 24
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/VideoInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 25
    return v2

    .line 26
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/VideoInfo;

    .line 27
    iget v1, p0, Lcom/google/android/gms/cast/VideoInfo;->height:I

    invoke-virtual {p1}, Lcom/google/android/gms/cast/VideoInfo;->getHeight()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/VideoInfo;->width:I

    .line 28
    invoke-virtual {p1}, Lcom/google/android/gms/cast/VideoInfo;->getWidth()I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/cast/VideoInfo;->zzho:I

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/cast/VideoInfo;->getHdrType()I

    move-result p1

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    nop

    .line 30
    return v2
.end method

.method public final getHdrType()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/google/android/gms/cast/VideoInfo;->zzho:I

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/google/android/gms/cast/VideoInfo;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/android/gms/cast/VideoInfo;->width:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/cast/VideoInfo;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/VideoInfo;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/cast/VideoInfo;->zzho:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 9
    nop

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 11
    nop

    .line 12
    invoke-virtual {p0}, Lcom/google/android/gms/cast/VideoInfo;->getWidth()I

    move-result v0

    .line 13
    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 14
    nop

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/cast/VideoInfo;->getHeight()I

    move-result v0

    .line 16
    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 17
    nop

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/cast/VideoInfo;->getHdrType()I

    move-result v0

    .line 19
    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 20
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 21
    return-void
.end method
