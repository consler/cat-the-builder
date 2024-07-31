.class public final Landroidx/camera/core/ImageCapture$Metadata;
.super Ljava/lang/Object;
.source "ImageCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/ImageCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Metadata"
.end annotation


# instance fields
.field private mIsReversedHorizontal:Z

.field private mIsReversedVertical:Z

.field private mLocation:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 1

    .line 1738
    iget-object v0, p0, Landroidx/camera/core/ImageCapture$Metadata;->mLocation:Landroid/location/Location;

    return-object v0
.end method

.method public isReversedHorizontal()Z
    .locals 1

    .line 1701
    iget-boolean v0, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedHorizontal:Z

    return v0
.end method

.method public isReversedVertical()Z
    .locals 1

    .line 1719
    iget-boolean v0, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedVertical:Z

    return v0
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .line 1747
    iput-object p1, p0, Landroidx/camera/core/ImageCapture$Metadata;->mLocation:Landroid/location/Location;

    .line 1748
    return-void
.end method

.method public setReversedHorizontal(Z)V
    .locals 0
    .param p1, "isReversedHorizontal"    # Z

    .line 1710
    iput-boolean p1, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedHorizontal:Z

    .line 1711
    return-void
.end method

.method public setReversedVertical(Z)V
    .locals 0
    .param p1, "isReversedVertical"    # Z

    .line 1728
    iput-boolean p1, p0, Landroidx/camera/core/ImageCapture$Metadata;->mIsReversedVertical:Z

    .line 1729
    return-void
.end method
