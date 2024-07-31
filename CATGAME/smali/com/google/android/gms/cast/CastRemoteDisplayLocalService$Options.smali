.class public Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/CastRemoteDisplayLocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Options"
.end annotation


# instance fields
.field private zzbd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;->zzbd:I

    .line 3
    return-void
.end method


# virtual methods
.method public getConfigPreset()I
    .locals 1

    .line 6
    iget v0, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;->zzbd:I

    return v0
.end method

.method public setConfigPreset(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/google/android/gms/cast/CastRemoteDisplayLocalService$Options;->zzbd:I

    .line 5
    return-void
.end method
