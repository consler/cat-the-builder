.class public final Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$OnDragChangedSeekBarListener;
.super Ljava/lang/Object;
.source "DefaultSmudgeToolOptionsView.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OnDragChangedSeekBarListener"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0010\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$OnDragChangedSeekBarListener;",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
        "(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;)V",
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
.field final synthetic this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 262
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$OnDragChangedSeekBarListener;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    move v0, p2

    .line 265
    .local v0, "currentProgress":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 266
    const/4 v0, 0x1

    .line 267
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 269
    :cond_0
    if-eqz p3, :cond_1

    .line 270
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$OnDragChangedSeekBarListener;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;

    invoke-static {v1, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->access$setDragText(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;I)V

    .line 272
    :cond_1
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$OnDragChangedSeekBarListener;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;

    invoke-static {v1, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->access$updateDrag(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;I)V

    .line 273
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$OnDragChangedSeekBarListener;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-static {v0, v1}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->access$setDragText(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;I)V

    .line 279
    return-void
.end method
