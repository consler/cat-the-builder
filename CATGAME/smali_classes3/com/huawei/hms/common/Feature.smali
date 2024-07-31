.class public Lcom/huawei/hms/common/Feature;
.super Lcom/huawei/hms/common/internal/safeparcel/AbstractSafeParcelable;
.source "Feature.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ARGS_NAME:I = 0x1

.field public static final ARGS_SVC_VER:I = 0x2

.field public static final ARGS_VER:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/common/Feature;",
            ">;"
        }
    .end annotation
.end field

.field private static final SVC_VER:I = -0x1


# instance fields
.field private final apiVersion:J

.field private final name:Ljava/lang/String;

.field private final serviceVersion:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/huawei/hms/common/a;

    invoke-direct {v0}, Lcom/huawei/hms/common/a;-><init>()V

    sput-object v0, Lcom/huawei/hms/common/Feature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/huawei/hms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/huawei/hms/common/Feature;->name:Ljava/lang/String;

    .line 47
    iput p2, p0, Lcom/huawei/hms/common/Feature;->serviceVersion:I

    .line 48
    iput-wide p3, p0, Lcom/huawei/hms/common/Feature;->apiVersion:J

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 42
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/huawei/hms/common/Feature;-><init>(Ljava/lang/String;IJ)V

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 72
    instance-of v0, p1, Lcom/huawei/hms/common/Feature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 73
    return v1

    .line 76
    :cond_0
    check-cast p1, Lcom/huawei/hms/common/Feature;

    .line 77
    iget-object v0, p0, Lcom/huawei/hms/common/Feature;->name:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/huawei/hms/common/Feature;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 78
    return v1

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/hms/common/Feature;->getVersion()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/huawei/hms/common/Feature;->getVersion()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_2

    .line 81
    return v1

    .line 83
    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/huawei/hms/common/Feature;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()J
    .locals 4

    .line 56
    iget-wide v0, p0, Lcom/huawei/hms/common/Feature;->apiVersion:J

    .line 57
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    .line 58
    iget v0, p0, Lcom/huawei/hms/common/Feature;->serviceVersion:I

    int-to-long v0, v0

    .line 60
    :cond_0
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/huawei/hms/common/Feature;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/huawei/hms/common/Feature;->getVersion()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/huawei/hms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 91
    invoke-static {p0}, Lcom/huawei/hms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/huawei/hms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcom/huawei/hms/common/Feature;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lcom/huawei/hms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/huawei/hms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 93
    invoke-virtual {p0}, Lcom/huawei/hms/common/Feature;->getVersion()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Lcom/huawei/hms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/huawei/hms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 64
    invoke-static {p1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 65
    invoke-virtual {p0}, Lcom/huawei/hms/common/Feature;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 66
    iget v0, p0, Lcom/huawei/hms/common/Feature;->serviceVersion:I

    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 67
    invoke-virtual {p0}, Lcom/huawei/hms/common/Feature;->getVersion()J

    move-result-wide v0

    const/4 v2, 0x3

    invoke-static {p1, v2, v0, v1}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 68
    invoke-static {p1, p2}, Lcom/huawei/hms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 69
    return-void
.end method
