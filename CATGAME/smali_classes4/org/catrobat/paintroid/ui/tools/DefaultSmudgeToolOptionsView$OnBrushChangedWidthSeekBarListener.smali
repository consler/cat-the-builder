.class public final Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$OnBrushChangedWidthSeekBarListener;
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
    name = "OnBrushChangedWidthSeekBarListener"
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
        "Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$OnBrushChangedWidthSeekBarListener;",
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

    .line 221
    iput-object p1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$OnBrushChangedWidthSeekBarListener;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    move v0, p2

    .line 224
    .local v0, "currentProgress":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 225
    const/4 v0, 0x1

    .line 226
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 228
    :cond_0
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$OnBrushChangedWidthSeekBarListener;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;

    invoke-static {v2, v0}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->access$updateStrokeWidthChange(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;I)V

    .line 229
    if-eqz p3, :cond_1

    .line 230
    iget-object v2, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$OnBrushChangedWidthSeekBarListener;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;

    invoke-static {v2}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->access$getBrushSizeText$p(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;)Landroid/widget/EditText;

    move-result-object v2

    sget-object v3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v4, "%d"

    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "java.lang.String.format(locale, format, *args)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 232
    :cond_1
    iget-object v1, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$OnBrushChangedWidthSeekBarListener;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;

    invoke-static {v1}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->access$getBrushToolPreview$p(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;)Lorg/catrobat/paintroid/tools/options/BrushToolPreview;

    move-result-object v1

    invoke-interface {v1}, Lorg/catrobat/paintroid/tools/options/BrushToolPreview;->invalidate()V

    .line 233
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    const-string v0, "seekBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView$OnBrushChangedWidthSeekBarListener;->this$0:Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;

    invoke-static {v0}, Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;->access$getBrushSizeText$p(Lorg/catrobat/paintroid/ui/tools/DefaultSmudgeToolOptionsView;)Landroid/widget/EditText;

    move-result-object v0

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(locale, format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 239
    return-void
.end method
