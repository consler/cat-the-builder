.class public final Lorg/catrobat/paintroid/colorpicker/AlphaSlider$Companion;
.super Ljava/lang/Object;
.source "AlphaSlider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/colorpicker/AlphaSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lorg/catrobat/paintroid/colorpicker/AlphaSlider$Companion;",
        "",
        "()V",
        "alphaValue",
        "",
        "getAlphaValue",
        "()I",
        "setAlphaValue",
        "(I)V",
        "currentColor",
        "onColorChangedListener",
        "Lorg/catrobat/paintroid/colorpicker/AlphaSlider$OnColorChangedListener;",
        "selectedColor",
        "colorpicker_signedRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAlphaValue()I
    .locals 1

    .line 76
    invoke-static {}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->access$getAlphaValue$cp()I

    move-result v0

    return v0
.end method

.method public final setAlphaValue(I)V
    .locals 0

    .line 76
    invoke-static {p1}, Lorg/catrobat/paintroid/colorpicker/AlphaSlider;->access$setAlphaValue$cp(I)V

    return-void
.end method
