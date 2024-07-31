.class public final Lorg/catrobat/paintroid/tools/common/CommonBrushChangedListener;
.super Ljava/lang/Object;
.source "CommonBrushChangedListener.kt"

# interfaces
.implements Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u0010\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lorg/catrobat/paintroid/tools/common/CommonBrushChangedListener;",
        "Lorg/catrobat/paintroid/tools/options/BrushToolOptionsView$OnBrushChangedListener;",
        "tool",
        "Lorg/catrobat/paintroid/tools/Tool;",
        "(Lorg/catrobat/paintroid/tools/Tool;)V",
        "setCap",
        "",
        "strokeCap",
        "Landroid/graphics/Paint$Cap;",
        "setStrokeWidth",
        "strokeWidth",
        "",
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
.field private final tool:Lorg/catrobat/paintroid/tools/Tool;


# direct methods
.method public constructor <init>(Lorg/catrobat/paintroid/tools/Tool;)V
    .locals 1
    .param p1, "tool"    # Lorg/catrobat/paintroid/tools/Tool;

    const-string v0, "tool"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/paintroid/tools/common/CommonBrushChangedListener;->tool:Lorg/catrobat/paintroid/tools/Tool;

    return-void
.end method


# virtual methods
.method public setCap(Landroid/graphics/Paint$Cap;)V
    .locals 1
    .param p1, "strokeCap"    # Landroid/graphics/Paint$Cap;

    const-string v0, "strokeCap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/common/CommonBrushChangedListener;->tool:Lorg/catrobat/paintroid/tools/Tool;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/Tool;->changePaintStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 28
    return-void
.end method

.method public setStrokeWidth(I)V
    .locals 1
    .param p1, "strokeWidth"    # I

    .line 31
    iget-object v0, p0, Lorg/catrobat/paintroid/tools/common/CommonBrushChangedListener;->tool:Lorg/catrobat/paintroid/tools/Tool;

    invoke-interface {v0, p1}, Lorg/catrobat/paintroid/tools/Tool;->changePaintStrokeWidth(I)V

    .line 32
    return-void
.end method
