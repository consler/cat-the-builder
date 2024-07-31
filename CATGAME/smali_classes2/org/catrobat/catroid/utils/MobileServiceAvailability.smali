.class public final Lorg/catrobat/catroid/utils/MobileServiceAvailability;
.super Ljava/lang/Object;
.source "MobileServiceAvailability.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nJ\u000e\u0010\u000b\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/catrobat/catroid/utils/MobileServiceAvailability;",
        "",
        "googleApiAvailability",
        "Lcom/google/android/gms/common/GoogleApiAvailability;",
        "huaweiApiAvailability",
        "Lcom/huawei/hms/api/HuaweiApiAvailability;",
        "(Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/huawei/hms/api/HuaweiApiAvailability;)V",
        "isGmsAvailable",
        "",
        "context",
        "Landroid/content/Context;",
        "isHmsAvailable",
        "catroid_catroidDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field private final googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private final huaweiApiAvailability:Lcom/huawei/hms/api/HuaweiApiAvailability;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/huawei/hms/api/HuaweiApiAvailability;)V
    .locals 1
    .param p1, "googleApiAvailability"    # Lcom/google/android/gms/common/GoogleApiAvailability;
    .param p2, "huaweiApiAvailability"    # Lcom/huawei/hms/api/HuaweiApiAvailability;

    const-string v0, "googleApiAvailability"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "huaweiApiAvailability"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/utils/MobileServiceAvailability;->googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    iput-object p2, p0, Lorg/catrobat/catroid/utils/MobileServiceAvailability;->huaweiApiAvailability:Lcom/huawei/hms/api/HuaweiApiAvailability;

    return-void
.end method


# virtual methods
.method public final isGmsAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lorg/catrobat/catroid/utils/MobileServiceAvailability;->googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    return v0
.end method

.method public final isHmsAvailable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lorg/catrobat/catroid/utils/MobileServiceAvailability;->huaweiApiAvailability:Lcom/huawei/hms/api/HuaweiApiAvailability;

    invoke-virtual {v0, p1}, Lcom/huawei/hms/api/HuaweiApiAvailability;->isHuaweiMobileServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 41
    :goto_0
    return v0
.end method
