.class public Lcom/google/android/gms/cast/VastAdsRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/VastAdsRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private zzhm:Ljava/lang/String;

.field private zzhn:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/cast/VastAdsRequest$Builder;->zzhm:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/cast/VastAdsRequest$Builder;->zzhn:Ljava/lang/String;

    .line 4
    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/VastAdsRequest;
    .locals 3

    .line 9
    new-instance v0, Lcom/google/android/gms/cast/VastAdsRequest;

    iget-object v1, p0, Lcom/google/android/gms/cast/VastAdsRequest$Builder;->zzhm:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/cast/VastAdsRequest$Builder;->zzhn:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/VastAdsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAdTagUrl(Ljava/lang/String;)Lcom/google/android/gms/cast/VastAdsRequest$Builder;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/cast/VastAdsRequest$Builder;->zzhm:Ljava/lang/String;

    .line 6
    return-object p0
.end method

.method public setAdsResponse(Ljava/lang/String;)Lcom/google/android/gms/cast/VastAdsRequest$Builder;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/cast/VastAdsRequest$Builder;->zzhn:Ljava/lang/String;

    .line 8
    return-object p0
.end method
