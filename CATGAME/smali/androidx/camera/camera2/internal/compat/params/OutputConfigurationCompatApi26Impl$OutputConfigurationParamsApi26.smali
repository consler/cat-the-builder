.class final Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi26Impl$OutputConfigurationParamsApi26;
.super Ljava/lang/Object;
.source "OutputConfigurationCompatApi26Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi26Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OutputConfigurationParamsApi26"
.end annotation


# instance fields
.field final mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

.field mPhysicalCameraId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/params/OutputConfiguration;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi26Impl$OutputConfigurationParamsApi26;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 175
    instance-of v0, p1, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi26Impl$OutputConfigurationParamsApi26;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 179
    :cond_0
    check-cast p1, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi26Impl$OutputConfigurationParamsApi26;

    .line 181
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi26Impl$OutputConfigurationParamsApi26;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v2, p1, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi26Impl$OutputConfigurationParamsApi26;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi26Impl$OutputConfigurationParamsApi26;->mPhysicalCameraId:Ljava/lang/String;

    iget-object p1, p1, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi26Impl$OutputConfigurationParamsApi26;->mPhysicalCameraId:Ljava/lang/String;

    .line 182
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 191
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi26Impl$OutputConfigurationParamsApi26;->mOutputConfiguration:Landroid/hardware/camera2/params/OutputConfiguration;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/OutputConfiguration;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    sub-int/2addr v1, v0

    .line 194
    iget-object v0, p0, Landroidx/camera/camera2/internal/compat/params/OutputConfigurationCompatApi26Impl$OutputConfigurationParamsApi26;->mPhysicalCameraId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method
