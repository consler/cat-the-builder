.class public final Lcom/huawei/hms/common/a;
.super Ljava/lang/Object;
.source "FeatureCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/huawei/hms/common/Feature;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/huawei/hms/common/Feature;
    .locals 8

    .line 25
    invoke-static {p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 26
    nop

    .line 27
    nop

    .line 28
    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    .line 30
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, v0, :cond_3

    .line 31
    invoke-static {p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v5

    .line 32
    invoke-static {v5}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    .line 43
    invoke-static {p1, v5}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 40
    :cond_0
    invoke-static {p1, v5}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readLong(Landroid/os/Parcel;I)J

    move-result-wide v3

    .line 41
    goto :goto_1

    .line 37
    :cond_1
    invoke-static {p1, v5}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v2

    .line 38
    goto :goto_1

    .line 34
    :cond_2
    invoke-static {p1, v5}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v1

    .line 35
    nop

    .line 46
    :goto_1
    goto :goto_0

    .line 47
    :cond_3
    invoke-static {p1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 48
    new-instance p1, Lcom/huawei/hms/common/Feature;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/huawei/hms/common/Feature;-><init>(Ljava/lang/String;IJ)V

    return-object p1
.end method

.method public final a(I)[Lcom/huawei/hms/common/Feature;
    .locals 0

    .line 20
    new-array p1, p1, [Lcom/huawei/hms/common/Feature;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/huawei/hms/common/a;->a(Landroid/os/Parcel;)Lcom/huawei/hms/common/Feature;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/huawei/hms/common/a;->a(I)[Lcom/huawei/hms/common/Feature;

    move-result-object p1

    return-object p1
.end method
