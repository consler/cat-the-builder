.class public final Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "ColorPickerDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CustomColorDrawable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0019\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable;",
        "Landroid/graphics/drawable/ColorDrawable;",
        "checkeredShader",
        "Landroid/graphics/Shader;",
        "color",
        "",
        "(Landroid/graphics/Shader;I)V",
        "backgroundPaint",
        "Landroid/graphics/Paint;",
        "draw",
        "",
        "canvas",
        "Landroid/graphics/Canvas;",
        "Companion",
        "colorpicker_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# static fields
.field public static final Companion:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable$Companion;


# instance fields
.field private backgroundPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable;->Companion:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable$Companion;

    return-void
.end method

.method private constructor <init>(Landroid/graphics/Shader;I)V
    .locals 2
    .param p1, "checkeredShader"    # Landroid/graphics/Shader;
    .param p2, "color"    # I

    .line 257
    nop

    .line 260
    invoke-direct {p0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 263
    nop

    .line 264
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable;->getColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    .line 265
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable;->backgroundPaint:Landroid/graphics/Paint;

    .line 266
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 268
    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/graphics/Shader;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .param p1, "checkeredShader"    # Landroid/graphics/Shader;
    .param p2, "color"    # I
    .param p3, "$constructor_marker"    # Lkotlin/jvm/internal/DefaultConstructorMarker;

    .line 257
    invoke-direct {p0, p1, p2}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable;-><init>(Landroid/graphics/Shader;I)V

    return-void
.end method

.method public static final createDrawable(Landroid/graphics/Shader;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable;->Companion:Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable$Companion;

    invoke-virtual {v0, p0, p1}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable$Companion;->createDrawable(Landroid/graphics/Shader;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    iget-object v0, p0, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable;->backgroundPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .local v0, "it":Landroid/graphics/Paint;
    const/4 v1, 0x0

    .line 282
    .local v1, "$i$a$-let-ColorPickerDialog$CustomColorDrawable$draw$1":I
    invoke-virtual {p0}, Lorg/catrobat/paintroid/colorpicker/ColorPickerDialog$CustomColorDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 283
    nop

    .line 281
    .end local v0    # "it":Landroid/graphics/Paint;
    .end local v1    # "$i$a$-let-ColorPickerDialog$CustomColorDrawable$draw$1":I
    nop

    .line 284
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 285
    return-void
.end method
