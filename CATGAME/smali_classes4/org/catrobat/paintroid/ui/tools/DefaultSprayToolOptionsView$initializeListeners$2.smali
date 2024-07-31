.class public final Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$initializeListeners$2;
.super Ljava/lang/Object;
.source "DefaultSprayToolOptionsView.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->initializeListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "org/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$initializeListeners$2",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "onProgressChanged",
        "",
        "seekBar",
        "Landroid/widget/SeekBar;",
        "progress",
        "",
        "fromUser",
        "",
        "onStartTrackingTouch",
        "onStopTrackingTouch",
        "Paintroid_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$initializeListeners$2;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    move v0, p2

    .line 86
    .local v0, "progressValue":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 87
    const/4 v0, 0x1

    .line 88
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$initializeListeners$2;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;

    invoke-static {v1}, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->access$getRadiusSeekBar$p(Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 91
    :cond_0
    if-eqz p3, :cond_1

    .line 92
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$initializeListeners$2;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;

    invoke-static {v1}, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->access$getRadiusText$p(Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_1
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$initializeListeners$2;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;

    invoke-static {v1}, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->access$getCallback$p(Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;)Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView$Callback;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView$Callback;->radiusChanged(I)V

    .line 96
    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    return-void
.end method
