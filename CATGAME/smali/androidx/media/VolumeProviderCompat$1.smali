.class Landroidx/media/VolumeProviderCompat$1;
.super Landroid/media/VolumeProvider;
.source "VolumeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/media/VolumeProviderCompat;->getVolumeProvider()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media/VolumeProviderCompat;


# direct methods
.method constructor <init>(Landroidx/media/VolumeProviderCompat;III)V
    .locals 0
    .param p1, "this$0"    # Landroidx/media/VolumeProviderCompat;
    .param p2, "x0"    # I
    .param p3, "x1"    # I
    .param p4, "x2"    # I

    .line 170
    iput-object p1, p0, Landroidx/media/VolumeProviderCompat$1;->this$0:Landroidx/media/VolumeProviderCompat;

    invoke-direct {p0, p2, p3, p4}, Landroid/media/VolumeProvider;-><init>(III)V

    return-void
.end method


# virtual methods
.method public onAdjustVolume(I)V
    .locals 1
    .param p1, "direction"    # I

    .line 178
    iget-object v0, p0, Landroidx/media/VolumeProviderCompat$1;->this$0:Landroidx/media/VolumeProviderCompat;

    invoke-virtual {v0, p1}, Landroidx/media/VolumeProviderCompat;->onAdjustVolume(I)V

    .line 179
    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 1
    .param p1, "volume"    # I

    .line 173
    iget-object v0, p0, Landroidx/media/VolumeProviderCompat$1;->this$0:Landroidx/media/VolumeProviderCompat;

    invoke-virtual {v0, p1}, Landroidx/media/VolumeProviderCompat;->onSetVolumeTo(I)V

    .line 174
    return-void
.end method
