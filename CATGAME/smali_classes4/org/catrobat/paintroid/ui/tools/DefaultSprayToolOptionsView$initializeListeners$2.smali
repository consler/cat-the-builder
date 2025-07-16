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
        "Paintroid_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;)V
    .locals 0

    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$initializeListeners$2;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ge p2, p1, :cond_0

    .line 89
    iget-object p2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$initializeListeners$2;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;

    invoke-static {p2}, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->access$getRadiusSeekBar$p(Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;)Landroid/widget/SeekBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    move p2, p1

    :cond_0
    if-eqz p3, :cond_1

    .line 93
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$initializeListeners$2;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;

    invoke-static {p1}, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->access$getRadiusText$p(Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;)Lcom/google/android/material/textfield/TextInputEditText;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 96
    :cond_1
    iget-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView$initializeListeners$2;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;

    invoke-static {p1}, Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;->access$getCallback$p(Lorg/catrobat/paintroid/ui/tools/DefaultSprayToolOptionsView;)Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView$Callback;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1, p2}, Lorg/catrobat/paintroid/tools/options/SprayToolOptionsView$Callback;->radiusChanged(I)V

    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
